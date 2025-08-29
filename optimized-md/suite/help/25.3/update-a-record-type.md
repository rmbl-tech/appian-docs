---
source_url: https://docs.appian.com/suite/help/25.3/update-a-record-type.html
original_path: update-a-record-type.html
version: "25.3"
title: "Update a Legacy Record Type"
page_id: "update-a-record-type"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Update a Legacy Record Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

To take advantage of all record type features, functionality, and components available in the latest Appian release, you should update existing record types created with previous versions. Some new features affect how record types are referenced in expressions or how dependent interfaces display your record data. To ensure you are able to verify the impact of these features on your application, you won't be able to use the new features until you manually update the record type.

An existing record type that has not been updated is referred to as a legacy record type. The latest version of Appian is backward compatible with legacy record types, so your applications will continue to work normally.

This page explains the record type features added for specific versions and shows how to update your legacy record type objects to the latest version.

## Features available on update

The following table lists the record type features you will be able to use once you update a record type to the corresponding Appian version.

|
Appian version

 |

Feature

 |

Potential impacts

 |
| --- | --- | --- |
|

25.3

 |

Interfaces used in your record views and actions can use the increased _limit_ parameter in [a!relatedRecordData()](fnc_system_relatedrecorddata.html).

 | Check the interfaces for your record views and actions to ensure the correct amount of data is being returned. With the limit increase, `a!queryRecordType()` and `a!recordData()` will return up to 100 related records by default, and `a!queryRecordByIdentifier()` can be returned up to 250 by default. |
|

24.4

 |

`rv!record` queries data more efficiently in record views, titles, and feed-style lists by detecting when fields have already been queried by a different relationship and skipping redundant queries.

Additionally, `rv!record` will ignore any relationship references, like `recordType!Orders.relationships.customers`, to ensure that only the necessary fields and related record fields are returned.

 | Check record views and other interfaces that reference the record type to ensure the correct data is being returned using `rv!record`.

These enhancements do not apply to record actions that reference `rv!record`. |
|

23.3

 |

`rv!record` returns up to 100 related records for each one-to-many relationship.

 | Check record views and other interfaces that reference the record type to see if the design needs to be updated to accommodate a greater number of related records.

Generated record actions will automatically reference `rv!record`, and related record data will be passed to the action's process model. |
|

20.3

 |

[Record type references](reference-records.html)

 | See the [troubleshooting section](#troubleshooting-record-type-updates) for help resolving issues after updating. |

## Updating a legacy record type

![/Record Type Blue Update Message](images/Record_Type_Blue_Update_Message.png)

All legacy record type objects include the following update alert at the top of the page. You'll need to update your legacy record types to take advantage of any new features, functionality, or components included in the latest Appian release.

**Tip:**  Appian recommends exporting a copy of your record type before updating the record type in case you need to roll back the record type to the previous version.

To update a legacy record type:

1.  Open the record type.
2.  In the update alert banner, click **Update Now**.

    Appian will automatically update your record type to the latest version and display a success banner when the new record type features and functionality are available for use.

    ![/Record Type Green Update Message](images/Record_Type_Green_Update_Message.png).

3.  Click **SAVE**.

    **Note:**  If you need to roll back the record type to the previous version, close the record type object without saving your changes. If you have already saved your record type, you can import the version you exported prior to updating the record type into your application and delete the updated version.

4.  Review and update any design objects, like interfaces and expression rules, that reference the updated record type to ensure they're working properly.

## Troubleshooting record type updates

In some instances, after updating your legacy record type, you may need to manually configure part of your record list or manually update expressions that support your record type.

The guidance provided in this section will help you identify configuration settings in your record list or parameters in your expressions that you need to manually reconfigure following a record type update.

### Message banner

After updating your record type, you may encounter a yellow message banner in the UI, which indicates that one or more configuration issues were detected in the record list.

![/Record Type Yellow Update Message](images/Record_Type_Yellow_Update_Message.png)

To resolve this:

1.  In the record type, go to **List**.
2.  Click **Edit List**.
3.  Review all of the parameter settings for your record list. Manually reconfigure the list so that all of the grid, column, and component [parameters](record-list.html#grid-style-record-list) are mapped to the new setting options for the enhanced record list.

### Resolving record list issues

The record list for a legacy record type may have component and parameter settings that did not convert to the new setting options when you updated the record type. As such, we recommend that you review your record list and configuration settings after updating your record type to the latest version.

If your record list met any of the following conditions prior to updating, you will need to manually reconfigure the parameter settings to ensure the list displays properly:

-   Uses `rf!` to define the _align_ parameter of a column component.
-   Uses an expression rule to define the _align_ parameter with one of the following values: `LEFT` and `RIGHT`.
-   Uses an expression rule to define the _width_ parameter with the following value: `DISTRIBUTE`.
-   Uses an expression rule to define the _default sorts_ parameter or _sort field_ parameter that uses a string field reference.
-   Contains syntax errors that prevent the record list from displaying properly.

To reconfigure your record list:

1.  In the record type, go to **List**.
2.  Click **Edit List**.
3.  Click **RESET LIST** to populate the record list with the latest fields in your record type. This will remove any existing configurations on the record list.

See [Configure a record list](record-list.html) for more information.

### Resolving expression rule issues

After updating a legacy record type, you may also need to update the expression rules used within the record type or in other objects that support the record type.

Manually reconfigure any expression rules that support your record type if any of the following conditions apply:

-   Defines an expression rule that applies query filters or sorts to the record data, such as an expression rule for user filters. To resolve this, update the expression rule by switching the `fieldAs` parameter to `recordType!MyRecord.fields.fieldAs`.
-   Used in the record type to define a queryFilter or sort, **BUT** the query filter or sort is not applied to the record data. To resolve this, update the expression rule by switching `recordType!MyRecord.fields.fieldAs` to `fieldAs`.
-   References `rf!` variables. To resolve this, reconfigure your expression rule within record titles, record views, and related actions to use `rv!identifier` and `rv!record` to reference a record field in the record type.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...