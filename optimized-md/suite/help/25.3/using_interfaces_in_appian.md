---
source_url: https://docs.appian.com/suite/help/25.3/using_interfaces_in_appian.html
original_path: using_interfaces_in_appian.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Reusing Interfaces

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Interfaces are an important part of Appian applications. With the right interface, you can deploy multiple applications with a consistent look and feel. This page discusses the concepts related to reusing interfaces throughout your Appian applications to make your applications more efficient.

An interface returns one or more components to display on a record view, Tempo report, or process form. This is the primary object that designers use to show user interfaces to application users.

For more information about interface properties, see [Interface Object](interface_object.html).

For functional examples of different design patterns, see the [Interface Patterns](SAIL_Recipes.html) page. These examples will help you learn key interface concepts and can be used as a starting point for your implementation.

## Interfaces as rules

When working with interfaces, think of them as any other expression rule. Interfaces are versatile and can be used in many places throughout Appian. For example, one interface can be called in a process, record type, and also in other interfaces. To call an interface, simply use the `rule!` prefix.

Interfaces are defined using expressions, which enable dynamic behavior and reuse of common logic and components across multiple objects throughout the system. They are called and evaluated in the same way as expression rules.

## Reusability

Part of the advantage of creating interfaces and expression rules is that you can reuse these objects whenever you need them. Reusing interfaces reduces redundant expressions, helps you easily maintain application objects, and helps you create dynamic applications. You can make changes to one interface and see the changes reflected immediately in all other objects calling that interface.

Reusing interfaces also helps you govern interface design, promote best practices, and create a consistent user experience in every application.

To quickly access interfaces that meet your organization's design standards, include them in your [design library](working_in_design_mode.html#using-the-design-library). To create reusable interfaces to hold record field component configurations that can be easily and widely used throughout your application, [create and add interfaces directly to your record field metadata](#creating-reusable-interfaces-for-record-fields).

![screenshot of a column chart](images/2018-04-18_11-38-14.png)

![screenshot of two column charts](images/2018-04-18_11-40-13.png)

### Creating reusable custom components

When you create reusable custom components, you create a more efficient interface as well as make your interface more readable.

When you create generic rules that wrap components, such as a custom `dollarField` component, you need a rule input for the `value` parameter and a different rule input for the `saveInto` parameter.

The rule input that maps to the `saveInto` parameter of the `a!textField()` function must be an array of type _Save_. This setup allows developers to use the `a!save()` function to modify the user input in the same way as if they were interacting with any other interface component.

**Tip:**  It is a best practice to call your rule inputs `value` and `saveInto`. Following this convention will help your fellow developers configure your component correctly.

For example, your `dollarField` rule definition might look like this:

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
  a!cardLayout(
    contents: a!textField(
    label: ri!label,
    instructions: ri!instructions,
    value: if(isnull(ri!value), "", a!currency(
      isoCode: "USD",
      value: ri!value)
  ),
  saveInto: a!save(ri!saveInto, todecimal(save!value)),
  readOnly: ri!readOnly,
  disabled: ri!disabled,
  validations: ri!validations
)
)
```

The user's input is passed to the `todecimal()` function and the result is saved into the designer-configured variable so that the designer only deals with decimal values. The value argument is formatted using the `a!currency()` function.

### Creating reusable interfaces for record fields

Like creating interfaces for custom reusable components, you can create reusable user interfaces (UI) for your record fields that define what the record field should look like when used in two different types of interfaces; read-only interfaces used for display and input interfaces used for capturing user data. These reusable record field interface typically only contain the one component for the record field and the configurations for that component.

For example, if you have a first name field in an employee record type, the reusable user interfaces for it might look like this:

**Reusable read-only interface**

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
a!richTextDisplayField(
  label: recordType!Employee.fields.firstName.properties.displayName,
  value: {
    a!defaultValue(
      ri!record[recordType!Employee.fields.firstName],
      "--"
    )
  }
)
```

![screenshot of the read-only version of the component for the record field in the reusable interface](images/read-only-rfm-ui.png)

**Reusable input interface**

```
1
2
3
4
5
6
7
8
a!textField(
  label: recordType!Employee.fields.firstName.properties.displayName,
  labelPosition: "ABOVE",
  showWhen: fn!true(),
  value: ri!record[recordType!Employee.fields.firstName],
  saveInto: ri!record[recordType!Employee.fields.firstName],
  align: "LEFT"
)
```

![screenshot of the input version of component for the record field in the reusable interface](images/input-rfm-ui.png)

You can [add or create reusable user interfaces for your record fields](configure-record-data-source.html#add-reusable-interfaces) directly from the record type. Then, you easily can call the reusable UIs into other interfaces using [record type field references](reference-records.html#reference-record-field-interfaces).

To learn more about record field UI best practices, see [Build Your Best Data Fabric](build-best-data-fabric.html#reusable-record-field-interfaces).

## Using interfaces with other objects

Interfaces can be used with other objects to reduce the amount of code in certain design objects. Interfaces can be used in records, reports, process models, or constants. You can also easily identify whether any errors are caused by your interface.

For example, interfaces can be used for the record summary view.

![screenshot of record view configurations](images/2018-04-18_15-41-19.png)

### Submitting user inputs to a process

When a form is used as a process start form, the components on the form can update process variables configured as parameters.

Attempting to save into a process variable that is not a parameter does not cause an error. However, if you find that your process variable is not updating as expected, verify that the **Parameter** checkbox is selected in the **Process Model Properties** dialog. Local variables cannot be used to update process variable values.

Similarly, when a form is used as a task form, the components on the form can update node inputs configured on the node. However, process variables cannot be updated from a task form and local variables cannot be used to update node input values.

**Note:**  Inline task approvals cannot be configured for forms.

Start form parameters are available to the form expression in the `pv!` domain. Task form inputs are available in the `ac!` domain. For example, a process parameter called "employee" is accessed via `pv!employee` and a task input with the same name would be accessed via `ac!employee`. These variables can then be passed as inputs to rules. They should not be accessed directly from within expression rules. As the user interacts with a form, they update these rule inputs, and when the user submits a form, the new values are submitted back to the process engine.

**Tip:**  The values that are submitted to the process engine are the values of the variables at the time of submission, not what is displayed in the interface. Learn more about [interface variables and inputs](enabling_user_interaction.html).

To walk through an example of how to map a variable to a component via a rule input, see also: [Process Model Tutorial](Process_Modeling_Tutorial.html)

When calling an interface, it is a best practice to pass values or variables to the inputs by keyword, as shown below.

```
1
2
3
4
5
rule!newPurchaseRequestForm(
  pr: pv!purchaseRequest,
  items: pv!prItems,
  cancel: pv!cancel
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...