---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/release-notes.html
original_path: k8s-0.184.0/release-notes.html
version: "25.3"
title: "Appian Operator Release Notes"
page_id: "k8s-0.184.0/release-notes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Operator Release Notes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page documents the release notes for each version of the Appian operator that is released for self-managed customers.

**Note:**  Only the three most recent releases of the Appian operator are supported at any given time. Users should [upgrade the operator](upgrading-appian-on-k8s.html#upgrading-the-operator) frequently to stay up-to-date with bug and security fixes, especially since upgrading the operator neither requires upgrading installations of Appian on Kubernetes nor impacts their availability.

## Release Notes

### v0.184.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.29-v1.33.

#### New Features

-   The operator now supports overriding / omitting containers' `runAsUser` and pods' `fsGroup` fields via the [.spec.\[COMPONENT\].securityContext](crds.html#v1beta1securitycontext) fields in Appian custom resources. For more information, see [Configure a Security Context for a Pod or Container](security-context.html).
-   The Migration Tool now supports excluding different types of data using the `--exclude-data` flag - enabling manual migration and other advanced use cases. For more information, see [Excluding data](migration-tool.html#excluding-data) and [Manually migrating data](migration-tool.html#manually-migrating-data).

### v0.181.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.29-v1.33.

#### New Features

-   The operator now supports overriding operator-managed volume mounts via the [.spec.\[COMPONENT\].additionalVolumeMounts](crds.html#v1beta1component) fields in Appian custom resources.

-   The operator now manages Search Server passwords. Users no longer have to manually manage Search Server passwords via the `conf.search-server.user.appian.password` property in `custom.properties` and the `conf.password.SearchServer` property in `passwords.properties`.

#### Bug Fixes

-   **CN-36218** - Medium

    Fixed a bug where the httpd's liveness and readiness probes always succeeded.

**Note:**  This release has been explicitly tested against Kubernetes v1.29-v1.33. It has not been explicitly tested against versions older than Kubernetes v1.29.

### v0.178.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.28-v1.32.

#### New Features

-   The Migration Tool now supports a `draft-yaml` command that can be used to quickly draft an Appian custom resource without running the `export` and `merge` commands.

#### Bug Fixes

-   **CLOUD-44231** - Medium

    Fixed a bug that prevented Webapp pods from waiting for background work to finish processing during voluntary disruptions. Now, the only time that Webapp pods don't wait for background work to finish processing is during site shutdown.

-   **CN-34530** - Low

    Updated help text output by the Migration Tool's `export` command to better instruct users how to update internal paths when migrating sites to Appian on Kubernetes.

-   **AN-314499** - Medium

    Fixed a bug that prevent Data Server pods from starting on 25.1+ due to `/dev/shm` not being writable. Users who worked around the issue by setting or updating the `.spec.dataServer.additionalVolumes` and `.spec.dataServer.additionalVolumeMounts` fields may revert their changes after upgrading the operator.

-   **AN-315528** - Medium

    Fixed a bug that allowed external requests to reach httpd's `/stats` endpoint.

**Note:**  This release has been explicitly tested against Kubernetes v1.28-v1.32. It has not been explicitly tested against versions older than Kubernetes v1.28.

### v0.173.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.26-v1.30.

#### New Features

-   The operator now supports custom labels on external-facing services. Customers that need external-facing services to be created with specific labels can set the new `.spec.service.labels` field in their Appian custom resources.

#### Bug Fixes

-   **AN-310942** - Low

    Fixed a bug that resulted in `serviceManagerScriptWrapper.sh` being created with overly permissive permissions.

### v0.171.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.26-v1.30.

#### Bug Fixes

-   **CN-34049** - Medium

    Fixed a bug in the Migration Tool that prevented it from working on Windows.

-   **CN-33980** - Low

    Fixed a bug that prevented role bindings from being created for Data Server.

### v0.166.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.26-v1.30.

#### Bug Fixes

-   **CN-32833** - Medium

    Fixed a bug that prevented httpd's `/run/httpd` directory from being writable.

-   **CN-31979** - Medium

    Fixed a bug where a restarted site's pods might use the old site's secret values.

### v0.161.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.26-v1.30.

#### Breaking Changes

-   The Appian operator now creates `tmp` `emptyDir` volumes in the pods it manages and volume mounts from them to ephemeral data directories. If you are doing this yourself via the [.spec.\[COMPONENT\].additionalVolumes](crds.html#v1beta1component) or [.spec.\[COMPONENT\].additionalVolumeMounts](crds.html#v1beta1component) fields on Appian custom resources, you will need to stop doing so when you upgrade the operator.

**Note:**  Upgrading the operator to the new version will cause Zookeeper, Kafka, Search Server, Data Server, Service Manager, Webapp, and httpd pods to roll, if HA.

#### Bug Fixes

-   **CN-28361** - Medium

    Fixed a bug that prevented ephemeral data directories from being writable.

**Note:**  This release has been explicitly tested against Kubernetes v1.26-v1.30. It has not been explicitly tested against versions older than Kubernetes v1.26.

### v0.159.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.25-v1.29.

#### Bug Fixes

-   **CN-28689** - Low

    Upgraded golang.org/x/net to v0.24.0 to remediate [CVE-2023-45288](https://nvd.nist.gov/vuln/detail/CVE-2023-45288).

-   **CN-29252** - Major

    Fixed a bug with the migration tool that prevented the webapp from starting after migrating data.

### v0.156.0

#### Kubernetes Compatibility

This release has been explicitly tested against Kubernetes v1.25-v1.29.

#### New Features

-   RPA is now supported for Appian on Kubernetes. This new capability brings all of Appian RPA's features directly to your self-managed environment. Starting with RPA 9.9, this capability is supported on Appian 23.4 and newer.

#### Breaking Changes

-   Appian on Kubernetes now requires an `appian.lic` license in addition to `k3.lic` and `k4.lic` licenses. Make sure you have [requested an `appian.lic` license](install-appian-on-k8s.html#request-licenses) and have [loaded it into Kubernetes](install-appian-on-k8s.html#3-load-licenses) and referenced it in your Appian custom resource before upgrading the Appian operator.

**Note:**  This release has been explicitly tested against Kubernetes v1.25-v1.29. It has not been explicitly tested against versions older than Kubernetes v1.25.

### v0.154.1

#### Kubernetes Compatibility

We support Kubernetes versions 1.23-1.27 for this release.

#### Bug Fixes

-   **AN-268736** - Low

    Upgraded github.com/emicklei/go-restful/v3 to address PRISMA-2022-0227.

-   **CN-28132** - Low

    Upgraded github.com/lestrrat-go/jwx/v2 and google.golang.org/protobuf to address [CVE-2024-28122](https://nvd.nist.gov/vuln/detail/CVE-2024-28122) and [CVE-2024-24786](https://nvd.nist.gov/vuln/detail/CVE-2024-24786), respectively.

### v0.154.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.23-1.27 for this release.

#### Bug Fixes

-   **CN-24866** - Low

    Fixed a bug where additional labels (`.spec.additionalLabels`), which are mutable, were incorrectly applied to workload resources' pod selectors, which are immutable.

### v0.151.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.23-1.27 for this release.

#### New Features

-   The operator now supports custom labels on pods. Customers that need pods to be created with specific labels can set the new `.spec.<COMPONENT>.podLabels` fields in their Appian custom resources.

#### Removals

-   Removed the v1alpha1 API version of the Appian CRD previously deprecated in v0.108.0.
-   Removed the `securityTokenSecretName`, `adminPasswordSecretName`, and `serviceManagerConfSecretName` fields previously deprecated in v0.108.0.

#### Bug Fixes

-   **CN-25397** - Medium

    Fixed a bug where the `.webhooks.caBundle` and `.webhooks.webhookConfiguration.caBundle` Helm chart values were not properly injected into the Appian CRD by the CRD update job.

-   **CN-25650** - Low

    Upgraded github.com/lestrrat-go/jwx/v2 to address [CVE-2023-49290](https://nvd.nist.gov/vuln/detail/CVE-2023-49290).

-   **CN-25942** - Low

    Upgraded golang.org/x/crypto to address [CVE-2023-48795](https://nvd.nist.gov/vuln/detail/CVE-2023-48795).

### v0.146.2

#### Kubernetes Compatibility

We support Kubernetes versions 1.23-1.27 for this release.

#### Bug Fixes

-   **CN-25397** - Medium

    Fixed a bug where image pull secrets were not rendered into the CRD update job.

### v0.146.1

#### Kubernetes Compatibility

We support Kubernetes versions 1.23-1.27 for this release.

#### New Features

-   The Appian operator Helm chart now includes a hook that installs or upgrades the Appian custom resource definition (CRD). Customers no longer have to annotate or patch the Appian CRD after installing or upgrading the Appian operator or upgrade it before upgrading the operator. As part of this change, a new Helm chart value, `.webhooks.caBundle`, has been added to replace the old, now deprecated `.webhooks.webhookConfiguration.caBundle` value.
-   The Appian operator Helm chart can now be pulled from Appian's container registry instead of downloaded from Appian Community. For more information, see [Appian operator Helm chart](artifacts.html#appian-operator-helm-chart)
-   The operator now sets stateful sets' update strategies to `RollingUpdate` if they have multiple replicas. This means that customers no longer have to manually delete pods after making certain changes to Appian custom resources.

#### Bug Fixes

-   **CN-24756** - Low

    Upgraded golang.org/x/net to address [CVE-2023-39325](https://nvd.nist.gov/vuln/detail/CVE-2023-39325) and [CVE-2023-44487](https://nvd.nist.gov/vuln/detail/CVE-2023-44487)

### v0.140.1

#### Kubernetes Compatibility

We support Kubernetes versions 1.23-1.27 for this release.

#### New Features

-   Appian on Kubernetes now supports collecting support bundles for easier troubleshooting. For more information, see [Support Bundle for Appian on Kubernetes](support-bundle.html).

**Note:**  This operator release supports Kubernetes version 1.27, and 1.21 and 1.22 are now deprecated.

#### Bug Fixes

-   **CN-23177** - Low

    Upgraded golang.org/x/net to address [CVE-2023-3978](https://nvd.nist.gov/vuln/detail/CVE-2023-3978)

-   **CN-23257** - Low

    Fixed a bug where the operator would incorrectly attempt to update immutable job fields.

### v0.137.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.26 for this release.

#### New Features

-   Appian on Kubernetes now supports MirrorMaker for Kafka mirroring in support of [Cold Failover](cold-failover.html). Customers can now set the `.spec.kafka.mirrorMakerListeners` and `.spec.mirrorMaker` fields in their primary and backup Appian custom resources, respectively, to enable MirrorMaker. For more information, see [Kafka / Zookeeper](cold-failover.html#kafka-and-zookeeper).

#### Bug Fixes

-   **CN-22038** - Medium

    Fixed a bug where the operator would incorrectly set ingress path types to `ImplementationSpecific` instead of `Prefix`.

-   **CN-22373** - Low

    Fixed a bug where additional labels (`.spec.additionalLabels`), which are mutable, were incorrectly applied to workload resources' pod selectors, which are immutable.

-   **CN-22438** - Low

    Fixed a bug where the Migration Tool would allow migration to continue without checking for certain path customizations.

### v0.136.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.26 for this release.

#### New Features

-   The operator now reconciles multiple Appian custom resources in parallel.
-   The operator now supports [DNS Policy](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-s-dns-policy) and [DNS Config](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-dns-config) for all components. Customers that need to set the `dnsPolicy` and `dnsConfig` fields on pods created by the operator can set the new `.spec.<COMPONENT>.dnsPolicy` and `.spec.<COMPONENT>.dnsConfig` fields in their Appian custom resources.
-   The operator now supports custom annotations on pods. Customers that need pods to be created with specific annotations can set the new `.spec.<COMPONENT>.podAnnotations` fields in their Appian custom resources.
-   The operator now supports storing data source usernames in existing secrets. Customers that need to store data source usernames in secrets can do so and set the new `.spec.webapp.dataSources.primary.usernameSecretKeyRef` and `.spec.webapp.dataSources.business[].usernameSecretKeyRef` fields in their Appian custom resources.

#### Removals

-   Removed the `validationQuery` fields in v1alpha1 previously deprecated in v0.108.0.

#### Bug Fixes

-   **CN-19943** - Low

    Fixed a bug where the operator would fail to update the status of Appian custom resources.

-   **AN-205041** - Low

    Fixed a bug where the operator would incorrectly set Service Manager's termination grace period to 24 hours.

-   **AN-234601** - Low

    Fixed a bug where Webapp pods would not terminate gracefully.

### v0.133.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.26 for this release.

#### New Features

-   Make Service Manager shutdown job resources configurable for the shutdown pod via the new field `.spec.serviceManager.shutdown`in their Appian custom resources. The container no longer has CPU and memory requests and limits by default.

#### Bug Fixes

-   **CN-12329** - Low

    Fixed a bug where `/usr/local/appian/ae/_admin/validation` was persisted.

-   **CN-20588** - Low

    Fixed a bug where Zookeeper's network policy allowed traffic from Data Server and Webapp for newer versions of Appian.

### v0.131.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.26 for this release.

#### New Features

-   Non-primary Webapp replicas now start in parallel.

### v0.127.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.26 for this release.

#### New Features

-   The operator no longer caches objects it does not operate or own - making it more resource efficient - especially in large clusters.
-   The operator now supports [Pod Priority](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/) for all components. Customers that need to set the `priorityClassName` field on pods created by the operator can set the new `.spec.<COMPONENT>.priorityClassName` fields in their Appian custom resources.
-   The operator now supports creating objects with custom, additional labels. Customers that need objects created by the operator, including pods, to be created with specific labels can set the new `.spec.additionalLabels` field in their Appian custom resources.

**Note:**  This operator release supports Kubernetes version 1.26.

#### Bug Fixes

-   **CN-19728** - Low

    Upgraded golang.org/x/net to address [CVE-2022-41723](https://nvd.nist.gov/vuln/detail/CVE-2022-41723)

-   **CN-19466** - Medium

    Fixed a bug where default inter-pod anti-affinity was improperly configured for replicas of the execution and analytics engines.

### v0.124.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.25 for this release.

#### New Features

-   The operator now allows configuring [TLS ingress secrets](https://kubernetes.io/docs/concepts/services-networking/ingress/#tls) in their cluster. Customers with a use case of handling their own ingress certificates can use the new field `.spec.ingress.tls`.

-   The [Migration Tool](migration-tool.html) now supports saving state with annotations during import. When import times out, it will now pick back up in the state that it timed out on.

-   Customers can now provide data source passwords by referencing an existing secret in `.spec.webapp.dataSources.primary.passwordSecretKeyRef` or `.spec.webapp.dataSources.business[].passwordSecretKeyRef` instead of configuring the password value directly. The old `.spec.webapp.dataSources.primary.password` and `.spec.webapp.dataSources.business[].password` values are now deprecated.

-   The operator now exposes [Pod Disruption Budget](https://kubernetes.io/docs/concepts/workloads/pods/disruptions/#pod-disruption-budgets) support for all components. Currently the defaulting is for httpd to preserve existing behavior but this will eventually be removed, so customers wanting PDBs for httpd should explicitly set `.spec.httpd.pdb`.

#### Bug Fixes

-   **CN-18488** - Low

    Upgraded golang.org/x/net to address [CVE-2022-41717](https://nvd.nist.gov/vuln/detail/CVE-2022-41717).

-   **CN-18231** - Low

    Fixed a bug where [Migration Tool](migration-tool.html) export didn't work with UNC paths on Windows.

### v0.120.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.25 for this release.

#### New Features

-   The [Migration Tool](migration-tool.html) now reports estimated progress during merge and import.

-   The [Migration Tool](migration-tool.html) now has a darwin/amd64 variant.

-   The [Migration Tool](migration-tool.html) now reports which pods it's waiting for during import by default and links to the appropriate section in the [troubleshooting documentation](troubleshooting-appian-k8s.html) in the event of a timeout.

### v0.118.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.25 for this release.

#### New Features

-   When shutting down sites running newer versions of Appian with `.spec.version` defined, the Appian operator now creates a single job to shutdown the Appian engines instead of a job per engine. This reduces the amount of resources required to shutdown the Appian engines.

-   The [Migration Tool](migration-tool.html) now reports estimated progress during export.

-   The Appian operator Helm chart now defines a [NOTES.txt file](https://helm.sh/docs/chart_template_guide/notes_files/) with helpful post-install and post-upgrade information - including reminders to inject your certificate's CA bundle into the Appian custom resource definition (CRD) and upgrade the Appian CRD.

#### Bug Fixes

-   **AN-210105** - Medium

    Fixed a bug where the Appian operator might not shutdown the Appian engines cleanly - resulting in transaction replays or possible data loss on the next startup. To benefit from this bug fix, you must [upgrade Appian](upgrading-appian-on-k8s.html#upgrading-the-appian-images) to the latest hotfix and set the `.spec.version` field in your Appian custom resources.

### v0.117.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.21-1.25 for this release.

#### New Features

-   Added version printer column to Appians resources. When running `kubectl get appians` in terminal, the Appian version is now printed if it was set in the Appian custom resource.

-   Updated all statefulset update strategies to [OnDelete](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/#update-strategies). From Kubernetes documentation: "When a StatefulSet's `.spec.updateStrategy.type` is set to `OnDelete`, the StatefulSet controller will not automatically update the Pods in a StatefulSet. Users must manually delete Pods to cause the controller to create new Pods that reflect modifications made to a StatefulSet's `.spec.template`."

-   Created a new field in the CRD for the Appian version in `.spec.version`. While the field is currently optional, we recommend customers start setting the field in their custom resources as the field will become required in the future. The operator will now understand the version of Appian a site is running on and in the future could perform different actions based on the version. If `.spec.version` is set, customers can omit the `.spec.<component>.image.tag` fields from their custom resources, as they will get automatically populated with the version.

**Note:**  This operator release supports Kubernetes version 1.25, and 1.19 and 1.20 are now deprecated.

#### Bug Fixes

-   **CN-17607** - Medium

    Upgraded golang.org/x/text to v0.3.8+ to address [CVE-2022-32149](https://nvd.nist.gov/vuln/detail/CVE-2022-32149).

-   **CN-17162** - Low

    Upgraded golang.org/x/net to address [CVE-2022-27664](https://nvd.nist.gov/vuln/detail/CVE-2022-27664).

### v0.112.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.19-1.24 for this release.

#### New Features

-   Updated the [storage API version](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definition-versioning/#specify-multiple-versions) to be v1beta1 in the Appian CRD. This means that newly created or updated objects will be persisted using the new v1beta1 [API version](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definition-versioning/#writing-reading-and-updating-versioned-customresourcedefinition-objects).

**Note:**  Upgrading the operator to the new version will cause Zookeeper, Kafka, and Webapp pods to roll.

#### Bug Fixes

-   **AN-211296** - Medium

    Fixed a bug where `/usr/local/appian/ae/zookeeper/config/tmp` and `/usr/local/appian/ae/kafka/config/tmp` might not be writable.

-   **CN-16866** - Low

    Upgraded github.com/emicklei/go-restful to v2.16.0 to address [CVE-2022-1996](https://nvd.nist.gov/vuln/detail/CVE-2022-1996).

-   **CN-16612 / CN-16613** - Medium

    Fixed bugs in Zookeeper, Kafka, and Webapp probe configurations.

### v0.108.0

#### Kubernetes Compatibility

We support Kubernetes versions 1.19-1.24 for this release.

#### New Features

-   Added [conversion webhooks](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definition-versioning/) to allow for versioning of the [Appian custom resource definition](crds.html). This allows evolving the schema for Appian custom resources without breaking backward compatibility.

    -   Webhook certificates are now required and externally managed. This enables customers to manage certificates in a wider variety of ways. Customers can still use cert-manager to handle their certificates if they were using it previously.

    **Note:**  Upgrading the operator to the new version will require manual action on the customer to either externally manage their own certificates or configure cert-manager to inject the CA bundle. Please refer to our [documentation](certs.html) for more information prior to upgrading.

-   Added new API version v1beta1 to the Appian CRD. The following changes have been made in v1beta1:
    -   Removed deprecated field `.spec.webapp.dataSources.validationQuery`. In order to configure a validation query in v1beta1, use the `.spec.webapp.dataSources.attributes` field.
    -   `.spec.webapp.url` is now moved to `.spec.url`
-   Added support for replicas, [pod disruption budgets](https://kubernetes.io/docs/tasks/run-application/configure-pdb/), and [horizontal pod autoscaling](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) for the operator's webhooks.

-   In previous operator versions, the user had the responsibility of manually managing the Appian Data Server security token and Service Manager admin user credentials. Now the operator conveniently manages these internally. As a result of this change, if customers are creating custom resources without the Service Manager auth secret name, Service Manager will restart.
    -   This also means that the following secret fields have now been deprecated.
        -   `.spec.dataServer.securityTokenSecretName`
        -   `.spec.serviceManager.auth`

#### Deprecations

The features listed below are deprecated and will be removed in future releases. Do not begin using deprecated features, and transition away from any prior usage of now deprecated features. Where applicable, supported alternatives are described for each deprecation.

-   The field `.spec.webapp.dataSources.validationQuery` in the CRD is now deprecated, use `.spec.webapp.dataSources.attributes` to configure a validation query instead.
-   The field `.spec.webapp.url` in the CRD is now deprecated, use `.spec.url` instead.
-   Secret fields previously exposed in the CRD `.spec.dataServer.securityTokenSecretName` and `.spec.serviceManager.auth` are now deprecated. The operator will take on the responsibility of managing the secrets.

#### Bug Fixes

-   **CN-14295** - High

    Fixed a bug where Search Server custom properties would not be migrated.

-   **CN-14913** - Critical

    Upgraded golang.org/x/crypto to address CVE-2022-27191 and removed tool dependencies from dependency tree.

-   **CN-15615** - Critical

    Upgraded gopkg.in/yaml.v3 to address CVE-2022-28948.

-   **CN-15280** - Medium

    Updated httpd's probes to monitor the mod\_jk workers to make sure there is a good communication channel between httpd and Webapp.

### v0.89.3

#### Kubernetes Compatibility

We support Kubernetes versions 1.19-1.24 for this release.

#### Bug Fixes

-   **CN-14763** - Medium

    Fixed an issue where liveness probe initial delays and startup probe configurations were not configured correctly for [small](resource-requests-and-limits.html) sites.

-   **CN-14913** - Low

    Fixed an issue where tool dependencies were included in the Appian operator Docker image.

### v0.89.1

#### Bug Fixes

-   **CN-14204** - Low

    Fixed an issue where users were able to define duplicate values in set fields in Appian custom resources.

-   **CN-14295** - Medium

    Fixed an issue where `<APPIAN_HOME>/search-server/conf/custom.properties` was not migrated by the [Migration Tool](migration-tool.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...