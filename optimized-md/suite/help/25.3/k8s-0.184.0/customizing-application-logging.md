---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/customizing-application-logging.html
original_path: k8s-0.184.0/customizing-application-logging.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Customizing Application Logging in Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to customize application logging for Appian on Kubernetes for self-managed customers. It details how to customize Webapp's [appian\_log4j.properties file](../Customizing_Application_Logging.html#application-logging), but its steps can easily be adapted to customize Search Server's [log4j2.properties file](../Customizing_Application_Logging.html#search-server-logging) or Service Manager's [log.properties and log\_db\_YY.properties files](../Customizing_Application_Logging.html#application-engine-logging).

## Customizing application logging for the first time

### Step 1: Download the file

First, download the `example_appian_log4j_override.properties` file shipped with the version of Appian on Kubernetes you're running. If you are not yet running Appian on Kubernetes, you can do so via `docker container run`:

```
1
docker container run --rm --entrypoint cat <WEBAPP_DOCKER_IMAGE> -- /usr/local/appian/ae/deployment/web.war/WEB-INF/resources/example_appian_log4j_override.properties > appian_log4j_override.properties
```

If you are already running Appian on Kubernetes and haven't customized application logging, you can also do so via `kubectl cp`:

```
1
kubectl -n <NAMESPACE> cp <WEBAPP_POD>:/usr/local/appian/ae/deployment/web.war/WEB-INF/resources/example_appian_log4j_override.properties appian_log4j_override.properties
```

### Step 2: Edit the file

Edit the downloaded `appian_log4j_override.properties` file. For more details on editing the file, see [Customizing Application Logging](../Customizing_Application_Logging.html).

### Step 3: Create a config map

Create a [config map](https://kubernetes.io/docs/concepts/configuration/configmap/) containing the file via `kubectl create configmap`:

```
1
kubectl -n <NAMESPACE> create configmap appian-log4j-override-properties --from-file=appian_log4j_override.properties
```

### Step 4: Configure the Appian custom resource

Configure your Appian custom resource with [additional volumes and volume mounts](volumes-and-volume-mounts.html#additional-volumes-and-volume-mounts) for Webapp such that your edited `appian_log4j_override.properties` file is mounted to `/usr/local/appian/ae/deployment/web.war/WEB-INF/resources/log-override-properties/appian_log4j_override.properties`:

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  webapp:
    additionalVolumes:
      - name: appian-log4j-override-properties
        configMap:
          name: appian-log4j-override-properties # The name of the config map
    additionalVolumeMounts:
      - name: appian-log4j-override-properties # The name of the volume
        mountPath: /usr/local/appian/ae/deployment/web.war/WEB-INF/resources/log-override-properties
```

**Caution:**  You can apply this configuration to an existing Appian custom resource via `kubectl -n <NAMESPACE> edit appian <APPIAN>`. Doing so will restart Webapp's pod(s).

## Updating your customizations

To update your customizations, edit the config map containing the `appian_log4j_override.properties` file:

```
1
kubectl -n <NAMESPACE> edit configmap appian-log4j-override-properties
```

**Note:**  You can [change your default editor](kubectl-cheat-sheet.html#changing-the-default-editor) by setting the `KUBE_EDITOR` environment variable.

## Handling upgrades

New versions of Appian on Kubernetes may update the shipped `appian_log4j.properties` file. Your overrides will still take effect, updating values as needed. If you're overriding a specific configuration, you may wish to check it still exists with the same name.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...