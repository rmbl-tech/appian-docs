---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/kubectl-cheat-sheet.html
original_path: k8s-0.184.0/kubectl-cheat-sheet.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# kubectl Cheat Sheet

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details helpful [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) commands to assist with developing, debugging, and operating Appian in Kubernetes for self-managed customers. A more detailed cheat sheet maintained by the Kubernetes community for general `kubectl` usage can be found [here](https://kubernetes.io/docs/reference/kubectl/cheatsheet/).

## Changing namespaces

Changing the [namespace](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/) of the current [kubeconfig](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/) context prevents one from having to specify the `--namespace`/`-n` flag for subsequent `kubectl` commands. To do so, run the following:

```
1
kubectl config set-context --current --namespace <NAMESPACE>
```

### Creating an alias for changing namespaces

Save even more time by creating an alias for the above command. Simply add the following to `~/.bashrc`:

```
1
alias kns="kubectl config set-context --current --namespace"
```

Now, you can change namespaces via `kns <NAMESPACE>`.

## Viewing resources

To view a [resource](https://kubernetes.io/docs/reference/using-api/api-concepts/#standard-api-terminology) of a given [resource type](https://kubernetes.io/docs/reference/using-api/api-concepts/#standard-api-terminology) (for example, Pods, Deployments, or StatefulSets) run the following:

```
1
kubectl -n <NAMESPACE> get <TYPE> <NAME>
```

To view all resources of a given resource type, simply omit `<NAME>`. You can also use `kubectl get` to view resources of multiple resource types at once. For example:

```
1
kubectl -n <NAMESPACE> get appians,deployments,statefulsets,pods
```

### Formatting the output

The default [output format](https://kubernetes.io/docs/reference/kubectl/overview/#formatting-output) for all `kubectl` commands, including `kubectl get`, is the human readable plain-text format. The `--output`/`-o` flag can be used to change `kubectl`'s output to a variety of other formats - including JSON and YAML. When used with `kubectl get`, the JSON and YAML formats output resources' raw Kubernetes manifests.

For example, you can use the following command to print out the current appian custom resource definition.

```
1
kubectl -n <NAMESPACE> get appian <APPIAN NAME> -oyaml
```

## Viewing Pod logs

To view a Pod's stdout/stderr, run:

```
1
kubectl -n <NAMESPACE> logs <POD>
```

To follow the logs, specify the `--follow`/`-f` flag.

If the logs you're looking for are written to the Pod's file system instead of streamed to stdout/stderr, either [copy](#copying-files-to-and-from-pods) them from the Pod to your machine or [exec](#execing-into-and-running-commands-in-pods) into the Pod to view them.

## Exec'ing into and running commands in Pods

To exec into a Pod, run the following:

```
1
kubectl -n <NAMESPACE> exec -i --tty <POD> -- bash
```

If you instead need to run a single command in a Pod without exec'ing into it, run the following:

```
1
kubectl -n <NAMESPACE> exec <POD> -- <COMMAND> <ARGS...>
```

For example, to list a Pod's directory contents at `/usr/local/appian/ae`, run:

```
1
kubectl -n <NAMESPACE> exec <POD> -- ls /usr/local/appian/ae
```

## Copying files to and from Pods

To copy a file from a Pod to your machine, run the following:

```
1
kubectl -n <NAMESPACE> cp <POD>:<FILE> <DEST>
```

Conversely, to copy a file from your machine to a Pod, run the following:

```
1
kubectl -n <NAMESPACE> cp <FILE> <POD>:<DEST>
```

You can add plugins to Appian by copying files in this way.

## Restarting the Webapp component

You may need to restart the Webapp component in the course of updating configurations such as [Changes to Custom Properties](start-stop-appian-on-k8s.html#changes-to-custom-properties).

To restart the Webapp component, delete its pod(s).

```
1
kubectl -n <NAMESPACE> delete pod <WEBAPP POD>
```

Kubernetes will immediately start a new Pod that will take on any configuration changes.

**Caution:**  This type of restart is only safe to do for the Webapp component. If you need to change the configuration specific to any other component, we recommend doing a [site restart](start-stop-appian-on-k8s.html#restarting-the-appian-site) to apply the changes.

## Scaling StatefulSets

You may also need to scale component StatefulSets up or down to restart all the pods or adjust load requirements. To scale the StatefulSet all the way down, set `replicas` to 0. To scale it back up, set `replicas` to your desired number of replicas.

```
1
kubectl -n <NAMESPACE> scale statefulset <STATEFULSET> --replicas=<NUMBER_OF_REPLICAS>
```

## Port-forwarding Pods

Port-forwarding forwards one or more local ports from your machine to a Pod. This is useful for making requests to ports not exposed outside of the cluster for internal testing and troubleshooting. To port-forward a Pod, run the following:

```
1
kubectl -n <NAMESPACE> port-forward <POD> <PORT>
```

This forward requests from `localhost:<PORT>` on your machine to `<PORT>` on the specified Pod. It's possible to port-forward multiple ports on the same Pod simultaneously by specifying `<PORT>` multiple times. If the desired port cannot be bound to on your machine, you can request a different mapping by specifying `<LOCAL_PORT>:<REMOTE_PORT>` instead of `<PORT>`.

## Describing resources

Describing a [resource](https://kubernetes.io/docs/reference/using-api/api-concepts/#standard-api-terminology) prints a detailed description of the resource — including related resources such as events and controllers. To describe a resource, run the following:

```
1
kubectl -n <NAMESPACE> describe <TYPE> <NAME>
```

## Editing resources

One can use `kubectl edit` to directly edit a [resource](https://kubernetes.io/docs/reference/using-api/api-concepts/#standard-api-terminology) as follows:

```
1
kubectl -n <NAMESPACE> edit <TYPE> <NAME>
```

### Changing the default editor

By default, `kubectl` opens [resources](https://kubernetes.io/docs/reference/using-api/api-concepts/#standard-api-terminology) for editing using `vi`. To change the default editor, simply add one of the following to `~/.bashrc`:

```
1
2
3
4
export KUBE_EDITOR="atom --wait" # Atom
export KUBE_EDITOR="nano" # Nano
export KUBE_EDITOR="subl --wait" # Sublime
export KUBE_EDITOR="mate -w" # TextMate
```

## Viewing resource types

To view all [resources types](https://kubernetes.io/docs/reference/using-api/api-concepts/#standard-api-terminology) in the Kubernetes API server, run the following:

```
1
kubectl api-resources
```

## Explaining resource types

Explaining a [resource type](https://kubernetes.io/docs/reference/using-api/api-concepts/#standard-api-terminology) describes its associated fields:

```
1
kubectl explain <TYPE>
```

One can also use JSONPath syntax to explain nested fields. For example:

```
1
kubectl explain pods.spec.containers
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...