---
source_url: https://docs.appian.com/suite/help/25.3/domain_prefixes.html
original_path: domain_prefixes.html
version: "25.3"
title: "Domain Prefixes"
page_id: "domain_prefixes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Domain Prefixes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details the various domain prefixes used in Appian. Domain prefixes appear before the identifying name of certain functions, rules, data, etc. Between the prefix and name is an exclamation mark `!`, also referred to as a 'bang'.

Domain prefixes serve a couple of purposes:

-   **Reference design objects and functions**: In the appropriate context, domain prefixes are used to reference a design object or a function.
-   **Invoke properties**: In the appropriate context, domain prefixes are used to invoke a particular property.
-   **Prevent name collisions**: If functions, rules, or other properties are identically named, the domain prefix will define what Appian uses.

Domain prefixes are used anywhere you can create an [expression](Expressions.html). However, certain prefixes are only used in certain contexts.

**Tip:**  **Best Practice:** With the exception of the `fn!` domain, always use domain prefixes in your expressions.

After entering a domain prefix in an expression, a type ahead will begin to suggest the best matched function, object, or data point.

## Function prefixes

There are two function domain prefixes in Appian: `fn!` and `a!`. When you type the `a!` or `fn!` domain into an expression and followed by a character, type ahead will suggest functions that map to the domain and character you entered. Always use the `a!` domain when you need to call various system, smart service, and connector [functions](Appian_Functions.html) as well as [interface components](SAIL_Components.html).

Unlike the `a!` domain, the `fn!` domain is not required to call a related function, unless you are referencing a function within another function. For example, the `all()` function allows you to evaluate whether a given function or rule is true or false for each item in a list. As shown in the expression below, the `fn` function is required to reference the `isnull()` function within the `all()` function.

`all(fn!isnull, {10, null, 30})`

## Object prefixes

Design objects also have a domain prefix that allows you to directly or indirectly reference a design object or invoke object properties. The following table list the various design objects with their prefixes.

| Design Object | Domain Prefix | Reference Type | Use Case |
| --- | --- | --- | --- |
| [Constants](Constants.html) | `cons!` | Indirect | Use this domain to indirectly reference a design object. |
| [Data Types](Appian_Data_Types.html) | `type!` | Direct | Use this domain to reference an [Appian data type](Appian_Data_Types.html#complex-system-data-types) or [custom data types](Custom_Data_Types.html). See [Construction Data Type Values](constructing-data-type-values.html) for examples on how to use this prefix. See [Data prefixes](domain_prefixes.html#data-prefixes) for information on which data prefixes to use to invoke stored data values in an expression. |
| [Decisions](Decisions.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. Decisions cannot referenced in [process events](Event_Triggers.html), process report [column definitions](Process_Reports.html), or web content channels. |
| [Expression Rules](Expression_Rules.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. See [Call an expression rule from another expression](Expression_Rules.html#call-an-expression-rule-from-another-expression) for more information. |
| [Integrations](Integration_Object.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. See [Call an integration to query data](Call_an_Integration.html#call-an-integration-to-query-data) for more information. |
| [Interfaces](interface_object.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. See [Interfaces as rules](using_interfaces_in_appian.html#using-interfaces-with-other-objects) for more information. |
| [Portal](portal-object.html) | `portal!` | Direct | Use this domain to reference a portal object and any portal pages. See [Reference a portal object](fnc_scripting_urlforportal.html#referencing-portal-pages) for more information. |
| [Record Type](Create_a_Record_Type.html) | `recordType!` | Direct | Use this domain to reference a record object type and any properties of the record type like fields, actions, filters, and relationships. See [Reference a record type and its properties](reference-records.html) for more information. |
| [Site](sites_object.html) | `site!` | Direct | Use this domain to reference a site object and any site pages. See [Reference a Site Page](reference-sites.html) for more information. |
| [Translation set](translation-set-object.html) | `translation!` | Direct | Use this domain to reference translation strings within a translation set. See [Referencing Translation Strings in Your Applications](reference-translation-strings.html) for more information. |
| [Control panel object](control-panel-object.html) | `controlPanel!` | Direct | Use this domain to reference a control panel object. See [Referencing a control panel object](referencing-control-panel-objects.html) for more information. |

#### Direct and indirect object references

Direct object references are used to call an object directly into an expression or function. These references use the appropriate domain prefix for the design object followed by the name of the design object. If the object has rule inputs or properties, the direct object reference allows you to pass the inputs or properties into the expression as parameters.

Indirect object references are used for design objects that you cannot call directly into an expression. This reference type is helpful for calling objects that vary between environments and objects that are referenced in multiple design objects. For example, if you want to assign a security group to multiple design objects and the group's access rights vary across environments, you could use a single constant to reference the security group and call it in each environment.

## Data prefixes

You can use data prefixes to reference data types or invoke stored data values. Certain data prefixes are specific to a single object type while others can be used in multiple object types.

### Multiple-object prefixes

The following data prefix can be used in multiple object types in Appian:

| Name | Prefix | Description | Level | Example |
| --- | --- | --- | --- | --- |
| **Rule inputs** | `ri!` | Invokes rule inputs from rule-based objects, like expression rules, interfaces, and decisions. |   |   |

### Single-object prefix

The following prefixes can only be invoked in certain cases: within an object's expression editors (like process models or record types).

**Note:**  Do not reference these prefixes outside of their intended location. For example, do not try to use `pv!` or `rv!` directly on an interface. Instead, create a rule input for those values and pass data in through the rule input.

#### Process-only prefixes

[Process models](process-model-object.html) have several out-of-the-box domain prefixes that you can use in expression editors in the Process Modeler. You can also use some of these prefixes when editing task report data columns. Learn more about [process-only prefixes](Process_and_Report_Data.html).

#### Record-type-only prefixes

[Record types](Record_Type_Object.html) have four domain prefixes that can be used to retrieve certain record variables, fields, and properties.

| Name | Prefix | Description |
| --- | --- | --- |
| Record Variables | `rv!` |
This domain prefix is always followed by `identifier` or `record`.

This domain allows you to reference record values within the record type object itself:

-   To reference a record's ID, use `rv!identifier`.

-   To reference the data within a specific field in a record, use `rv!record` and combine it with a reference to the field using the `recordType!` domain.

    For example:

    `rv!record[recordType!Employee.fields.firstName]`

 |
| Record Fields | `rf!` | This prefix is not supported for record types created or updated in 20.3 and beyond. |
| Record Properties | `rp!` | This prefix is not supported for record types created or updated in 20.3 and beyond. |
| Record Service Properties | `rsp!` | Exclusively used in legacy [expression-backed record types](Service-Backed_Record_Tutorial.html) created with Appian 19.4 and earlier to handle paging, searching, and filtering. The `rsp!` domain is no longer required to configure these record fields. |

**Note:**  See [Reference record values in the record type](reference-records.html#reference-record-values-in-the-record-type) for more information on how to use the `rv!` domain.

#### Web-API-only prefixes

| Name | Prefix | Description |
| --- | --- | --- |
| Web API properties | `http!` | Use in [Web APIs](Web_APIs.html) to expose certain http properties when someone calls that web API. |

#### Test prefixes

| Name | Prefix | Description |
| --- | --- | --- |
| Test cases | `test!output` | Use in [expression rules](Expression_Rules.html#test-cases) to create test assertions based on the test's output. |

## Function-specific prefixes

Within certain functions, properties of that function can be called by using the following prefixes:

| Name | Prefix | Description |
| --- | --- | --- |
| Local Variables | `local` | Through the [a!localVariables()](fnc_evaluation_a_localvariables.html) function designers can create [local variables](parts-of-an-expression.html#local-variables) and call those local variables using the `local!` prefix. |
| Function Variables | `fv!` | Used within certain functions and interface components. The available function variables will be listed in the inline documentation. |
| Save Value | `save!` | Used within [a!save()](fnc_evaluation_save.html) function. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...