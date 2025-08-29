---
source_url: https://docs.appian.com/suite/help/25.3/Button_Layout.html
original_path: Button_Layout.html
version: "25.3"
title: "Button Layout"
page_id: "Button_Layout"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Button Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-buttons.html">SAIL Design System guidance available for Buttons</a><p class="ds-release-notice-p">The wrong button in the wrong place at the wrong time can stop a user's workflow dead in its tracks. Learn how to configure and display buttons appropriately to create a beautiful, intuitive, and efficient workflow experience for your application.</p></td></tr></tbody></table>

## Function

**a!buttonLayout**( _primaryButtons, secondaryButtons, accessibilityText, showWhen_ )

Displays a list of buttons grouped by prominence. Use this layout in cases where prominence needs to be explicitly specified.

**See also**: [Button design guidance](sail/ux-buttons.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Primary Buttons

 |

`primaryButtons`

 |

_List of ButtonWidget_

 |

Array of prominent buttons created with a!buttonWidget().

 |
|

Secondary Buttons

 |

`secondaryButtons`

 |

_List of ButtonWidget_

 |

Array of less prominent buttons created with a!buttonWidget().

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the layout is displayed on the interface. When set to false, the layout is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Using buttons on different devices

-   For web and mobile tablets, buttons display in a horizontal list. The most prominent buttons appear at the far right and the least prominent buttons appear at the far left.
-   For mobile phones, buttons display in a vertical line. The most prominent buttons appear at the top and the least prominent buttons appear at the bottom.

### Using the primaryButtons and secondaryButtons parameters

-   For the _primaryButtons_ parameter, the first item in the array is the most prominent.
-   For the _secondaryButtons_ parameter, the first item in the array is the least prominent.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Related Patterns

The following patterns include usage of the Button Layout.

-   [Add Multiple Validation Rules to One Component](/suite/help/25.3/recipe-add-multiple-validation-rules-to-one-component.html) (_Validation_): Enforce that the user enters at least a certain number of characters in their text field, and also enforce that it contains the "@" character.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Configure Buttons with Conditional Requiredness](/suite/help/25.3/recipe-configure-buttons-with-conditional-requiredness.html) (_Validation_): Present two buttons to the end user and only make certain fields required if the user clicks a particular button

-   [Configure a Boolean Checkbox](/suite/help/25.3/recipe-configure-a-boolean-checkbox.html) (_Choice Components_): Configure a checkbox that saves a boolean (true/false) value, and validate that the user selects the checkbox before submitting a form.

-   [Configure a Dropdown Field to Save a CDT](/suite/help/25.3/recipe-configure-a-dropdown-field-to-save-a-cdt.html) (_Choice Components_): When using a dropdown to select values from the database, or generally from an array of CDT values, configure it to save the entire CDT value rather than just a single field.

-   [Configure a Dropdown with an Extra Option for Other](/suite/help/25.3/recipe-configure-a-dropdown-with-an-extra-option-for-other.html) (_Choice Components_): Show a dropdown that has an "Other" option at the end of the list of choices. If the user selects "Other", show a required text field.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [Make a Component Required Based on a User Selection](/suite/help/25.3/recipe-make-a-component-required-based-on-a-user-selection.html) (_Validation_): Make a paragraph component conditionally required based on the user selection.

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Searching on Multiple Columns](/suite/help/25.3/recipe-searching-on-multiple-fields.html) (_Grids, Filtering, Reports_): Display a grid populated based on search criteria specified by end users.

-   [Set the Default Value Based on a User Input](/suite/help/25.3/recipe-set-the-default-value-based-on-a-user-input.html) (_Default Value_): Set the default value of a variable based on what the user enters in another component.

-   [Set the Default Value of CDT Fields Based on a User Input](/suite/help/25.3/recipe-set-the-default-value-of-cdt-fields-based-on-a-user-input.html) (_Default Value_): Set the value of a CDT field based on a user input.

-   [Set the Default Value of an Input on a Start Form](/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-start-form.html) (_Default Value_): Display a default value in some form inputs on a start form, and save the value into the process when submitting.

-   [Set the Default Value of an Input on a Task Form](/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-task-form.html) (_Default Value_): Display a default value in some form inputs on a task form, and save the value to process when submitting.

-   [Showing Validation Errors that Aren't Specific to One Component](/suite/help/25.3/recipe-showing-validation-errors-that-arent-specific-to-one-component.html) (_Validation_): Alert the user about form problems that aren't specific to one component, showing the message only when the user clicks "Submit".

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Update an Entity-Backed Record Type from its Summary View](/suite/help/25.3/recipe-update-an-entity-backed-record-from-its-summary-view.html) (_Records, Smart Services_): Enable users to make quick changes to a record by updating it right from a record view.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use Links in a Grid to Show More Details and Edit Data in External System](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html) (_Grids, Web Services_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

-   [Use Validation Groups for Buttons with Multiple Validation Rules](/suite/help/25.3/recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html) (_Validation_): Present two buttons to the end user that, based on the selection, will validate only after a particular button is clicked.

-   [Use the Write Records Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-records-smart-service-function-on-an-interface.html) (_Smart Services, Looping_): Allow the user to publish several rows of data to a database table with the a!writeRecords() smart service function.

-   [Use the Write to Data Store Entity Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) (_Smart Services, Grids, Looping_): Allow the user to publish several rows of data to a table through the a!writeToDataStoreEntity() smart service function.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...