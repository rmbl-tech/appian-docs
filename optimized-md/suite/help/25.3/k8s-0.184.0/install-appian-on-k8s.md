---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/install-appian-on-k8s.html
original_path: k8s-0.184.0/install-appian-on-k8s.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page walks through how to install Appian on Kubernetes for self managed customers. The instructions show how to install on a server-based cluster.

This content is aimed at platform engineers with experience with Kubernetes, Helm, and container images. Appian is installed on Kubernetes using a custom resource definition (CRD) and an operator. Before performing the install you should be familiar with these concepts. To read about them, see [What is the Appian Operator?](what-is-appian-operator.html)

**Note:**  This documentation specifically deals with deployment, maintenance, and configuration tasks that are unique to Appian on Kubernetes. To install Appian on machine-based servers, see the [Installation Guide for self-managed Appian](../Installation_Guide.html).

These instructions help you configure a single replica instance of Appian on Kubernetes. Refer to our [high availability](high-availability.html) docs for more information if you would like to setup a multi-replica (HA) deployment of Appian using the Appian operator.

## Prerequisites

Before you begin, make sure you meet the following prerequisites and system requirements.

### Kubernetes

This release of Appian on Kubernetes has been explicitly tested against Kubernetes v1.29-v1.33. To check your server version, run `kubectl version` in the command line.

### Supported platforms

Appian on Kubernetes supports the following Kubernetes platforms:

-   [Microsoft Azure Kubernetes Service](https://azure.microsoft.com/en-us/products/kubernetes-service)
-   [Amazon EKS](https://aws.amazon.com/eks/)
-   [Red Hat OpenShift](https://www.redhat.com/en/technologies/cloud-computing/openshift/kubernetes-engine)
-   [Google GKE](https://cloud.google.com/kubernetes-engine)

### Unsupported platforms

-   **Windows**: Appian on Kubernetes does not support Kubernetes clusters using Windows Server nodes. The control plane must be on Linux.
-   **Serverless**: Appian on Kubernetes does not support AWS Fargate, GKE Autopilot, Azure ACI, or similar "serverless" virtualized environments.

## Pre-installation steps

### Request licenses

You need to request license files specifically for Appian on Kubernetes. There are two types of licenses: temporary and long-term.

**Note:**  It can take up to 4-5 business days to generate the long-term license files. We recommend that you request temporary license files first, or include both the temporary and long-term licenses in the same request.

-   **Temporary license** files are valid for 6 days. Request temporary license files when you're setting up a new Appian instance for the first time or a long-term license has expired and you want to renew it.
-   **Long-term license** files are valid for an extended period of time, and only valid for the site URL for which they were requested. Request long-term license files when you've already obtained temporary license files to set up an Appian instance, or your existing license files are about to expire and you want to proactively request replacements.
    -   If you are your organization's primary point of contact (POC), Appian license administrators will review your request and provide you with the license files or the next steps required to generate the long-term license files.
    -   If you are not your organization's primary POC, then the request will first go to your organization's POC who will have to approve this request. If the POC approves the request, the Appian license administrators will review the request and provide you the license files or the next steps required to generate the long-term license files.

**Note:**  You will need to submit both an Appian site name (custom resource name) and a valid site URL before we generate license files, as detailed in the steps below. If you have not requested a license in this manner before, you must do so at your earliest convenience.

1.  To request temporary and long-term licenses, [create a new support case on Forum](https://forum.appian.com/suite/sites/myappian/page/support).

2.  In the **Case Title**, enter _Self-Managed Kubernetes License Request_.

3.  Enter your Appian site name. This should be what you intend to use when creating the Appian custom resource. It must contain only lowercase alphanumeric characters or the symbols `-` or `.` and must be no more than 16 characters. For example, `company-name`.

4.  Enter the URL you intend to use for your Appian site, following the same pattern as above. For example, `https://company-name.com`. This will be the URL you use in the `.spec.webapp.url` field of the CRD.

5.  For **Severity**, select _4 - Questions, Licenses, Forum Accounts, and Support Accounts_.

### Download artifacts

Download the [Appian operator Helm chart](artifacts.html#appian-operator-helm-chart), pull the [Appian operator and Appian container images](artifacts.html#appian-operator-and-appian-images), and [push the images](artifacts.html#push-the-images-to-your-registry) to your organization's registry.

### Decide how you want to provision CA certificates

Before you install the Appian operator Helm chart, you'll need to determine how you want to provision [CA certificates](certs.html). The [steps outlined below](#1-install-the-appian-operator) follow our preferred option of using a generated [self-signed certificate](certs.html) with cert-manager.

### Expose Appian

Appian needs to be exposed outside of Kubernetes to allow access to Apache Web Server (httpd) and webapp components. See [Exposing Appian Outside Kubernetes](exposing-appian-on-k8s.html) to learn about different ways of exposing Appian.

How you choose to expose Appian will affect the configuration of the [Appian custom resource](crds.html).

#### (Optional) Install NGINX ingress controller

To expose Appian via [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/), you can optionally do a new install of NGINX Ingress Controller on Kubernetes. If you are exposing Appian using a different method or are already using an ingress controller on your Kubernetes cluster, you can ignore this step.

1.  [Install ingress-nginx using Helm](https://kubernetes.github.io/ingress-nginx/deploy/#using-helm).
2.  Be sure to [verify the install](https://kubernetes.github.io/ingress-nginx/deploy/#verify-installation).

### Setup relational database

Appian on Kubernetes does not install a relational database. You need to provide your own relational database for each site to serve as its [Appian data source](../Configuring_Relational_Databases.html#appian-data-source). Ensure you provide at least one [business data source](../Configuring_Relational_Databases.html#business-data-sources) to make use of [data stores](../Data_Stores.html).

Your database can either run within the Kubernetes cluster or outside of it. If you want to connect directly to a database outside the cluster, ensure that the database is accessible from within the cluster.

#### (Optional) Configure Appian RPA database

To use Appian RPA, you must also [create and configure multiple databases on the MariaDB server](rpa-setup-on-k8s.html), ensuring the URL, username, and password are correctly set in the configuration files.

#### Install RDBMS or JDBC drivers

Refer to **System Requirements** to see the [relational databases](../System_Requirements.html#databases) Appian supports.

If you'd like to use Aurora MySQL, MySQL or IBM Db2 as the Appian data source or a business data source, you'll need to use the Appian CRD's support for specifying [init containers](init-and-sidecar-containers.html#using-init-containers-to-add-jars-to-tomcats-classpath). The same goes for older supported versions of other relational databases that require different driver versions.

## Install Appian on Kubernetes

Once you complete the [pre-installation steps](#pre-installation-steps), you're ready to install Appian on Kubernetes.

The commands below include placeholders that you'll need to replace with values specific to your environment. For example, you'll want to replace:

-   `<APPIAN_OPERATOR_VERSION>`
-   `<REGISTRY_HOSTNAME>`
-   `<MY_SITE_NAMESPACE>`
-   `<PATH TO LICENSE>`

### 1\. Install the Appian operator

The following steps will install the Appian operator in the `appian-operator` namespace from the [Appian operator Helm chart](artifacts.html#appian-operator-helm-chart) you [downloaded earlier](#download-artifacts).

Additionally, these steps follow our preferred option of using a generated [self-signed certificate](certs.html) with `cert-manager`. See additional instructions to [configure the `caBundle` field directly](certs.html#configure-cabundle-field-directly).

1.  Using [kubectl](kubectl-cheat-sheet.html), create the `appian-operator` namespace in the command line:

    ```
    1
    kubectl create namespace appian-operator
    ```

2.  Install the Appian operator [Helm chart](helm-chart-values.html) using this basic command:

    ```
    1
    2
    3
    4
    helm --namespace appian-operator install appian-operator-<APPIAN_OPERATOR_VERSION>.tgz \
    --set image.repository=<REGISTRY_HOSTNAME>/appian/appian-operator:<APPIAN_OPERATOR_VERSION> \
    ... \
    --wait
    ```

    You may need to specify additional values and annotations in this command, including:

    -   If you changed the certificate name or secret name when you created the certificate, use those names here instead of `appian-operator-webhooks` and `appian-operator-webhooks-certificate`.
    -   For the mutating and validating admission webhooks, add `--set webhooks.webhookConfiguration.annotations."cert-manager.io/inject-ca-from:appian-operator/<your certificate name>"`.
    -   To populate the `caBundle` field from a cert-manager certificate, add `--set webhooks.secret=appian-operator-webhooks-certificate`:

    Here's an example of the full Helm command that you might run:

    ```
    1
    2
    3
    4
    5
    helm --namespace appian-operator install appian-operator appian-operator-v0.117.0.tgz \
    --set image.repository=registry.example.com/appian/appian-operator \
    --set webhooks.secret=appian-operator-webhooks-certificate \
    --set webhooks.webhookConfiguration.annotations."cert-manager\.io/inject-ca-from"=appian-operator/appian-operator-webhooks \
    --wait
    ```

    **Note:**  If the container registry where your Appian operator image resides is private, [create a secret of type `docker-registry`](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) and provide the name of the secret via the option `--set imagePullSecrets={<NAME>}` in the command above.

    If you've pushed the operator image with a different tag that doesn't match the [version](https://helm.sh/docs/topics/charts/#charts-and-versioning) / [app version](https://helm.sh/docs/topics/charts/#the-appversion-field) of the chart, you'll want to include the option `--set image.tag=<TAG>`.

3.  This command may take a minute or two to complete. When complete, use the following command to check that the correct Appian operator deployments, replicasets, and pods were created:

    ```
    1
     kubectl -n appian-operator get deployments,replicasets,pods
    ```

    The output should be similar to:

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
       NAME                                          READY   UP-TO-DATE   AVAILABLE   AGE
       deployment.apps/appian-operator-controllers   1/1     1            1           90s
       deployment.apps/appian-operator-webhooks      1/1     1            1           90s

       NAME                                                     DESIRED   CURRENT   READY   AGE
       replicaset.apps/appian-operator-controllers-55cfcf74f    1         1         1       90s
       replicaset.apps/appian-operator-webhooks-5bd6588b95      1         1         1       90s

       NAME                                              READY   STATUS    RESTARTS   AGE
       pod/appian-operator-controllers-55cfcf74f-sr4jd   1/1     Running   0          90s
       pod/appian-operator-webhooks-5bd6588b95-7lggk     1/1     Running   0          90s
    ```

    For each of the operator's controllers and webhooks, you should see a single deployment, replicaset, and pod. Once the Pods' **STATUS** are all `Running`, the **READY** column should show `1/1` within 1 minute.

4.  Validate that the Appian CRD installed successfully by running this command:

    ```
    1
     kubectl get crd appians.crd.k8s.appian.com
    ```

    The output should be similar to:

    ```
    1
    2
     NAME                         CREATED AT
     appians.crd.k8s.appian.com   2022-03-04T12:00:00Z
    ```

If you have any trouble installing the operator, see [Troubleshooting Appian on Kubernetes](troubleshooting-appian-k8s.html).

### 2\. Create the Appian site namespace

If you haven't done so already, create a new namespace in Kubernetes for your Appian site and all of its components. The namespace can have any name; these instructions use `<MY_SITE_NAMESPACE>` as a placeholder.

```
1
kubectl create namespace <MY_SITE_NAMESPACE>
```

### 3\. Load licenses

When you [requested your licenses](#request-licenses), you received a zip with two files: `k3.lic` and `k4.lic`, and a third file called `appian.lic`. The first two will be installed as secrets on Kubernetes, and `appian.lic` will be installed as a config map.

1.  Unzip the product license files.
2.  Load the product license files as secrets into Kubernetes. Replace `<PATH TO LICENSE>` with the location where you unzipped the license files in step 1.

    ```
    1
     kubectl -n <MY_SITE_NAMESPACE> create secret generic k3lic --from-file=<PATH TO LICENSE>/k3.lic
    ```

    ```
    1
     kubectl -n <MY_SITE_NAMESPACE> create secret generic k4lic --from-file=<PATH TO LICENSE>/k4.lic
    ```

3.  Create a [config map](https://kubernetes.io/docs/concepts/configuration/configmap/) for the `appian.lic` file, and name the config map as you wish (replacing `<MY_SITE_NAMESPACE>` in the following command):

    ```
    1
     kubectl -n <MY_SITE_NAMESPACE> create configmap appian-lic --from-file=<PATH TO LICENSE>/appian.lic
    ```

    When you configure your Appian YAML in the next step, define the name of your license config map with the `appianLicConfigMapName` property.

### 4\. Create an Appian YAML file

**Note:**  **Migrating from a server-based installation to Appian on Kubernetes?** Use the YAML file generated by the [migration tool's](migration-tool.html) `merge` command instead of the one below.

We'll now configure a YAML file used as the spec to deploy the Appian custom resource (CR).

1.  [Download the appian.yaml template file](appian.yaml). This will serve as a basis for the Appian CR spec. In the next step, we recommend the fields and values to change.

    **Caution:**  The code below serves as just a starting point. Refer to the [Custom Resource Definition topic](crds.html) to explore all supported fields and values. The `version:` field needs to be updated with a complete build. The code snippet below, as well as the downloadable template needs `version:` updated.

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
    49
    50
    51
    52
    53
    54
    55
    56
    57
    58
    59
    60
    61
    62
    63
    64
    65
    66
    67
    68
    69
    70
    71
    72
    73
    74
    75
    76
    77
    78
    79
    80
    81
    82
    83
    84
    85
    86
    87
    88
    89
    90
    91
    92
    93
    94
    95
    96
    97
    98
    99
    100
    101
    102
    103
    104
    105
    106
    107
    108
    109
    110
    111
    112
    113
    114
    115
    116
    117
    118
    119
    120
    121
    122
    123
    124
    125
    126
    127
    128
    129
    130
    131
    132
    133
    134
    135
    136
    137
    138
    139
    140
    141
    142
    143
    144
    145
    146
    147
    148
    149
    150
    151
    152
    153
    154
    155
    156
    157
    158
    159
    160
    161
    162
    163
    164
    165
    166
    167
    168
    169
    170
    171
    172
    173
    174
    175
    176
    177
    178
    179
    180
    181
    182
    183
    184
    185
    186
    187
    188
    189
    190
    191
    192
    193
    194
    195
    196
    197
    198
    199
    200
    201
    202
    203
    204
    205
    206
    207
    208
    209
    210
    211
    212
    213
    214
    215
    216
    217
    218
    219
    220
    221
    222
    223
    224
    225
    226
    227
    228
    229
    230
    231
    232
    233
    234
    235
    236
    237
    238
    239
    240
    241
    242
    243
    244
    245
    246
    247
    248
    249
    250
    251
    252
    253
    254
    255
    256
    257
    258
    259
    260
    261
    262
    263
    264
    265
    266
    267
    268
    269
    270
    271
    272
    273
    274
    275
    276
    277
    278
    279
    280
    281
    282
    283
    284
    285
    286
    287
    288
    289
    290
    291
    292
    293
    294
    295
    296
    297
    298
    299
    300
    301
    302
    303
    304
    305
    306
    307
    308
     apiVersion: crd.k8s.appian.com/v1beta1
     kind: Appian
     metadata:
       # USER ACTION REQUIRED - If using long-term licenses, update to match the
       # wildcard pattern of the licenses you were provided
       # https://docs.appian.com/suite/help/latest/k8s/install-appian-on-k8s.html#request-licenses
       name: appian
     spec:
       # https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/
       imagePullSecrets: [] # []string
         # - regcred
       # USER ACTION REQUIRED - Update to the full version of Low code platform that Appian runs on
       version: 25.3.X.X
       k3LicSecretName: k3lic
       k4LicSecretName: k4lic
       appianLicConfigMapName: appian-lic
       # USER ACTION REQUIRED - Update to match the scheme, host, and, optionally,
       # port of your site
       # https://docs.appian.com/suite/help/latest/Post-Install_Configurations.html#configure-your-site-url
       url: http://myappiansite.com
       # https://docs.appian.com/suite/help/latest/Custom_Configurations.html#custom-properties
       customProperties: # map[string]string
         # https://docs.appian.com/suite/help/latest/resource-requests-and-limits.html#webapp
         conf.appserver.maxHeapSize: 3072m
       zookeeper:
         # USER ACTION REQUIRED - Update to match the coordinates of the Appian
         # Zookeeper container image as you pushed it to your registry
         image:
           repository: registry.example.com/appian/zookeeper
         replicas: 1
         volumeClaimTemplateSpec: # corev1.PersistentVolumeClaimSpec
           # storageClassName: ""
           accessModes:
             - ReadWriteOnce
           resources:
             requests:
               # Configure based on your expected Zookeeper storage needs
               storage: 5Gi
         env: # []corev1.EnvVar
           # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#zookeeper
           - name: ZK_HEAP_MIN
             value: 128m
           - name: ZK_HEAP_MAX
             value: 256m
         # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#zookeeper
         resources: # corev1.ResourceRequirements
           requests:
             cpu: 100m
             memory: 307Mi # ZK_HEAP_MAX * 1.2 to account for non-heap memory
           limits:
             cpu: 200m
             memory: 448Mi # ZK_HEAP_MAX * 1.75 to account for non-heap memory
       kafka:
         # USER ACTION REQUIRED - Update to match the coordinates of the Appian Kafka
         # container image as you pushed it to your registry
         image:
           repository: registry.example.com/appian/kafka
         replicas: 1
         volumeClaimTemplateSpec: # corev1.PersistentVolumeClaimSpec
           # storageClassName: ""
           accessModes:
             - ReadWriteOnce
           resources:
             requests:
               # Configure based on your expected Kafka storage needs
               storage: 5Gi
         env: # []corev1.EnvVar
           # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#kafka
           - name: KAFKA_HEAP_MIN
             value: 512m
           - name: KAFKA_HEAP_MAX
             value: 1024m
         # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#kafka
         resources: # corev1.ResourceRequirements
           requests:
             cpu: 500m
             memory: 1229Mi # KAFKA_HEAP_MAX * 1.2 to account for non-heap memory
           limits:
             cpu: 2000m
             memory: 1792Mi # KAFKA_HEAP_MAX * 1.75 to account for non-heap memory
       searchServer:
         # USER ACTION REQUIRED - Update to match the coordinates of the Appian
         # Search Server container image as you pushed it to your registry
         image:
           repository: registry.example.com/appian/search-server
         replicas: 1
         volumeClaimTemplateSpec: # corev1.PersistentVolumeClaimSpec
           # storageClassName: ""
           accessModes:
             - ReadWriteOnce
           resources:
             requests:
               # Configure based on your expected Search Server storage needs
               storage: 5Gi
         env: # []corev1.EnvVar
           # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#search-server
           - name: SS_HEAP
             value: 1280m
         # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#search-server
         resources: # corev1.ResourceRequirements
           requests:
             cpu: 200m
             memory: 1.5Gi # SS_HEAP + 256Mi to account for non-heap memory
           limits:
             cpu: 300m
             memory: 3Gi # Double requests.memory
       dataServer:
         # USER ACTION REQUIRED - Update to match the coordinates of the Appian Data
         # Server container image as you pushed it to your registry
         image:
           repository: registry.example.com/appian/data-server
         replicas: 1
         topology:
           rtsCount: 2
         volumeClaimTemplateSpec: # corev1.PersistentVolumeClaimSpec
           # storageClassName: ""
           accessModes:
             - ReadWriteOnce
           resources:
             requests:
               # Configure based on your expected Data Server storage needs
               storage: 5Gi
         # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#data-server
         resources: # corev1.ResourceRequirements
           requests:
             cpu: 100m
             memory: 512Mi
           limits:
             cpu: 200m
             memory: 1Gi
       serviceManager:
         # USER ACTION REQUIRED - Update to match the coordinates of the Appian
         # Service Manager container image as you pushed it to your registry
         image:
           repository: registry.example.com/appian/service-manager
         replicas: 1
         topology:
           analyticsExecShardCount: 3
         volumeClaimTemplateSpec: # corev1.PersistentVolumeClaimSpec
           # storageClassName: ""
           accessModes:
             - ReadWriteOnce
           resources:
             requests:
               # Configure based on your expected Service Manager storage needs
               storage: 5Gi
         # https://docs.appian.com/suite/help/latest/k8s/high-availability.html
         # haExistingClaim: ""
         env: # []corev1.EnvVar
           # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#service-manager
           - name: KOMODO_DIRECT_MEM_MAX
             value: 512m
           - name: KOMODO_HEAP_MAX
             value: 1g
         # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#service-manager
         resources: # corev1.ResourceRequirements
           requests:
             cpu: 200m
             memory: 2.5Gi
           limits:
             cpu: 2000m
             memory: 32Gi
       webapp:
         # USER ACTION REQUIRED - Update to match the coordinates of the Appian
         # Webapp container image as you pushed it to your registry
         image:
           repository: registry.example.com/appian/webapp
         replicas: 1
         # https://docs.appian.com/suite/help/latest/Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls
         # staticUrl: http://myappiansite-static.com
         # dynamicUrl: http://myappiansite-dynamic.com
         # Configuration for connecting to the Appian and business data sources. If
         # connecting to MySQL or IBM Db2, use an init container to add the
         # appropriate RDBMS/JDBC driver JAR to Tomcat's classpath
         # https://docs.appian.com/suite/help/latest/Configuring_Relational_Databases.html#provide-data-source-connection-information
         # https://docs.appian.com/suite/help/latest/k8s/init-and-sidecar-containers.html#using-init-containers-to-add-jars-to-tomcat's-classpath
         dataSources:
           primary:
             name: jdbc/AppianDS
             type: javax.sql.DataSource
             factory: org.apache.tomcat.jdbc.pool.DataSourceFactory
             driverClassName: org.mariadb.jdbc.Driver
             url: "jdbc:mariadb://mariadb-appian.<MY_SITE_NAMESPACE>.svc.cluster.local:3306/AppianDS?useOldAliasMetadataBehavior=true"
             username: username
             # USER ACTION REQUIRED - Create a secret containing the password used to
             # connect to the data source and reference it here
             passwordSecretKeyRef:
               name: ""
               key: ""
             attributes:
               initialSize: "5"
               maxActive: "200"
               defaultTransactionIsolation: "READ_COMMITTED"
               maxWait: "30000"
               minIdle: "5"
               minEvictableIdleTimeMillis: "90000"
               timeBetweenEvictionRunsMillis: "450000"
               validationQuery: "SELECT 1"
               testOnBorrow: "true"
           business: []
         # https://docs.appian.com/suite/help/latest/k8s/email.html
         # passwordsPropertiesSecretName: ""
         volumeClaimTemplateSpec: # corev1.PersistentVolumeClaimSpec
           # storageClassName: ""
           accessModes:
             - ReadWriteOnce
           resources:
             requests:
               # Configure based on your expected Webapp storage needs
               storage: 5Gi
         # https://docs.appian.com/suite/help/latest/k8s/high-availability.html
         # haExistingClaim: ""
         # https://docs.appian.com/suite/help/latest/k8s/health-check-k8s.html
         # healthCheckExistingClaim: ""
         # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#webapp
         resources: # corev1.ResourceRequirements
           requests:
             cpu: 100m
             memory: 4.5Gi
           limits:
             cpu: 1000m
             memory: 6Gi
       httpd:
         # USER ACTION REQUIRED - Update to match the coordinates of the Appian httpd
         # container image as you pushed it to your registry
         image:
           repository: registry.example.com/appian/httpd
         replicas: 2
       # https://docs.appian.com/suite/help/latest/k8s/exposing-appian-on-k8s.html
       service:
         annotations: {} # map[string]string
         # https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types
         type: ClusterIP
       # https://docs.appian.com/suite/help/latest/k8s/exposing-appian-on-k8s.html#ingress
       ingress:
         enabled: true
         # USER ACTION REQUIRED - Use either the ingressClassName field or the
         # deprecated kubernetes.io/ingress.class annotation to refer to your desired
         # ingress class
         # https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class
         annotations: {} # map[string]string
           # kubernetes.io/ingress.class: ""
         # ingressClassName: ""
         # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#httpd
         resources: # corev1.ResourceRequirements
           requests:
             cpu: 100m
             memory: 32Mi
           limits:
             cpu: 300m
             memory: 48Mi
         # USER ACTION REQUIRED - Uncomment the rpa section below if you are deploying Appian RPA
       # rpa:
       #   # USER ACTION REQUIRED - Update to match the version of the Appian RPA image
       #   # that you pulled for deployment
       #   version: 9.9.0
       #   # USER ACTION REQUIRED - Update to match the coordinates of the Appian
       #   # RPA container image as you pushed it to your registry
       #   # that you pulled for deployment
       #   image:
       #     repository: registry.example.com/appian/rpa
       #   volumeClaimTemplateSpec:
       #     accessModes:
       #       - "ReadWriteOnce"
       #     resources:
       #       requests:
       #         storage: "5Gi"
       #   # USER ACTION REQUIRED - Update to match the hostname and port for your Appian RPA MariaDB
       #   database:
       #     hostname: my-rpa-mariadb
       #     port: 3306
       #     schema: Rpa
       #     # USER ACTION REQUIRED - Create a secret containing the password used to
       #     # connect to the rpa data source and reference it here
       #     # https://docs.appian.com/suite/help/latest/k8s/rpa-setup-on-k8s.html
       #     credentialsSecretName: rpa-data-source-credentials
       #   # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#rpa
       #   properties:
       #     # [OPTIONAL] This represents the max memory (Xmx) allocated to the JVM.  If omitted, this will default to 2048
       #     rpa.max.memory: 4096
       #     # [OPTIONAL] RPA expects to have unrestricted internet access by default, set this to "offline" if that is not the case.
       #     # If omitted, this will default to "online"
       #     rpa.artifact.resolution: "online"
       #   # USER ACTION REQUIRED - Update to match the url and port for your Appian RPA MariaDB
       #   rtdo:
       #     dataSource:
       #       url: jdbc:mariadb://my-rpa-mariadb:3306/Rtdo
       #       username: my-rpa-mariadb-username
       #       passwordSecretName: rpa-data-source-credentials
       #   # USER ACTION REQUIRED - Update to match the url and port for your Appian RPA MariaDB
       #   rpdo:
       #     dataSource:
       #       url: jdbc:mariadb://my-rpa-mariadb:3306/Rpdo
       #       username: my-rpa-mariadb-username
       #       passwordSecretName: rpa-data-source-credentials
       #   # USER ACTION REQUIRED - Update to match the url and port for your Appian RPA MariaDB
       #   robotRDO:
       #     dataSource:
       #       url: jdbc:mariadb://my-rpa-mariadb:3306/RobotRDO
       #       username: my-rpa-mariadb-username
       #       passwordSecretName: rpa-data-source-credentials
       #   # https://docs.appian.com/suite/help/latest/k8s/resource-requests-and-limits.html#rpa
       #   resources:
       #     requests:
       #       cpu: 1000m
       #       memory: 2.5Gi
       #     limits:
       #       cpu: 2000m
    ```

2.  At minimum, change the following field values in `appian.yaml` with custom values. Save the file.

    | Key | Current Value | Your Value |
    | --- | --- | --- |
    | `.metadata.name` | `appian` | This should be the same Appian site name specified when [requesting your long-term license](#request-licenses).

    If you are using a temporary license, you can specify any name here, lower-case, all one word. If you intend to upgrade the temporary license on an install to a long-term license, it is easiest to keep this same name for the long-term license request. |
    | `.spec.appianLicConfigMapName` | appian-lic | Name of the ConfigMap associated with the `appian.lic` file. This is required for your site to start.

     |
    | `.spec.webapp.url` | `http://myappiansite.com` | Fully qualified domain name of the Appian site's URL including the scheme, host, and, optionally, port. For example: `http://www.example.com:8080`.

    For more info, see SERVER\_AND\_PORT in [Configure your Site URL](../Post-Install_Configurations.html#configure-your-site-url).

     |
    | `.spec.webapp.dataSources.primary.driverClassName` | `org.mariadb.jdbc.Driver` | Driver class name for your RDBMS. For examples of each of the supported databases, see [Configuring Data Sources](../Configuring_Relational_Databases.html#-configuring-data-sources). |
    | `.spec.webapp.dataSources.primary.url` | `jdbc:mariadb://mariadb-appian.<MY_SITE_NAMESPACE>.svc.cluster.local:3306/AppianDS?useOldAliasMetadataBehavior=true` | Appian data source connection URL of your RDBMS. For URL examples of each of the supported databases, see [Configuring Data Sources](../Configuring_Relational_Databases.html#-configuring-data-sources).

     |
    | `.spec.webapp.dataSources.primary.username` | `username` | Plain-text username for your RDBMS connection.

    If you installed a new copy of MariaDB in earlier steps, this will be the username created in that step. For example: `username`. |
    | `.spec.webapp.dataSources.primary.password` | `password` | Plain-text password for your RDBMS connection.

    If you installed a new copy of MariaDB in earlier steps, this will be the password created in that step. For example: `password`. |
    | `.spec.webapp.dataSources.primary.attributes.validationQuery` | `"SELECT 1"` | Validation query for your RDBMS connection. For examples of each of the supported databases, see [Configuring Data Sources](../Configuring_Relational_Databases.html#-configuring-data-sources).

    If you installed a new copy of MariaDB in earlier steps, this will be `"SELECT 1"`. |
    | `.spec.[COMPONENT].image.repository`
    (Multiple fields - one field per component) | `registry.example.com/appian/<COMPONENT>` | Image location on your Docker registry of each Appian component. If you are using a custom registry, change this image for each Appian component. If you did not re-tag your images and push to a custom registry, use the current values that include `registry.example.com`. |
    | `.spec.[COMPONENT].image.tag`
    (Multiple fields - one field per component) | Various tag values for each Appian component. | The image version number for each Appian component. You can find these tags with the command: `docker images <MY DOCKER REGISTRY>/appian/*`

    For example: `docker images registry.example.com/appian/*` |

    **Note:**  We highly recommend you [configure application logging](customizing-application-logging.html) to your needs with Log4j.

3.  Change any other custom values in `appian.yaml` spec. Refer to the [Custom Resource Definition topic](crds.html) to explore all supported fields and values.

    Here are some additional configuration settings to consider:

    -   The Apache Web Server (`httpd`) component is specified in lines 223-228, though it is optional and can be taken out if you are using another web server or don't require one.
    -   We are only specifying an Appian data source in the spec, defined in the [.spec.webapp.dataSources.business](crds.html#v1beta1datasourceconfig) field. To use [Data Store Objects](../Data_Stores.html), you'll also want to provide at least one [business data store](../Configuring_Relational_Databases.html#business-data-sources). This is just one method of configuring data sources, and can also be completed from the [Administration Console](../Appian_Administration_Console.html#data-sources).
    -   Since we use NGINX ingress controller for Appian on Kubernetes, we are setting `.spec.ingress.enabled` to `true` in the spec. See [Exposing Appian Outside Kubernetes](exposing-appian-on-k8s.html) for configuration details.
    -   The `.spec.[COMPONENT].resources` fields in the `appian.yaml` spec are suggested [resource values](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/). For more on tuning these fields, see [Resource Requests and Limits](resource-requests-and-limits.html).
    -   As most Appian components are [StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/#components) that rely on persistent storage, the `.spec.[STATEFUL_COMPONENT].volumeClaimTemplateSpec` fields have suggested values that define this storage. For more on these fields, see [PersistentVolumeClaimSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#persistentvolumeclaimspec-v1-core).
    -   The `appian.yaml` specifies one Pod `replica` per Appian component. Refer to our [high availability](high-availability.html) docs for setting up multiple replicas in an HA instance of Appian.
    -   You may want to set up [Horizontal Pod Autoscaling on the Apache Web Server (httpd)](horizontal-pod-autoscaling.html).
    -   You may want to define [custom properties](../Custom_Configurations.html#custom-properties) for Appian using the [.spec.customProperties](crds.html#v1beta1appianspec) field.

    **Note:**  You will need to set the [Search Server kernel settings](search-server.html) either using an init container in the CR spec or using admin commands after the install.

### 5\. Create the Appian site

**Note:**  **Migrating from a server-based installation to Appian on Kubernetes?** Run the [migration tool's](migration-tool.html) `import` command instead of creating the Appian custom resource directly.

1.  In the command line, run `kubectl create` to create the Appian site based on the `appian.yaml`:

    ```
    1
    kubectl create -n <MY_SITE_NAMESPACE> -f <PATH TO APPIAN.YAML>
    ```

2.  It will take about 20-30 minutes for the Appian site to fully start. Check progress on the various Appian component pods with the following command.

    ```
    1
    kubectl -n <MY_SITE_NAMESPACE> get pods
    ```

    The **STATUS** of the Appian component pods will change from `Pending` to `Running`. When the Appian site is ready, you should see all pods have **READY** of `1/1` and **STATUS** of `Running`, similar to the following:

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

3.  In the command line, get the `appians` custom resource to check the status of your Appian site (replacing `<MY_SITE_NAMESPACE>` to match what you named your site):

    ```
    1
    kubectl get -n <MY_SITE_NAMESPACE> appians
    ```

    The **STATUS** of a starting site will change from not set to `Creating` to `Starting` to `Ready`. The transition from not set to `Creating` to `Starting` should happen within seconds. The transition from `Starting` to `Ready` should happen within 20 to 30 minutes.

    Make sure the STATUS is `Ready` before accessing your site, similar to:

    ```
    1
    2
    NAME     URL                       STATUS   AGE
    appian   http://myappiansite.com   Ready    25m
    ```

If you have any trouble with creating the Appian site, see [Troubleshooting Appian on Kubernetes](troubleshooting-appian-k8s.html).

If you need to edit the Appian CR and restart, see [Editing, Stopping, and Restarting](start-stop-appian-on-k8s.html#editing-and-restarting-appian).

### 6\. Access your Appian site

Newly created sites are bootstrapped with a system administrator user. This user cannot access the [Admin Console](../Appian_Administration_Console.html). The steps below detail how to login and create a new system administrator user that can access the Admin Console.

1.  In a browser, navigate to `<URL>/suite/design/users` where `<URL>` is the value you set in the [.spec.webapp.url](crds.html#v1beta1webapp) field of the Appian custom resource.
2.  Login as the bootstrap system administrator user with username `Administrator` and temporary password `admin`. Change the user's password when prompted.
3.  Click **CREATE USER**.
4.  Under **Security > User Type**, select **System Administrator**.
5.  If you haven't configured your site to [send email](email.html), **make sure to manually assign a temporary password**. If you omit a temporary password, Appian will attempt to send an email to the specified email address with a randomly generated temporary password. Since the site has not yet been configured to send email, this will fail and there will be no way to recover the user's password.
6.  Logout and login as the newly created user.

**Tip:**  To stop the Appian site, see [stopping the Appian site](start-stop-appian-on-k8s.html#stopping-the-appian-site).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...