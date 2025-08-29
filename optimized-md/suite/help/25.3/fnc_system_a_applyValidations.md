---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_applyValidations.html
original_path: fnc_system_a_applyValidations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!applyValidations Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!applyValidations**( _recordField, context, additionalValidations_ )

This function references pre-configured record field validations and allows you to create additional validations to apply. Additional validations can be used to address less common scenarios that aren't applicable to every use of a record field.

You can use the `a!applyValidations()` function in any expression or interface to reference and add to the [pre-configured validations for a record field](configure-record-data-source.html#add-reusable-validations), but we especially recommend including it in the reusable input interface for the record field. If a record field has validations configured, then the generated input interface for the record field will automatically use the `a!applyValidations()` function.

To learn more about best practices for creating and using reusable record field validations and interfaces, see [Build Your Best Data Fabric](configure-record-data-source.html#add-reusable-validations-and-interfaces-to-record-fields)

**See also:**

-   [a!validationMessage function](Validation_Message.html)
-   [a!isBetween()](fnc_system_a_isBetween.html)
-   [a!isInText()](fnc_system_a_isInText.html)
-   [a!startsWith()](fnc_system_a_startsWith.html)
-   [a!endsWith()](fnc_system_a_endsWith.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordField`

 |

_Record Field_

 |

References a record field and the pre-configured validations for that field.

 |
|

`context`

 |

_Any Type_

 |

A rule input or local variable that calls the relevant data for the validation. For example, record data, record field values, and data returned by APIs.

 |
|

`additionalValidations`

 |

_List of Text_

 |

Validations applied in addition to the pre-configured record field validations. Additional validations can be used to address less common scenarios that aren't applicable to every use of a record field.

 |

## Returns

Record Data

## Usage considerations

### Supporting functions for validations

These functions were specifically created in conjunction with the `a!applyValidations()` function to help you easily create intuitive validations:

-   [a!isBetween()](fnc_system_a_isBetween.html)
-   [a!isInText()](fnc_system_a_isInText.html)
-   [a!startsWith()](fnc_system_a_startsWith.html)
-   [a!endsWith()](fnc_system_a_endsWith.html)

## Example

### Using pre-configured validations

The following example uses a rule input of the record type that the record field you're referencing belongs to.

Use the interactive editor below to test out the example code.

```
1
2
3
4
5
a!applyValidations(
 recordField: recordType!Case.field.email,
 context: ri!record,
 additionalValidations: {}
)
```

### Using pre-configured and additional validations

The following example uses a rule input of the record type that the record field you're referencing belongs to.

Use the interactive editor below to test out the example code.

```
1
2
3
4
5
6
7
8
9
10
11
a!applyValidations(
 recordField: recordType!Case.field.endDate,
 context: ri!record,
 additionalValidations: {
    if(
     ri!record[recordType!Case.fields.endDate] > today(),
     "",
     "Enter Valid Date"
    )
    }
)
```

### Using the applyValidations function in a reusable input interface for an email record field

The following expression is an example of a [reusable record field interface](configure-record-data-source.html#add-reusable-interfaces). The example uses a rule input of the record type that the record field you're referencing belongs to.

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
a!textField(
  label: recordType!Employee.fields.email.properties.displayName,
  labelPosition: "ABOVE",
  showWhen: fn!true(),
  value: ri!record[recordType!Employee.fields.email],
  saveInto: ri!record[recordType!Employee.fields.email],
  align: "LEFT",
  validations: {
    a!applyValidations(
      recordField: recordType!Employee.fields.email,
      context: ri!record
    )
  }
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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