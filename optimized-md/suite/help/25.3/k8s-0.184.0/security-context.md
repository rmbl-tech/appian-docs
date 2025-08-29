---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/security-context.html
original_path: k8s-0.184.0/security-context.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure a Security Context for a Pod or Container

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

In Kubernetes, a [security context](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) defines privilege and access control settings for a pod or container.

By default, the operator will set the `runAsUser` fields of the containers it manages to the appropriate UID for the container's image. It will also set the `fsGroup` fields of the pods it manages to the appropriate GID for the pod's main container's image:

| Image | runAsUser | fsGroup |
| --- | --- | --- |
| Zookeeper | `500` (`appian`) | `500` (`appian`) |
| Kafka | `500` (`appian`) | `500` (`appian`) |
| Search Server | `500` (`appian`) | `500` (`appian`) |
| Data Server | `500` (`appian`) | `500` (`appian`) |
| Service Manager | `500` (`appian`) | `500` (`appian`) |
| Webapp | `500` (`appian`) | `500` (`appian`) |
| RPA | `500` (`appian`) | `500` (`appian`) |
| httpd | `48` (`apache`) | `48` (`apache`) |

## Setting runAsUser and fsGroup

To instruct the operator to set the `runAsUser` and/or `fsGroup` fields of the containers and pods it manages to a different value, simply set the corresponding fields in the [.spec.\[COMPONENT\].securityContext](crds.html#v1beta1securitycontext) fields in your Appian custom resources. For example, to instruct the operator to set both the `runAsUser` and `fsGroup` fields for Webapp to `2776`, configure your Appian custom resources as follows:

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
  webapp:
    securityContext:
      runAsUser: 2776
      fsGroup: 2776
```

## Omitting runAsUser and fsGroup

In some situations, you may want the operator to omit the `runAsUser` and/or `fsGroup` fields of the containers and pods it manages. This may be necessary if, for example, your cluster has a [mutating admission webhook](https://kubernetes.io/docs/reference/access-authn-authz/extensible-admission-controllers/) that should manage the fields.

To instruct the operator to omit the `runAsUser` and/or `fsGroup` fields of the containers and pods it manages, simply set the [.spec.\[COMPONENT\].securityContext](crds.html#v1beta1securitycontext) fields but omit the corresponding `runAsUser` and `fsGroup` fields in your Appian custom resources. For example, to instruct the operator to omit both the `runAsUser` and `fsGroup` fields for Webapp, configure your Appian custom resources as follows:

```
1
2
3
4
5
6
7
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  webapp:
    securityContext: {}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...