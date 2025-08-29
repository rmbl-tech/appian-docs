---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/ExpressionService.html
original_path: api/com/appiancorp/suiteapi/expression/ExpressionService.html
version: "25.3"
title: "Interface ExpressionService"
page_id: "api/com/appiancorp/suiteapi/expression/ExpressionService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Interface ExpressionService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ExpressionService extends com.appiancorp.services.ContextSensitiveService

Defines service methods related to the use of expressions within the application.

Expressions are configured at design-time within the process application to perform execution-time calculations. For instance, it may be useful to append a timestamp to a process name when it is started - this can be accomplished using the following expression for the process display name at design time: "concatenate("MyProcessName\_", now())", where "now()" is a function which returns the current time, and "concatenate" is a function which appends a list of arguments.

Java will call [`prepareExpression(java.lang.String)`](#prepareExpression\(java.lang.String\)) or [`prepareModifyExpression(java.lang.String, java.lang.String, java.lang.String)`](#prepareModifyExpression\(java.lang.String,java.lang.String,java.lang.String\)) to register an expression to be evaluated with the expression engine. Java should then call [`evaluateExpression(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable[])`](#evaluateExpression\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D\)) or [`evaluateExpressionType(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable[], int)`](#evaluateExpressionType\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D,int\)) to attempt evaluation of the expression. If the expression engine encounters a sub-expression within the expression that it does not recognize, these methods will return a [`PartialResult`](PartialResult.html "class in com.appiancorp.suiteapi.expression") that specifies 1) the name of the function that could not be identified (via the `function` field) and 2) the parameters that were passed to the expression engine for the unidentified function (via the `functionParameters` field). This allows Java to specify and evaluate its own custom expressions, which are not known to the expression engine. After evaluation of the sub-expression (see `ExpressionEvaluationService`), the expression engine can continue evaluating the entire expression via a call to [`continueFunction(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable)`](#continueFunction\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable\)), passing as an argument the result which was evaluated in Java. Or, if evaluation of the sub-expression fails, Java can discontinue evaluation of the expression by calling [`cancelFunction(java.lang.Long, java.lang.String)`](#cancelFunction\(java.lang.Long,java.lang.String\)). If the expression engine recognizes all elements of the expression that is passed via [`evaluateExpression(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable[])`](#evaluateExpression\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D\)) or [`evaluateExpressionType(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable[], int)`](#evaluateExpressionType\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D,int\)), these methods will return a [`PartialResult`](PartialResult.html "class in com.appiancorp.suiteapi.expression") with the `result` field populated. This represents the result of the expression evaluation.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   `ExpressionEvaluationService`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[cancelFunction$UPDATES](#cancelFunction$UPDATES)`

    `static final boolean`

    `[continueFunction$UPDATES](#continueFunction$UPDATES)`

    `static final boolean`

    `[evaluateExpression$UPDATES](#evaluateExpression$UPDATES)`

    `static final boolean`

    `[evaluateExpressionType$UPDATES](#evaluateExpressionType$UPDATES)`

    `static final boolean`

    `[getDefaultFormat$UPDATES](#getDefaultFormat$UPDATES)`

    `static final boolean`

    `[getDisplayFormatForLocale$UPDATES](#getDisplayFormatForLocale$UPDATES)`

    `static final boolean`

    `[getDisplayFormatsForLocales$UPDATES](#getDisplayFormatsForLocales$UPDATES)`

    `static final boolean`

    `[prepareExpression$UPDATES](#prepareExpression$UPDATES)`

    `static final boolean`

    `[prepareModifyExpression$UPDATES](#prepareModifyExpression$UPDATES)`

    `static final boolean`

    `[setDefaultFormat$UPDATES](#setDefaultFormat$UPDATES)`

    `static final boolean`

    `[setDisplayFormatForLocale$UPDATES](#setDisplayFormatForLocale$UPDATES)`

    `static final boolean`

    `[setDisplayFormatsForLocales$UPDATES](#setDisplayFormatsForLocales$UPDATES)`

    `static final boolean`

    `[validateExpression$UPDATES](#validateExpression$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[cancelFunction](#cancelFunction\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") reason_)`

    Deprecated.

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    `void`

    `[continueFunction](#continueFunction\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId_, [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") result_)`

    Deprecated.

    see ProcessDesignService.evaluateExpression

    `[PartialResult](PartialResult.html "class in com.appiancorp.suiteapi.expression")`

    `[evaluateExpression](#evaluateExpression\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId_, [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")[] parameters_)`

    Deprecated.

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    `[PartialResult](PartialResult.html "class in com.appiancorp.suiteapi.expression")`

    `[evaluateExpressionType](#evaluateExpressionType\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId_, [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")[] parameters_, int resultType_)`

    Deprecated.

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefaultFormat](#getDefaultFormat\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Retrieves the default display format for a given format name.

    `[LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")`

    `[getDisplayFormatForLocale](#getDisplayFormatForLocale\(com.appiancorp.suiteapi.expression.LocaleDisplayFormat\))([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") ldf_)`

    Retrieves the display format information for the locale set in the `LocaleDisplayFormat` parameter object.

    `[LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")[]`

    `[getDisplayFormatsForLocales](#getDisplayFormatsForLocales\(com.appiancorp.suiteapi.expression.LocaleDisplayFormat%5B%5D\))([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")[] ldf_)`

    Receives an array of [`LocaleDisplayFormat`](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") objects that have only the locale field set for each object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[prepareExpression](#prepareExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") textToEvaluate_)`

    Deprecated.

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[prepareModifyExpression](#prepareModifyExpression\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") variable_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operator_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") textToEvaluate_)`

    Deprecated.

    see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

    `void`

    `[setDefaultFormat](#setDefaultFormat\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") format_)`

    Sets the default display format for a given format name.

    `void`

    `[setDisplayFormatForLocale](#setDisplayFormatForLocale\(com.appiancorp.suiteapi.expression.LocaleDisplayFormat\))([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") ldf_)`

    Sets a display format for the locale set in the `LocaleDisplayFormat` parameter object.

    `void`

    `[setDisplayFormatsForLocales](#setDisplayFormatsForLocales\(com.appiancorp.suiteapi.expression.LocaleDisplayFormat%5B%5D\))([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")[] ldf_)`

    Receives an array of `LocaleDisplayFormat` objects and sets a display format for the locale set in each of the `LocaleDisplayFormat` objects.

    `void`

    `[validateExpression](#validateExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") textToEvaluate_)`

    Validates the expression.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### prepareExpression$UPDATES

        static final boolean prepareExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.prepareExpression$UPDATES)

    -   ### prepareModifyExpression$UPDATES

        static final boolean prepareModifyExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.prepareModifyExpression$UPDATES)

    -   ### evaluateExpression$UPDATES

        static final boolean evaluateExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.evaluateExpression$UPDATES)

    -   ### evaluateExpressionType$UPDATES

        static final boolean evaluateExpressionType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.evaluateExpressionType$UPDATES)

    -   ### validateExpression$UPDATES

        static final boolean validateExpression$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.validateExpression$UPDATES)

    -   ### continueFunction$UPDATES

        static final boolean continueFunction$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.continueFunction$UPDATES)

    -   ### cancelFunction$UPDATES

        static final boolean cancelFunction$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.cancelFunction$UPDATES)

    -   ### getDefaultFormat$UPDATES

        static final boolean getDefaultFormat$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.getDefaultFormat$UPDATES)

    -   ### setDefaultFormat$UPDATES

        static final boolean setDefaultFormat$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.setDefaultFormat$UPDATES)

    -   ### getDisplayFormatForLocale$UPDATES

        static final boolean getDisplayFormatForLocale$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.getDisplayFormatForLocale$UPDATES)

    -   ### setDisplayFormatForLocale$UPDATES

        static final boolean setDisplayFormatForLocale$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.setDisplayFormatForLocale$UPDATES)

    -   ### getDisplayFormatsForLocales$UPDATES

        static final boolean getDisplayFormatsForLocales$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.getDisplayFormatsForLocales$UPDATES)

    -   ### setDisplayFormatsForLocales$UPDATES

        static final boolean setDisplayFormatsForLocales$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.expression.ExpressionService.setDisplayFormatsForLocales$UPDATES)

-   ## Method Details

    -   ### prepareExpression

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") prepareExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") textToEvaluate\_) throws [ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

        Constructs an expression and returns the ID of the expression constructed from the text argument. The expression can then be evaluated by [`evaluateExpression(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable[])`](#evaluateExpression\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D\)) or [`evaluateExpressionType(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable[], int)`](#evaluateExpressionType\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D,int\))

        Parameters:

        `textToEvaluate_` - the expression to be evaluated

        Returns:

        expression ID to be passed to the one of the evaluate methods

        Throws:

        `[ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression is invalid.

        `ServiceException` - if any system-level error occurs

    -   ### prepareModifyExpression

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") prepareModifyExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") variable\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operator\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") textToEvaluate\_) throws [ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

        Constructs an expression and returns the ID of the expression constructed from the String arguments. The method differs from [`prepareExpression(java.lang.String)`](#prepareExpression\(java.lang.String\)) in that the variable and operator are already separated from the rest of the expression. E.g. a:1+2, a is the assignment variable, : the assignment operator and a will be set to be 3. "a:1+2" would be the argument passed to [`prepareExpression(java.lang.String)`](#prepareExpression\(java.lang.String\)), but "a", ":", "1+2" would be the respective arguments to `prepareModifyExpression` Supported operators are:

        -   : Direct Modification
        -   +: Addition Modification
        -   \-: Subtraction Modification
        -   \*: Multiplication Modification
        -   /: Division Modification
        -   ^: Exponentiation Modification
        -   &: Concatenation Modification

        Parameters:

        `variable_` - the name of the variable that will be assigned.

        `operator_` - the assignment operator for the expression

        `textToEvaluate_` - the expression to be evaluated in String format.

        Returns:

        expression ID to be passed to the one of the evaluate methods

        Throws:

        `[ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression is invalid.

        `ServiceException` - if any system-level error occurss

    -   ### evaluateExpression

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PartialResult](PartialResult.html "class in com.appiancorp.suiteapi.expression") evaluateExpression([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId\_, [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] parameters\_) throws [ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

        Evaluates the expression with the given ID, and returns a final result or a function for Java to evaluate.

        This method must always be preceded by a call to [`prepareExpression(java.lang.String)`](#prepareExpression\(java.lang.String\)) or [`prepareModifyExpression(java.lang.String, java.lang.String, java.lang.String)`](#prepareModifyExpression\(java.lang.String,java.lang.String,java.lang.String\))

        NOTE: This function should be called first with `parameters_` as an empty array. If the `result` field of the returned [`PartialResult`](PartialResult.html "class in com.appiancorp.suiteapi.expression") is `null`, then this method should be called again with `parameters_` set to be the `functionParameters` field of the returned `PartialResult`.

        Parameters:

        `expressionId_` - the unique id of expression being evaluated

        `parameters_` - the array of parameters to the expression with the given ID

        Returns:

        a `PartialResult` that may contain a final result or a function for Java to evaluate

        Throws:

        `[ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression is invalid.

        `[InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression with the given ID does not exist

        `ServiceException` - if any system-level error occurs

    -   ### evaluateExpressionType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PartialResult](PartialResult.html "class in com.appiancorp.suiteapi.expression") evaluateExpressionType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId\_, [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] parameters\_, int resultType\_) throws [ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

        Evaluates the expression with the given ID, and returns a final result or a function for Java to evaluate.

        This method is the same as [`evaluateExpression(java.lang.Long, com.appiancorp.suiteapi.process.TypedVariable[])`](#evaluateExpression\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable%5B%5D\)) except the `result` (if any) within the [`PartialResult`](PartialResult.html "class in com.appiancorp.suiteapi.expression") returned will be cast to the given `resultType`.

        NOTE: This function should be called first with `parameters_` as an empty array. If the `result` field of the returned [`PartialResult`](PartialResult.html "class in com.appiancorp.suiteapi.expression") is `null`, then this method should be called again with `parameters_` set to be the `functionParameters` field of the returned `PartialResult`.

        Parameters:

        `expressionId_` - the unique id of expression being evaluated

        `parameters_` - the array of parameters to the expression with the given ID

        `resultType_` - the type for the returned `PartialResult`. This is one of the object types in [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

        Returns:

        a `PartialResult` of the given type that may contain a final result or a function for Java to evaluate

        Throws:

        `[ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression is invalid.

        `[InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression with the given ID does not exist

        `ServiceException` - if any system-level error occurs

    -   ### validateExpression

        void validateExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") textToEvaluate\_) throws [ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Validates the expression. If the expression is not valid, an exception will be thrown.

        Parameters:

        `textToEvaluate_` - the expression to validate

        Throws:

        `[ExpressionException](../common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression is invalid.

        `ServiceException` - if any system-level error occurs

    -   ### continueFunction

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void continueFunction([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId\_, [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") result\_) throws [InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        see ProcessDesignService.evaluateExpression

        Continue the evaluation of an expression.

        After Java successfully evaluates a sub-expression, it returns the result and calls `continueFunction` to carry on evaluation of the expression with the given ID.

        NOTE: This method should only be used from within the `ExpressionEvaluationService`

        Parameters:

        `expressionId_` - the unique ID of expression being evaluated

        `result_` - the result of the sub-expression that Java has evaluated

        Throws:

        `[InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression does not exist

        `ServiceException` - if any system-level error occurs

    -   ### cancelFunction

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void cancelFunction([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") reason\_) throws [InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

        Cancel the evaluation of an expression

        If Java evaluation of the sub-expression fails, it returns an appropriate message as the reason and calls `cancelFunction` to terminate the evaluation of the expression with the given ID.

        NOTE: This method should only be used from within the `ExpressionEvaluationService`

        Parameters:

        `expressionId_` - the unique ID of expression being evaluated

        `reason_` - the error that Java encountered while evaluating the expression

        Throws:

        `[InvalidExpressionException](../common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the expression does not exist

        `ServiceException` - if any system-level error occurs

    -   ### getDefaultFormat

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefaultFormat([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Retrieves the default display format for a given format name.

        Parameters:

        `name_` - A string identifying the type of display format, one of: "date", "time", or "timezone".

        Returns:

        Returns the display format for the given format name.

        Throws:

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")`

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

    -   ### setDefaultFormat

        void setDefaultFormat([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") format\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Sets the default display format for a given format name.

        Parameters:

        `name_` - A string identifying the type of display format, one of: "date", "time", or "timezone".

        `format_` - The display format to use for the given format name.

        Throws:

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")`

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

    -   ### getDisplayFormatForLocale

        [LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") getDisplayFormatForLocale([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") ldf\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Retrieves the display format information for the locale set in the `LocaleDisplayFormat` parameter object. Only the locale field should be set on the `ldf_` parameter. If a previously set LocaleDisplayFormat object exists with the specified locale, the object will be returned with all of the LocaleDisplayFormat object's fields set.

        Parameters:

        `ldf_` - A [`LocaleDisplayFormat`](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") object that has only the locale field set

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if LocaleDisplayFormat parameter is null

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")` - if the locale field for the parameter is invalid

    -   ### setDisplayFormatForLocale

        void setDisplayFormatForLocale([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") ldf\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Sets a display format for the locale set in the `LocaleDisplayFormat` parameter object. All fields of the `ldf_` parameter must be set and may not be null.

        Parameters:

        `ldf_` - A [`LocaleDisplayFormat`](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") object that has all fields set

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `LocaleDisplayFormat` parameter is null

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")` - if a parameter set in the `LocaleDisplayFormat` object is invalid

    -   ### getDisplayFormatsForLocales

        [LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")\[\] getDisplayFormatsForLocales([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")\[\] ldf\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Receives an array of [`LocaleDisplayFormat`](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") objects that have only the locale field set for each object. For each object in the array, the remaining fields are set if a previously set LocaleDisplayFormat object matches the locale set in the array object. An array of the same length is returned with all fields set instead of just the locale.

        Parameters:

        `ldf_` - An array of [`LocaleDisplayFormat`](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") objects that have only the locale field set

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if LocaleDisplayFormat array parameter is null

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")` - if the locale set in one of the `LocaleDisplayFormat` objects invalid

    -   ### setDisplayFormatsForLocales

        void setDisplayFormatsForLocales([LocaleDisplayFormat](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression")\[\] ldf\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Receives an array of `LocaleDisplayFormat` objects and sets a display format for the locale set in each of the `LocaleDisplayFormat` objects. All fields of each of the `LocaleDisplayFormat` objects in the `ldf_` parameter must be set and may not be null.

        Parameters:

        `ldf_` - An array of [`LocaleDisplayFormat`](LocaleDisplayFormat.html "class in com.appiancorp.suiteapi.expression") objects that have all fields set

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `LocaleDisplayFormat` array parameter is null

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")` - if a parameter set in one of the `LocaleDisplayFormat` objects is invalid