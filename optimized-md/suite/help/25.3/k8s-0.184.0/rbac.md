---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/rbac.html
original_path: k8s-0.184.0/rbac.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# RBAC for Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

In Kubernetes, [role-based access control (RBAC)](https://kubernetes.io/docs/reference/access-authn-authz/rbac/) regulates access to cluster resources. This page details how to configure both the Appian operator [Helm](https://helm.sh/) chart and Appian custom resources to customize Kubernetes RBAC to account for a variety of use cases. It is aimed at self-managed customers running Appian on Kubernetes.

## Restricting the Appian operator's cluster-wide access

By default, the Appian operator should be installed once per cluster into the `appian-operator` namespace. In this mode, both the operator's webhooks and controllers are configured to run in the `appian-operator` namespace and the controllers are configured to reconcile Appian custom resources across the entire cluster. Specifically, the Appian operator Helm chart deploys a [ClusterRole](https://kubernetes.io/docs/reference/access-authn-authz/rbac/#role-and-clusterrole) and [ClusterRoleBinding](https://kubernetes.io/docs/reference/access-authn-authz/rbac/#rolebinding-and-clusterrolebinding) so that the operator can reconcile custom resources across all namespaces.

In some situations, granting the operator's controllers cluster-wide access is undesirable. In these cases, you may restrict the operator's controllers' access in the `appian-operator` namespace to just the `appian-operator` namespace and, if you wish to create Appian custom resources in namespaces other than the `appian-operator` namespace, additionally install the operator's controllers in the namespace(s) in which you wish to create Appian custom resources.

To restrict the operator's controllers' access in the `appian-operator` namespace to just the `appian-operator` namespace, set [controllers.rbac.clusterWideAccess](helm-chart-values.html) to `false` when [installing the chart](install-appian-on-k8s.html#1-install-the-appian-operator):

```
1
2
3
4
5
helm --namespace appian-operator install appian-operator-<APPIAN_OPERATOR_VERSION>.tgz \
  --set image.repository=<REGISTRY_HOSTNAME>/appian/appian-operator:<APPIAN_OPERATOR_VERSION> \
  --set controllers.rbac.clusterWideAccess=false \
  ... \
  --wait
```

To additionally install the operator's controllers in the namespace(s) in which you wish to create Appian custom resources, install the operator in each namespace with [controllers.rbac.clusterWideAccess, rbac.aggregatedClusterRoles.enabled, and webhooks.enabled](helm-chart-values.html) set to `false`:

```
1
2
3
4
5
6
7
helm --namespace <NAMESPACE> install appian-operator-<APPIAN_OPERATOR_VERSION>.tgz \
  --set image.repository=<REGISTRY_HOSTNAME>/appian/appian-operator:<APPIAN_OPERATOR_VERSION> \
  --set controllers.rbac.clusterWideAccess=false \
  --set rbac.aggregatedClusterRoles.enabled=false \
  --set webhooks.enabled=false \
  ... \
  --wait
```

## Disabling aggregated cluster roles

By default, the Appian operator Helm chart deploys ClusterRoles that [aggregate](https://kubernetes.io/docs/reference/access-authn-authz/rbac/#aggregated-clusterroles) to the [built-in view, edit, and admin ClusterRoles](https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles). This enables principals with those roles to interact with Appian custom resources.

To disable this feature, set [rbac.aggregatedClusterRoles.enabled](helm-chart-values.html) to `false` when [installing the chart](install-appian-on-k8s.html#1-install-the-appian-operator).

## Adding roles and cluster roles to the Appian operator and Appian custom resources

Both the Appian operator Helm chart and Appian CRD support binding the operator and Appian, respectively, to arbitrary roles and cluster roles. This is particularly useful when you need to make either the Appian operator or Appian use a specific [pod security policy (PSP)](https://kubernetes.io/docs/concepts/policy/pod-security-policy/).

### Binding pod security policies to the Appian operator

Imagine that you need to configure the Appian operator to use a PSP that you've created called `my-psp`. First, define either a ClusterRole or Role that authorizes use of your PSP by creating a file named `use-my-psp.yaml` with the following content:

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
apiVersion: rbac.authorization.k8s.io/v1
# Use Role instead of ClusterRole if you'd like to disallow bindings across the entire cluster
kind: ClusterRole
metadata:
  name: use-my-psp
rules:
- apiGroups:
  - policy
  resources:
  - podsecuritypolicies
  verbs:
  - use
  resourceNames:
  - my-psp
```

Then, create the ClusterRole or Role via `kubectl create` or `kubectl apply`:

```
1
kubectl create -f use-my-psp.yaml
```

```
1
kubectl apply -f use-my-psp.yaml
```

If you defined a Role instead of a ClusterRole, make sure to include the `--namespace`/`-n` flag to specify the namespace in which you've installed, or will install, the Appian operator Helm chart.

Finally, pass the name of the ClusterRole or Role, `use-my-psp`, via one or more of the following properties when [installing](install-appian-on-k8s.html#1-install-the-appian-operator) or [upgrading](upgrading-appian-on-k8s.html) the chart:

-   [controllers.rbac.clusterRoles](helm-chart-values.html)
-   [controllers.rbac.roles](helm-chart-values.html)
-   [webhooks.rbac.clusterRoles](helm-chart-values.html)
-   [webhooks.rbac.roles](helm-chart-values.html)

If you want to bind the operator's controllers, use `controllers.rbac.clusterRoles` or `controllers.rbac.roles`. If you want to bind the operator's webhooks, use `webhooks.rbac.clusterRoles` or `webhooks.rbac.roles`. If you defined a Role instead of a ClusterRole, use `controllers.rbac.roles` or `webhooks.rbac.roles` instead of `controllers.rbac.clusterRoles` or `webhooks.rbac.clusterRoles`.

This will instruct the chart to include a RoleBinding that binds the `use-my-psp` ClusterRole or Role to one of the operator's [service accounts](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/).

You can check that the operator's controller and/or webhook pod(s) are using the `my-psp` PSP by checking the value of their `kubernetes.io/psp` annotation:

```
1
kubectl -n <NAMESPACE> get pod <POD> -ojsonpath={.metadata.annotations.'kubernetes\.io/psp'}
```

### Binding pod security policies to Appian

Now imagine that you need to configure Appian to use a PSP that you've created called `my-psp`. First, follow the steps from the section above to define and create either a ClusterRole or Role that authorizes use of your PSP. If you defined a Role instead of a ClusterRole, make sure to include the `--namespace`/`-n` flag when running `kubectl create` or `kubectl apply` to specify the namespace in which you've created or will create the Appian custom resource.

The Appian operator and Appian CRD support binding Appian to existing ClusterRoles and Roles via the [.spec.rbac.clusterRoles and .spec.rbac.roles](crds.html#v1beta1rbac) fields, respectively, on Appian custom resources. When specified, the fields instruct the operator to create one or more RoleBinding resources that bind the provided ClusterRole(s) and/or Role(s) to the [service account](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/) associated with the custom resource.

_The operator, however, lacks access to do so by default._ When [installing](install-appian-on-k8s.html#1-install-the-appian-operator) or [upgrading](upgrading-appian-on-k8s.html) the Appian operator chart, pass the name(s) of the ClusterRole(s) and/or Role(s) to which you'd like any Appian sites to be bound via [.controllers.rbac.bind.clusterRoles and/or controllers.rbac.bind.roles](helm-chart-values.html). This will instruct the chart to include a rule that allows the operator to bind to the provided ClusterRole(s) and/or Role(s).

Therefore, to allow the operator to bind to the `use-my-psp` ClusterRole or Role, pass `use-my-psp` via either [controllers.rbac.bind.clusterRoles or controllers.rbac.bind.roles](helm-chart-values.html) when [installing](install-appian-on-k8s.html#1-install-the-appian-operator) or [upgrading](upgrading-appian-on-k8s.html) the chart.

Now, you’re ready to create the Appian custom resource. Define your custom resource in a file named `appian.yaml` with the following RBAC-related content:

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  rbac:
    # Use roles instead of clusterRoles if you defined a Role instead of a ClusterRole
    clusterRoles:
    - use-my-psp
```

Finally, run `kubectl create` or `kubectl apply` to create or update the Appian custom resource:

```
1
kubectl -n <NAMESPACE> create -f appian.yaml
```

```
1
kubectl -n <NAMESPACE> apply -f appian.yaml
```

If you defined a Role instead of a ClusterRole, make sure `<NAMESPACE>` matches the namespace in which you created the Role.

You can check that the pods associated with the custom resource are using the `my-psp` PSP by checking the value of their `kubernetes.io/psp` annotation:

```
1
kubectl -n <NAMESPACE> get pod <POD> -ojsonpath={.metadata.annotations.'kubernetes\.io/psp'}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...