---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/resource-requests-and-limits.html
original_path: k8s-0.184.0/resource-requests-and-limits.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Resource Requests and Limits

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to set [resource requests and limits](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for Appian on Kubernetes for self-managed customers. It provides per-component sizing guidelines for different classes of sites and details how to configure resource requests and limits—and related configurations, if applicable.

**Note:**  The sizing guidelines on this page should be treated only as a starting point. Actual sizing depends on your usage of Appian. In general, minimum values are for reference purposes and can be adjusted. Maximum values, however, are strict upper limits.

Unlike the [Hardware Requirements](../System_Requirements.html#hardware-requirements) guidelines for non-Kubernetes sites, the guidelines on this page do not differentiate between development and production sites. Instead, development sites should be thought of as "small" sites.

### What size is my site?

In the reference tables below, the recommendations and requirements are listed according to the size of your site. To help you make use of this topic, first determine the size of your site using this reference table:

| Class | Purpose | Resources Required (Non-HA) | Resources Required (HA) |
| --- | --- | --- | --- |
| Small | Development or Single Application | 4-16 CPU / 32-128 GB RAM, 110 GB RWO, 100 GB RWX (Logs) | CPU / RAM x3, 195 GB RWO, 200 GB RWX (Logs) / 100 GB RWX (Data) |
| Medium | Departmental adoption | 16-32 CPU / 128-256 GB RAM, 145 GB RWO, 150 GB RWX (Logs) | CPU / RAM x3, 300 GB RWO, 300 GB RWX (Logs) / 200 GB RWX (Data) |
| Large | Enterprise adoption | 32-64 CPU / 256-512 GB RAM, 190 GB RWO, 200 GB RWX (Logs) | CPU / RAM x3, 351 GB RWO, 400 GB RWX (Logs) / 300 GB RWX (Data) |

### Setting resource and request limits

You set resource requests and limits in the [custom resource definition](crds.html) (CRD). Fields follow the format: `.spec.[COMPONENT].resources`.

Units are specific to the resource being defined. Familiarize yourself with the [units listed in Kubernetes documentation](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes).

## Zookeeper

Zookeeper resource requests and limits are defined via the [.spec.zookeeper.resources](crds.html#v1beta1component) field on Appian custom resources.

| Class | CPU requests / limits | Memory requests / limits |
| --- | --- | --- |
| All sizes | `100m` / `200m` | `307Mi` / `448Mi` |

Zookeeper's start scripts set the `Xms` and `Xmx` flags when starting the Zookeeper JVM to the values of the `ZK_HEAP_MIN` and `ZK_HEAP_MAX` environment variables, respectively. If the environment variables are omitted, the flags default to `128m` and `256m`. If set, `.spec.zookeeper.resources.requests.memory` and `.spec.zookeeper.resources.limits.memory` should be assigned values equivalent to those of the aforementioned environment variables—which can be defined via the [.spec.zookeeper.env](crds.html#v1beta1component) field—plus a small buffer.

### Zookeeper example

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  zookeeper:
    env:
      - name: ZK_HEAP_MIN
        value: 128m
      - name: ZK_HEAP_MAX
        value: 256m

    resources:
      requests:
        cpu: 100m
        memory: 307Mi # ZK_HEAP_MAX * 1.2 to account for non-heap memory
      limits:
        cpu: 200m
        memory: 448Mi # ZK_HEAP_MAX * 1.75 to account for non-heap memory
```

## Kafka

Kafka resource requests and limits are defined via the [.spec.kafka.resources](crds.html#v1beta1component) field on Appian custom resources.

| Class | CPU requests / limits | Memory requests / limits |
| --- | --- | --- |
| All sizes | `500m` / `2000m` | `1229Mi` / `1792Mi` |

Kafka's start scripts set the `Xms` and `Xmx` flags when starting the Kafka JVM to the values of the `KAFKA_HEAP_MIN` and `KAFKA_HEAP_MAX` environment variables, respectively. If the environment variables are omitted, the flags default to `512m` and `1024m`. If set, `.spec.kafka.resources.requests.memory` and `.spec.kafka.resources.limits.memory` should be assigned values equivalent to those of the aforementioned environment variables—which can be defined via the [.spec.kafka.env](crds.html#v1beta1component) field—plus a small buffer.

### Kafka example

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  kafka:
    env:
      - name: KAFKA_HEAP_MIN
        value: 512m
      - name: KAFKA_HEAP_MAX
        value: 1024m

    resources:
      requests:
        cpu: 500m
        memory: 1229Mi # KAFKA_HEAP_MAX * 1.2 to account for non-heap memory
      limits:
        cpu: 2000m
        memory: 1792Mi # KAFKA_HEAP_MAX * 1.75 to account for non-heap memory
```

## Search Server

Search Server resource requests and limits are defined via the [.spec.searchServer.resources](crds.html#v1beta1component) field on Appian custom resources.

| Class | CPU requests / limits | Memory requests / limits |
| --- | --- | --- |
| Small | `200m` / `300m` | `1.5Gi` / `3Gi` |
| Medium | `200m` / `500m` | `1.5Gi` / `3Gi` |
| Large | `200m` / `3000m` | `5Gi` / `10Gi` |
| Extra Large | `250m` / `8000m` | `7Gi` / `14Gi` |

Search Server's start scripts set the `Xms` and `Xmx` flags when starting the Search Server JVM to the value of the `SS_HEAP` environment variable. If the environment variable is omitted, the flags default to `1g`. If set, `.spec.searchServer.resources.requests.memory` should be assigned a value equivalent to that of the aforementioned environment variable—which can be defined via the [.spec.searchServer.env](crds.html#v1beta1component) field—plus a small buffer. If set, `.spec.searchServer.resources.limits.memory` should be assigned a value at least double that of the aforementioned environment variable and `.spec.searchServer.resources.requests.memory`.

### Search server example

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  searchServer:
    env:
      - name: SS_HEAP
        value: 1280m

    resources:
      requests:
        cpu: 200m
        memory: 1.5Gi # SS_HEAP + 256Mi to account for non-heap memory
      limits:
        cpu: 300m
        memory: 3Gi # Double requests.memory
```

## Data Server

Data server resource requests and limits are defined via the [.spec.dataServer.resources](crds.html#v1beta1component) field on Appian custom resources.

| Class | CPU requests / limits | Memory requests / limits | Real-time store count | Memory circuit breaker bytes |
| --- | --- | --- | --- | --- |
| Small | `1000m` / `2000m` | `4Gi` / `10Gi` | 2 | 500000000 |
| Medium | `2000m` / `4000m` | `10Gi` / `20Gi` | 4 | 1000000000 |
| Large | `5000m` / `8000m` | `20Gi` / `36Gi` | 8 | 2000000000 |
| Extra Large | `7000m` / `24000m` | `52Gi` / `100Gi` | 12 | 4000000000 |

Additionally, the real-time store count and memory circuit breaker configurations should be set. If left unset, the real-time store count will be set to `2` and the memory circuit breaker will not be enforced.

The real-time store count is configured by setting the `rtscount` property in the [Appian YAML file](install-appian-on-k8s.html#4-create-an-appian-yaml-file). The memory circuit breaker, which is used to limit the amount of memory that each real-time store component can use during query execution, is configured using the `.spec.customProperties.rts.queryMemoryLimits.circuitBreaker.threshold.bytes` field.

For more sizing guidance regarding data server memory, see [Memory](../Configuring_the_Data_Server.html).

### Data server example

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  customProperties:
    rts.queryMemoryLimits.circuitBreaker.threshold.bytes: 500000000
  dataServer:
    resources:
      requests:
        cpu: 1000m
        memory: 4Gi
      limits:
        cpu: 2000m
        memory: 10Gi
```

## Service Manager

### JVM Memory

Service Manager's start scripts set the `Xmx` and `XX:MaxDirectMemorySize` flags when starting the Service Manager JVM to the values of the `KOMODO_HEAP_MAX` and `KOMODO_DIRECT_MEM_MAX` environment variables, respectively. If the environment variables are omitted, the flags both default to `8g`.

| Class | KOMODO\_DIRECT\_MEM\_MAX | KOMODO\_HEAP\_MAX |
| --- | --- | --- |
| Small | `512m` | `1g` |
| Medium | `512m` | `1g` |
| Large | `768m` | `1536m` |
| Extra Large | `768m` | `1536m` |

### Kubernetes Resources

Service Manager resource requests and limits are defined via the [.spec.serviceManager.resources](crds.html#v1beta1component) field on Appian custom resources. Resource requests and limits can be overridden on a per-engine basis via the [.spec.serviceManager.engineOverrides.\[ENGINE\].resources](crds.html#v1beta1engineoverrides) fields.

#### CPU

| Class | CPU requests / limits |
| --- | --- |
| Small | `200m` / `2000m` |
| Medium | `700m` / `2500m` |
| Large | `1600m` / `3000m` |
| Extra Large | `2000m` / `3500m` |

#### Memory

**Note:**  Each Service Manager pod contains one of the Appian Engines, which have unpredictable and unbounded memory usage. As such, the recommended values for `.spec.serviceManager.resources.limits.memory` are set very high to prevent the engine from being killed during a spike.

Optionally the memory limit for the Service Manager pods can be omitted entirely. While it is not necessary to have available memory to cover the limits for each pod, providing worker nodes without enough memory headroom could lead to availability issues. Configuring `.spec.serviceManager.resources.requests.memory` will depend on a number of factors, but as a general guideline for new sites refer to the table below.

| Class | Memory requests / limits |
| --- | --- |
| Small | `2.5Gi` / `32Gi` |
| Medium | `6.5Gi` / `64Gi` |
| Large | `12.5Gi` / `128Gi` |
| Extra Large | `17.5Gi` / `256Gi` |

**Note:**  Service Manager memory requests should be re-evaluated periodically to adjust for engine memory growth. Use the formula below to determine the new values for existing sites.

The formula for calculating the memory requests size of an existing engine is `KOMODO_DIRECT_MEM_MAX + KOMODO_HEAP_MAX + (size of kdb on disk * 2.5)`. The sizing table above can still be used to set the memory limits.

| KOMODO\_DIRECT\_MEM\_MAX | KOMODO\_HEAP\_MAX | kdb file size | Memory requests / limits |
| --- | --- | --- | --- |
| `512m` | `1g` | `512m` | `2.75Gi` / `32Gi` |
| `512m` | `1g` | `2g` | `6.5Gi` / `64Gi` |
| `768m` | `1536m` | `20g` | `52.25Gi` / `256Gi` |

##### Examples

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  serviceManager:
    env:
      - name: KOMODO_DIRECT_MEM_MAX
        value: 512m
      - name: KOMODO_HEAP_MAX
        value: 1g
    resources:
      requests:
        cpu: 200m
        memory: 2.5Gi
      limits:
        cpu: 2000m
        memory: 32Gi
    engineOverrides:
      execution:
        resources:
          requests:
            cpu: 1600m
            memory: 12.5Gi
          limits:
            cpu: 3000m
            memory: 128Gi
```

In addition to setting `.spec.serviceManager.resources.requests.memory`, it is recommended that memory requests be set on a per-engine basis to further optimize your deployment. This can be done using each individual `.spec.serviceManager.engineOverrides.[ENGINE].resources.requests.memory` setting.

**Note:**  Resource requests and limits can only be set per engine type and not by specific shard. Therefore these settings should be applied to execution and analytics engines based on the largest kdb file of the respective execution and analytics shards.

For example, if you generally have smaller engines but a big execution engine, you could optimize using a configuration similar to the following:

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  serviceManager:
    env:
      - name: KOMODO_DIRECT_MEM_MAX
        value: 512m
      - name: KOMODO_HEAP_MAX
        value: 1g
    resources:
      requests:
        cpu: 200m
        memory: 2.5Gi
      limits:
        cpu: 2000m
        memory: 32Gi
    engineOverrides:
      execution:
        requests:
          cpu: 1600m
          memory: 12.5Gi
        limits:
          cpu: 3000m
          memory: 128Gi
```

## Webapp

Webapp resource requests and limits are defined via the [.spec.webapp.resources](crds.html#v1beta1component) field on Appian custom resources.

| Class | CPU requests / limits | Memory requests / limits | conf.appserver.maxHeapsize |
| --- | --- | --- | --- |
| Small | `1000m` / `2000m` | `4.5Gi` / `6Gi` | `3072m` |
| Medium | `2000m` / `4000m` | `6Gi` / `8Gi` | `4096m` |
| Large | `3000m` / `6000m` | `9Gi` / `13Gi` | `6144m` |
| Extra Large | `4000m` / `8000m` | `16Gi` / `22Gi` | `12288m` |

Webapp's start scripts set the `Xmx` flags when starting the Webapp JVM to the value of the `conf.appserver.maxHeapSize` custom property. If the custom property is omitted, the flag defaults to `4096m`. If set, `.spec.webapp.resources.requests.memory` and `.spec.webapp.resources.limits.memory` should be assigned values equivalent to those of the aforementioned custom properties—which can be defined via [.spec.customProperties](crds.html#v1beta1appianspec)—plus a small buffer.

### Webapp example

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  customProperties:
    conf.appserver.maxHeapSize: 3072m
  webapp:
    resources:
      requests:
        cpu: 1000m
        memory: 4.5Gi
      limits:
        cpu: 2000m
        memory: 6Gi
```

## RPA

### CPU requests and limits

RPA resource requests and limits are defined via the [.spec.rpa.resources](crds.html#v1beta1component) field on Appian custom resources.

| Class | CPU requests / limits |
| --- | --- |
| Small | `1000m` / `2000m` |
| Medium | `1000m` / `4000m` |
| Large | `1000m` / `4000m` |

CPU requests should be set to `1000m`. CPU limits should be set to match the number of CPUs the site node has.

### Memory allocation

RPA's start scripts set the `Xmx` flags when starting the RPA JVM to the value of the `rpa.max.memory` RPA property. If the RPA property is omitted, the flag defaults to `2048m`.

`.spec.rpa.resources.requests.memory` should be assigned a value proportional to `rpa.max.memory` and can be specified via [.spec.rpa.properties](crds.html#v1beta1component).

We recommend applying a small buffer to `.spec.rpa.resources.requests.memory` to account for non-heap memory (`rpa.max.memory * 1.2`)

We do not recommend putting explicit limits on RPA memory in order to leverage swap.

| Class | rpa.max.memory | Memory requests |
| --- | --- | --- |
| Small | 2048 | `2.5Gi` |
| Medium | 4096 | `5.0Gi` |
| Large | 6144 | `7.5Gi` |

#### RPA example

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  rpa:
    resources:
      requests:
        cpu: 1000m
        memory: 5.0Gi
      limits:
        cpu: 4000m
    properties:
      rpa.max.memory: 4096
```

## Httpd

Httpd resource requests and limits are defined via the [.spec.httpd.resources](crds.html#v1beta1component) field on Appian custom resources.

| Class | CPU requests / limits | Memory requests / limits |
| --- | --- | --- |
| Small | `100m` / `300m` | `32Mi` / `48Mi` |
| Medium | `400m` / `500m` | `64Mi` / `80Mi` |
| Large | `700m` / `900m` | `96Mi` / `112Mi` |
| Extra Large | `1000m` / `1200m` | `128Mi` / `144Mi` |

### Httpd example

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
  httpd:
    resources:
      requests:
        cpu: 100m
        memory: 32Mi
      limits:
        cpu: 300m
        memory: 48Mi
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...