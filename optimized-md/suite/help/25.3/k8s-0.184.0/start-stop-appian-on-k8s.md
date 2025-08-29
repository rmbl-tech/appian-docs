---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/start-stop-appian-on-k8s.html
original_path: k8s-0.184.0/start-stop-appian-on-k8s.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Editing, Stopping, and Restarting Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page walks through how to edit the Appian custom resource (CR) and stop and start Appian on Kubernetes for self-managed customers. It looks at cases for when to do a full restart after updating the custom resource (CR), or when changes can be done on the fly.

## Editing and restarting Appian

Typically when a change is made to a running [Kubernetes custom resource](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/), the corresponding operator automatically reconciles that change to the Kubernetes resources it manages. See [What is the Appian Operator?](what-is-appian-operator.html) to understand the relationship between a custom resource and an operator. Due to product constraints, there are many fields in the Appian custom resource that once initially set, cannot be changed without some sort of restart and downtime.

### Changes that require a full restart

Configurations that can’t be changed without a restart are documented in the [Appian CRD docs](crds.html) as `immutable`. They include things like Pod resource configurations, topology configurations for Appian services, and site data sources.

Immutable property changes require [Stopping the Appian site](#stopping-the-appian-site), editing your custom resource, and [Restarting the Appian site](#restarting-the-appian-site).

**Note:**  In order to prevent users from inadvertently changing a field in the Appian custom resource that would cause a problem with the product, the Appian operator has a [validating webhook](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/#validatingadmissionwebhook) that prevents `immutable` fields from being changed. The validating webhook is only enabled when [webhooks.enabled](helm-chart-values.html) is set to true in the Appian operator’s Helm values.

### Changes that can be made to a running site

Site configurations that can be made without restarts include any properties in the [Appian CRD docs](crds.html) _not_ marked as `immutable`. For these, you can edit the existing Appian custom resource with the following command.

```
1
kubectl -n <NAMESPACE> edit appians <APPIAN>
```

Once changed, Kubernetes will work to reconcile the change for the Appian custom resource.

#### Changes to Custom Properties

You can change Appian’s [custom.properties](../Custom_Configurations.html#custom-properties) file by updating the [customProperties](crds.html#v1beta1appianspec) key-value pairs inside the Appian CRD. The key-value pairs are then injected into the `custom.properties` file shared by all components. Note that there are a few [Unsupported Custom Properties](unsupported-custom-properties.html) in Appian on Kubernetes.

Changes to `customProperties` can be made without a full restart of Appian. After making the changes to the running site, you can check that the corresponding `custom.properties` file on the webapp pod has been fully updated using the following command.

```
1
kubectl -n <NAMESPACE> exec <WEBAPP POD> -- cat /usr/local/appian/ae/conf/custom.properties
```

[Some custom.property changes](../Custom_Configurations.html#custom-properties) require a restart of the Application Server (webapp component). For custom property changes that require an Application Server restart, you can delete your webapp pod(s) to initiate a restart of just this one component.

```
1
kubectl -n <NAMESPACE> delete pod <WEBAPP POD>
```

After deleting the Webapp pod, the [StatefulSet](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/) that backs the Webapp pod will automatically recreate it and the Webapp pod will have the configuration updates.

## Stopping the Appian site

The following steps will stop all components of the Appian site.

**Note:**  Because most Appian components are [StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/) with [PersistentVolumesClaims](crds.html#v1beta1statefulcomponent), the component data is persisted when shutting down Appian. The Appian site can then be restarted without data loss.

1.  Get the name of your Appian site.

    ```
    1
    kubectl get -n <NAMESPACE> appians
    ```

    Output should be similar to:

    ```
    1
    2
    NAME     URL                       STATUS   AGE
    appian   http://myappiansite.com   Ready    25m
    ```

2.  If you intend to restart the Appian site, make sure you have a copy of the existing Appian custom resource definition somewhere on your computer before shutting down (for example, `appian.yaml`). You will need it to restart the site. You can use the following command to print out the current appian custom resource definition.

    ```
    1
    kubectl -n <NAMESPACE> get appian <APPIAN NAME> -oyaml
    ```

    Copy the output and save as a YAML file.

3.  Delete the Appian site.

    ```
    1
    kubectl delete -n <NAMESPACE> appian <APPIAN NAME>
    ```

    For example:

    ```
    1
    kubectl delete -n my-site-namespace appian appian
    ```

    Shutdown can take some time and is a synchronous operation, so this command may appear to hang.

4.  Confirm the Appian site was deleted with the following commands.

    ```
    1
    kubectl -n <NAMESPACE> get pods
    ```

    ```
    1
    kubectl -n <NAMESPACE> get appians
    ```

    All Appian component pods should now be deleted. Output from running the `get appians` command should be:

    ```
    1
    No resources found in <NAMESPACE> namespace.
    ```

If your site has issues shutting down, follow the steps in [Troubleshooting site shutdown](troubleshooting-appian-k8s.html#troubleshooting-site-shutdown) to debug.

## Restarting the Appian site

Having [stopped the Appian site](#stopping-the-appian-site), you can restart as follows.

1.  Make any desired changes to the Appian custom resource YAML file.

2.  Run `kubectl apply` to restart the site with the changes:

    ```
    1
    kubectl apply -n <NAMESPACE> -f appian.yaml
    ```

3.  It will take about 20 minutes for the Appian site to fully recover. Check progress on the various Appian component pods with the following command.

    ```
    1
    kubectl -n <NAMESPACE> get pods
    ```

    The STATUS of the Appian component pods will transition from `Creating` to `Starting` to `Running`. When the Appian site is ready, you should see all pods have READY of `1/1` and STATUS of `Running`, similar to the following.

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
    NAME                                           READY   STATUS    RESTARTS   AGE
    appian-data-server-0                           1/1     Running   0          25m
    appian-httpd-8658f7fdb7-k9f6j                  1/1     Running   0          25m
    appian-httpd-bf56974d4-crv4g                   1/1     Running   0          25m
    appian-kafka-0                                 1/1     Running   0          25m
    appian-search-server-0                         1/1     Running   0          25m
    appian-service-manager-analytics00-0           1/1     Running   0          25m
    appian-service-manager-analytics01-0           1/1     Running   0          25m
    appian-service-manager-analytics02-0           1/1     Running   0          25m
    appian-service-manager-channels-0              1/1     Running   0          25m
    appian-service-manager-content-0               1/1     Running   0          25m
    appian-service-manager-download-stats-0        1/1     Running   0          25m
    appian-service-manager-execution00-0           1/1     Running   0          25m
    appian-service-manager-execution01-0           1/1     Running   0          25m
    appian-service-manager-execution02-0           1/1     Running   0          25m
    appian-service-manager-forums-0                1/1     Running   0          25m
    appian-service-manager-groups-0                1/1     Running   0          25m
    appian-service-manager-notifications-0         1/1     Running   0          25m
    appian-service-manager-notifications-email-0   1/1     Running   0          25m
    appian-service-manager-portal-0                1/1     Running   0          25m
    appian-service-manager-process-design-0        1/1     Running   0          25m
    appian-webapp-0                                1/1     Running   0          25m
    appian-zookeeper-0                             1/1     Running   0          25m
    ```

If you have any trouble with creating the Appian site, see [Troubleshooting site startup](troubleshooting-appian-k8s.html#troubleshooting-site-startup).

## Restarting the webapp component

You may need to restart the webapp component in the course of updating configurations such as [changes to customProperties](#changes-to-custom-properties).

**Caution:**  This type of restart is only safe to do for the webapp component. If you need to change the configuration specific to any other component, we recommend doing a [site restart](#restarting-the-appian-site) to apply the changes.

To restart the webapp component, delete its pod(s).

```
1
kubectl -n <NAMESPACE> delete pod <WEBAPP POD>
```

The default grace shutdown period is set to 65 minutes (3900 seconds) to allow system processes to finish, but it can be customized. If you want to set a shorter grace period, add `--grace-period=` by setting the value in seconds. For example, if you want to delete the pod after 1 minute (60 seconds), execute the following:

```
1
kubectl -n <NAMESPACE> delete pod <WEBAPP POD> --grace-period=60
```

After deletion, Kubernetes will immediately start a new pod that will take on any configuration changes.

## Fully deleting the Appian site

To fully delete the Appian site on Kubernetes, including all data, you will need to delete the [PersistentVolumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/) that are attached to the [StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/).

1.  Follow the steps to [Stop Appian](#stopping-the-appian-site).
2.  Get the existing PersistentVolumeClaims on the Appian namespace.

    ```
    1
    kubectl -n <NAMESPACE> get persistentvolumeclaim
    ```

3.  For _each_ Appian component that has a PersistentVolumeClaim (PVC), delete it with the following command.

    ```
    1
    kubectl -n <NAMESPACE> delete persistentvolumeclaim <APPIAN COMPONENT PVC>
    ```

4.  Depending on how the [PVC’s reclaim policy](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#reclaiming) is set up, deleting the PersistentVolumeClaim will in turn delete the PersistentVolume. Check that the Appian component PersistentVolumes were deleted with the following command.

    ```
    1
    kubectl -n <NAMESPACE> get persistentvolume
    ```

    If any PersistentVolumes for Appian components still exist, you’ll want to delete _each_ of them with the following command.

    ```
    1
    kubectl -n <NAMESPACE> delete persistentvolume <APPIAN COMPONENT PV>
    ```

## Uninstalling the Appian operator

1.  Uninstall the Appian operator via `helm uninstall`:

    ```
    1
    helm --namespace appian-operator uninstall appian-operator --wait
    ```

2.  Delete the `appian-operator` namespace

    ```
    1
    kubectl delete namespace appian-operator
    ```

3.  Delete the Appian custom resource definition (CRD):

    ```
    1
    kubectl delete crd appians.crd.k8s.appian.com
    ```

## Starting the Appian operator

To start the Appian operator, see the instructions to [Create the Appian operator](install-appian-on-k8s.html#1-install-the-appian-operator).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...