---
source_url: https://docs.appian.com/suite/help/25.3/fnc_evaluation_save.html
original_path: fnc_evaluation_save.html
version: "25.3"
title: "a!save() Function"
page_id: "fnc_evaluation_save"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!save() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use a!save() to Modify Values Users Enter

This video from [Academy Online](https://academy.appian.com/) explains how to save values as users interact with an interface.

## Function

**a!save**( _target, value_ )

In interface saveInto parameters, updates the target with the given value. Use a!save for each item that you want to modify or alter in a `saveInto` parameter. This function has no effect when called outside of a component's saveInto parameter.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`target`

 |

_List of Save_

 |

A local variable, rule input, process variable, or node input in which to save the value. Local variables that refresh on an interval using "refreshInterval" or on every evaluation, either because they are using "refreshAlways" or because they are defined in the `with()` function, cannot be used as save targets.

 |
|

`value`

 |

_Any Type_

 |

The value to save. The component's updated value can be accessed using the special variable `save!value`.

 |

## Returns

Save

## Usage considerations

`a!save()` can be called multiple times for a given component by passing them in a list to the component's _saveInto_ parameter.

If the component's updated value should be saved directly into a variable without modification, the `a!save()` function is not necessary ([see first example below](#saving-a-variable-without-modification-doesnt-need-asave-function)).

### Using a value parameter

The _target_ and _value_ parameters are not evaluated until the user interacts with the component.

The variable `save!value` is only available in the _value_ parameter of `a!save()`. It cannot be used in the _target_ parameter or outside of `a!save()`.

If the component's updated value should be saved directly into a variable without modification, the `a!save()` function is not necessary (see first example below).

`a!save()` can be used in conjunction with a rule input of type [Save](Appian_Data_Types.html#save) to create [reusable custom components](using_interfaces_in_appian.html#creating-reusable-custom-components).

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Saving a variable without modification (doesn't need a!save function)

```
1
2
3
4
5
6
7
	=a!localVariables(
	  local!text,
	  a!textField(
	    value: local!text,
	    saveInto: local!text
	  )
	)
```

### Upper-casing the typed text

```
1
2
3
4
5
6
7
	=a!localVariables(
	  local!text,
	  a!textField(
	    value: local!text,
	    saveInto: a!save(local!text, upper(save!value))
	  )
	)
```

### Upper-casing and appending to the typed text

```
1
2
3
4
5
6
7
	=a!localVariables(
	  local!text,
	  a!textField(
	    value: local!text,
	    saveInto: a!save(local!text, "You just typed: " & upper(save!value))
	  )
	)
```

### Upper-casing and appending to the typed text in one variable, saving unchanged to another

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
	=a!localVariables(
	  local!modifiedText,
	  local!unmodifiedText,
	  a!textField(
	    instructions: local!modifiedtext,
	    value: local!unmodifiedText,
	    saveInto: {
	      a!save(local!modifiedtext, "You just typed: " & upper(save!value)),
	      local!unmodifiedText
	    }
	  )
	)
```

### Modifying two variables based on the same typed text

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
	=a!localVariables(
	  local!upperCaseText,
	  local!appendedText,
	  a!textField(
	    value: local!upperCaseText,
	    instructions: local!appendedText,
	    saveInto: {
	      a!save(local!upperCaseText, upper(save!value)),
	      a!save(local!appendedText, "You just typed: " & save!value)
	    }
	  )
	)
```

### Modifying two variables, one based on the typed text and one with an arbitrary value

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
	=a!localVariables(
	  local!upperCaseText,
	  local!isModified: false,
	  a!textField(
	    value: local!upperCaseText,
	    instructions: if(local!isModified, "Modified", ""),
	    saveInto: {
	      a!save(local!upperCaseText, upper(save!value)),
	      a!save(local!isModified, true)
	    }
	  )
	)
```

### Modifying two variables, one based on the typed text and one conditionally

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
15
16
17
18
19
20
21
	=a!localVariables(
	  local!text,
	  local!longText: "Short Text",
	  local!shortText: "Long Text",
	  a!textField(
	    label: local!shortText,
	    instructions: local!longText,
	    value: local!text,
	    saveInto: {
	      local!text,
	      a!save(
	        if(
	          len(local!text) > 5,
	          local!longText,
	          local!shortText
	        ),
	        save!value
	      )
	    }
	  )
	)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

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