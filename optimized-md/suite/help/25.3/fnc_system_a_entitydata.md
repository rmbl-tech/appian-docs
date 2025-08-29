---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_entitydata.html
original_path: fnc_system_a_entitydata.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!entityData() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!entityData**( _entity, data_ )

Creates an Entity Data for use with [a!writeToMultipleDataStoreEntities()](Write_to_Multiple_Data_Store_Entities_Smart_Service.html)

**See also:** [EntityData](Appian_Data_Types.html#entitydata)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`entity`

 |

_DataStoreEntity_

 |

This field holds a single Data Store Entity value in which the data to be updated is stored.

 |
|

`data`

 |

_Any Type_

 |

This field holds multiple Any Type values to store in the entity.

 |

## Returns

EntityData

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