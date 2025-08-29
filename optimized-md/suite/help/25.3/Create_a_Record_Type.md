---
source_url: https://docs.appian.com/suite/help/25.3/Create_a_Record_Type.html
original_path: Create_a_Record_Type.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Record Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how to create a record type.

## Create a record type

To create a record type:

1.  In your application, go to the [**Build** view](build-view.html).
2.  Click **NEW** > **Record Type**.
3.  In **Create Record Type**, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the record type that is displayed in the Appian Designer. For example, in the Appian Retail application, you could have _AR Order_, _AR Customer_, or _AR Support Ticket_. Follow the [recommended naming standard](Standard_Object_Names.html#data-objects) when creating this name. |
    | **Display Name (Plural)** | The name of the record type in plural form. For example, _Orders_, _Customers_, or _Support Tickets_. This is the name that business users see in [data fabric insights](allow-users-to-build-reports.html), [Tempo](Using_the_Records_Tab.html#tempo), and as the search placeholder text in the record list and any records-powered grids. |
    | **Description** | The description of the record type shown in data fabric insights, Tempo, and in Appian Designer. |

4.  Click **Create**.
5.  In the **Review Application Security** dialog, review the [record type security](record-security.html) settings.
6.  Click **SAVE**.
7.  Click **TELL US ABOUT YOUR DATA** to [choose the source of your record type](configure-record-data-source.html). You can connect to a database, web service, or process model, and choose whether to enable [data sync](about-data-sync.html).

    If you do not have an existing data source, you can [generate a data source from the record type](create-record-data-source.html).

### Versions

Each time you modify and save a record type, a new version is created. All objects that use the record type will use the latest version. All versions are accessible to developers who can view the record type, and a record type can be reverted back to a previous version at any time.

For information on how to manage object versions, see [Managing Object Versions](Managing_Object_Versions.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...