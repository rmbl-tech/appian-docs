---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/Rule.html
original_path: api/com/appiancorp/suiteapi/process/events/Rule.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class Rule

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.events.Rule

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Rule extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Represents a single condition in the set of conditions on an event trigger. Not to be confused with a content rule, which is a stored expression usable within other expressions throughout the application. An event trigger condition (rule) must evaluate to a boolean.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.Rule)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[COMPLEX_RULE](#COMPLEX_RULE)`

    Type code for a complex rule (can be any expression).

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[SIMPLE_RULE](#SIMPLE_RULE)`

    Type code for a simple rule (consists of left operand, operator, and right operand).

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Rule](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExpression](#getExpression\(\))()`

    Gets the expression, which should evaluate to a boolean.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLeftOperand](#getLeftOperand\(\))()`

    Gets the left operand in a simple rule.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOperator](#getOperator\(\))()`

    Gets the operator in a simple rule.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRightOperand](#getRightOperand\(\))()`

    Gets the right operand in a simple rule.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Gets the type of the rule (either [`SIMPLE_RULE`](#SIMPLE_RULE) or [`COMPLEX_RULE`](#COMPLEX_RULE)).

    `void`

    `[setExpression](#setExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_)`

    Sets the expression, which should evaluate to a boolean.

    `void`

    `[setLeftOperand](#setLeftOperand\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") leftOperand_)`

    Sets the left operand in a simple rule.

    `void`

    `[setOperator](#setOperator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operator_)`

    Sets the operator in a simple rule.

    `void`

    `[setRightOperand](#setRightOperand\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rightOperand_)`

    Sets the right operand in a simple rule.

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Sets the type of the rule (either [`SIMPLE_RULE`](#SIMPLE_RULE) or [`COMPLEX_RULE`](#COMPLEX_RULE)).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SIMPLE\_RULE

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") SIMPLE\_RULE

        Type code for a simple rule (consists of left operand, operator, and right operand). This displays in the modeler as two text fields and a dropdown in the middle for the operand. This is called a "Condition" in the modeler (e.g., the button to add this says "Add Condition").

    -   ### COMPLEX\_RULE

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") COMPLEX\_RULE

        Type code for a complex rule (can be any expression). This displays in the modeler as a single text field.

-   ## Constructor Details

    -   ### Rule

        public Rule()

-   ## Method Details

    -   ### getExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExpression()

        Gets the expression, which should evaluate to a boolean. Only applicable if [`getType()`](#getType\(\)) returns [`COMPLEX_RULE`](#COMPLEX_RULE). Otherwise, this will return `null`.

        Returns:

        the expression

        See Also:

        -   [`setExpression(String)`](#setExpression\(java.lang.String\))

    -   ### setExpression

        public void setExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_)

        Sets the expression, which should evaluate to a boolean. Only applicable if [`getType()`](#getType\(\)) returns [`COMPLEX_RULE`](#COMPLEX_RULE).

        Parameters:

        `expression_` - the expression

        See Also:

        -   [`getExpression()`](#getExpression\(\))

    -   ### getLeftOperand

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLeftOperand()

        Gets the left operand in a simple rule. Only applicable if [`getType()`](#getType\(\)) returns [`SIMPLE_RULE`](#SIMPLE_RULE). Otherwise, this will return `null`.

        Returns:

        the left operand

        See Also:

        -   [`setLeftOperand(String)`](#setLeftOperand\(java.lang.String\))

    -   ### setLeftOperand

        public void setLeftOperand([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") leftOperand\_)

        Sets the left operand in a simple rule. Only applicable if [`getType()`](#getType\(\)) returns [`SIMPLE_RULE`](#SIMPLE_RULE).

        Parameters:

        `leftOperand_` - the left operand

        See Also:

        -   [`getLeftOperand()`](#getLeftOperand\(\))

    -   ### getOperator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOperator()

        Gets the operator in a simple rule. Only applicable if [`getType()`](#getType\(\)) returns [`SIMPLE_RULE`](#SIMPLE_RULE). Otherwise, this will return `null`.

        Returns:

        the left operand

        See Also:

        -   [`setOperator(String)`](#setOperator\(java.lang.String\))

    -   ### setOperator

        public void setOperator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operator\_)

        Sets the operator in a simple rule. Only applicable if [`getType()`](#getType\(\)) returns [`SIMPLE_RULE`](#SIMPLE_RULE).

        Parameters:

        `operator_` - the operator

        See Also:

        -   [`getOperator()`](#getOperator\(\))

    -   ### getRightOperand

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRightOperand()

        Gets the right operand in a simple rule. Only applicable if [`getType()`](#getType\(\)) returns [`SIMPLE_RULE`](#SIMPLE_RULE). Otherwise, this will return `null`.

        Returns:

        the right operand

        See Also:

        -   [`setRightOperand(String)`](#setRightOperand\(java.lang.String\))

    -   ### setRightOperand

        public void setRightOperand([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rightOperand\_)

        Sets the right operand in a simple rule. Only applicable if [`getType()`](#getType\(\)) returns [`SIMPLE_RULE`](#SIMPLE_RULE).

        Parameters:

        `rightOperand_` - the right operand

        See Also:

        -   [`getRightOperand()`](#getRightOperand\(\))

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Gets the type of the rule (either [`SIMPLE_RULE`](#SIMPLE_RULE) or [`COMPLEX_RULE`](#COMPLEX_RULE)).

        Returns:

        the type

        See Also:

        -   [`setType(Long)`](#setType\(java.lang.Long\))

    -   ### setType

        public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Sets the type of the rule (either [`SIMPLE_RULE`](#SIMPLE_RULE) or [`COMPLEX_RULE`](#COMPLEX_RULE)).

        Parameters:

        `type_` - the type

        See Also:

        -   [`getType()`](#getType\(\))