---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_entitydataidentifiers.html
original_path: fnc_system_a_entitydataidentifiers.html
version: "25.3"
title: "a!entityDataIdentifiers() Function"
page_id: "fnc_system_a_entitydataidentifiers"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!entityDataIdentifiers() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!entityDataIdentifiers**( _entity, identifiers_ )

Creates an EntityDataIdentifiers configuration for use with [a!deleteFromDataStoreEntities()](Delete_from_Data_Store_Entities_Smart_Service.html).

**See also:** [EntityDataIdentifiers](Appian_Data_Types.html#entitydataidentifiers)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`entity`

 |

_DataStoreEntity_

 |

This field holds a single Data Store Entity value in which the data to be deleted is stored.

 |
|

`identifiers`

 |

_Any Type_

 |

This field holds multiple Any Type values for the primary key values of the data to be deleted.

 |

## Returns

EntityDataIdentifiers

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