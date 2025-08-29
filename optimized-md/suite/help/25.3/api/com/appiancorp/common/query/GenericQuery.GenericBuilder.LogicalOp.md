---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericQuery.GenericBuilder.LogicalOp.html
original_path: api/com/appiancorp/common/query/GenericQuery.GenericBuilder.LogicalOp.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericQuery.GenericBuilder.LogicalOp

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.GenericQuery.GenericBuilder.LogicalOp

Enclosing class:

[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

* * *

public static final class GenericQuery.GenericBuilder.LogicalOp extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

This class encapsulates the available logical operators which allows to build more complex filters.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LogicalOp](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[and](#and\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)`

    Returns the conjunction of the given criteria

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[and](#and\(com.appiancorp.common.query.Criteria%5B%5D\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")[] c)`

    Returns the conjunction of an array of criteria.

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[and](#and\(com.appiancorp.common.query.Criteria,com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)`

    Returns the conjunction of an array of criteria.

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[and](#and\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> c)`

    Returns the conjunction of a list of criteria.

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[not](#not\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c)`

    Returns the negation of a criteria.

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[operation](#operation\(com.appiancorp.common.query.LogicalOperator,com.appiancorp.common.query.Criteria...\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)`

    Creates a [`GenericLogicalExpression`](GenericLogicalExpression.html "class in com.appiancorp.common.query") with the given parameters

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[operation](#operation\(com.appiancorp.common.query.LogicalOperator,java.util.List\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    Creates a [`GenericLogicalExpression`](GenericLogicalExpression.html "class in com.appiancorp.common.query") with the given parameters

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[or](#or\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)`

    Returns the disjunction of an array of criteria.

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[or](#or\(com.appiancorp.common.query.Criteria%5B%5D\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")[] c)`

    Returns the disjunction of a list of criteria.

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[or](#or\(com.appiancorp.common.query.Criteria,com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)`

    Returns the disjunction of a list of criteria.

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[or](#or\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> c)`

    Returns the disjunction of a list of criteria.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### LogicalOp

        public LogicalOp()

-   ## Method Details

    -   ### operation

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> operation([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)

        Creates a [`GenericLogicalExpression`](GenericLogicalExpression.html "class in com.appiancorp.common.query") with the given parameters

        Parameters:

        `operator` - logical operation type represented by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query")

        `conditions` - array of [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance

    -   ### operation

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> operation([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

        Creates a [`GenericLogicalExpression`](GenericLogicalExpression.html "class in com.appiancorp.common.query") with the given parameters

        Parameters:

        `operator` - logical operation type represented by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query")

        `conditions` - list of conditions to apply the given logical operation

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)

        Returns the conjunction of the given criteria

        Parameters:

        `c1` - [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the conjunction of the given criteria

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)

        Returns the conjunction of an array of criteria.

        Parameters:

        `c1` - [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        `c` - array of [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the conjunction of the given criteria

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query")\[\] c)

        Returns the conjunction of an array of criteria.

        Parameters:

        `c` - array of [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the conjunction of the given criteria

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> and([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> c)

        Returns the conjunction of a list of criteria.

        Parameters:

        `c` - list of [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the conjunction of the given criteria

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)

        Returns the disjunction of an array of criteria.

        Parameters:

        `c1` - [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the disjunction of the given criteria

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)

        Returns the disjunction of a list of criteria.

        Parameters:

        `c1` - [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        `c` - list of [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the disjunction of the given criteria

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query")\[\] c)

        Returns the disjunction of a list of criteria.

        Parameters:

        `c1` - [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        `c` - list of [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the disjunction of the given criteria

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> or([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> c)

        Returns the disjunction of a list of criteria.

        Parameters:

        `c1` - [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        `c` - list of [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the disjunction of the given criteria

    -   ### not

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> not([Criteria](Criteria.html "interface in com.appiancorp.common.query") c)

        Returns the negation of a criteria.

        Parameters:

        `c` - [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>` instance representing the negation of the given criteria