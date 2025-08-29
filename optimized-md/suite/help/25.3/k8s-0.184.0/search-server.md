---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/search-server.html
original_path: k8s-0.184.0/search-server.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Search Server Kernel Setting

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

In order for Elasticsearch to run, it requires the kernel's `vm.max_map_count` setting to be at least 262144. If this is set to anything less, Elasticserach will error out with a message like:

```
1
max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]
```

The side effect of setting this parameter is that it could potentially increase the memory consumption of all applications running on the host. Specifically, only processes which actually use a large amount of memory maps are affected. This parameter allows those processes to use significantly more maps, which increases memory consumption.

This page details how to adjust this setting with the following options.

## Directly configuring the host

The first option is to use the following command on the host (using sudo, or while logged in as root):

```
1
sysctl -w vm.max_map_count=262144
```

However, this option won't persist the setting on the host, and will be reset to original value upon a host restart. To make the setting persistent, you can add `vm.max_map_count=262144` to the `/etc/sysctl.conf` file. After adding this configuration, running the `sysctl -p` command or a subsequent restart of the host will reload the parameters in the `/etc/sysctl.conf` file.

The benefit of using this command is that it is very simple, and is transparent to the users when configuring Appian. Of course to do this change on the host, one would need to have admin access to the node. It is also important to note that this setting needs to be set on all nodes in the cluster, since the Search Server pod is not tied to any specific node and could move around. For this reason, it is best if it is encoded in the host image.

## Using an init container

Another option is to use an [init container](init-and-sidecar-containers.html) for the search server to make sure the value is set on the kernel before the search server pod is started. Since changing this setting requires admin privileges, the init container needs to run in the privileged mode. This command needs to run as root. Therefore, either the container image that is used should run as root, or `runAsUser: 0` should be included in the pod definition.

To do this, the definition of the search-server in the CR needs to be modified to include the init container as follows:

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
spec:
  searchServer:
    initContainers:
    - name: set-vm-max-map-count
      image: busybox
      imagePullPolicy: IfNotPresent
      securityContext:
        privileged: true
        runAsUser: 0
      command: ['sysctl', '-w', 'vm.max_map_count=262144']
```

Note that setting the `sysctl` parameter in the init container still sets the parameter at the host level, and affects all applications running on the host.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...