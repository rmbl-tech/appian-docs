---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-tasking-module-setup.html
original_path: cl-24.3.1.2/cul-tasking-module-setup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Tasking add-on module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Now that you have installed the Tasking add-on module, you must incorporate the application with your CU Life Workbench to utilize it. This guide walks you through the incorporation steps.

## Required incorporation

To incorporate the Tasking add-on module into the CU Life Base application, you must modify specific application objects to display the Tasking tab on the Connected Underwriting — Life Settings site.

### Display the Tasking page on the Settings site

To display the Tasking page:

1.  In the target environment, log in.
2.  Navigate to **Appian Designer**.
3.  Navigate to the **Insurance Life Underwriting (ISL)** application.
4.  Search for and open the **ISL\_SitePage\_AdminSettings** interface object.
    1.  In expression mode, add an additional item to `local!navBarSections` for Tasking as shown:

        ![tasking_rule_01](images/tasking_rule_01.png)

    2.  In the `match()` statement in the second column layout that displays the left sidebar navigation, add a condition for displaying the Tasking page as shown:

        ![tasking_rule_value_02](images/tasking_rule_value_02.png)

### Add the ISL\_Case record type relationship

In this step, you will add a relationship between the `ISL_Case` record type and the `ISL_TSK_CaseTask` record type.

To add the record type relationship:

1.  Navigate to **Appian Designer**.
2.  Find and ope the `ISL_Case` record type.
3.  From the **Data Model** page, select **ADD RELATIONSHIP** to open the **Add Relationship** dialog.
    1.  In the **Related Record Type** field, enter **ISL\_TSK\_CaseTask** record type.
        1.  **Relationship Name**: `tasks`
        2.  **Relationship Type**: `One to Many`
        3.  **ISL Case**: `caseId - Number (Integer)`
        4.  **ISK\_TSK\_CaseTask**: `caseId - Number (Integer)`

            ![cul_add_record_type_relationship](images/cul_add_record_type_relationship.png)

### Add the Add From Library related action

Next, you need to add a related action to the `ISL_Case` record type that allows users to retrieve existing tasks from the Tasks Library.

To add a related action to the `ISL_Case` record type:

1.  Locate and open the **ISL\_Case** record type, and add the `Add From Library` related action as shown:

    ![tasking_edit_related_action03](images/tasking_edit_related_action03.png)

    -   **Display Name**: Add From Library
    -   **Process Model**: `ISL_TSK_CaseTask_RecordAction_AddFromLibrary_CreateUpdate`
    -   **Context**:

        ```
        1
        2
        3
        {
          case: rule!ISL_TSK_CaseTask_RecordAction_AddFromLibrary_InitializeParameters(caseId: rv!identifier)
        }
        ```

    -   **Key**: `addFromLibrary`

### Display the Underwriting and Ops Tasks tabs

Next, you need to update the ISL\_Case\_WorkItemsSummary interface to display the Underwriting Tasks and Ops Tasks tabs in the Case Summary view.

To update the **ISL\_Case\_WorkItemsSummary** interface:

1.  Search for and open the **ISL\_Case\_WorkItemsSummary** interface object.
2.  Add map data for the **ISL\_TSK\_CONF\_WorkItems** tasks tab in `local!tabs`.

    ![tasking_map_data_04](images/
    tasking_map_data_04.png)

3.  Add the `a!match` code for `equals` value 2 and `equals` value 3 to display the tab contents as shown:

    ![tasking_amatch_05](images/
    tasking_amatch_05.png)

### Display the Active Tasks KPI in the Workbench

Following the steps in this section to display the Active Tasks KPI on the ISL\_Workbench\_Sub\_Metrics interface in Workbench.

To display the Active Tasks KPI:

1.  Search for and open the **ISL\_Workbench\_Sub\_Metrics** interface object.
2.  Call the `ISL_TSK_WorkbenchTaskMetrics` in the `contents` parameter of the third column.

    ![tasking_metrics_06](images/
    tasking_metrics_06.png)

3.  In the `a!match` function, if the `equals` value is set to `Active Tasks`, then return the `ISL_TSK_Workbench_ActiveTasks` and pass the parameters as shown:

    ![tasking_active_task_07](images/tasking_active_task_07.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...