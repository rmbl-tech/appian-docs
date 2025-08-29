---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/configure-alerts.html
original_path: kyc-23.3.1.6/configure-alerts.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Alerts

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

When important data changes are made to a customer record, alerts are generated to notify business users of the change. In the **Connected FS Settings** site, business users can control when these alerts generate, which customer groups are notified, and the actions or events that need to occur after an alert is triggered. You can view alerts on the customer record.

All alert settings are located in the **ALERTS** tab of the **Connected FS Settings** site.

![alert_config.png](images/alert_config.png)

## View alert configurations

By default, the **Alert Configurations** page displays all alert configurations. To filter the alerts by _status_, select **Active** or **Inactive** in the navigation pane. Any alert that the system is currently generating is an _active_ alert. Alerts that are [disabled](#disable-an-alert-configuration) by a user and no longer used to trigger an alert are _inactive_.

![filter_alert_config_by_status.png](images/filter_alert_config_by_status.png)

To find a specific alert, search by the alert name. You can also sort the alerts by the date when the configuration was last updated.

![alert_config_filters.png](images/alert_config_filters.png)

## Create an alert configuration

You can configure a customer alert to trigger when a specific customer matches a set of conditions or a specific scenario.

For example, you can configure an alert to trigger when the risk score changes for a customer in APAC. The alert, which include a custom message, appears on the Summary tab of the Customer record.

To create new alert configurations:

1.  Click **NEW CONFIGURATION**.

![new_config_button.png](images/new_config_button.png)

1.  Enter **Name** and if the trigger should be active upon saving.

![create_alert_name.png](images/create_alert_name.png)

1.  Create [trigger conditions](#trigger-conditions).
2.  Set up [customer filters](#customer-filters)
3.  Enter the [display message](#display-message).
4.  Click **SAVE**.

## Trigger Conditions

Trigger conditions are the rules that define the data that needs to change in order to generate an alert. When the customers' data changes and matches the rule set, an alert will be automatically generated.

![trigger_box.png](images/trigger_box.png)

There are two types of trigger conditions: _ANY_ conditions or _ALL_ conditions.

![any_and_all_.png](images/any_and_all_.png)

For an _Any condition is true_ trigger to generate an alert, any of the trigger statements can be _true_. If this is chosen, all the conditional separators will default to **OR**.

![any_condition.png](images/any_condition.png)

An _All conditions are true_ trigger implies that all of the trigger statements have to be _true_ in order for the alert to generate. If this is chosen, all the conditionals will default to **AND**.

![all_conditions.png](images/all_conditions.png)

### Trigger Fields

You can set up trigger conditions to monitor four types of changes: **Beneficial Owners**, **Domiciles**, **Entity Relationships**, and **Risk Scores** by configuring each field to generate a trigger when a specific data value changes.

#### Beneficial owners

You can also configure an alert to trigger when a **Beneficial Owner** is added, deleted, or modified. If you configure an alert to trigger when you modify a Beneficial Owner, you can also set up an expression to define when an alert will trigger once a specific **Ownership** threshold is met.

![beneficial_owner_trigger.png](images/beneficial_owner_trigger.png)

#### Domiciles

The **Domicile** field allows you to configure an alert to trigger when a domicile change occurs. You can configure an alert to trigger when a change is made to include a domicile in a. list of specific countries using the **IN** or exclude a list of countries using the **NOT IN** condition.

![domicile_trigger.png](images/domicile_trigger.png)

#### Entity relationships

The **Entity Relationship** field allows you to configure an alert to trigger when a user adds, deletes, or modifies an entity relationship. If you configure an alert to trigger when a user modifies **Entity Relationship**, you can also set up an expression to define when an alert will trigger once a specific **Ownership** threshold is met.

![entity_trigger.png](images/entity_trigger.png)

#### Risk scores

An alert can trigger when a **risk** is changed to a certain value or threshold.

![risk_score_condition.png](images/risk_score_condition.png)

### Customer Filters

To define which customers the trigger rules apply to, you can set up **Customer Filters** by filter type, including name, domicile, or region. For each of the filter types, determine whether the filter should be _inclusive_ using the **IN** operator or _exclusive_ using the **NOT IN** operator.

![customer_filter.png](images/customer_filter.png)

To remove the filter, click the icon next to the filter. By default, an alert configuration that does not have a customer filter will apply to all customers.

### Display Message

The **Display Message** dialog allows you to configure an alert message to show on the customer record. When an alert is generated, users viewing the alert will see this message.

![display_message.png](images/display_message.png)

## Update an alert configuration

When changes to alert configurations are necessary, you can update the existing configuration without having to create a new one.

To update an alert configuration:

1.  Click the icon on the alert you want to update and select **Update**.

![update_menu_config.png](images/update_menu_config.png)

1.  Update any trigger configurations, customer filters, generated events, or the display message.
2.  Click **SAVE**.

![update_alert_config.png](images/update_alert_config.png)

## Disable an alert configuration

If an alert configuration is no longer required, you can stop the configuration from generating any new alerts.

To disable an alert configuration, click the icon on the alert you want to disable and select **Disable**.

![disable_alert.png](images/disable_alert.png)

## Enable an inactive alert configuration

After creating or disabling an alert configuration, you need to to turn it on in order to start generating alerts.

To enable an alert configuration, click the icon on the alert you want enable and select **Enable**.

![enable_menu.png](images/enable_menu.png)

## Copy an alert configuration

Copying an alert is a quick way to create a new alert with slightly different trigger logic. When copied, the new alert has all of the same configurations, including active status, triggers, customer filters, and actions, as the alert that was copied. The name of the new alert configuration will start with **Copy of**.

To copy an alert configuration:

1.  Click on the icon on the alert you want to copy and select **Copy**.

![copy_config_menu.png](images/copy_config_menu.png)

1.  Update the name and any of the configurations.
2.  Click **SAVE**.

![copy_alert.png](images/copy_alert.png)

## Configure alert auto-dismissal

You can configure alerts that are not dismissed manually, to be automatically dismissed by the system after a specific timeframe.

To configure auto-dismissal:

1.  Click on the icon for the alert you want to set up to automatically dismiss after a specific timeframe and select **Set auto-dismissal**.

![set_auto_dismissal_menu_.png](images/set_auto_dismissal_menu_.png)

1.  Under **Should alerts be dismissed automatically?**, click **Yes** to turn auto-dismissal on for the alert." Click **No** to turn auto-dismissal off.
2.  If auto-dismissal is turned on, enter the number of days you want to system to wait before dismissing the alert when it is not manually dismissed.
3.  Click **SET**.

![set_autodismisall.png](images/set_autodismisall.png)

## View alert configuration change history

Each time an alert configuration is added, deactivated, or edited, the system tracks the changes, including who made the changes and when they were made. To see a completed history of the changes made to any of the alert configurations select **View Alert Configuration History** in the menu button on the top right corner.

![view_hisotry.png](images/view_hisotry.png)

The alert configuration history grid also shows the values before and after a configuration change and which alert configuration was affected. You can filter these alert configuration changes by the user.

![alert_config_grid.png](images/alert_config_grid.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...