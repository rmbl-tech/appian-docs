---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/managing-alerts.html
original_path: cu-25.2.1.7/managing-alerts.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Alerts

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Alerts are generated to notify business users of changes to a Submission. Connected Underwriting P&C is set up with five default alerts:

-   New Message
-   Duplicate Submission
-   New Document
-   Missing General Information
-   Missing Critical Information

Users can view alerts assigned to them from two places:

1.  On the user's Workbench, in the Alerts section.

    ![cu-configure_alerts-workbench_alerts.png](images/cu-configure_alerts-workbench_alerts.png)

2.  On a Submission item, in the Alerts section.

    ![cu-configure_alerts-submission_alerts.png](images/cu-configure_alerts-submission_alerts.png)

## View alerts

You can view all available alerts from the Alerts settings page on the Connected Underwriting P&C Settings page.

![cu-configure_alerts-alerts_settings_page.png](images/cu-configure_alerts-alerts_settings_page.png)

Alerts can be filtered by name and status:

-   **Alert Name**: Enter text in the **Search Alerts** field and click **SEARCH**.
-   **Status**: From the **ACTIVE?** dropdown list, select **Yes** to show Active alerts, or **No** to show Inactive alerts.
    -   Any alert that the system is currently generating is an Active alert. Alerts that are turned off by a user and no longer triggered are inactive. You can also sort the alerts by the date last modified using the arrow in the **Last Modified** header.

Connected Underwriting P&C allows you to save an Alert Name and Active/Inactive filter combination for future use.

To save a filter:

1.  Enter the desired **Alert Name** and status combination, then click .
2.  Click **Save filter as**.
3.  Enter a name in the **Name** field.
4.  Click **SAVE**.

![cu-configure_alerts-save_filter.png](images/cu-configure_alerts-save_filter.png)

### Updating alert name and display message

Managers and Admins can control Alert Names and the Alert Display Message from the Connected Underwriting P&C Settings page.

![cu-configure_alerts-update_alert_highlighted.png](images/cu-configure_alerts-update_alert_highlighted.png)

To update an alert:

1.  Click the icon on the alert you want to update and select **Update Alert**.
2.  Update the **Alert Name** and/or **Alert Display Message**.

    -   Click the **Alert is Active Upon Update** toggle to make an alert active immediately upon updating.
3.  Click **SAVE**.

![cu-configure_alerts-update_alert.png](images/cu-configure_alerts-update_alert.png)

**Note:**  Details on what events trigger an alert are displayed on the **Update Alert** screen in the **When will this alert be triggered** panel.

### Mark an alert as active or inactive

If an active alert is no longer required, you can stop the alert from generating by updating the alert status to **Inactive**. You can also enable an inactive alert by updating the status to **Active**. Simply click the icon associated with the alert you want to edit and select **Mark as inactive** to disable an active alert, or **Mark as active** to enable an inactive alert.

![cu-configure_alerts-mark_active_inactive_highlighted.png](images/cu-configure_alerts-mark_active_inactive_highlighted.png)

#### Add and modify an alert

In some instances, the default alerts may not be satisfactory for a specific organization's needs. In this instance, you can modify the solution's alert logic or create new alerts to match your organization's unique business needs. See [Configuring Alerts](modifying-alerts.html) for more information.

**Note:**  Only users with Appian Designer privileges can add or update alert logic.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...