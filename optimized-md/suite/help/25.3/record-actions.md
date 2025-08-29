---
source_url: https://docs.appian.com/suite/help/25.3/record-actions.html
original_path: record-actions.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Record Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Build Modern Appian Interfaces Fast - Record Actions

Appian can generate modern and user-friendly interfaces, like record lists, actions, and views, directly from your data model. In this video, you'll follow an auto insurance use case to learn how to build polished record actions in just a few clicks.

This page describes how to configure record actions on a record type.

## About record actions

You can enable users to take action directly from your data by configuring record actions. Record actions allow you to integrate your enterprise processes so users can create, update, or delete data in the context of a record list, record view, or interface.

There are two types of record actions:

-   [Record list action](#record-list-actions): Allows users to start a process from the record list, usually to add a new record.
-   [Related action](#related-actions): Allows users to start a process from a single record, usually to update or delete that record.

Once you configure record actions in the record type, you can reference these actions in interfaces when you use a record type to power a [read-only grid](Paging_Grid_Component.html) or use the [record action component](Record_Action_Component.html).

### Record list actions

Record list actions are links to process models the user can start directly from the record list.

You can choose to open a record list action in a dialog, the same tab, or a new tab. After completing a record list action, users return to the record list. When actions are configured to open in a dialog, any [user filter](filter-the-record-list.html) values are remembered when returning to the record list.

A common use case is to add an action to create a new record. For example, in a Support Case record type, support engineers may need to add new support cases.

[![images/record-list-action-support-list.png](images/record-list-action-support-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img488)

[![](images/record-list-action-support-list.png)](#_)

By default, record list actions display on the record list. Optionally, you can also configure record list actions to [display in interfaces](#display-record-action).

### Related actions

Related actions are links to process models the user can start directly from a record using information from that record. We call that information the _context_ for the related action. For example, within a support case record, there might be related actions to update the case information or notify the supervisor about case.

[![images/support-view-related-actions.png](images/support-view-related-actions.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img489)

[![](images/support-view-related-actions.png)](#_)

Related action process models are the same as any other process model, except for a start-form restriction; if the process model has a start form, that form must be a [SAIL form](SAIL_Design.html). Since record types that use a process model as their source derive related actions from the process model's [quick tasks](Process_Model_Recipes.html#creating-a-quick-task), this restriction doesn't apply to quick tasks.

By default, related actions display in the **Related Actions** view. Optionally, you can configure related actions to [display in other record views](#display-related-action-on-record-view) or in an interface.

## Record action properties

You can configure the following properties for record actions:

|
Property

 |

Description

 |
| --- | --- |
|

**Display Name**

 |

Specify a display name using one of the following options:

-   Select **Enter name**, and enter a display name.
-   Select **Use expression**, and enter an expression to return a dynamic display name.
-   (Related actions only) Select **Use process model name**. The display name will correspond to the name of the process model you select for this action.

This name is displayed on the button or link that initiates the action. Follow the [recommended naming standard](Standard_Object_Names.html) when creating a display name for the action.

 |
|

**Key**

 |

Verify the value. Appian auto-generates this value from the **Display Name**. This key is used to reference record actions within SAIL components.

 |
|

**Description**

 |

Provide a description for the record action using one of the following options:

-   Select **Enter description**, and enter a description.
-   Select **Use expression**, and enter an expression to return a dynamic description.

Depending on the type of action, this description will appear in the following location:

-   For record list actions, this text displays in a tooltip when hovering on the record list action button.
-   For related actions, this text displays with the **Display Name** in the [**Related Actions** view](record-view.html#default-record-views). If the display name is using the process model name, the description will automatically use the process model description.

 |
|

**Icon**

 |

Select the icon you want to display with the action in either the record list or the Related Actions view. The default is a good choice when adding a new record.

 |
|

**Dialog Height**

**Dialog Width**

 |

Select the dialog height and width.

These settings apply to record actions that open in a **Dialog Box**.

-   Configure how record list actions open in the **Open Actions In** property on the **Actions** page of the record type.
-   Configure how related actions open in each [record view](#display-related-action-on-record-view) or in a [record action component](Record_Action_Component.html).
-   Configure the dialog shape in the [site object](sites_object.html#branding).

 |
|

**Process Model**

 |

Select the process model you want to use as a record action. The security for the process model determines who can perform the action.

 |
|

**Context**

 |

(Related actions only) Configure the [parameter process variables](process-model-object.html#variables-tab) for your selected process model. By default, parameter values are set to `null`. Replace `null` with the value you want to pass to the process model's parameter. Parameters with a type of record type can use `rv!record` to [pass only the record fields needed for the process](reference-records.html#use-rvrecord). Appian will inspect the process's [start form](process-model-object.html#process-start-form-tab) and its [name field](process-model-object.html#general-tab) to determine which record fields or related record fields need to be queried to populate the associated interface.

You do not need to include all parameters from the process model; only include the parameters you need for the related action, and remove the rest. If you make changes to the process parameters later, you'll need to manually update this field.

 |
|

**Security**

 |

By default, record actions are visible to users who can initiate the associated process model. You can further limit who can see the record action and when by configuring [record action security](record-action-security.html). Go to the **Views and Actions Security** page to configure record action security.

 |

## Required supporting objects

Regardless of record type configuration, record actions require the following design objects:

-   A [process model](process-model-object.html) that represents the workflow of the action.
-   An [interface](interface_object.html) for users to create, update, or delete record data.

In your process model, you can use the following smart services to create, update, and delete data based on your data source. If you're working with an external system, you can also configure the process model to sync data from that system.

|
Smart Service

 |

Supported Data Source

 |
| --- | --- |
| [Write Records](Write_Records_Smart_Service.html) | Database |
| [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html) | Database |
| [Write to Multiple Data Store Entities](Write_to_Multiple_Data_Store_Entities_Smart_Service.html) | Database |
| [Delete Records](Delete_Records_Smart_Service.html) | Database |
| [Delete from Data Store Entities](Delete_from_Data_Store_Entities_Smart_Service.html) | Database |
| [Call integration](Call_Integration_Smart_Service.html) | Salesforce |
| [Sync Records](Sync_Records_Smart_Service.html) | All data sources |

## Generate record actions

If you have a [database-backed record type with data sync](configure-record-data-source.html#synced-database) enabled, Appian can generate common record actions for that record type using basic information you provide. The generated actions use existing objects or create new objects to support the actions.

To generate record actions:

1.  In your record type, go to **Actions**.
2.  Click **GENERATE RECORD ACTIONS**.
3.  Select one or more actions to generate. By default, all actions are selected.

    -   **CREATE**: A [record list action](#record-list-actions) that allows users to create a record and its related records.
    -   **UPDATE**: A [related action](#related-actions) that allows users to update a record and its related records.
    -   **DELETE**: A related action that allows users to delete a record and its related records.

    **Tip:**  Appian recommends generating the **CREATE** and **UPDATE** actions at the same time so you can reuse the same start form and process model for both actions.

4.  Click **NEXT**.
5.  Select the record types you want to include in the create and update actions. By default, the base record type is selected and data from any many-to-one relationships is automatically included.

    -   Select one-to-one and one-to-many relationships to include those related records in your actions. Only relationships configured to [allow writes and deletes to related records](record-type-relationships.html#write-and-delete-related-records) will appear.
    -   De-select the base record type and select a relationship to only update related data in the action. If you have both Create and Update actions selected, you'll need to de-select the Create action.

    **Note:**  This selection won't impact the delete action since delete actions automatically delete a record and its related records.

    [![images/select-record-types.png](images/select-record-types.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img490)

    [![](images/select-record-types.png)](#_)

6.  Click **NEXT**.
7.  Select a template for the create and update interface.

    Appian will recommend a template based on the number of record types included in your action, but you can select a template that best fits your needs:

    -   Select a **Single-Step Form** to allow users to enter all information in a single step.
    -   Select a **Multi-Step Wizard** to allow users to enter information in separate steps.

    **Note:**  This step will not appear if you only generate a delete action since the delete action will always use a simple confirmation dialog.

    [![images/template-wizard-actions-selected.png](images/template-wizard-actions-selected.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img491)

    [![](images/template-wizard-actions-selected.png)](#_)

8.  (Optional) Click **CUSTOMIZE OBJECTS** to [customize](#generate-record-actions-custom) any of the following:
    -   Change where Appian will search for existing objects or create new objects to support your actions.
    -   Change the action display names, icons, or descriptions.
    -   Change the generated object names.
9.  Click **GENERATE**.

    Appian generates the action, creating and configuring the objects you reviewed. Learn more about the [generated process models](#generated-process-models) and [generated interfaces](#generated-create-and-update-interface).

### Customize generated objects

To customize the generated actions:

1.  From the **Customize Objects** page, review the suggested values for each action, and change as needed:

    | Property | Description |
    | --- | --- |
    | **Application** | Specifies where Appian will search for existing objects or create new objects to support your actions. This option only appears if your record type is associated with more than one application in your Appian environment. |
    | **Display Name** | Specifies a name for the action. This name is displayed on the button or link that initiates the action. Follow the [recommended naming standard](Standard_Object_Names.html#object-properties) when creating this name. |
    | **Icon** | Specifies the icon you want to display with the button or link that initiates the action. |
    | **Description** | Specifies a brief description of the action. For record list actions, this text displays in a tooltip when hovering on the record list action button. For related actions, this text displays with the **Display Name** in the Related Actions view. |

2.  Click **REVIEW** **OBJECTS**.
3.  Review the objects that Appian will use for your new action, and rename or replace objects as needed:

    **Note:**  Existing objects are marked with the ![info circle](images/icon/info-circle.png) icon.

    [![images/generate-record-action-review-objects.png](images/generate-record-action-review-objects.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img492)

    [![](images/generate-record-action-review-objects.png)](#_)

    To change an object:

    -   Click next to the object.
    -   Continue as appropriate:

    | Change | Action |
    | --- | --- |
    |
    Rename a generated object.

     |

    -   Click **Rename** from the dropdown menu. The object name becomes an editable text box.
    -   Enter a new name in the text box.

     |
    |

    Replace a generated object with an existing object.

     |

    -   Click **Replace with existing object**. The object name becomes a dropdown list.
    -   In the object dropdown list, select an existing object.

    **Note:**You cannot replace a generated interface or process model existing objects.

     |
    |

    Replace an existing object with a generated object.

     |

    -   Click **Replace with generated object**. The object name becomes an editable text box.
    -   Enter a name for the generated object.

     |

4.  Click **GENERATE**.

    Appian generates the action, creating and configuring the objects you reviewed. Learn more about the [generated process models](#generated-process-models) and [generated interfaces](#generated-create-and-update-interface).

### Generated process models

The generated process models are automatically configured in the following ways.

#### Properties

The generated process models contain the following properties:

-   The **Process Display Name**:
    -   For Create or Update actions, the display name is configured with an expression that dynamically displays the appropriate verb ("Create" or "Update") and the record type (for example, "Customer"), followed by the newly created or updated record.
    -   For Delete actions, the display name is configured with an expression that displays "Delete" and the record type (for example, "Customer").
-   The **Process Priority** is set to `Normal`.
-   The following process variables are configured:

    | Actions | Process Variable | Type | Parameter? |
    | --- | --- | --- | --- |
    | All | `cancel` | Boolean | Yes |
    | All | `record` | Record type that the action is generated from | Yes |
    | Create and Update actions only | `isUpdate` | Boolean | Yes |
    | Create and Update actions only | `countOf<RelatedRecordType>RecordsDeleted` | One-to-many related record type | Yes |
    | Create and Update actions only | `deleted<RelatedRecordType>Records` | One-to-many related record type | Yes |
    | Delete actions only | `countOfRecordsDeleted` | Number (Integer) | No |

-   The [generated interface](#generated-create-and-update-interface) is configured as the process start form.
-   The **Alert Recipients** property for the process model is set to the application administrators group selected during action generation.
-   The **Automatic Process Clean-Up** property is set to delete processes seven days after completion or cancellation.

#### Nodes

The following nodes are present in the process model:

| Node | Description |
| --- | --- |
| [Start Node](Start_Event.html) | Initiates the process, using the interface selected during action generation. |
| [XOR Gateway](XOR_Node.html) | Handles the use case where the user chooses to cancel out of the start form. This node evaluates the incoming `cancel` process variable to determine whether to proceed to the next node (`false`) or the End Event (`true`). |
| [Write Records Smart Service](Write_Records_Smart_Service.html) | (Create and Update actions only) Allows you to easily insert or update data in a database table and automatically sync those change in Appian.

If you configured [record events](record-events.html) and you chose to [**Include Common Event Types**](record-events-configuration.html#generate-new-event-record-types), this node will also write the user or automation type that completed the event and when. As a result, "Created record" events are written when a new record is created, and "Updated record" events are written when a record is updated. |
| [Delete Records Smart Service](Delete_Records_Smart_Service.html) | Allows you to easily delete data in a database table and automatically sync those changes in Appian. This node is used in Delete actions.

It also appears in Create and Update actions if the record type has a [one-to-many relationship](record-type-relationships.html#write-and-delete-related-records) set to **Write or delete** related records. This allows users to delete related data when updating a base record (for example, deleting line items from an order). |
| [End Node](End_Event.html) | Terminates the process. |

#### Security

Appian assigns security for the generated process models as follows:

| Group | Permission Level |
| --- | --- |
| Application administrators group you selected | **Process Administrator** |
| Application users group you selected | **Viewer** |

### Generated create and update interface

The generated **Create** or **Update** interface includes the following components.

#### Layout

Depending on your selected template, the interface is configured to use:

-   A [form layout](Form_Layout.html).

[![generated create or update interface using a form](images/generated-create-update-interface-form.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img493)

[![](images/generated-create-update-interface-form.png)](#_)

-   A [wizard layout](Wizard_Layout.html).

[![generated create or update interface using a wizard](images/generated-create-update-interface.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img494)

[![](images/generated-create-update-interface.png)](#_)

The title of the form or wizard layout is set to a combination of "Create" or "Update" and the record type name (for example, "Create Customer").

#### Rule inputs

The interface contains the following rule inputs:

| Rule Input | Type | Description |
| --- | --- | --- |
| `cancel` | Boolean | Determines if the form is cancelled. |
| `record` | Record type that the action is generated from | Stores record data from the selected record type. |
| `isUpdate` | Boolean | Determines whether the form is used to create a new record or update an existing one. |
| `deleted<RelatedRecordType>Records` | One-to-many related record type | (Only when one-to-many relationships are included) Stores the related records when users remove them from the form. |

#### Components

The interface will have a [section layout](Section_Layout.html) or [wizard step](Wizard_Step_Component.html) for each record type you selected.

The components within the section or step depend on the type of relationship between the base record type and the related record type:

| Relationship with the base record type | Display format |
| --- | --- |
| Self | An [editable component](SAIL_Components.html#inputs) for each field in the base record type. |
| One-to-one relationship | An [editable component](SAIL_Components.html#inputs) for each field in the related record type. |
| One-to-many relationship | An [editable grid](Editable_Grid_Component.html) with a column for each field in the related record type.

If you selected a [document management record type](manage-docs-with-records.html#required-object), a [card layout](card_layout.html) will appear so users can upload files and modify the document properties. |
| Many-to-one relationship | A [radio button component](Radio_Button_Component.html) or a [dropdown component](Dropdown_Component.html) displaying values from the first Text field in the related record type. |

**Note:**  Some field types (for example `Time`) do not have editable components in Appian. For these field types, no component is generated and you must manually [add a component](interface_object.html#add-components) for that field.

There are also two buttons:

-   A **Cancel** button with the **Save Value To** property set to the `cancel` rule input.
-   A button that displays **Save** or **Create**, depending on the action. Most properties for this button are set to the default values. However, if the record type for which you're generating an action contains `createdBy`, `createdOn`, `modifiedBy`, and `modifiedOn` fields, the **Save Value To** property is automatically configured to update those fields.

#### Security

The generated interface inherit security from the folders where they're stored. If your interfaces are stored in a folder Appian generated for you, the inherited security is as follows:

| Group | Permission Level |
| --- | --- |
| Application administrators group you selected | **Administrator** |
| Application users group you selected | **Viewer** |

### Generated delete interface

The generated **Delete** interface includes the following components:

-   A [form layout](Form_Layout.html) with the header parameter set to "Delete" and the record type name, followed by a question mark (for example, "Delete Customer?").

    [![generated delete employee interface](images/generated-delete-interface.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img495)

    [![](images/generated-delete-interface.png)](#_)

-   A [rich text display component](Rich_Text_Component.html) containing the default text, "The record will be permanently deleted and cannot be recovered," where "record" is replaced with the name of the record type.
-   A Boolean `cancel` rule input.
-   A **Cancel** button with the **Save Value To** property set to the `cancel` rule input.
-   A **Delete** button with the properties set to the default values.

The generated interfaces inherit security from the folders where they're stored. If your interfaces are stored in a folder Appian generated for you, the inherited security is as follows:

| Group | Permission Level |
| --- | --- |
| Application administrators group you selected | **Administrator** |
| Application users group you selected | **Viewer** |

## Configure record actions manually

You may decide to configure a record action manually if:

-   The record type uses a source other than a database table.
-   The database-backed record type does not have data sync enabled.
-   You want to add more than the common actions listed above.

To configure a record action manually:

1.  Create the [required supporting objects](#required-supporting-objects).
2.  In your record type, go to **Actions**.
3.  Under **Record List Actions** or **Related Actions**, click **Configure a Record Action Manually**.
4.  Configure the [record action properties](#record-action-properties).

    For example, the following is the manual configuration of a record list action:

    [![images/Create_Record_Type/record_list_action.png](images/Create_Record_Type/record_list_action.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img496)

    [![](images/Create_Record_Type/record_list_action.png)](#_)

    The following is the manual configuration of a related action:

    [![images/Create_Record_Type/related_action_dialog.png](images/Create_Record_Type/related_action_dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img497)

    [![](images/Create_Record_Type/related_action_dialog.png)](#_)

5.  Click **OK**. Your new action displays in the **Record List Actions** or **Related Actions** section as appropriate.
6.  Click **SAVE**.

## Display a record action

After you create an action in the record type, you can determine where the action appears as described in the following table:

| Location | Description | Record List Action | Related Action |
| --- | --- | --- | --- |
| Record list | By default, record list actions display as buttons on the record list. When viewing your application on mobile, only the first record list action will be available on the record list. | Yes | No |
| Related Actions view | By default, all related actions configured for a record type are available in a record's Related Actions view. This record view is configured out-of-the-box in the record type, so you cannot modify it; however, you can [hide the Related Actions view](record-view.html#configure-the-display-of-default-record-views), if needed. | No | Yes |
| Record views | Related actions can display to end users as buttons on any record view, using [related action shortcuts](#display-related-action-on-record-view). | No | Yes |
| Interfaces | Record actions can display anywhere in your interfaces, using the [record action component](Record_Action_Component.html) or the _recordActions_ parameter of [records-powered grids](Paging_Grid_Component.html). | Yes | Yes |

**Note:**  When viewing your application on mobile, if you're using a record type as the source of a [read-only grid](Paging_Grid_Component.html) in an interface, you can see and use all actions configured in the _recordActions_ parameter of your grid.

### Display a related action on a record view

To display related actions on a record view, you will use related action shortcuts, which are configured on the record view.

To configure a related action shortcut:

1.  In your record type, go to **Views**.
2.  Open the desired record view.
3.  Under **Related Action Shortcuts**, select the related actions you want to display on the view.

    **Note:**  Related actions from [Quick Tasks](Process_Model_Recipes.html#creating-a-quick-task) won't show up in this list.

4.  Under **Open Actions In**, select how the related action should open.

    [![images/create_record_type_edit_view.png](images/create_record_type_edit_view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img498)

    [![](images/create_record_type_edit_view.png)](#_)

5.  Click **OK**.
6.  Click **SAVE**.

Users will see the selected related actions as buttons when they are on that particular record view.

## Open actions in

You can control whether a record action opens in a dialog, a new tab, or the same tab. By default, record actions will open in a dialog box using the dialog height and width configured in the action.

You can customize how a record list action or related action open using the **Open Actions In** property in the record type.

**Tip:**  If you need to customize how an action opens in a specific interface, you can change how record actions open in a [record action components](Record_Action_Component.html).

To customize how record list actions open:

1.  In the record type, go to **Actions**.
2.  Under **Open Actions In**, specify how the action should open. By default, record actions open in a **DIALOG BOX** with the configured **Dialog Height** and **Dialog Width**.

    This option only appears if you have a record list action configured.

    [![images/open_list_actions_in.png](images/open_list_actions_in.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img499)

    [![](images/open_list_actions_in.png)](#_)

To customize how related actions open:

1.  In the record type, go to **Views**.
2.  Click next the record view that displays your related action as a [related action shortcut](#display-related-action-on-record-view).
3.  Under **Open Actions In**, select whether the related actions for this view open in a dialog, a new tab, or the same tab.

    **Tip:**  You can [bulk update this setting](record-view.html#bulk-update-launch-styles-for-related-actions) for all views.

## Update a record action

To update a record action:

1.  In your record type, go to **Actions**.
2.  Under **Record List Actions** or **Related Actions**, click ![edit icon](images/icon/edit.png) next to the action you want to update.
3.  In the **Edit Action** window, configure the [record action properties](#record-action-properties).
4.  Click **OK**.
5.  Click **SAVE**.

## Delete a record action

Deleting a record action does _not_ delete the objects supporting the record action.

To delete a record action:

1.  In your record type, go to **Actions**.
2.  Under **Record List Actions** or **Related Actions**, click ![delete icon](images/DeleteIcon.png) next to the action you want to delete.
3.  Click **Delete** to confirm the deletion.
4.  Click **SAVE**.

## Record action security

To determine if a user can see a record action, Appian checks the following:

-   Whether the action's [security rule](record-action-security.html#security-rules) includes the user, or its [security expression](record-action-security.html#security-expression) evaluates to _true_ for the user.
-   Whether the user has **Initiator** permission to the underlying [process model](process-model-object.html#prodlink-security).
-   For related actions, whether the user has access to the record.
    -   If your record type has data sync enabled, record access is determined by the [record-level security](record-level-security.html).
    -   If your record type does not have data sync enabled, record access is determined by [default filters](default-filters.html).

The same applies for quick tasks that appear as related actions for record types that use a process model as their source. If the user does not have the permissions to complete the quick task, the link to the related action will not display under [Related Actions](#display-record-action).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...