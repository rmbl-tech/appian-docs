---
source_url: https://docs.appian.com/suite/help/25.3/Update_User_Profile_Smart_Service.html
original_path: Update_User_Profile_Smart_Service.html
version: "25.3"
title: "Update User Profile Smart Service"
page_id: "Update_User_Profile_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Update User Profile Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Update User Profile Service Node allows you to update a selected user's personal data, including their name, address, phone number, supervisor and title. Any fields not modified will retain their previous information. If you do not select a user, any changes made are applied to the user running the node.

**Note:**  The Update User Profile Service Node can only be executed by someone who is a [System Administrator](User_Management.html#manage-user-rights-and-security). Attempting to modify a user account other than your own, without sufficient user rights generates an error alert for the Process Administrator and pauses the process.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![Change User Type](images/Smart_Service_Icons/Change_User_Type.png)

-   **Assignment Options**: Unattended/Attended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

The **Data** tab displays all the node inputs and node outputs for the Smart Service node. You can add additional inputs and outputs, if needed. The default inputs generated for the Update User Profile node are:

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| Choose User | User | Yes | No |
| Overwrite All Fields | Boolean | No | No |
| First Name | Text | Yes | No |
| Middle Name | Text | No | No |
| Last Name | Text | Yes | No |
| Nickname | Text | No | No |
| Supervisor\* | User | No | No |
| Title | Text | No | No |
| E-mail | Text | Yes | No |
| Office Phone | Text | No | No |
| Mobile Phone | Text | No | No |
| Home Phone | Text | No | No |
| Address 1 | Text | No | No |
| Address 2 | Text | No | No |
| Address 3 | Text | No | No |
| City | Text | No | No |
| State | Text | No | No |
| Province | Text | No | No |
| ZIP Code | Text | No | No |
| Country | Text | No | No |
| Locale\* | Text | No | No |
| Time Zone\* | Text | No | No |
| Calendar\* | Text | No | No |
| Custom Field 1 | Text | No | No |
| Custom Field 2 | Text | No | No |
| Custom Field 3 | Text | No | No |
| Custom Field 4 | Text | No | No |
| Custom Field 5 | Text | No | No |
| Custom Field 6 | Text | No | No |
| Custom Field 7 | Text | No | No |
| Custom Field 8 | Text | No | No |
| Custom Field 9 | Text | No | No |
| Custom Field 10 | Text | No | No |

\* See [specific usage considerations](#specific-considerations) for additional information.

#### Node outputs

This node does not return any values.

## Usage considerations

Consider the following when using this smart service.

### General considerations

-   If the node is run without being assigned to a user (or a group), you must specify values for each of the node inputs. If you want to overwrite all fields, including setting some fields to null, set the **Overwrite All Fields** input to **true**. You can either manually enter data into the text field, or generate a value using the Expression Editor. When using the Expression Editor, you can reference and modify process variables, rules, constants, and other data. The expressions then populate your node input values.

-   If the node is assigned, the node input values are typed by your assigned user(s) into a form.

### Specific considerations

-   **Supervisor**: If the user selected for the _Supervisor_ field has been deactivated since the profile was last updated, an error is thrown and the process pauses by exception until a valid user or no user is entered for the field.
-   **Locale**: The [locale code](Appian_Administration_Console.html#locale-settings) of the user, such as `en_US` or `de`. If not provided, defaults to the environment's primary locale.
-   **Time Zone**: The time zone ID of the user, such as `America_New York` or `Europe/London`. If not provided, defaults to the environment's primary time zone. To find the time zones available on your environment, view the **Time Zone** options in your [User Settings](Settings_Page.html#general) or the [Internationalization](Appian_Administration_Console.html#selecting-a-primary-time-zone) tab of the Admin Console.
-   **Calendar**: The calendar of the user. If not provided, defaults to the environment's primary calendar. Valid values: `gregorian`, `Epoch A T1`, `Epoch A T2`, `Epoch B T1`, `Epoch B T2`, `Umm Al Qura`.

## a!updateUserProfile()

The [Update User Profile smart service](#) is available as an expression function that can be executed inside a `saveInto` on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!updateUserProfile**( _group, overwriteAllFields, firstName, middleName, lastName, nickname, supervisor, title, email, officePhone, mobilePhone, homePhone, address1, address2, address3, city, state, province, zipCode, country, locale, timeZone, calendar, customField1, customField2, customField3, customField4, customField5, customField6, customField7, customField8, customField9, customField10, onSuccess, onError\*_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`group`

 |

_User_

 |

The user whose profile will be updated.

 |
|

`overwriteAllFields`

 |

_Boolean_

 |

Set to `true` to overwrite all fields with the specified values (or null when no value is specified). Set to `false` to only overwrite fields with specified value and keep the original values when no value is specified. By default, this value is `false`.

 |
|

`firstName`

 |

_Text_

 |

The new first name of the user.

 |
|

`middleName`

 |

_Text_

 |

The new middle name of the user.

 |
|

`lastName`

 |

_Text_

 |

The new last name of the user.

 |
|

`nickname`

 |

_Text_

 |

The new nickname of the user.

 |
|

`supervisor`

 |

_User_

 |

The new supervisor of the user.

 |
|

`title`

 |

_Text_

 |

The new title of the user.

 |
|

`email`

 |

_Text_

 |

The new email address of the user.

 |
|

`officePhone`

 |

_Text_

 |

The new office phone number of the user.

 |
|

`mobilePhone`

 |

_Text_

 |

The new mobile phone number of the user.

 |
|

`homePhone`

 |

_Text_

 |

The new home phone number of the user.

 |
|

`address1`

 |

_Text_

 |

The new address of the user.

 |
|

`address2`

 |

_Text_

 |

The new address of the user.

 |
|

`address3`

 |

_Text_

 |

The new address of the user.

 |
|

`city`

 |

_Text_

 |

The new city of the user.

 |
|

`state`

 |

_Text_

 |

The new state of the user.

 |
|

`province`

 |

_Text_

 |

The new province of the user.

 |
|

`zipCode`

 |

_Text_

 |

The new ZIP code of the user.

 |
|

`country`

 |

_Text_

 |

The new country of the user.

 |
|

`locale`

 |

_Text_

 |

The new [locale code](Appian_Administration_Console.html#locale-settings) of the user, such as `en_US` or `de`. If not provided, defaults to the primary locale.

 |
|

`timeZone`

 |

_Text_

 |

The time zone ID of the user, such as `America/New_York` or `Europe/London`. If not provided, defaults to the environment's primary time zone. To find the time zones available on your environment, view the **Time Zone** options in your [User Settings](Settings_Page.html#general) or the [Internationalization](Appian_Administration_Console.html#selecting-a-primary-time-zone) tab of the Admin Console.

 |
|

`calendar`

 |

_Text_

 |

The new calendar of the user. If not provided, defaults to the primary calendar. Valid values: `gregorian`, `Epoch A T1`, `Epoch A T2`, `Epoch B T1`, `Epoch B T2`, `Umm Al Qura`.

 |
|

`customField1`

 |

_Text_

 |

The new value of custom field 1 of the user.

 |
|

`customField2`

 |

_Text_

 |

The new value of custom field 2 of the user.

 |
|

`customField3`

 |

_Text_

 |

The new value of custom field 3 of the user.

 |
|

`customField4`

 |

_Text_

 |

The new value of custom field 4 of the user.

 |
|

`customField5`

 |

_Text_

 |

The new value of custom field 5 of the user.

 |
|

`customField6`

 |

_Text_

 |

The new value of custom field 6 of the user.

 |
|

`customField7`

 |

_Text_

 |

The new value of custom field 7 of the user.

 |
|

`customField8`

 |

_Text_

 |

The new value of custom field 8 of the user.

 |
|

`customField9`

 |

_Text_

 |

The new value of custom field 9 of the user.

 |
|

`customField10`

 |

_Text_

 |

The new value of custom field 10 of the user.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`.

 |
|

`onError*`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Feature compatibility

The table below lists this smart service function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
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