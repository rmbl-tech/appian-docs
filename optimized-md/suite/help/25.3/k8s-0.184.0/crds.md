---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/crds.html
original_path: k8s-0.184.0/crds.html
version: "25.3"
title: "Appian Custom Resource Definition"
page_id: "k8s-0.184.0/crds"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Custom Resource Definition

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page documents the types that together compose the Appian [custom resource definition (CRD)](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/) in Appian on Kubernetes for self-managed customers.

**Tip:**  Use this page as a reference as you [set up your Appian custom resource during installation](install-appian-on-k8s.html#4-create-an-appian-yaml-file).

The root of the CRD is defined by the [Appian type](#v1beta1appian). This documentation is also available by running:

```
1
kubectl explain appians
```

Different API versions of the CRD are supported depending on your [version](release-notes.html) of the operator.

## v1beta1

### v1beta1.Appian

Appian is the schema for Appian custom resources.

| Field | Description | Required |
| --- | --- | --- |
| [metav1.TypeMeta](https://pkg.go.dev/k8s.io/apimachinery@v0.33.0/pkg/apis/meta/v1#TypeMeta) | (Members of [metav1.TypeMeta](https://pkg.go.dev/k8s.io/apimachinery@v0.33.0/pkg/apis/meta/v1#TypeMeta) are embedded into this type.) |   |
| `metadata`
[metav1.ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#objectmeta-v1-meta) |   | false |
| `spec`
[v1beta1.AppianSpec](#v1beta1appianspec) | The desired state of Appian. | true |
| `status`
[v1beta1.AppianStatus](#v1beta1appianstatus) | The observed state of Appian. | false |

### v1beta1.AppianList

AppianList contains a list of Appian.

| Field | Description | Required |
| --- | --- | --- |
| [metav1.TypeMeta](https://pkg.go.dev/k8s.io/apimachinery@v0.33.0/pkg/apis/meta/v1#TypeMeta) | (Members of [metav1.TypeMeta](https://pkg.go.dev/k8s.io/apimachinery@v0.33.0/pkg/apis/meta/v1#TypeMeta) are embedded into this type.) |   |
| `metadata`
[metav1.ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#listmeta-v1-meta) |   | false |
| `items`
\[\][v1beta1.Appian](#v1beta1appian) | A list of Appian. | true |

### v1beta1.AppianSpec

AppianSpec defines the desired state of Appian.

| Field | Description | Required |
| --- | --- | --- |
| `imagePullSecrets`
\[\]string | Names of existing image pull secrets. See [Pull an Image from a Private Registry](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) for more info. | false |
| `rbac`
[v1beta1.RBAC](#v1beta1rbac) | Configuration for creating RBAC resources. | false |
| `networkPolicies`
[v1beta1.NetworkPolicyConfig](#v1beta1networkpolicyconfig) | Configuration for creating network policy resources. | false |
| `appianLicConfigMapName`
string | Name of the existing config map containing the `appian.lic` file. | false |
| `k3LicSecretName`
string | Name of the existing secret containing the `k3.lic` file. Defaults to `k3lic`. _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ | false |
| `k4LicSecretName`
string | Name of the existing secret containing the `k4.lic` file. Defaults to `k4lic`. _For sites with a single Data Server replica, updating this field requires restarting Data Server's pod._ | false |
| `customProperties`
map\[string\]string | Appian's custom properties. See [Custom Properties](../Custom_Configurations.html#custom-properties) for more info. | false |
| `searchServer`
[v1beta1.SearchServer](#v1beta1searchserver) | Configuration for Search Server. | true |
| `dataServer`
[v1beta1.DataServer](#v1beta1dataserver) | Configuration for Data Server. | true |
| `kafka`
[v1beta1.Kafka](#v1beta1kafka) | Configuration for Kafka. | true |
| `mirrorMaker`
\*[v1beta1.MirrorMaker](#v1beta1mirrormaker) | Configuration for MirrorMaker. | false |
| `zookeeper`
[v1beta1.Zookeeper](#v1beta1zookeeper) | Configuration for Zookeeper. | true |
| `serviceManager`
[v1beta1.ServiceManager](#v1beta1servicemanager) | Configuration for Service Manager. | true |
| `webapp`
[v1beta1.Webapp](#v1beta1webapp) | Configuration for Webapp. | true |
| `httpd`
\*[v1beta1.Httpd](#v1beta1httpd) | Configuration for httpd. | false |
| `rpa`
\*[v1beta1.RPA](#v1beta1rpa) | Configuration for RPA. | false |
| `service`
[v1beta1.Service](#v1beta1service) | Configuration for creating Appian's service resource. | false |
| `ingress`
[v1beta1.Ingress](#v1beta1ingress) | Configuration for creating Appian's ingress resource. | false |
| `url`
string | The scheme, host, and, optionally, port used to access Appian (e.g. `https://appian.example.com`, `http://appian.example.com:32767`, etc). _For sites with a single Webapp replica, updating this field requires restarting Webapp's pod._ _For sites with RPA, updating this field requires restarting RPA's pod._ See [Configure Your Site URL](../Post-Install_Configurations.html#configure-your-site-url) for more info. | true |
| `version`
string | The Low-Code Platform (LCP) version. This field will be required in a future release. **This field is immutable.** | false |
| `additionalLabels`
map\[string\]string | Additional labels for created objects - including pods. _For stateful components with a single replica, updating this field requires restarting the component's pod._ | false |

### v1beta1.AppianStatus

AppianStatus defines the observed state of Appian.

| Field | Description | Required |
| --- | --- | --- |
| `status`
string | Status of Appian. Valid options are `Creating`, `Starting`, `Ready`, `Unready`, and `Terminating`. `Creating` describes a new Appian for which the operator is still creating resources. `Starting` describes a new Appian for which the operator has finished creating resources but for which all replicas of all components are not yet ready. `Ready` describes an Appian for which all replicas of all components are ready. `Unready` describes a previously `Ready` Appian for which all replicas of all components are no longer ready. `Terminating` describes an Appian that has been marked for deletion and is in the process of terminating. | false |

### v1beta1.Component

Component defines fields common to all components. Components can be either stateful or stateless. To this end, two other types, StatefulComponent and StatelessComponent, inline this type while adding fields specific to stateful and stateless components, respectively.

| Field | Description | Required |
| --- | --- | --- |
| `securityContext`
\*[v1beta1.SecurityContext](#v1beta1securitycontext) | Security configuration for the component's pod(s) and container(s). | false |
| `initContainers`
\[\][corev1.Container](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#container-v1-core) | A list of initialization containers belonging to the component. Initialization containers satisfy a variety of use cases - including supplying RDBMS/JDBC drivers. _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Init Containers](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/) for more info. | false |
| `env`
\[\][corev1.EnvVar](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#envvar-v1-core) | A list of environment variables to set in the component's container(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Define Environment Variables for a Container](https://kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/) for more info. | false |
| `resources`
[corev1.ResourceRequirements](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#resourcerequirements-v1-core) | Compute resources required by the component's container(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Resource Management for Pods and Containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more info. | false |
| `additionalVolumes`
\[\][corev1.Volume](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#volume-v1-core) | Additional volumes for the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Volumes](https://kubernetes.io/docs/concepts/storage/volumes/) for more info. | false |
| `additionalVolumeMounts`
\[\][corev1.VolumeMount](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#volumemount-v1-core) | Additional volume mounts for the component's container(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Volumes](https://kubernetes.io/docs/concepts/storage/volumes/) for more info. | false |
| `sidecarContainers`
\[\][corev1.Container](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#container-v1-core) | Sidecar containers for the component's container(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ | false |
| `affinity`
\*[corev1.Affinity](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#affinity-v1-core) | Scheduling constraints for the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Affinity and anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) for more info. | false |
| `nodeSelector`
map\[string\]string | A selector which must be true for the component's pod(s) to fit on a node. _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [nodeSelector](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) for more info. | false |
| `tolerations`
\[\][corev1.Toleration](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#toleration-v1-core) | Tolerations for the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/) for more info. | false |
| `additionalNetworkPolicyIngressRules`
\[\][networkingv1.NetworkPolicyIngressRule](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#networkpolicyingressrule-v1-networking-k8s-io) | Additional ingress rules for the component's network policy. **Forbidden when `spec.networkPolicies.enabled` is `false`.** See [Network Policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/#the-networkpolicy-resource) for more info. | false |
| `podDisruptionBudget`
\*[v1beta1.PodDisruptionBudgetConfig](#v1beta1poddisruptionbudgetconfig) | The max disruption that can be caused to the component's pod(s). See [Pod Disruption Budgets](https://kubernetes.io/docs/concepts/workloads/pods/disruptions/#pod-disruption-budgets) for more info. | false |
| `priorityClassName`
string | Priority Class for the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ See [Pod Priority and Preemption](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/) for more info. | false |
| `dnsPolicy`
[corev1.DNSPolicy](https://pkg.go.dev/k8s.io/api@v0.33.0/core/v1#DNSPolicy) | DNS policy for the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ This field will default to `ClusterFirst` if not specified. See [Pod DNS Policy](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-s-dns-policy) for more info. | false |
| `dnsConfig`
\*[corev1.PodDNSConfig](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#poddnsconfig-v1-core) | DNS Config for the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ This field is required when DNSPolicy is set to `None`. If DNS Policy is not specified, then `ClusterFirst` is used. See [Pod DNS Config](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-dns-config) for more info. | false |
| `podAnnotations`
map\[string\]string | Annotations to be applied to the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ | false |
| `podLabels`
map\[string\]string | Labels to be applied to the component's pod(s). _For stateful components with a single replica, updating this field requires restarting the component's pod._ | false |

### v1beta1.DataServer

DataServer defines configuration for Data Server.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `replicas`
int32 | Desired number of replicas for Data Server. Valid options are `1` and `3`. Defaults to `1`. **This field is immutable.** | false |
| `topology`
[v1beta1.DataServerTopology](#v1beta1dataservertopology) | Configuration for Data Server's topology. | false |

### v1beta1.DataServerTopology

DataServerTopology defines configuration for Data Server's topology.

| Field | Description | Required |
| --- | --- | --- |
| `rtsCount`
int32 | Number of real-time stores for each Data Server replica. Defaults to `2`. _For sites with a single Data Server replica and a single Webapp replica, updating this field requires restarting Data Server's pod Webapp's pod._ See [Configuring the Data Server](../Configuring_the_Data_Server.html) for more info. | false |

### v1beta1.DataSource

DataSource defines configuration for connecting to a data source. See [Provide Data Source Connection Information](../Configuring_Relational_Databases.html#provide-data-source-connection-information) for more info.

| Field | Description | Required |
| --- | --- | --- |
| `name`
string |   | true |
| `type`
string |   | true |
| `factory`
string |   | true |
| `driverClassName`
string |   | true |
| `url`
string |   | true |
| `username`
string |   | false |
| `usernameSecretKeyRef`
\*[v1beta1.SecretKeySelector](#v1beta1secretkeyselector) | Reference to the username used to connect to the data source. Mutually exclusive with `username`. | false |
| `password`
string | Deprecated: This field will be removed in a future release. Use `passwordSecretKeyRef` instead. Password used to connect to the data source. | false |
| `passwordSecretKeyRef`
\*[v1beta1.SecretKeySelector](#v1beta1secretkeyselector) | Reference to the password used to connect to the data source. This field will be required in a future release. | false |
| `attributes`
map\[string\]string |   | false |

### v1beta1.DataSourceConfig

DataSourceConfig defines configuration for connecting to the Appian and business data sources.

| Field | Description | Required |
| --- | --- | --- |
| `primary`
[v1beta1.DataSource](#v1beta1datasource) | Configuration for connecting to the Appian data source. | true |
| `business`
\[\][v1beta1.DataSource](#v1beta1datasource) | Configuration for connecting to the business data source(s). | false |

### v1beta1.EngineOverrides

EngineOverrides defines override configurations for an engine.

| Field | Description | Required |
| --- | --- | --- |
| `initContainers`
\*\[\][corev1.Container](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#container-v1-core) | A list of initialization containers belonging to the engine. Initialization containers satisfy a variety of use cases - including supplying RDBMS/JDBC drivers. _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Init Containers](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/) for more info. | false |
| `env`
\*\[\][corev1.EnvVar](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#envvar-v1-core) | A list of environment variables to set in the engine's container(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Define Environment Variables for a Container](https://kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/) for more info. | false |
| `resources`
\*[corev1.ResourceRequirements](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#resourcerequirements-v1-core) | Compute resources required by the engine's container(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Resource Management for Pods and Containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more info. | false |
| `additionalVolumes`
\*\[\][corev1.Volume](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#volume-v1-core) | Additional volumes for the engine's pod(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Volumes](https://kubernetes.io/docs/concepts/storage/volumes/) for more info. | false |
| `additionalVolumeMounts`
\*\[\][corev1.VolumeMount](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#volumemount-v1-core) | Additional volume mounts for the engine's container(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Volumes](https://kubernetes.io/docs/concepts/storage/volumes/) for more info. | false |
| `sidecarContainers`
\*\[\][corev1.Container](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#container-v1-core) | Sidecar containers for the engine's container(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ | false |
| `affinity`
\*[corev1.Affinity](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#affinity-v1-core) | Scheduling constraints for the engine's pod(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Affinity and anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) for more info. | false |
| `nodeSelector`
\*map\[string\]string | A selector which must be true for the engine's pod(s) to fit on a node. _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [nodeSelector](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) for more info. | false |
| `tolerations`
\*\[\][corev1.Toleration](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#toleration-v1-core) | Tolerations for the engine's pod(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/) for more info. | false |
| `replicas`
\*int32 | Desired number of replicas for the engine. **This field is immutable.** | false |
| `podDisruptionBudget`
\*[v1beta1.PodDisruptionBudgetConfig](#v1beta1poddisruptionbudgetconfig) | The max disruption that can be caused to the engine's pod(s). See [Pod Disruption Budgets](https://kubernetes.io/docs/concepts/workloads/pods/disruptions/#pod-disruption-budgets) for more info. | false |
| `priorityClassName`
\*string | Priority Class for the engine's pod(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ See [Pod Priority and Preemption](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/) for more info. | false |
| `podAnnotations`
\*map\[string\]string | Annotations to be applied to the engine's pod(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ | false |
| `podLabels`
\*map\[string\]string | Labels to be applied to the engine's pod(s). _For sites with a single replica of an engine, updating this field requires restarting the engine's pod._ | false |

### v1beta1.HorizontalPodAutoscalerConfig

HorizontalPodAutoscalerConfig defines configuration for creating horizontal pod autoscaler resources.

| Field | Description | Required |
| --- | --- | --- |
| `minReplicas`
\*int32 | The lower limit for the number of replicas to which the autoscaler can scale down. Defaults to `1`. | false |
| `maxReplicas`
int32 | The upper limit for the number of pods that can be set by the autoscaler. Cannot be smaller than `minReplicas`. | true |
| `targetCPUUtilizationPercentage`
\*int32 | The target average CPU utilization (represented as a percentage of requested CPU) over all the pods. If not specified, the default autoscaling policy will be used. | false |

### v1beta1.Httpd

Httpd defines configuration for httpd.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatelessComponent](#v1beta1statelesscomponent) | (Members of [v1beta1.StatelessComponent](#v1beta1statelesscomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `nslookupImage`
\*[v1beta1.Image](#v1beta1image) | Configuration for the container image for the component's `nslookup` initialization container(s). The image must have `nslookup` installed. Defaults to `busybox`. | false |
| `replicas`
\*int32 | Desired number of replicas for httpd. **Forbidden when `hpa` is defined.** Defaults to `2`. | false |

### v1beta1.Image

Image defines configuration for the component's container image.

| Field | Description | Required |
| --- | --- | --- |
| `repository`
string | The image's repository. | true |
| `tag`
string | The image's tag. | false |
| `pullPolicy`
[corev1.PullPolicy](https://pkg.go.dev/k8s.io/api@v0.33.0/core/v1#PullPolicy) | The image pull policy. See [Updating images](https://kubernetes.io/docs/concepts/containers/images/#updating-images) for more info. | false |

### v1beta1.Ingress

Ingress defines configuration for creating Appian's ingress resource.

| Field | Description | Required |
| --- | --- | --- |
| `enabled`
bool | Whether ingress is enabled. | false |
| `annotations`
map\[string\]string | Annotations for the ingress. | false |
| `ingressClassName`
\*string | Name of the ingress class cluster resource. | false |
| `hostname`
string | The hostname used to create the ingress. Useful if you'd like ingress to use an internal hostname different from that used to access Appian. Defaults to the hostname defined in `spec.url`. | false |
| `staticHostname`
string | The hostname for Appian's static content URL used to create the ingress. Useful if you'd like ingress to use an internal hostname different from that used to access Appian. Defaults to the hostname defined in `spec.webapp.staticUrl`. | false |
| `dynamicHostname`
string | The hostname for Appian's dynamic content URL used to create the ingress. Useful if you'd like ingress to use an internal hostname different from that used to access Appian. Defaults to the hostname defined in `spec.webapp.dynamicUrl`. | false |
| `tls`
\[\][networkingv1.IngressTLS](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#ingresstls-v1-networking-k8s-io) | Configuration for TLS. See [TLS](https://kubernetes.io/docs/concepts/services-networking/ingress/#tls) for more info. | false |
| `additionalIngressRules`
\[\]networkingv1.IngressRule | Additional ingress rules. See [Ingress rules](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-rules) for more info. | false |

### v1beta1.Kafka

Kafka defines configuration for Kafka.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `replicas`
int32 | Desired number of replicas for Kafka. Valid options are `1` and `3`. Defaults to `1`. **This field is immutable.** | false |
| `mirrorMakerListeners`
\[\]string | List of externally addressable hosts used by MirrorMaker. When running multiple replicas of Kafka, the order of the listeners should match the order of Kafka's pods. _For sites with a single Kafka replica, updating this field requires restarting Kafka's pod._ | false |

### v1beta1.MirrorMaker

MirrorMaker defines configuration for MirrorMaker.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `sourceBrokers`
\[\]string | List of hosts that point to the Kafka brokers in the source cluster. _Updating this field requires restarting MirrorMaker's pod(s)._ | true |

### v1beta1.NetworkPolicyConfig

NetworkPolicyConfig defines configuration for creating network policy resources.

| Field | Description | Required |
| --- | --- | --- |
| `enabled`
bool | Whether network policy resources are enabled. | false |

### v1beta1.PodDisruptionBudgetConfig

PodDisruptionBudgetConfig defines the max disruption that can be caused to a component's pods. See [Pod Disruption Budgets](https://kubernetes.io/docs/concepts/workloads/pods/disruptions/#pod-disruption-budgets) for more info.

| Field | Description | Required |
| --- | --- | --- |
| `minAvailable`
\*intstr.IntOrString | The number of pods that must still be available after the eviction, even in the absence of the evicted pod. Can be either an absolute number or a percentage. Mutually exclusive with `maxUnavailable`. | false |
| `maxUnavailable`
\*intstr.IntOrString | The number of pods that can be unavailable after the eviction. Can be either an absolute number or a percentage. Mutually exclusive with `minAvailable`. | false |

### v1beta1.RBAC

RBAC defines configuration for creating RBAC resources.

| Field | Description | Required |
| --- | --- | --- |
| `roles`
\[\]string | Names of existing roles to which Appian should be bound using role bindings. **Requires that the controller is deployed with permission to bind to the specified roles.** | false |
| `clusterRoles`
\[\]string | Names of existing cluster roles to which Appian should be bound using role bindings. **Requires that the controller is deployed with permission to bind to the specified cluster roles.** | false |

### v1beta1.RDODataSourceConfig

RDODataSourceConfig defines configuration for connecting to the Robotic Task Design Object (RTDO) & Robot Pool Design Object (RPDO) & Robot Remote Design Object (RobotRDO) service's data source. RTDO must be enabled in order for RPDO to be enabled, but not vice-versa.

| Field | Description | Required |
| --- | --- | --- |
| `url`
string |   | true |
| `username`
string |   | true |
| `passwordSecretName`
string | Name of the existing secret containing the Robotic Task Design Object (RTDO)/Robot Pool Design Object (RPDO)/ Robot Remote Design Object (RobotRDO) service's data source password in its `password` key. | true |

### v1beta1.RPA

RPA defines configuration for RPA.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `version`
string | The RPA version. This field will be required in a future release. **This field is immutable.** | true |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `database`
[v1beta1.RPADatabaseConfig](#v1beta1rpadatabaseconfig) | Configuration for connecting to RPA's database. _Updating this field requires restarting RPA's pod._ | true |
| `properties`
map\[string\]string | Additional properties to add to `rpa.properties`. _Updating this field requires restarting RPA's pod._ | false |
| `rtdo`
\*[v1beta1.RTDOConfig](#v1beta1rtdoconfig) | Configuration for the Robotic Task Design Object (RTDO) service. | false |
| `rpdo`
\*[v1beta1.RPDOConfig](#v1beta1rpdoconfig) | Configuration for the Robot Pool Design Object (RPDO) service. | false |
| `robotRDO`
\*[v1beta1.RobotRDOConfig](#v1beta1robotrdoconfig) | Configuration for the Robot Remote Design Object (RobotRDO) service. | false |

### v1beta1.RPADatabaseConfig

RPADatabaseConfig defines configuration for connecting to RPA's database.

| Field | Description | Required |
| --- | --- | --- |
| `engine`
string | Deprecated: This field will be removed in a future release. | false |
| `hostname`
string |   | true |
| `port`
int32 |   | true |
| `schema`
string |   | true |
| `credentialsSecretName`
string | Name of the existing secret containing RPA's database credentials. The username should be stored in the secret's `username` key and the password in its `password` key. _Updating this field requires restarting RPA's pod._ | true |

### v1beta1.RPDOConfig

RPDOConfig defines configuration for the Robot Pool Design Object (RPDO) service.

| Field | Description | Required |
| --- | --- | --- |
| `dataSource`
[v1beta1.RDODataSourceConfig](#v1beta1rdodatasourceconfig) | Configuration for connecting to the Robot Pool Design Object (RPDO) service's data source. _Updating this field requires restarting RPA's pod._ | true |

### v1beta1.RTDOConfig

RTDOConfig defines configuration for the Robotic Task Design Object (RTDO) service.

| Field | Description | Required |
| --- | --- | --- |
| `dataSource`
[v1beta1.RDODataSourceConfig](#v1beta1rdodatasourceconfig) | Configuration for connecting to the Robotic Task Design Object (RTDO) service's data source. _Updating this field requires restarting RPA's pod._ | true |

### v1beta1.RobotRDOConfig

RobotRDOConfig defines configuration for the Robot Remote Design Object (RobotRDO) service.

| Field | Description | Required |
| --- | --- | --- |
| `dataSource`
[v1beta1.RDODataSourceConfig](#v1beta1rdodatasourceconfig) | Configuration for connecting to the Robot Remote Design Object (RobotRDO) service's data source. _Updating this field requires restarting RPA's pod._ | true |

### v1beta1.SearchServer

SearchServer defines configuration for Search Server.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `replicas`
int32 | Desired number of replicas for Search Server. Valid options are `1` and `3`. Defaults to `1`. **This field is immutable.** | false |

### v1beta1.SecretKeySelector

SecretKeySelector selects a key of a secret.

| Field | Description | Required |
| --- | --- | --- |
| `name`
string | Name of the existing secret to select from. | true |
| `key`
string | Key of the secret to select from. | true |

### v1beta1.SecurityContext

SecurityContext defines security configuration for the component's pod(s) and container(s).

| Field | Description | Required |
| --- | --- | --- |
| `runAsUser`
\*int64 | The UID to run the entrypoint of the container process. See [Set the security context for a Container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-container) for more info. | false |
| `fsGroup`
\*int64 | A special supplemental group that applies to all containers in a pod. See [Configure volume permission and ownership change policy for Pods](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#configure-volume-permission-and-ownership-change-policy-for-pods) for more info. | false |

### v1beta1.Service

Service defines configuration for creating Appian's service resource.

| Field | Description | Required |
| --- | --- | --- |
| `labels`
map\[string\]string | Labels for the service. | false |
| `annotations`
map\[string\]string | Annotations for the service. | false |
| `type`
[corev1.ServiceType](https://pkg.go.dev/k8s.io/api@v0.33.0/core/v1#ServiceType) | How the service is exposed. Valid options are `ClusterIP`, `NodePort`, and `LoadBalancer`. Defaults to `ClusterIP`. See [Publishing Services (ServiceTypes)](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types) for more info. | false |
| `protocol`
string | Whether the service exposes Tomcat's `http` or `ajp` port when httpd is disabled. **Forbidden when `spec.httpd` routes to Webapp.** Valid options are `http` and `ajp`. Defaults to `http`. | false |
| `port`
int32 | The port that will be exposed by this service. Defaults to `8080` if `spec.httpd` is defined or if `protocol` is `http`. Defaults to `8009` otherwise. | false |
| `nodePort`
int32 | The port on each node on which this service is exposed when `type` is `NodePort` or `LoadBalancer`. **Forbidden when `type` is `ClusterIP`.** | false |
| `loadBalancerIP`
string | IP with which the load balancer will get created when `type` is `LoadBalancer`. **Forbidden when `type` is not `LoadBalancer`.** | false |
| `sessionAffinity`
[corev1.ServiceAffinity](https://pkg.go.dev/k8s.io/api@v0.33.0/core/v1#ServiceAffinity) | Used to maintain session affinity to backend pods. Valid options are `None` and `ClientIP`. Defaults to `None`. | false |
| `sessionAffinityConfig`
\*[corev1.SessionAffinityConfig](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#sessionaffinityconfig-v1-core) | Configuration for session affinity. | false |

### v1beta1.ServiceManager

ServiceManager defines configuration for Service Manager.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `replicas`
int32 | Desired number of replicas for Service Manager. Defaults to `1`. **This field is immutable.** | false |
| `engineOverrides`
map\[string\][v1beta1.EngineOverrides](#v1beta1engineoverrides) | Override configurations for each engine. Valid keys are `forums`, `notifications`, `notificationsEmail`, `channels`, `content`, `downloadStats`, `groups`, `portal`, `processDesign`, `analytics`, and `execution`. | false |
| `shutdown`
[v1beta1.ServiceManagerShutdown](#v1beta1servicemanagershutdown) | Configuration for the Service Manager shutdown job | false |
| `topology`
[v1beta1.ServiceManagerTopology](#v1beta1servicemanagertopology) | Configuration for Service Manager's topology. | false |
| `haExistingClaim`
string | Name of an existing ReadWriteMany (RWX) persistent volume claim to be used for Service Manager's storage. May be the same as `spec.webapp.haExistingClaim`. Must differ from `spec.webapp.healthCheckExistingClaim`. **Required when `replicas` is greater than `1`.** **This field is immutable.** See [Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/) for more info. | false |

### v1beta1.ServiceManagerShutdown

ServiceManagerShutdown defines configuration for the Service Manager shutdown job

| Field | Description | Required |
| --- | --- | --- |
| `resources`
[corev1.ResourceRequirements](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#resourcerequirements-v1-core) | Compute resources required by the shutdown pod's container. See [Resource Management for Pods and Containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more info. | false |

### v1beta1.ServiceManagerTopology

ServiceManagerTopology defines configuration for Service Manager's topology.

| Field | Description | Required |
| --- | --- | --- |
| `analyticsExecShardCount`
int32 | Number of shards of the process analytics and process execution engines. Defaults to `3`. **This field is immutable.** See [Add Execution and Analytics Shards](../Scaling_Appian.html#add-execution-and-analytics-shards) for more info. | false |

### v1beta1.StatefulComponent

StatefulComponent defines fields common to all stateful components. Stateful components require stable storage and network identity, are not elastically scalable, cannot be upgraded in-place, etc.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.Component](#v1beta1component) | (Members of [v1beta1.Component](#v1beta1component) are embedded into this type.) |   |
| `volumeClaimTemplateSpec`
[corev1.PersistentVolumeClaimSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#persistentvolumeclaimspec-v1-core) | Spec for the persistent volume claim template(s) for the component's stateful set(s). **This field is immutable.** See [Volume Claim Templates](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/#volume-claim-templates) for more info. | true |

### v1beta1.StatelessComponent

StatelessComponent defines fields common to all stateless components. Stateless components do not require stable storage and network identity, are elastically scalable, can be upgraded in-place, etc.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.Component](#v1beta1component) | (Members of [v1beta1.Component](#v1beta1component) are embedded into this type.) |   |
| `hpa`
\*[v1beta1.HorizontalPodAutoscalerConfig](#v1beta1horizontalpodautoscalerconfig) | Configuration for creating horizontal pod autoscaler resources. | false |

### v1beta1.Webapp

Webapp defines configuration for Webapp.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `replicas`
int32 | Desired number of replicas for Webapp. Defaults to `1`. | false |
| `staticUrl`
string | The scheme, host, and, optionally, port for Appian's static content URL (e.g. `https://appian.example-static.com`, `http://appian.example-static.com:32767`, etc). The scheme must be the same as that defined in `spec.url`. Must use a different domain from `spec.url` and `dynamicUrl`. _For sites with a single Webapp replica, updating this field requires restarting Webapp's pod._ See [Configure Your Static and Dynamic Content URLs](../Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls) for more info. | false |
| `dynamicUrl`
string | The scheme, host, and, optionally, port for Appian's dynamic content URL (e.g. `https://appian.example-dynamic.com`, `http://appian.example-dynamic.com:32767`, etc). The scheme must be the same as that defined in `spec.url`. Must use a different domain from `spec.url` and `staticUrl`. _For sites with a single Webapp replica, updating this field requires restarting Webapp's pod._ See [Configure Your Static and Dynamic Content URLs](../Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls) for more info. | false |
| `applicationContext`
string | The application context. Defaults to `suite`. _For sites with a single Webapp replica, updating this field requires restarting Webapp's pod._ _For sites with RPA, updating this field requires restarting RPA's pod._ See [Application Context](../Post-Install_Configurations.html#application-context) for more info. | false |
| `dataSources`
[v1beta1.DataSourceConfig](#v1beta1datasourceconfig) | Configuration for connecting to the Appian and business data sources. _For sites with a single Webapp replica, updating this field requires restarting Webapp's pod._ | true |
| `haExistingClaim`
string | Name of an existing ReadWriteMany (RWX) persistent volume claim to be used for Webapp's storage. May be the same as `spec.serviceManager.haExistingClaim`. Must differ from `spec.webapp.healthCheckExistingClaim`. **Required when `replicas` is greater than `1`.** **This field is immutable.** See [Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/) for more info. | false |
| `healthCheckExistingClaim`
string | Name of an existing ReadWriteMany (RWX) persistent volume claim to be used for [Health Check](../health-check.html)'s storage. Must differ from `spec.serviceManager.haExistingClaim` and `spec.webapp.haExistingClaim`. **This field is immutable.** See [Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/) for more info. | false |
| `passwordsPropertiesSecretName`
string | Name of an existing secret containing Appian's `passwords.properties` file. _For sites with a single Webapp replica, updating this field requires restarting Webapp's pod._ See [Mail Server Setup](../Mail_Server_Setup.html) for more info. | false |

### v1beta1.Zookeeper

Zookeeper defines configuration for Zookeeper.

| Field | Description | Required |
| --- | --- | --- |
| [v1beta1.StatefulComponent](#v1beta1statefulcomponent) | (Members of [v1beta1.StatefulComponent](#v1beta1statefulcomponent) are embedded into this type.) |   |
| `image`
[v1beta1.Image](#v1beta1image) | Configuration for the component's container image. **This field is immutable.** | true |
| `replicas`
int32 | Desired number of replicas for Zookeeper. Valid options are `1` and `3`. Defaults to `1`. **This field is immutable.** | false |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...