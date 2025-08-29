---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/migration-tool.html
original_path: k8s-0.184.0/migration-tool.html
version: "25.3"
title: "Using the Appian on Kubernetes Migration Tool"
page_id: "k8s-0.184.0/migration-tool"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Using the Appian on Kubernetes Migration Tool

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page outlines the steps and information needed for using the Appian on Kubernetes Migration Tool for self-managed customers.

The Migration Tool makes it easier to transition an existing machine-based Appian deployment to an Appian on Kubernetes deployment by packaging up your data and configurations.

## Before Starting

**Caution:**  Shut Appian down and make a full backup of your original Appian deployment and associated databases before proceeding. You can find instructions [here](../Full_System_Backup_Procedure.html).

-   You will need to [download the Migration Tool executable](artifacts.html#migration-tool) specific to the operating systems of your Appian site, as well as any machine(s) that will be used to execute the migration. The Migration tool will need to be installed on all the physical server(s) that run your Appian deployment(s). For HA and distributed topologies you will need to ensure that it is on every server.

-   Set up the Appian operator on the destination Kubernetes cluster per the [Installation Guide](install-appian-on-k8s.html).

    -   Set up registries with the Appian product images. The Appian images need to be the same version as their current deployment.
    -   Import K Licenses.
    -   Install the Appian operator Helm chart.
    -   Don't create the Appian Custom Resource or go any further, as the Migration Tool will handle those tasks.

If you are on an older version of Appian, you will need to upgrade your original deployment to a version of Appian [compatible](../self-managed-support.html) with the Appian operator before running the Migration Tool.

-   Your database connection should be accessible for your destination Kubernetes cluster.

**Note:**  We do not support database migrations as part of this tool.

The Migration Tool commands each have `-h` flags that explain supporting flags and which parameters are required or optional. You can see the full list of commands available by running `migrate --help` or `migrate -h.`

## Step 1: Exporting your Appian data

To begin your migration, you will use the `export` command, pointing to your Appian installation directory and defining a directory for output.

The tool will package your Appian data into a ZIP, including shared data for HA or distributed Appian deployments, and prepare it to be deployed in Kubernetes.

**Note:**  Before proceeding, first ensure you have enough room available for the generated ZIP. You'll need free space representing at least 70% of your Appian data total. You can use the `du` command on a Linux system on your Appian directory and prepare an estimate based on that.

As an example, if your Appian installation is located at `C:\appian-prod\appian` on a Windows server and you have created a new directory on that server `C:\appian-migration` for storing the exported data, your command would look like this:

```
1
.\migrate.exe export -i C:\appian-prod\appian -o C:\appian-migration
```

For Unix/Linux systems the command would look similar to this:

```
1
./migrate export -i /usr/local/appian -o /appian-migration
```

If you have a HA/distributed deployment, you will need to run the `export` command on each server. Follow through all the prompts to ensure that your site and its data are exported properly.

### Excluding data

The `export` command supports excluding different types of data to enable manual migration and other advanced use cases. First and foremost, `export` supports excluding logs via the `--no-logs` flag. Other types of data can be excluded via the `--exclude-data` (`-x`) flag. The flag supports the following values and can be passed multiple times or with comma-separated values:

-   `zookeeper`
-   `kafka`
-   `search-server`
-   `data-server`
-   `engine-checkpoints`
-   `content-documents`
-   `archived-processes`

**Tip:**  When exporting data from sites with multiple replicas of the Appian engines and the application server, it is recommended to exclude `engine-checkpoints`, `archived-processes`, and `content-documents` from all but one server to ensure they're not duplicatively exported.

## Step 2: Preparing and merging your Appian data

Once all your site data has been exported the `merge` command is needed to generate a Kubernetes Custom Resource from your data and configurations. This command must be executed regardless if you have a single, HA, or distributed topology.

The `merge` command must have access to all the export ZIPs to properly execute. If you have an HA/distributed site, you need to ensure that all the zips are accessible. It is recommended that you try to colocate the ZIPs on the same machine if possible.

Here is an example of executing the `merge` command for a Unix/Linux system of a distributed site:

```
1
./migrate merge -z export.site-node-1.zip -z export.site-node-2.zip -z export.site-node-3.zip -o .
```

**Note:**  As before, be certain that you have enough room for the generated merged ZIP file. This is especially true if you are merging from multiple server sources, since the merged data will represent the sum of those ZIP files.

The `merge` action will package your data and configurations into a single ZIP (merge.zip) and a base Appian operator [Custom Resource](crds.html) (appian.yaml) for your Kubernetes deployment. These files will both be used for the `import` action.

**Caution:**  Do not manually attempt to unzip the migration artifacts created by the tool.

## Step 3: Importing your Appian data into Kubernetes

The `import` will need to be executed on an environment that has direct access to your Kubernetes cluster. If you need to move the appian.yaml and merge.zip to a different machine to perform the `import` make sure you have downloaded the appropriate Migration tool for that machine's OS.

`import` will help validate your data, create PVCs (Kubernetes Persistent Volume Claims), and copy the zipped data from `merge` into those PVCs.

Before running the `import` command, you will need to update the appian.yaml Custom Resource file based on your cluster requirements. Below are fields which will need to be modified at a minimum:

-   [metadata.name](crds.html#v1beta1appian)
-   [spec.zookeeper.image.repository](crds.html#v1beta1zookeeper)
-   [spec.kafka.image.repository](crds.html#v1beta1kafka)
-   [spec.searchServer.image.repository](crds.html#v1beta1searchserver)
-   [spec.dataServer.image.repository](crds.html#v1beta1dataserver)
-   [spec.serviceManager.image.repository](crds.html#v1beta1servicemanager)
-   [spec.webapp.image.repository](crds.html#v1beta1webapp)
-   You'll need configure how to [expose](exposing-appian-on-k8s.html) your Appian site in Kubernetes so the front end is accessible

Any HA or multi-replica definitions of Webapp or Service Manager will also require the `haExistingClaim` to be defined for those services. See [High Availability](high-availability.html) for this set up.

It is strongly recommended to update the [Resource limits](crds.html#v1beta1component) for the Appian services based on your sites's needs. Refer to [Resource Requests and Limits](resource-requests-and-limits.html) for guidelines on resource updates based on your cluster and site's needs.

Here is an example of executing the `import` command for a Unix/Linux system of a distributed site:

```
1
./migrate import -z merge.zip -a appian.yaml -n <site namespace>
```

**Caution:**  Do not change the Appian versions or the number of replicas for services from your site's current setup at this time during migration. The `import` action will fail if it detects any of those changes. You can perform upgrades of Appian afer you have confirmed that the migration of your data has been successful.

Once this process is completed, the tool will start up your new Appian deployment. If you have not setup how to [expose Appian](exposing-appian-on-k8s.html) the front end will not be accessible. However you should check that all the Appian services were able to come up and verify that the number of pods match your site's defined replica count. At this point, you may want to visit the **Tasks**, **Configuration**, and **Reference** sections of the Appian on Kubernetes documentation for instructions on upkeep, upgrading, and additional configurations.

### Manually migrating data

If the `import` command detects [excluded data](#excluding-data), it will ask whether the excluded data has been manually migrated. If you answer "Yes", the `import` command will proceed to copy the data managed by the Migration Tool and start your site. Otherwise, it will ask whether you'd like it to start your site with sleep init containers or abort. Starting your site with sleep init containers enables you to copy excluded data to your site's underlying persistent volumes using `kubectl cp` - just like the `import` command normally would:

```
1
2
# Must be run from the directory containing the data to be copied
kubectl cp . <POD>:<DIRECTORY_IN_POD> -c sleep
```

The table below details where each type of excludable data is stored both on the server and in Kubernetes:

**Note:**  

-   Non-shared data must be copied from each server to each corresponding pod. This is denoted in the "Pod" column by the `<N>` suffix.
-   Shared data (i.e. `engine-checkpoints`, `content-documents`, and `archived-processes`) only needs to be copied from one server to the corresponding pod.
-   The number of shards of the process analytics and process execution engines may vary.

| Data | Directory on server | Pod | Directory in pod |
| --- | --- | --- | --- |
| `zookeeper` | `<APPIAN_HOME>/services/data/zookeeper/` | `<APPIAN>-zookeeper-<N>` | `/usr/local/appian/ae/zookeeper/data/` |
| `kafka` | `<APPIAN_HOME>/services/data/kafka-logs/` | `<APPIAN>-kafka-<N>` | `/usr/local/appian/ae/kafka/data/kafka-logs/` |
| `search-server` | `<APPIAN_HOME>/search-server/data/` | `<APPIAN>-search-server-<N>` | `/usr/local/appian/ae/search-server/data/` |
| `data-server` | `<APPIAN_HOME>/data-server/data/` | `<APPIAN>-data-server-<N>` | `/usr/local/appian/ae/data-server/data/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/process/analytics/0000/gw1/` | `<APPIAN>-service-manager-analytics00-0` | `/usr/local/appian/ae/services/data/server/process/analytics/0000/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/process/analytics/0001/gw1/` | `<APPIAN>-service-manager-analytics01-0` | `/usr/local/appian/ae/services/data/server/process/analytics/0001/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/process/analytics/0002/gw1/` | `<APPIAN>-service-manager-analytics02-0` | `/usr/local/appian/ae/services/data/server/process/analytics/0002/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/process/exec/00/gw1/` | `<APPIAN>-service-manager-execution00-0` | `/usr/local/appian/ae/services/data/server/process/exec/00/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/process/exec/01/gw1/` | `<APPIAN>-service-manager-execution01-0` | `/usr/local/appian/ae/services/data/server/process/exec/01/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/process/exec/02/gw1/` | `<APPIAN>-service-manager-execution02-0` | `/usr/local/appian/ae/services/data/server/process/exec/02/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/channels/gw1/` | `<APPIAN>-service-manager-channels-0` | `/usr/local/appian/ae/services/data/server/channels/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/collaboration/gw1/` | `<APPIAN>-service-manager-content-0` | `/usr/local/appian/ae/services/data/server/collaboration/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/collaboration/gw1/` | `<APPIAN>-service-manager-download-stats-0` | `/usr/local/appian/ae/services/data/server/collaboration/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/forums/gw1/` | `<APPIAN>-service-manager-forums-0` | `/usr/local/appian/ae/services/data/server/forums/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/personalization/gw1/` | `<APPIAN>-service-manager-groups-0` | `/usr/local/appian/ae/services/data/server/personalization/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/notifications/gw1/` | `<APPIAN>-service-manager-notifications-0` | `/usr/local/appian/ae/services/data/server/notifications/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/notifications/gw1/` | `<APPIAN>-service-manager-notifications-email-0` | `/usr/local/appian/ae/services/data/server/notifications/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/portal/gw1/` | `<APPIAN>-service-manager-portal-0` | `/usr/local/appian/ae/services/data/server/portal/gw1/` |
| `engine-checkpoints` | `<APPIAN_HOME>/server/process/design/gw1/` | `<APPIAN>-service-manager-process-design-0` | `/usr/local/appian/ae/services/data/server/process/design/gw1/` |
| `content-documents` | `<APPIAN_HOME>/_admin/accdocs1/` | `<APPIAN>-webapp-0` | `/usr/local/appian/ae/_admin/accdocs1/` |
| `content-documents` | `<APPIAN_HOME>/_admin/accdocs2/` | `<APPIAN>-webapp-0` | `/usr/local/appian/ae/_admin/accdocs2/` |
| `content-documents` | `<APPIAN_HOME>/_admin/accdocs3/` | `<APPIAN>-webapp-0` | `/usr/local/appian/ae/_admin/accdocs3/` |
| `archived-processes` | `<APPIAN_HOME>/server/archived-process/` | `<APPIAN>-webapp-0` | `/usr/local/appian/ae/server/archived-process/` |

## Step 4: Update paths to Appian on Kubernetes based deployment

Once migration has been completed and you've verified your Appian site is up, ensure your internal paths point to the current Appian on Kubernetes based paths. To get started with understanding how to interact with your new AoK deployment, please see our [kubectl Cheat Sheet](./kubectl-cheat-sheet.html).

### Find the Webapp pod

Changing paths for your deployment will be executed on the Webapp pod and propogated to the other pods. For [Highly Available (HA)](./high-availability.html) sites, there will be multiple Webapp pods, these steps can be executed on any one of them.

1.  List all of the pods in your namespace, and locate the Webapp pod(s).

    ```
    1
    kubectl -n <NAMESPACE> get pods
    ```

2.  If migrating to an Appian version < 24.4, copy your `<APPIAN_HOME>/_admin/_scripts/classpath.jar` from your machine-based deployment to the Appian on Kubernetes Webapp pod. If your Appian version is >= 24.4 you may skip this step, the `classpath.jar` will be located at `/usr/local/appian/ae/_admin/_scripts/classpath.jar` by default.

    ```
    1
    kubectl -n <NAMESPACE> cp <APPIAN_HOME>/_admin/_scripts/classpath.jar <WEBAPP_POD>:/tmp/classpath.jar
    ```

3.  Exec into the Webapp pod.

    ```
    1
    kubectl exec -it <WEBAPP POD NAME> -- bash
    ```

### Change your internal paths for your new deployment

You will be executing the `ChangePaths` tool `java -cp classpath.jar com.appiancorp.tools.ChangePaths` for each data directory that your installation of AoK utilizes. This tool supports the following options:

| Data Directory | Example Old Path | Example New Path |
| --- | --- | --- |
| `MWS` | `<OLD_APPIAN_HOME>/_admin/mini` | `/usr/local/appian/ae/_admin/mini` |
| `FORUMS` | `<OLD_APPIAN_HOME>/server/msg` | `/usr/local/appian/ae/server/msg/` |
| `NOTES` | `<OLD_APPIAN_HOME>/_admin/process_notes` | `/usr/local/appian/ae/_admin/process_notes` |
| `ARCHIVED` | `<OLD_APPIAN_HOME>/server/archived-process` | `/usr/local/appian/ae/server/archived-process` |

**Caution:**  If you have [modified your directory structure](../Internal_Data.html#changing-the-directory-structure) by updating The Base Path property (`conf.suite.BASE_PATH`), this will change the directory path for `<OLD_APPIAN_HOME>/_admin`. In the ChangePaths tool, you will need to specify the path set by `conf.suite.BASE_PATH` instead of the **Example Old Path** provided in the table above.

1.  Go to `/usr/local/appian/ae/_admin/_scripts/` or `/tmp/` depending on where `classpath.jar` is located at on your Webapp pod.

2.  Specify the data directory you wish to update the paths for, followed by the **Absolute** paths from your old directory path to your new Appian on Kubernetes based directory path, for example:

    ```
    1
    java -cp classpath.jar com.appiancorp.tools.ChangePaths ARCHIVED <OLD_APPIAN_HOME>/server/archived-process /usr/local/appian/ae/server/archived-process
    ```

**Caution:**  If you have customized your paths before on your machine-based deployment, either with the `ChangePaths` tool or with the **change-paths.(sh|bat)** [Maintenance Script](../Maintenance_Scripts.html) you will have to locate and specify your custom paths as your old paths for the `ChangePaths` tool.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...