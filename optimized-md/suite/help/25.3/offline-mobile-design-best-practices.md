---
source_url: https://docs.appian.com/suite/help/25.3/offline-mobile-design-best-practices.html
original_path: offline-mobile-design-best-practices.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Offline Mobile Design Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

Build An Offline Enabled Interface with Appian

Learn how to enable offline mobile in your environment and how to build interfaces for offline use.

## Introduction

When you [enable an interface for offline use](enable-offline-actions-and-tasks.html#step-2-enable-the-interface-object-for-offline-use), you are changing the way the interface communicates with the server when accessed on Appian Mobile.

On desktop and mobile browsers, offline interfaces evaluate the same as any other interface. However, when accessed on Appian Mobile, offline interfaces do not communicate with the server, except during an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use). This is true whether the user is online or offline.

Basically, offline interfaces are different from standard interfaces in the following ways:

-   In Appian Mobile, offline interfaces only communicate with the server during an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use).
-   During this sync, anything stored in local variables at the top of the interface is cached to the user's device so that they can access it while offline.

Because of this, you need to design offline interfaces with certain principles and best practices in mind. This page outlines what to consider when designing offline interfaces.

**Caution:**  Always fully test offline interfaces in the Appian Mobile app, making sure to complete all fields, to prevent issues that could cause users to lose their work.

## Working with data

Since offline interfaces only connect to the server during an offline data sync, you'll need to consider how you query data in an offline interface. The following sections outline some query best practices to use in your offline interfaces.

### Query all data in a local variable at the top of the interface

**Note:**  While you can use [record type references](reference-records.html#reference-a-record-type) in offline interfaces, other record type functionality is not compatible with offline mobile. For example, [record lists](record-list.html) and [record views](record-view.html) cannot display offline. Furthermore, in read-only grids, [records-powered features](Using_the_Records_Tab.html#read-only-grid) such as user filters and search configurations are not compatible with offline mobile.

#### Guideline

Query all data in local variables or rule inputs at the top of the interface so that they evaluate on the first load of the interface.

#### Importance

During an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use), all offline interfaces run through their initial [evaluation](interface-performance.html#interface-evaluations). Only local variables defined at the top of the interface, before any components, are included in this initial evaluation. The data queried within these local variables is the only data available in an offline interface.

Attempting to query data elsewhere in the interface will result in an error on Appian Mobile, as offline interfaces cannot communicate with the server outside of an offline data sync.

#### Example: Querying data in a local variable at the top of an interface

In this example, we query data in a local variable at the top of the interface so that we can use this data throughout the interface.

The `rule!getAllCustomers()` rule could be any number of methods used to get data such as [a!queryRecordType()](fnc_system_queryrecordtype.html) or an integration.

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
/* Query all data in a local variable at the top of the interface */
!  local!customers: rule!getAllCustomers(),
  local!selectedCustomer,
  ...
  {
    ...
    a!dropdownField(
      label: "Customers",
/* The offline interface knows what to use for choiceLabels and choiceValues because it was queried on the initial load of the interface during an offline data sync and downloaded to the user's device */
!      choiceLabels: local!customers[recordType!Customer.fields.name],
!      choiceValues: local!customers[recordType!Customer.fields.id],
      value: local!selectedCustomer,
      saveInto: local!selectedCustomer
    ),
    ...
  }
)
```

 |

```sail
{
  ...
/* The offline interface won't know what to use for choiceLabels and choiceValues because it didn't get the data when the interface was initially loaded during an offline data sync */
  a!dropdownField(
    label: "Customers",
!    choiceLabels: rule!getAllCustomers()[recordType!Customer.fields.name],
!    choiceValues: rule!getAllCustomers()[recordType!Customer.fields.id],
    value: local!selectedCustomer,
    saveInto: local!selectedCustomer
  ),

  ...
}
```

 |

### Query data for child interfaces or rules at the top of the parent interface

#### Guideline

When using child interfaces or rules, query the data in a local variable at the top of the parent interface and pass it to the child using a rule input.

#### Importance

During an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use), only the data in the parent interface is downloaded to the user's device. If you try to query the data in the child interface or rule, it will cause an error on Appian Mobile.

#### Example

In the following example, the data is queried in a local variable at the top of the parent interface. The variable is then used for the _data_ parameter value for the child interface.

In the child interface, we use a rule input for the _data_ parameter. This ensures that no querying happens in the child interface.

| Compatible | Not Compatible |
| --- | --- |
|
**Parent interface**

```sail
a!localVariables(
/* Query data in a local variable at the top of the parent interface */
!  local!dataForGrid: rule!getData(),
  {
    /*... other components ...*/
/* Pass in external data to child rules using rule inputs. */
    rule!childGridInterface(
!      gridData: local!dataForGrid
    )
    /*... other components ...*/
  }
)
```

**Child interface: \`rule!childGridInterface()\`**

```sail
{
  a!gridField(
    label: "Read-Only Grid",
/* Use a rule input for the data */
!    data: ri!gridData,
    columns: {}
  )
}
```

 |

**Parent interface**

```sail
{
  /*... other components ...*/
  rule!childGridInterface(),
  /*... other components ...*/
}
```

**Child interface: rule!childGridInterface()**

```sail
a!localVariables(
  local!dataForGrid: rule!getData(),
  {
    a!gridField(
      label: "Read-Only Grid",
/* Querying for the data in the child rule will result in an error */
      data: local!dataForGrid,
      columns: {}
    )
  }
)
```

 |

### Only query the data you need

#### Guideline

Limit your queries to retrieve only the necessary data for your interface. You can do this by:

-   Using filters to return specific data.
-   Including only the required fields in your query.
-   Using paging to limit the number of results.

#### Importance

Offline interfaces must download data to a user's device, and the speed of this download depends on the device [hardware](Appian_for_Mobile_Devices.html#hardware-recommendations) and the amount of data being downloaded. Downloading too much data can slow down performance, particularly on less powerful mobile devices.

#### Example: Only query the data you need

The following example only returns the id, name, email, and billing address for a customer, rather than returning all fields. It also uses paging and filtering to further filter the information.

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
  local!recentInspections: a!queryRecordType(
    recordType: recordType!Inspection,
/* This limits the query to the 4 fields we need */
    fields: {
      recordType!Inspection.fields.facilityName,
      recordType!Inspection.fields.rating,
      recordType!Inspection.fields.enforcementAction,
      recordType!Inspection.fields.inspectionDate
    },
/* This limits the query to only inspections from the last year */
    filters: a!queryFilter(
      field: recordType!Inspection.fields.inspectionDate,
      operator: ">",
      value: todatetime(today() - 365)
    ),
/* This limits the number of records returned to 5 */
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5)
  ).data,
  {
    a!gridField(
      label: "Recent Inspections",
      data: local!recentInspections,
      columns: {
        a!gridColumn(
          label: "Facility Name",
          value: fv!row[recordType!Inspection.fields.facilityName]
        ),
        a!gridColumn(
          label: "Rating",
          value: fv!row[recordType!Inspection.fields.rating]
        ),
        a!gridColumn(
          label: "Enforcement Action",
          value: fv!row[recordType!Inspection.fields.enforcementAction]
        ),
        a!gridColumn(
          label: "Date",
          value: fv!row[recordType!Inspection.fields.inspectionDate]
        )
      }
    )
  }
)
```

 |

```sail
a!localVariables(
  local!recentInspections: a!queryRecordType(
/* This query will return all fields and the maximum amount of records */
    recordType: recordType!Inspection,
    fields: a!selectionFields(
      allFieldsFromRecordType: recordType!Inspection,
      includeExtraLongTextFields: true,
      includeRealTimeCustomFields: true
  ),
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5000)
  ).data,
  {
    a!gridField(
      label: "Recent Inspections",
      data: local!recentInspections,
      columns: {
        a!gridColumn(
          label: "Facility Name",
          value: fv!row[recordType!Inspection.fields.facilityName]
        ),
        a!gridColumn(
          label: "Rating",
          value: fv!row[recordType!Inspection.fields.rating]
        ),
        a!gridColumn(
          label: "Enforcement Action",
          value: fv!row[recordType!Inspection.fields.enforcementAction]
        ),
        a!gridColumn(
          label: "Date",
          value: fv!row[recordType!Inspection.fields.inspectionDate]
        )
      }
    )
  }
)
```

 |

## Working with charts and read-only grids

### For the data parameter, use a local variable that calls a!queryRecordType()

#### Guideline

When displaying a [chart](Area_Chart_Component.html) or [read-only grid](Paging_Grid_Component.html) in an offline interface, don't reference a record type directly in the _data_ parameter. Instead, query the record type in a local variable and reference the local variable in the grid.

#### Importance

During an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use), only data queried in local variables at the top of the interface is downloaded to the user's device. If a chart or grid references a record type directly in its _data_ parameter, the query is moved to the component, preventing the data from being downloaded for offline use and causing the interface to error on Appian Mobile.

#### Example

In the following example, we query the Inspection record type in a local variable, instead of referencing the record type in the _data_ parameter of the grid.

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
/* This local variable queries the data for the grid */
  local!recentInpections: a!queryRecordType(
    recordType: recordType!Inspection,
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5)
  ).data,
  {
    a!gridField(
      label: "Recent Inspections",
/* The data parameter references the local variable that queries the data for the grid */
      data: local!recentInpections,
      columns: {
        a!gridColumn(
          label: "Facility Name",
          value: fv!row[recordType!Inspection.fields.facilityName]
        ),
        a!gridColumn(
          label: "Rating",
          value: fv!row[recordType!Inspection.fields.rating]
        ),
        a!gridColumn(
          label: "Enforcement Action",
          value: fv!row[recordType!Inspection.fields.enforcementAction]
        ),
        a!gridColumn(
          label: "Date",
          value: fv!row[recordType!Inspection.fields.inspectionDate]
        )
      }
    )
  }
)
```

 |

```sail
a!gridField(
  label: "Recent Inspections",
/* Referencing a record type in the data parameter will cause the interface to error in Appian Mobile */
  data: recordType!Inspection,
  columns: {
    a!gridColumn(
      label: "Facility Name",
      value: fv!row[recordType!Inspection.fields.facilityName]
    ),
    a!gridColumn(
      label: "Rating",
      value: fv!row[recordType!Inspection.fields.rating]
    ),
    a!gridColumn(
      label: "Enforcement Action",
      value: fv!row[recordType!Inspection.fields.enforcementAction]
    ),
    a!gridColumn(
      label: "Date",
      value: fv!row[recordType!Inspection.fields.inspectionDate]
    )
  }
)
```

 |

### Only use parameters that work in an offline interface

#### Guideline

For read-only grids and charts in offline interfaces, do not use the parameters listed in the following table:

| Component | Parameters to avoid |
| --- | --- |
| [Read-only grid](Paging_Grid_Component.html) |
-   Grid header parameters
    -   _showExportButton_
    -   _showRefreshButton_
    -   _showSearchBox_
    -   _userFilters_
-   Record action parameters
    -   _recordActions_
    -   _openActionsIn_
    -   _actionsDisplay_
    -   _actionsStyle_
-   Refresh parameters
    -   _refreshOnVarChange_
    -   _refreshOnReferencedVarChange_
    -   _refreshInterval_
    -   _refreshAfter_
    -   _refreshAlways_
-   Load data async parameter
    -   _loadDataAsync_

 |
| [Chart](Area_Chart_Component.html) |

-   Refresh parameters
    -   _refreshOnVarChange_
    -   _refreshOnReferencedVarChange_
    -   _refreshInterval_
    -   _refreshAfter_
    -   _refreshAlways_
-   Load data async parameter
    -   _loadDataAsync_

 |

#### Importance

Grid header, record action, and load data async parameters don't work in offline grids and charts because they require you to reference a record type in the _data_ parameter.

Refresh parameters don't work in offline read-only grids or charts because they trigger a server call. Since offline interfaces can only communicate with the server during an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use), this would cause the interface to error on Appian Mobile.

## Working with partially compatible functions

### Get the value for the function in a local variable at the top of the interface

#### Guideline

To use functions that [are partially compatible with offline mobile](#determining-function-and-component-compatibility), load them in a local variable at the top of the interface.

#### Importance

Functions that are [partially compatible](#determining-function-and-component-compatibility) with offline mobile require a server connection in order to evaluate. By loading these functions and components at the top of the page, they can run during the [initial evaluation](interface-performance.html#interface-evaluations) during an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use). But they cannot run during a reevaluation while the user is offline.

If partially compatible functions are used outside of these variables, they will try to evaluate when the interface can't communicate with the server and will cause an error in Appian Mobile.

#### Example

For example, even though [loggedInUser()](fnc_people_loggedinuser.html) isn't supported for offline reevaluations, you can still use this function by saving the resulting value into a local variable at the top of the interface.

When the user performs an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use), the interface will automatically load all offline interfaces in the background and get the value for `loggedInUser()`. When the user goes offline, it will use the value that was updated when they last refreshed.

If you tried to use `loggedInUser()` in the _saveInto_ parameter, it would return an error on Appian Mobile since it cannot connect to the server to get the value.

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
/* In order to get the logged in user, we save it into a local variable at the top of the interface */
!  local!user: loggedInUser(),
  a!formLayout(
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Submit",
          style: "SOLID",
/* Then we save the local variable into the rule input */
!          saveInto: a!save(ri!user, local!user)
        )
      }
    )
  )
)
```

 |

```sail
a!formLayout(
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(
        label: "Submit",
        style: "SOLID",
/* If we try to ask for the logged in user here, we can't connect to the server to get the value */
!        saveInto: a!save(ri!user, loggedInUser())
      )
    }
  )
)
```

 |

### Set the refreshOnReferencedVarChange parameter to false

#### Guideline

When you use a local variable to store the value of [partially compatible](#determining-function-and-component-compatibility) functions in offline interfaces, use [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) to set the value of _refreshOnReferencedVarChange_ to false.

**Tip:**  The other refresh parameters are not compatible with offline mobile as well. We're not specifying them here since they are not enabled by default. Since local variables automatically refresh when a referenced variable changes, you must manually disable this behavior.

#### Importance

By default, all local variables automatically refresh whenever a variable they reference is updated. If that refresh happens while the interface can't communicate with the server, it would cause the interface to error on Appian Mobile.

#### Example

For example, imagine you have a list of users that you want to query. However, the username is in the format "firstname.lastname" and you would like to display it as "Firstname Lastname."

If you are designing the interface for offline use, you would want to store the list of users in a local variable at the top of the interface.

You can then store the prettified version of the names into another local variable. If you use `a!refreshVariable()` and set the value of _refreshOnReferencedVarChange_ to `false`, you can ensure this variable is only evaluated when the interface is first loaded. If _refreshOnReferencedVarChange_ is not set to `false` and `local!users` is updated in a _saveInto_ somewhere else in the interface, `local!usersForDisplay` would automatically update and attempt to use the `user()` function offline, which would result in an error.

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
  local!selectedUser,
  local!users: getdistinctusers(cons!ALL_USERS_GROUP),
  local!usersForDisplay: a!refreshVariable(
    value: a!forEach(
      items: local!users,
      expression: user(fv!item, "firstName") & " " & user(fv!item, "lastName")
    ),
/* If this is not set to false and 'local!users' is updated somewhere else in the interface, 'local!usersForDisplay' would attempt to use the user() function offline to update, resulting in an error */
    refreshOnReferencedVarChange: false
  ),
  a!dropdownField(
    label: "User",
    placeholder: "--- Choose User ---",
    choiceLabels: local!usersForDisplay,
    choiceValues: local!users,
    value: local!selectedUser,
    saveInto: local!selectedUser
  )
)
```

 |

```sail
a!localVariables(
  local!selectedUser,
  local!users: getdistinctusers(cons!ALL_USERS_GROUP),
/* a!refreshVariable() isn't used here which means an error will result if local!users is updated somewhere else in the interface */
  local!usersForDisplay: a!forEach(
    items: local!users,
    expression: user(fv!item, "firstName") & " " & user(fv!item, "lastName")
  ),
  a!dropdownField(
    label: "User",
    placeholder: "--- Choose User ---",
    choiceLabels: local!usersForDisplay,
    choiceValues: local!users,
    value: local!selectedUser,
    saveInto: local!selectedUser
  )
)
```

 |

## Working with partially compatible functions in child interfaces and expression rules

It's common to nest child interfaces and expression rules within a parent interface. However, if these children use a partially compatible function, you need to get the value of the function in the parent interface.

For [child expression rules](#for-child-expression-rules-load-the-expression-rule-at-the-top-of-the-parent-interface), you can simply put the expression rule in a local variable at the top of the parent interface. However, this won't work for [child interfaces](#for-child-interfaces-pass-the-value-of-partially-compatible-functions-from-the-parent-to-the-child-interface) since you should avoid loading interfaces in local variables. Instead, you will need to pass the value of the partially compatible function from the parent to the child interface.

### For child expression rules, load the expression rule at the top of the parent interface

#### Guideline

In an offline interface, when you reference an expression rule that uses a [partially compatible](#determining-function-and-component-compatibility) function, put the expression rule in a local variable at the top of the parent interface.

#### Importance

Partially compatible functions can only be evaluated during an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use), which evaluates only the parent interface. In order to use a partially compatible function in a child expression rule, you need to get the value for the expression rule during this data sync. If you try to use the expression rule elsewhere in the parent interface, the interface will error in Appian Mobile.

#### Example

In the following example, we are using a partially compatible function, `loggedInUser()`, in an expression rule. We are calling the expression rule in a local variable at the top of the parent interface. This ensures that the value for the partially compatible function is saved during an offline data sync.

| Compatible | Not Compatible |
| --- | --- |
|
**Parent interface**

```sail
a!localVariables(
/* Call the expression rule in a local variable
at the top of the interface */
!  local!firstName: rule!childRule(),
  {
    a!richTextDisplayField(
      labelPosition: "COLLAPSED",
      value: a!richTextItem(
/* Reference the value of the expression rule
using a local variable */
!        text: local!firstName
      )
    )
  }
)
```

**Child rule: \`rule!childRule()\`**

```sail
user(
  username: loggedInUser(),
  property: "firstName"
)
```

 |

**Parent interface**

```sail
{
  /*... other components ...*/
  a!richTextDisplayField(
    labelPosition: "COLLAPSED",
    value: {
/* Calling the expression rule elsewhere in
the interface will result in an error */
      a!richTextItem(text: rule!childRule())
    }
  )
  /*... other components ...*/
}
```

**Child rule: rule!childRule()**

```sail
user(
  username: loggedInUser(),
  property: "firstName"
)
```

 |

### For child interfaces, pass the value of partially compatible functions from the parent to the child interface

#### Guideline

In an offline interface, when you use child interface that contains [partially compatible](#determining-function-and-component-compatibility) function, put the partially compatible function in a local variable at the top of the parent parent interface. Then pass the value of the function to the child interface using a rule input.

#### Importance

Partially compatible functions can only be evaluated during an offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use), which evaluates only the parent interface. In order to use a partially compatible function in a child interface, you need to get the value for the function during this data sync. If you try to use a partially compatible function directly in the child interface, it will cause an error in Appian Mobile.

##### Example

In the following example, we get the value of the partially compatible function in a local variable at the top of the parent interface. We then use that variable for the _text_ parameter value in the child interface.

In the child interface, we use a rule input for the _text_ parameter. This ensures that the value for the partially compatible function can be saved during an offline data sync.

| Compatible | Not Compatible |
| --- | --- |
|
**Parent interface**

```sail
a!localVariables(
!  local!firstName: user(
    username: loggedInUser(),
    property: "firstName"
  ),
  {
    /*... other components ...*/
    rule!childInterface(
/* Pass in partially compatible function
to child interface using rule inputs */
!      firstName: local!firstName
    )
    /*... other components ...*/
  }
)
```

**Child interface: \`rule!childInterface()\`**

```sail
{
  a!richTextDisplayField(
    labelPosition: "COLLAPSED",
    value: {
      a!richTextItem(
/* Use a rule input for the value that the
partially compatible function returns */
!        text: ri!firstName
      )
    }
  )
}
```

 |

**Parent interface**

```sail
{
  /*... other components ...*/
  rule!childInterface(),
  /*... other components ...*/
}
```

**Child interface: rule!childInterface()**

```sail
{
  a!richTextDisplayField(
    labelPosition: "COLLAPSED",
    value: {
      a!richTextItem(
/* Using the partially compatible function
in the child rule will result in an error */
        text: user(
          username: loggedInUser(),
          property: "firstName"
        )
      )
    }
  )
}
```

 |

## Avoiding incompatible capabilities

### Don't use incompatible functions and components

#### Guideline

Do not use incompatible functions or components in an offline interface. For more information about determining compatibility, see [Determining function and component compatibility](#determining-function-and-component-compatibility).

#### Importance

While many functions and components work offline, there are some that won't due to their nature. Certain functions and interface components only work if they are connected to the server. Therefore, they cannot be used for offline interfaces.

#### Example

In the following example, we use the [dropdown](Dropdown_Component.html) component instead of the [user picker](User_Picker_Component.html) component since the user picker isn't compatible with offline mobile.

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
  local!user,
/* Make sure to get all of your possible users using a local variable on the initial interface load */
!  local!allUsers: getdistinctusers(cons!ALL_USERS_GROUP),
  {
/* Instead of a picker, use a dropdown field to select users */
!    a!dropdownField(
      label: "Users",
      placeholder: "--- Select a user ---",
      choiceLabels: local!allUsers,
      choiceValues: local!allUsers,
      value: local!user,
      saveInto: local!user
    )
  }
)
```

 |

```sail
a!localVariables(
  local!user,
  {
/* A picker field won't work in an offline interface because it requires a connection to the server in order to get the list of users */
!    a!pickerFieldUsers(
      label: "User Picker",
      labelPosition: "ABOVE",
      value: local!user,
      saveInto: local!user
    )
  }
)
```

 |

### Don't use plug-ins

#### Guideline

Do not use [plug-ins](Appian_Plug-ins.html) in an offline interface. This includes [function](Custom_Function_Plug-ins.html), [smart service](Custom_Smart_Service_Plug-ins.html), and [component](component-plugins.html) plug-ins.

#### Importance

Plug-ins are not compatible with offline interfaces and will cause the interface to error when accessed on Appian Mobile.

## Working with documents

You can download documents in offline interfaces. Whether you want to include an image for a stylized billboard or bring in reference documents specific to user tasks, you can include any document in offline interfaces that your users can download.

To download documents offline, simply save your document as a [document](Appian_Data_Types.html#document) data type or as a [document or folder](Appian_Data_Types.html#document-or-folder) data type. Then, use a [document download link](Document_Link_Component.html) to call the document using one of the following methods:

-   Using a constant.
-   Casting document IDs using a query.
-   Casting document IDs using a local variable.

For all three methods, you'll need to do all your calling, querying, and casting in local variables at the top of the interface.

### Downloading documents using constants or functions

In some of your offline interfaces, you may want to include a document that won't regularly change. These could be an image to show in a billboard, a document with additional details and instructions, or any document that won't change from user to user.

There are two methods that you can use to download these kinds of documents:

-   [Using a constant](#download-documents-using-a-constant)
-   [Using the todocument() function](#download-documents-using-the-todocument-function)

#### Download documents using a constant

When building offline interfaces, using a constant is the easiest and recommended method for calling in a document that won't regularly change. Simply create a constant that calls your document and use it in a local variable at the top of your interface.

#### Example: Downloading documents offline using a constant

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
  local!document: cons!myDocument,
  {
    a!imageField(
      images: {
        a!documentImage(
          document: local!document
        )
      }
    )
  }
)
```

 |

```sail
{
  a!imageField(
    images: {
      a!documentImage(
        document: cons!myDocument
      )
    }
  )
}
```

 |

#### Download documents using the todocument function

If the document that you want to include in your offline interface is saved as a document ID of type integer, you need to [cast it to a document type](fnc_conversion_todocument.html).

To cast the integer to a document within the interface, use the `todocument()` function within a local variable at the top of the interface. If you use it farther down in the expression, the interface will attempt to return the document while offline and will not be able to retrieve it.

#### Example: Casting document id to document type using todocument()

| Compatible | Not Compatible |
| --- | --- |
|
```sail
a!localVariables(
  local!document: todocument(150),
  {
    a!imageField(
      images: {
        a!documentImage(
          document: local!document
        )
      }
    )
  }
)
```

 |

```sail
{
  a!imageField(
    images: {
      a!documentImage(
        document: 150
      )
    }
  )
}
```

 |

### Downloading documents offline using a query

In some of your offline interfaces, you may need to include documents that will change based on the user's needs. These could be reference images specific to an inspection or previously submitted photos for equipment comparison.

These documents are typically stored in a database and you can access them using `a!queryRecordType()`.

Make sure that the document you want to include is stored as a [document](Appian_Data_Types.html#document) data type or as a [document or folder](Appian_Data_Types.html#document-or-folder) data type. If your document is saved as any other data type, you must cast it to a document data type or a document or folder data type so that you can download it. You can do this within local variables at the top of your interface.

## Working with CDTs

More often than not, you'll want to use record types to work with data in your offline interfaces and expressions. However, if you are already using CDTs in your application, consider the following best practices for working with CDTs.

### To write data using CDTs, create CDTs that include only the fields you are writing

#### Guideline

If you using CDTs to write data, create a CDT that only includes the fields that you are updating. Use this CDT to write only the updated fields to the data store.

#### Importance

When you write a CDT to a database, all of the fields in the database get updated, whether you entered a value or not. This means that if you're trying to only update the first name in a database using a Customer CDT, if you don't set the values for all of the other fields, you could overwrite all of the other fields with null.

**Note:**  Keep in mind that when we need to deal with conflicting database entries in offline mobile, we choose the most recent database entry as the source of truth.

#### Example

For example, imagine you have an offline interface that queries for the following fields at the top of the interface.

-   Customer id
-   Customer name
-   Customer address

In the interface, you allow the user to update the customer's address, but no other fields. To write this information to the data store, you need to create a CDT with only the id and the address fields. If you were to write to the data store using the original CDT, when you write the new address, you would update all of the other fields to `null`.

![screenshot comparing the original CDT to the new CDT](images/offline_mobile_update_customer_cdt.png)

## Avoiding pending offline forms submission failures

In some cases, offline forms for [site actions](how-offline-mobile-works.html#site-actions) and [tasks](how-offline-mobile-works.html#task-lists) that are in the Pending Forms list may fail to submit after users regain connectivity. The following sections outline guidelines to follow to avoid these issues.

### Be careful when modifying CDTs

If your offline interface uses a type constructor to reference or save data to a CDT, be cautious when making changes to the CDT structure.

Adding new fields is backward-compatible and will not cause issues with pending forms.

However, the following changes can break compatibility with older versions of the CDT. This may prevent pending forms from being submitted, requiring users to fill out the form again.

CDT changes to avoid:

-   Deleting fields.
-   Changing a field's name.
-   Changing a fields data type.

To avoid submission failures:

-   Only add fields to CDTs.
-   If you need to delete or rename a field, or change a field's data type, create a new CDT instead of modifying an existing one.
-   Avoid using type constructors in offline interfaces. Instead, use a map and save it to a rule input of the CDT type.

### Don't make changes to process calendars when users are working offline

If you're using a custom [process calendar](Process_Calendar_Settings.html), avoid making changes to the calendar while users are filling out offline forms. It could cause pending form submission failures. Instead, schedule these changes during off-hours.

### Make sure users have the correct folder permissions to upload files

If offline users attempt to upload a file to a folder that they don't have permission to access, the form will fail to submit. The offline form cannot check that the user has permission to access the folder until the user is back online, so the user won't see an error when they complete the form.

To prevent this, make sure that all users have the necessary permission to upload documents to the target folder.

## Providing a better user experience

### To allow users to submit forms automatically when their session has timed out, enable remember me

If a user is offline for longer than the [idle session timeout](Appian_Administration_Console.html#session-timeout) period and remember me is not enabled, pending forms will not be submitted until after the user manually signs in again. To allow pending forms to be submitted automatically when the user is back online, enable remember me.

Remember me is configured in the Admin Console. See [Appian authentication](Appian_Administration_Console.html#remember-me) or [SAML authentication](SAML_for_Single_Sign-On.html#remember-me) depending on the authentication that your environment uses.

## Determining function and component compatibility

Because offline-enabled interfaces don't communicate with the server the same way that other interfaces do, certain functions and components that rely on a connection to the server work differently in offline interface.

Functions and components can be either compatible, partially compatible, or incompatible with offline mobile.

-   **Compatible**: Works anywhere in an offline mobile interface.
-   **Partially compatible**: Works with offline mobile if it is loaded at the top of the interface in a local variable.
-   **Incompatible**: Doesn't work in offline mobile because it requires a connection to the server.

There are two main ways to determine whether a function or component is compatible with offline mobile: the [Appian All Functions table](#using-the-appian-functions-table-to-determine-compatibility) in the docs and [Appian design guidance](#using-design-guidance-to-determine-compatibility) in an interface or expression rule.

#### Using the Appian Functions table to determine compatibility

To find out if a function is compatible with offline mobile using the filters on the Appian All Functions table:

1.  Go to the [All Functions](Appian_Functions.html) page.
2.  Change the **Any Compatibility** dropdown list to **Incompatible**, **Partially Compatible**, or **Incompatible**.
3.  For the next dropdown list, choose **Offline Mobile**.
4.  To view the offline compatibility in the table, toggle on the **Compatibility** column.

![Offline compatibility in function table](images/offline_function_table.png)

#### Using design guidance to determine compatibility

A [design guidance](appian-recommendations.html) recommendation will display if you try to use an incompatible or partially compatible function in:

-   Offline-enabled interfaces.
-   Interfaces or expression rules that are referenced in an offline-enabled interface.

If you see this design guidance:

-   For [incompatible functions or components](#avoiding-incompatible-capabilities), refactor your expression to remove them.
-   For [partially compatible functions](#working-with-partially-compatible-functions), use them in a local variable at the top of the parent interface.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...