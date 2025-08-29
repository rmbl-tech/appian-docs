---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/cold-failover.html
original_path: k8s-0.184.0/cold-failover.html
version: "25.3"
title: "Cold Failover"
page_id: "k8s-0.184.0/cold-failover"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Cold Failover

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to configure cold failover for installations of Appian on Kubernetes.

## What is cold failover?

In general, cold failover describes the practice of manually switching a system to a "cold" or standby system when failure or abnormal termination of the system occurs. [Highly available](high-availability.html) installations of Appian on Kubernetes are robust to certain classes of hardware and infrastructure failure such that the unexpected loss of one pod, node, or zone does not take out all replicas of a component. But what if an extended, catastrophic failure occurs that requires restoring an Appian installation in a new region? With respect to installations of Appian on Kubernetes, cold failover describes the practice of manually restoring an installation in a new region, should an extended, catastrophic failure occur.

**Note:**  While cold failover is suited for low recovery point object (RPO) requirements in the face of extended, catastrophic failures, it is not suited for low recovery time objective (RTO) requirements. For low RTO requirements in the face of pod, node, or zone failures, [High Availability](high-availability.html) should be configured instead.

## Preparing for cold failover

To execute a cold failover of an installation of Appian on Kubernetes, [Live Backups](../Live_Backup_Procedure.html) must be configured for the installation. A live backup is a backup of all [Appian application and external data](../Configuring_Backup_and_Restoration.html#data-components) taken while Appian is running.

### Ensuring live backup integrity

While some Appian components support live backups via application snapshots, such Elasticsearch snapshot APIs, or application or filesystem replication, such as Apache Kafka MirrorMaker, `rsync`, or AWS EFS replication, others require point-in-time, filesystem snapshots, such as AWS EBS snapshots or GCP persistent disk snapshots. When using point-in-time, filesystem snapshots, you must ensure snapshots are application consistent, ensuring that all pending writes are flushed to disk and new writes are paused when snapshots are taken. This can typically be accomplished by temporarily suspending access to each stateful pod's persistent volume using [fsfreeze](https://man7.org/linux/man-pages/man8/fsfreeze.8.html).

Running `fsfreeze` in each stateful pod to temporarily suspend access to its persistent volume requires a bit of setup as `fsfreeze` must be run as `root` from a privileged container but Appian's containers neither run as `root` nor are privileged. It is therefore recommended to add a [sidecar container](init-and-sidecar-containers.html#sidecar-containers) with the appropriate permissions to each pod:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  zookeeper:
    sidecarContainers:
      - name: fsfreeze
        # Must contain fsfreeze (Appian images do)
        image: busybox
        # Sleep forever
        command:
          - "/bin/sh"
          - "-c"
          - "trap 'exit 0' SIGTERM; sleep infinity & wait"
        # Mount from the persistent volume
        volumeMounts:
          - name: storage
            mountPath: /persistent-volume
        # Run in privileged mode as root
        securityContext:
          runAsNonRoot: false
          runAsUser: 0
          privileged: true

  kafka:
    sidecarContainers:
      # Repeat
      - ...

  dataServer:
    sidecarContainers:
      # Repeat
      - ...

  serviceManager:
   sidecarContainers:
     # Repeat if backing up via point-in-time, filesystem snapshots. Update the
     # name of the volume mount from 'storage' to 'distributed' if the
     # haExistingClaim field is set
     - ...

  webapp:
   sidecarContainers:
     # Repeat if backing up via point-in-time, filesystem snapshots. Update the
     # name of the volume mount from 'storage' to 'distributed' if the
     # haExistingClaim field is set
     - ...
```

**Note:**  If you need to allow your installation of Appian on Kubernetes to run containers in privileged mode as root, refer to [Binding pod security policies to Appian](rbac.html#binding-pod-security-policies-to-appian).

Running `fsfreeze` in each stateful pod to temporarily suspend access to its persistent volume is then as easy as running `kubectl exec`:

```
1
kubectl -n <NAMESPACE> exec <POD> -c fsfreeze -- fsfreeze --freeze /persistent-volume
```

To allow operations to continue after the snapshot, run `fsfreeze --unfreeze` instead of `fsfreeze --freeze`:

```
1
kubectl -n <NAMESPACE> exec <POD> -c fsfreeze -- fsfreeze --unfreeze /persistent-volume
```

### Taking point-in-time, filesystem snapshots of persistent volumes

How to take point-in-time, filesystem snapshots of an Appian installation's persistent volumes depends on the volume plugins and storage systems being used. Many [out-of-tree CSI volume plugins](https://kubernetes-csi.github.io/docs/drivers.html#drivers) support [Volume Snapshots](https://kubernetes.io/docs/concepts/storage/volume-snapshots/). You may also elect to create snapshots via your storage system. There are also a variety of products in the Kubernetes ecosystem built to help with backing up and restoring persistent volumes, many of which build on top of the aforementioned features. Examples include:

-   [Kanister](https://kanister.io/)
-   [Kasten](https://www.kasten.io/)
-   [Portworx](https://portworx.com/)
-   [Trilio](https://trilio.io/)
-   [Velero](https://velero.io/)

### Kafka and Zookeeper

Live backups of Kafka must be taken via MirrorMaker for Kafka mirroring. MirrorMaker requires running a target Kafka cluster in the backup region and exposing the source Kafka cluster to MirrorMaker. MirrorMaker itself also runs in the backup region alongside the target Kafka cluster.

To expose the source Kafka cluster to MirrorMaker, first set the [.spec.kafka.mirrorMakerListeners](crds.html#v1beta1kafka) field in your primary Appian custom resource:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  kafka:
    replicas: 3

    # List of externally addressable hosts used by MirrorMaker. The order of the
    # listeners must match the order of Kafka's pods
    mirrorMakerListeners:
      - appian-kafka-0.appian-kafka-headless
      - appian-kafka-1.appian-kafka-headless
      - appian-kafka-2.appian-kafka-headless
```

Then, expose the Kafka cluster's pods to MirrorMaker using the defined hosts. How you do this is up to you. Potential options include ingress, LoadBalancer services, and multi-cluster service meshes.

To run the target Kafka cluster and MirrorMaker in the backup region, set the [.spec.mirrorMaker](crds.html#v1beta1mirrormaker) field in your backup Appian custom resource:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  mirrorMaker:
    # MirrorMaker uses the Service Manager container image
    image: registry.example.com/appian/service-manager

    # List of hosts that point to the primary installation's Kafka pods
    sourceBrokers:
      - appian-kafka-0.appian-kafka-headless
      - appian-kafka-1.appian-kafka-headless
      - appian-kafka-2.appian-kafka-headless
```

While the rest of your backup Appian custom resource, minus the `.spec.kafka.mirrorMakerListeners` field, must be configured the same as your primary Appian custom resource, the resulting installation will only include Kafka, Zookeeper, and MirrorMaker pods.

**Note:**  Before creating your backup Appian custom resource, delete any persistent volume claims matching your installation of Appian on Kubernetes .Make sure to only delete persistent volume claims matching your installation of Appian on Kubernetes. Accidental deletion of other persistent volume claims may result in other installations/applications experiencing irrecoverable data loss.

### Search Server

**Note:**  Except for those related to [Document Extraction](../Appian_Doc_Extraction.html), all Elasticsearch indices are either rebuilt when Appian restarts or are not business-critical. Therefore, live backups of Appian installations that do not leverage Document Extraction do not need to include Search Server data.

Live backups of [Search Server](../Search_Server.html) must be taken via Elasticsearch snapshot and restore APIs as discussed in [Backup and restoration](../Search_Server.html#backup-and-restoration).

### Data Server

**Note:**  The only data stored in Data Server is [synced records](../records-data-sync.html), which can be resynced, and saved user filters. If you are willing to both lose saved user filters and incur a higher recovery time objective (RTO), you do not need to include Data Server data in your live backups of Appian installations. Instead, you can delete Data Server's Kafka topic and resync all synced record types when restoring as discussed in [Data Service replication](../Live_Backup_Procedure.html#data-service-replication).

Live backups of [Data Server](../Configuring_the_Data_Server.html) must be taken via point-in-time, filesystem snapshots.

### Service Manager

Live backups of Service Manager may be taken via either point-in-time, filesystem snapshots or filesystem replication, such as `rsync` or AWS EFS replication.

**Note:**  If the `haExistingClaim` field is set, Service Manager data is stored in the referenced persistent volume claim's bound persistent volume. In this situation, Service Manager's per-pod persistent volumes only store Service Manager logs. Backing them up is therefore [optional](#logs).

### Webapp

Live backups of Webapp may be taken via either point-in-time, filesystem snapshots or filesystem replication, such as `rsync` or AWS EFS replication.

**Note:**  If the `haExistingClaim` field is set, Webapp data is stored in the referenced persistent volume claim's bound persistent volume. In this situation, Webapp's per-pod persistent volumes only store Webapp logs. Backing them up is therefore [optional](#logs).

### Logs

By default, Appian application logs are stored in components' per-pod persistent volumes and therefore automatically included in live backups. If [Health Check](health-check-k8s.html) is configured, application logs are instead stored in the persistent volume bound to the persistent volume claim referenced by the `healthCheckExistingClaim` field. Including application logs in live backups is optional. If you would like to skip including application logs in your live backups, simply skip backing up this persistent volume.

### External data

Live backups of your Appian installation's [Appian data source](../Configuring_Relational_Databases.html#appian-data-source), its [business data sources](../Configuring_Relational_Databases.html#business-data-sources), and any external RDBMSs may be taken via your preferred backup mechanism.

## Executing a cold failover

### Stop MirrorMaker

Stop the target Kafka cluster and MirrorMaker in the backup region by deleting your backup Appian custom resource.

### Restore Appian application data

Restore the backup of your primary Appian installation's non-Kafka and non-Zookeeper persistent volumes / persistent volume claims in the backup region. Kafka and Zookeeper persistent volumes / persistent volume claims will already exist as they were used by Kafka and Zookeeper in the backup region when running MirrorMaker. How to restore an Appian installation's persistent volumes / persistent volume claims depends on how they were backed up and the volume plugins and storage systems being used. [Volume Snapshots](https://kubernetes.io/docs/concepts/storage/volume-snapshots/) supports [creating persistent volume claims from volume snapshots](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#volume-snapshot-and-restore-volume-from-snapshot-support). [CSI Volume Cloning](https://kubernetes.io/docs/concepts/storage/volume-pvc-datasource/) can be reversed. You may also elect to restore via your storage system and/or via statically provisioning and [reserving persistent volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#reserving-a-persistentvolume). There are also a variety of products in the Kubernetes ecosystem built to help with backing up and restoring persistent volumes, many of which build on top of the aforementioned features. Examples include:

-   [Kanister](https://kanister.io/)
-   [Kasten](https://www.kasten.io/)
-   [Portworx](https://portworx.com/)
-   [Trilio](https://trilio.io/)
-   [Velero](https://velero.io/)

### Restore external data

Restore the corresponding backup of your Appian installation's Appian data source, its business data sources, and any external RDBMSs.

### Restore referenced resources

If necessary, restore any secrets referenced by your Appian custom resource's `*SecretName` and `*SecretKeyRef` fields:

-   `.spec.k3LicSecretName`
-   `.spec.k4LicSecretName`
-   `.spec.webapp.dataSources.primary.passwordSecretKeyRef`
-   `.spec.webapp.dataSources.business[].passwordSecretKeyRef`
-   `.spec.webapp.passwordsPropertiesSecretName`

### Start Appian

**Note:**  If necessary, pull or re-pull the appropriate [Appian container images](artifacts.html#appian-operator-and-appian-images) and [push them](artifacts.html#push-the-images-to-your-registry) to your organization's registry.

Recreate your backup Appian custom resource without the `.spec.mirrorMaker` field.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...