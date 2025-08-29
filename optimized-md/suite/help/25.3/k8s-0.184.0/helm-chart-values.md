---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/helm-chart-values.html
original_path: k8s-0.184.0/helm-chart-values.html
version: "25.3"
title: "Appian Operator Helm Chart Values"
page_id: "k8s-0.184.0/helm-chart-values"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Operator Helm Chart Values

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page documents the values supported by the Appian operator [Helm](https://helm.sh/) chart for self-managed customers. They are used in the command to create the Appian operator Helm release — for an example, see [Creating the Appian operator](install-appian-on-k8s.html#1-install-the-appian-operator).

**Tip:**  The [Appian Platform Helm Chart plug-in](https://community.appian.com/b/appmarket/posts/appian-platform-helm-chart) can help speed up configuration by providing common options and baked-in best practices.

## Helm chart values

| Key | Type | Default | Description |
| --- | --- | --- | --- |
| controllers.additionalArgs | list | `[]` | Additional arguments for the controller binary. |
| controllers.affinity | object | `{}` | Scheduling constraints for the controllers' pod. See [Affinity and anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) for more info. |
| controllers.nodeSelector | object | `{}` | A selector which must be true for the controllers' pod to fit on a node. See [nodeSelector](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) for more info. |
| controllers.rbac.bind.clusterRoles | list | `[]` | Names of existing cluster roles to which Appians managed by the controllers can be bound using role bindings. |
| controllers.rbac.bind.roles | list | `[]` | Names of existing roles to which Appians managed by the controllers can be bound using role bindings. |
| controllers.rbac.clusterRoles | list | `[]` | Names of existing cluster roles to which the controllers should be bound using role bindings. |
| controllers.rbac.clusterWideAccess | bool | `true` | Whether the controllers should reconcile resources across the entire cluster. If enabled, the RBAC templates for the controllers render as `ClusterRole`s and `ClusterRoleBinding`s instead of as `Role`s and `RoleBinding`s. |
| controllers.rbac.roles | list | `[]` | Names of existing roles to which the controllers should be bound using role bindings. |
| controllers.resources | object | `{}` | Compute resources required by the controllers' pod. See [Resource Management for Pods and Containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more info. |
| controllers.tolerations | list | `[]` | Tolerations for the controllers' pod. See [Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/) for more info. |
| controllers.vpa.controlledResources | list | `[]` | The type of recommendations that will be computed (and possibly applied) by VPA. If not specified, the default of `[ResourceCPU, ResourceMemory]` will be used. |
| controllers.vpa.controlledValues | string | `""` | Which resource values should be controlled. The default is `RequestsAndLimits`. |
| controllers.vpa.enabled | bool | `false` | Whether [vertical pod autoscaler (VPA)](https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler) is enabled for the controllers. |
| controllers.vpa.maxAllowed | object | `{}` | The maximum amount of resources that will be recommended for the container. The default is no maximum. |
| controllers.vpa.minAllowed | object | `{}` | The minimal amount of resources that will be recommended for the container. The default is no minimum. |
| controllers.vpa.updateMode | string | `""` | When autoscaler applies changes to the pod resources. The default is `Auto`. |
| crd.update.affinity | object | `{}` | Scheduling constraints for the CRD update pod. See [Affinity and anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) for more info. |
| crd.update.annotations | object | `{}` | Annotations for the Appians CRD. |
| crd.update.enabled | bool | `true` | Whether the helm hook to update the Appians CRD is enabled. |
| crd.update.nodeSelector | object | `{}` | A selector which must be true for the CRD update pod to fit on a node. See [nodeSelector](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) for more info. |
| crd.update.resources | object | `{}` | Compute resources required by the CRD update pod. See [Resource Management for Pods and Containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more info. |
| crd.update.tolerations | list | `[]` | Tolerations for the CRD update pod. See [Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/) for more info. |
| fullnameOverride | string | `""` | Overrides for the fully qualified app name. |
| image.pullPolicy | string | `""` | The image pull policy. See [Updating images](https://kubernetes.io/docs/concepts/containers/images/#updating-images) for more info. |
| image.repository | string | `""` | The image's repository. |
| image.tag | string | `{{ .Chart.AppVersion }}` | The image's tag. |
| imagePullSecrets | list | `[]` | Names of existing image pull secrets. See [Pull an Image from a Private Registry](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) for more info. |
| nameOverride | string | `""` | Overrides for the name of the chart. |
| rbac.aggregatedClusterRoles.enabled | bool | `true` | Whether to create cluster roles which aggregate to the built-in view, edit, and admin cluster roles. See [Aggregated ClusterRoles](https://kubernetes.io/docs/reference/access-authn-authz/rbac/#aggregated-clusterroles) for more info. |
| webhooks.affinity | object | `{}` | Scheduling constraints for the webhooks' pod(s). See [Affinity and anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) for more info. |
| webhooks.caBundle | string | `""` | PEM encoded CA bundle used to validate the webhooks' server certificate, base64 encoded. |
| webhooks.enabled | bool | `true` | Whether mutating and validation admission webhooks are enabled. |
| webhooks.hpa.apiVersion | string | `""` | The API version of HPA to use. Valid options are `autoscaling/v1` and `autoscaling/v2`. Required when `enabled` is `true`. |
| webhooks.hpa.behavior | object | `{}` | The scaling behavior of the target in both up and down directions. If not set, the default HPA scaling rules for scale up and scale down are used. Only applicable when `apiVersion` is `autoscaling/v2`. |
| webhooks.hpa.enabled | bool | `false` | Whether [horizontal pod autoscaler (HPA)](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/) is enabled for the webhooks. |
| webhooks.hpa.maxReplicas | int | `nil` | The upper limit for the number of pods that can be set by the autoscaler. Cannot be smaller than `minReplicas`. Required when `enabled` is `true`. |
| webhooks.hpa.metrics | list | `[]` | The specifications used to calculate the desired replica count (the maximum replica count across all metrics will be used). If not set, the default metric will be set to 80% average CPU utilization. Only applicable when `apiVersion` is `autoscaling/v2`. |
| webhooks.hpa.minReplicas | int | `1` | The lower limit for the number of replicas to which the autoscaler can scale down. |
| webhooks.hpa.targetCPUUtilizationPercentage | int | `nil` | The target average CPU utilization (represented as a percentage of requested CPU) over all the pods. If not specified, the default autoscaling policy will be used. Only applicable when `apiVersion` is `autoscaling/v1`. |
| webhooks.nodeSelector | object | `{}` | A selector which must be true for the webhooks' pod(s) to fit on a node. See [nodeSelector](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector) for more info. |
| webhooks.podDisruptionBudget.enabled | bool | `false` | Whether a [pod disruption budget (PDB)](https://kubernetes.io/docs/tasks/run-application/configure-pdb/) is enabled for the webhooks. |
| webhooks.podDisruptionBudget.maxUnavailable | int or string | `nil` | The number of pods that can be unavailable after the eviction. Can be either an absolute number or a percentage. Mutually exclusive with `minAvailable`. |
| webhooks.podDisruptionBudget.minAvailable | int or string | `nil` | The number of pods that must still be available after the eviction, even in the absence of the evicted pod. Can be either an absolute number or a percentage. Mutually exclusive with `maxUnavailable`. |
| webhooks.rbac.clusterRoles | list | `[]` | Names of existing cluster roles to which the webhooks should be bound using role bindings. |
| webhooks.rbac.roles | list | `[]` | Names of existing roles to which the webhooks should be bound using role bindings. |
| webhooks.replicas | int | `1` | Number of replicas of the webhooks. Only applicable when `webhooks.hpa.enabled` is `false`. |
| webhooks.resources | object | `{}` | Compute resources required by the webhooks' pod(s). See [Resource Management for Pods and Containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more info. |
| webhooks.secret | string | `""` | Name of the existing secret containing the webhooks' server key and certificate. The two must be named `tls.key` and `tls.crt`, respectively. The certificate must be valid for `appian-operator-webhooks.<APPIAN_OPERATOR_WEBHOOKS_NAMESPACE>.svc`. Required when `enabled` is `true`. |
| webhooks.tolerations | list | `[]` | Tolerations for the webhooks' pod(s). See [Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/) for more info. |
| webhooks.webhookConfiguration.annotations | object | `{}` | Annotations for the mutating and validating webhook configuration resources. |
| webhooks.webhookConfiguration.caBundle | string | `""` | DEPRECATED: Use .webhooks.caBundle instead. PEM encoded CA bundle used to validate the webhooks' server certificate. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...