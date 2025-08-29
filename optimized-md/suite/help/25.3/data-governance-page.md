---
source_url: https://docs.appian.com/suite/help/25.3/data-governance-page.html
original_path: data-governance-page.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Governance Page

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [data governors](processhq.html#-data-governors) and [data stewards](processhq.html#-data-stewards). It describes what actions are available on the **Data Governance** page of Process HQ.

**Note:**  To see this page, you must be in the [**Data Governors**](System_Groups.html#data-governors) system group or be [assigned as a data steward](configure-security.html#assign-data-stewards-to-record-types).

## Overview

Data governors can use the **Data Governance** page to see all synced record types in the environment. These trusted users can [assign data steward access](configure-security.html#assign-data-stewards-to-record-types) for record types in production, and [manage which record types are available as datasets in the Data Catalog](#manage-record-types-available-in-the-data-catalog).

Data stewards can also use this page to see which record types they can use in a process, preview record data, and understand each record type's relationships and fields.

To access this page, select **Process HQ** from the navigation menu, then click **Data Governance** in the navigation bar.

## Elements

The following image highlights the elements that make up this page:

[![screenshot of the data governance page showing a list of record types and filter options](images/process_insights/data-governance-elements.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img620)

[![](images/process_insights/data-governance-elements.png)](#_)

|
#

 |

Element

 |

Actions Available

 |
| --- | --- | --- |
| 1 | Navigation bar |

-   View the [Home](process-hq-landing-page.html) page.
-   View the [**Process Insights** page](process-insights-page.html).
-   View the [**Data Catalog**](data-catalog-page.html) page.
-   The current page you're on, the **Data Governance** page.
-   Switch out of Process HQ and into another workspace, like Appian Designer. The workspaces you can access depend on your user role and other security settings.
-   [Change settings for your user profile](Settings_Page.html).

 |
| 2 | Filter pane |

-   Search for a record type.
-   Filter record types by source type.
-   Search for record types assigned to a specific data steward.
-   Filter record types by whether [record events](record-events.html) are configured.
-   Filter record types by whether record types are [available in the Data Catalog](#manage-record-types-available-in-the-data-catalog).

 |
| 3 | Record types list |

-   View the synced record types in your environment. Only data governors have this view. Data stewards will only see the synced record types they're assigned to.
-   [Assign or remove data steward access](#manage-data-stewards) to record types.
-   [Show or hide record types from the Data Catalog](#manage-record-types-available-in-the-data-catalog).
-   [Select a record type](#manage-record-type-properties) to view its data structure, data stewards, and dependent items.

 |

## Manage data stewards

Data governors can use the **Data Governance** page to manage the [data stewards](configure-security.html#about-user-roles-in-process-insights) assigned to one or more record types. This determines which users can [add and manage processes](add-process.html) using data from those record types in Process HQ.

To manage data stewards assigned to a record type from the Data Governance page:

1.  On the **Data Governance** page, select the checkbox next to the record type.
2.  Click **MANAGE DATA STEWARDS**.

    In the dialog, you'll see a list of all users and groups that are data stewards for the record type.

    [![screenshot of the configure security dialog showing one group and one user assigned as data stewards](images/process_insights/data-governance-configure-security.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img621)

    [![](images/process_insights/data-governance-configure-security.png)](#_)

3.  Click **ADD DATA STEWARDS** to assign one or more users as data stewards for the record type.

    Data stewards should be users you trust to view the record data that makes up a process and hide sensitive data from other users.

4.  Click the **X** icon in the row with the user you want to remove. Data governors can only remove data stewards if they were assigned from the **Data Governance** page.
5.  Click **SAVE**.

**Tip:**  Data governors can also manage data stewards by clicking the record type name on the **Data Governance** page. From the **SECURITY** tab, they can view the assigned data stewards and manage them.

## Manage record types available in the Data Catalog

Data governors can use the **Data Governance** page to choose which record types are available in the [Data Catalog](data-catalog-page.html). This determines which record types can be used in reports and dashboards.

To show or hide a record type from the Data Catalog:

[![images/process_insights/dataCatalog_seeRecords.png](images/process_insights/dataCatalog_seeRecords.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img622)

[![](images/process_insights/dataCatalog_seeRecords.png)](#_)

|
#

 |

Action

 |
| --- | --- |
|

1

 |

Select the checkbox next to one or more record types and click **SHOW IN DATA CATALOG** or **HIDE FROM DATA CATALOG**.

 |
|

2

 |

Use the toggle in the **Data Catalog** column.

 |

## Manage record type properties

From the **Data Governance** page, data governors and data stewards can click the name of a record type to view and edit its properties.

Depending on whether you're a data governor or a data steward, you can:

|
User

 |

Action

 |
| --- | --- |
|

**Data governor**

 |

-   [Edit a record type's display name](#edit-a-record-types-display-name).
-   [View fields and relationships in the record type](#view-fields-and-relationships).
-   [Add or remove data stewards from the record type.](#manage-data-stewards)
-   [View processes that use the record type](#view-processes-that-use-the-record-type).

 |
|

**Data steward**

 |

-   [View fields and relationships in the record type](#view-fields-and-relationships).
-   [Preview record data](#preview-record-data).
-   [View processes that use the record type](#view-processes-that-use-the-record-type).

 |

### Edit a record type's display name

By default, record types in Process HQ are labeled by the [**Display Name (Plural)**](Create_a_Record_Type.html#create-a-record-type) configured on the record type. This name appears on a dataset in the [Data Catalog](data-catalog-page.html) or [Home page](process-hq-landing-page.html), and on a record type used to [add a process](add-process.html#add-a-process).

If the default display name isn't clear enough or there are multiple record types with the same display name, data governors can edit the display name from the Data Governance page.

Any Data Governance configurations will take precedence over the record type configuration, and the new display name will only be visible in Process HQ.

To edit the record type's default display name:

1.  Click the name of the record type on the **Data Governance** page.

    You'll see two names at the top of the page:

    [![screenshot of the record type's display names that appear when you view record type details](images/process_insights/display-names-phq.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img623)

    [![](images/process_insights/display-names-phq.png)](#_)

    |
    #

     |

    Description

     |
    | --- | --- |
    | 1 | The record type's display name, which is visible on the [**Home** page](process-hq-landing-page.html), [**Data Catalog** page](data-catalog-page.html), and [**Process Insights** page](process-insights-page.html) in Process HQ. |
    | 2 | The record type's name, which is only visible on the **Data Governance** page in Process HQ and in Appian Designer. |

2.  Next to the record type's display name, click **Edit Display Name**.
3.  For **Display Name**, enter a new name for the record type.
4.  Click **SAVE**.

### View fields and relationships

Data governors and data stewards can view all record fields and relationships configured on a record type, even if field-level security is applied.

To view the fields and relationships configured on a record type:

1.  Click the name of the record type on the **Data Governance** page.

    By default the **DATA STRUCTURE** tab is selected, so you can see the record type's fields and [relationships](record-type-relationships.html).

    [![screenshot of the record type details data structure tab showing a list of fields and a diagram of record type relationships](images/process_insights/data-governance-record-data-structure.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img624)

    [![](images/process_insights/data-governance-record-data-structure.png)](#_)

### Preview record data

Data stewards can see a preview of up to 60 rows of data from a record type.

To ensure they can see a comprehensive view of their process, data stewards can see all of the data in a record type, even if there is record-level security or field-level security configured.

To preview the record data:

1.  Click the name of the record type on the **Data Governance** page.
2.  Go to the **DATA PREVIEW** tab.

    [![screenshot of the record type details data preview tab showing a preview of record data](images/process_insights/data-governance-record-data-preview.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img625)

    [![](images/process_insights/data-governance-record-data-preview.png)](#_)

### View processes that use the record type

Data governors and data stewards can see the processes that use data from the record type. If you have [access to a process](configure-security.html#grant-access-to-processes) in the list, you can click the name of the process to view it.

1.  Click the name of the record type on the **Data Governance** page.
2.  Go to the **DEPENDENTS** tab.

    [![screenshot of the record type details dependents tab showing the processes that rely on the record type](images/process_insights/data-governance-record-dependents.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img626)

    [![](images/process_insights/data-governance-record-dependents.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...