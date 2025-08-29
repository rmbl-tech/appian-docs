---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_deployment.html
original_path: fnc_system_a_deployment.html
version: "25.3"
title: "a!deployment() Function"
page_id: "fnc_system_a_deployment"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!deployment() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!deployment**( _deploymentUuid, property_ )

Returns a specific property of direct and external deployments.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`deploymentUuid`

 |

_Deployment_

 |

The deployment to retrieve. The UUID is available from the [post-deployment process](post-deployment-process.html) or the [deployment's log](Logging.html#deployment-log).

 |
|

`property`

 |

_Text_

 |

The information to retrieve for this deployment. Properties are case-sensitive and the following properties are supported:

-   _name_ (Text): The name of the deployment package.
-   _description_ (Text): The description of the deployment package.
-   _uuid_ (Text): The UUID of the deployment.
-   _auditUuid_ (Text): The common UUID across environments that tracks a direct deployment and any related deployments completed using the [Deploy to Another Environment](Deploy_to_Target_Environments.html#deploy-to-another-environment) option.
-   _status_ (Text): The [status of the deployment](deployments-view.html). Possible values are `"COMPLETED"`, `"COMPLETED_WITH_ERRORS"`, `"FAILED"`, `"IN_PROGRESS"`, `"PENDING_REVIEW"`, `"REJECTED"`, and `"REJECTED"`.
-   _applications_ (List of Application): The list of applications that the deployments are for.
-   _packageType_ (Text): The type of package (Patch or Application).
-   _objectsPackageId_ (Integer): The document ID for objects package zip file.
-   _customizationFileId_ (Integer): The document ID for Import Customization property file.
-   _databaseScriptsIds_ (List of Integer): The document IDs for database scripts in the order they are executed.
-   _pluginsPackageId_ (Integer): The document ID for the zip file of plug-in JAR files.
-   _logId_ (Integer): The ID of the [deployment log](Logging.html#deployment-log).
-   _source_ (Text): The name of the source environment.
-   _target_ (Text): The name of the target environment.
-   _objectsDeployed_ (Integer): The number of objects in the package that have been deployed. This includes successfully deployed objects and skipped objects.
-   _objectsFailed_ (Integer): The number of objects in the package that have failed to deploy.
-   _requester_ (Text): The username of the user who initiated the deployment. [Learn more](#using-adeployment-in-environments-that-dont-use-governance).
-   _reviewer_ (Text): The username of the user who made a decision on the deployment. [Learn more](#using-adeployment-in-environments-that-dont-use-governance).
-   _reviewerComment_ (Text): The comment left by the reviewer. [Learn more](#using-adeployment-in-environments-that-dont-use-governance).
-   _decision_ (Text): The decision on the deployment made by the reviewer. Possible values are `"APPROVED"`, `"REJECTED"`, `"PENDING"`, and `"NOT_APPLICABLE"`. [Learn more](#using-adeployment-in-environments-that-dont-use-governance).

 |

## Returns

Returns a specific property of a direct or external deployment which can be used in a [post-deployment process](post-deployment-process.html).

## Usage considerations

### Using a!deployment() in environments that don't use governance

If you do not use governance on your environments:

-   The value of the _reviewer_ and _reviewerComment_ properties will be null.
-   The value of the _decision_ property will be `"NOT_APPLICABLE"`.
-   The value of the _requester_ property will frequently be the deployment service account for the target environment.

### Using the status property

You can use the _status_ property to tell whether or not governance is enabled for an environment. If the status of a deployment is `"PENDING_REVIEW"` the deployment is waiting for a reviewer to make a decision on the deployment. Learn more about [deployment statuses](deployments-view.html#deployment-status).

### Using the requester property

-   If the deployment was triggered by an [external deployment](Deployment_Rest_API.html), the value of the _requester_ property will be`"EXTERNAL_SYSTEM"`.
-   If the deployment is a direct deployment from an environment that is no longer reachable, the function may not be able to determine a username and the value of _requester_ may be null.

## Example

`deployment(101, "reviewedDate")` returns `12/21/05 2:28 PM GMT`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...