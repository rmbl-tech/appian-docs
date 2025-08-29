---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/managing-customers.html
original_path: kyc-23.3.1.6/managing-customers.html
version: "25.3"
title: "Managing Customers"
page_id: "kyc-23.3.1.6/managing-customers"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Customers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

It is important to have easy access to all of your customer's data. The **Customers** tab contains all of this data, and allows users to take action on that data.

This page describes the customer record, including how to view, create, and update customer information.

See [Using Records](../Using_the_Records_Tab.html) for more information on Appian Records.

## Viewing information for a customer

From the Connected Onboarding site, clicking **CUSTOMERS** displays a list of customer records. You can filter this list by searching for a customer or filtering by customer type.

![customer_tab.jpg](images/customer_tab.jpg)

Clicking a customer name displays the record for that customer. The record displays all of the pertinent information for a particular customer. This information is split into several different pages, which are outlined in the following sections.

### Summary tab

The **Summary** tab lists the important information about a customer.

The following customer information is listed on this page:

1.  **Active Alerts**: If an [alert](#managing-customer-alerts) is open for the customer, it displays Alerts list with the most recent alerts at the top. The user can filter by **SOURCE**, dismiss active alerts, or create **NEW** alerts manually. To see the full alert message, hover over the alert icon.
2.  **Customer Lifecycle Events**: Any lifecycle event that has occured for this customer will be displayed here with pertinent information. Users can search, filter, and export the **EVENTS** list.
3.  **Customer Details**: Additional customer details including the domicile and risk score.

4.  **Beneficial Owners**: Any beneficial owners for the customer and the ability to add/edit or remove them.
5.  **Entity Relationships**: Any entity relationships that have been entered for the customer and the ability to add/edit or remove them.
6.  **Documents**: All documents that haven been uploaded to either the customer or any of the event records.

[![images/customer_summary_kyc.jpg](images/customer_summary_kyc.jpg)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1146)

[![](images/customer_summary_kyc.jpg)](#_)

### Basic Info tab

The **Basic Info** tab shows all customer information. The customer information is split up into the following groups:

-   Previous customer names
-   Customer Information
-   Additional Customer Details
-   Links
-   Benchmark Details
-   Addresses
-   Contacts

[![images/basic_info_cs.png](images/basic_info_cs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1147)

[![](images/basic_info_cs.png)](#_)

It is possible to update all the information on this page directly from here using the edit , add , and delete icons.

Some basic information can be populated using integrations if they are connected through the [System Administration Center](managing-integrations.html#accessing-the-system-administration-center). See the [Companies House](managing-integrations.html#integrating-with-company-house), [Dun and Bradstreet](managing-integrations.html#integrating-with-dun-&-bradstreet), and [Northrow](managing-integrations.html#integrating-with-northrow) integrations for more information on pulling in customer data.

### Documents tab

The **Documents** tab shows all of the documents associated with a customer.

On this page, you can:

1.  Search for a particular document by name.
2.  Filter by document type.
3.  [Attach a document](managing-documents.html#attaching-a-document).
    -   These documents can be later attached to any onboarding associated with the customer. For example, if you attach a tax document for a customer, you can reuse it for any additional onboardings they might have.
4.  Preview uploaded documents.
    -   Click the document link to preview uploaded documents, view details about them, and [update their status](managing-documents.html#updating-document-details).
    -   Any updated details will appear wherever the document is referenced.
5.  Download uploaded documents.

![document_tab_customer.png](images/document_tab_customer.png)

## Alerts tab

The **Alerts** tab shows all alerts that have been generated for the customer. All alerts regardless of dismissal status will show on the list. The alerts list can be filtered, refreshed, and exported.

Users are also able to [create new alerts](#create-customer-alerts) and [dismiss alerts](#dismiss-customer-alerts) from the alerts tab.

![alerts_tab.png](images/alerts_tab.png)

## Managing customer alerts

Active alerts can be viewed on the [customer summary page](#summary-tab) and all alerts active or otherwise can be found on the [alerts tab](#alerts-tab). Manual alerts can be created in both places

### Create customer alerts

Customer alerts can be created by the system or manually by a user in order to bring attention to recent data changes on the customer record. Triggering customer alerts can be set up and [managed](configure-alerts.html) by a business user in the FS Settings Site.

To create an alert:

1.  Click **NEW**.
2.  Enter the alert message.
3.  To add another alert, click **Add Alert**.
    -   Each alert message entered will be shown as a separate alert.
4.  Click **CREATE ALERTS**.

![alert_message_create.png](images/alert_message_create.png)

### Dismiss customer alerts

If a user deems that a customer alert has been addressed or is inconsequential, they may dismiss the alert, which will remove the alert from the active alerts on the [customer summary page](#summary-tab). If any user dismisses an alert, no other user will be able to see the alert on that customer record. By default, Client Onboarding Department Heads and KYC Department Heads are the two groups that have access to dismiss customer alerts.

All alerts both, active and dismissed, can be see on the [**ALERTS** tab](#alerts-tab) along with who, when, and reason why an alert was dismissed.

To dismiss a customer alert from the Summary tab:

1.  Click **DISMISS**.
2.  Select a reason for dismissal.
3.  Click **DISMISS**.

![Dismiss_single_alert.png](images/Dismiss_single_alert.png)

To dismiss a customer alert from the Alert tab:

1.  Select one or more rows of active alerts the grid.

![alerts_grid.png](images/alerts_grid.png)

1.  Select a reason for dismissal.
    -   **NOTE**: If multiple alerts are selected, the dismissal reason will be the same for all of the dismissed alerts.
2.  Add an optional **Dismissal Comment**.
3.  Click **DISMISS**.

![Dismiss_multiple_alerts.png](images/Dismiss_multiple_alerts.png)

## Scheduled KYCs tab

The **Scheduled KYCs** tab shows all KYC investigations that have been scheduled for the customer. Only upcoming investigations are shown by default. Note that users can update the filters to show deleted and past KYC investigations.

### Schedule KYC

Connected KYC allow users to setup upcoming KYC investigations for either a single investigation or a regularly recurring investigation. A KYC investigation will automatically open for the KYC group, then start and complete by the determined date.

![schedule_kyc_tab.jpg](images/schedule_kyc_tab.jpg)

To schedule a single KYC investigation:

1.  Click **SCHEDULE KYC**.
2.  Select **Single** for type.
3.  Set the following details:
    -   **Target Completion Date**: the date the KYC investigation must be completed by.
    -   **How many days before the target completion date should the KYC kick off?**: the number of days the KYC is expected to take, which will be used to calculate the kick off date.
    -   **Exclude weekends and holidays**: Whether or not to calculate the kick off date or target completion date including weekend and holidays.

![scheudule_single_kyc.jpg](images/scheudule_single_kyc.jpg)

To schedule multiple KYC investigations:

1.  Click **SCHEDULE KYC**.
2.  Select **Multiple** for type.
3.  Set the following details:
    -   **Target Completion Date**: the date the KYC investigation must be completed by.
    -   **How often should this KYC repeat?**: the cadence in which the KYC investigations should be scheduled.
    -   **How many days before the target completion date should the KYC kick off?**: the number of days the KYC is expected to take, which will be used to calculate the kick off date.
    -   **Exclude weekends and holidays**: Whether or not to calculate the kick off date or target completion date including weekend and holidays.

![schedule_multiple_kyc.jpg](images/schedule_multiple_kyc.jpg)

To ensure that the schedule is correct, the user can click the button to see a preview of the calculated schedule.

![preview_scheduled_kyc.jpg](images/preview_scheduled_kyc.jpg)

After clicking **SUBMIT**, the investigations will be scheduled for the customer.

### Edit schedule

To add, remove, or edit scheduled investigations, click **Edit**. You can add a single investigation by clicking **Add Scheduled KYC** or remove it by clicking the icon. A kick off or target completion date can be individually updated from the grid.

![modify_scheduled_kyc.jpg](images/modify_scheduled_kyc.jpg)

### Reset schedule

To change all of the scheduled KYC investigations at once, click **Reset**. New scheduled investigations can be created and the previously scheduled ones will be marked as canceled.

![reset_scheduled_Kyc.jpg](images/reset_scheduled_Kyc.jpg)

### Delete all scheduled KYCs

To remove all of the scheduled KYC investigations at once, click **Delete All**. Once confirmed, the previously scheduled ones will be marked as canceled.

![delete_scheduled_kyc.jpg](images/delete_scheduled_kyc.jpg)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...