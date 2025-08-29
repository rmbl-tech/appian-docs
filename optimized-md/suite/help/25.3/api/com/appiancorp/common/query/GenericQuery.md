---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericQuery.html
original_path: api/com/appiancorp/common/query/GenericQuery.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericQuery

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

com.appiancorp.common.query.GenericQuery

* * *

@GwtCompatible public final class GenericQuery extends [Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

A `Query` concrete class An instance can only be obtained by using the helper class [`GenericQuery.GenericBuilder`](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

See Also:

-   [`Query`](Query.html "class in com.appiancorp.common.query")

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static final class` 

    `[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")`

    A class for incrementally build a `GenericQuery`.

    ## Nested classes/interfaces inherited from class com.appiancorp.common.query.[Query](Query.html "class in com.appiancorp.common.query")

    `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.query.[Query](Query.html "class in com.appiancorp.common.query")

    `[LOCAL_PART](Query.html#LOCAL_PART), [QNAME](Query.html#QNAME), [XML_ROOT_ELEMENT](Query.html#XML_ROOT_ELEMENT)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[builder](#builder\(\))()`

    Obtain a new [`GenericQuery.GenericBuilder`](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query") to assist in the construction of a new [`Query`](Query.html "class in com.appiancorp.common.query") object.

    `static [Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[builder](#builder\(com.appiancorp.common.query.Query\))([Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> query)`

    Obtains a new [`GenericQuery.GenericBuilder`](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query") with default values based on the given [`Query`](Query.html "class in com.appiancorp.common.query") to assist in the construction of a new [`Query`](Query.html "class in com.appiancorp.common.query") object.

    `[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[getCriteria](#getCriteria\(\))()`

    Gets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    `protected void`

    `[setCriteria](#setCriteria\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)`

    Sets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    ### Methods inherited from class com.appiancorp.common.query.[Query](Query.html "class in com.appiancorp.common.query")

    `[equals](Query.html#equals\(java.lang.Object\)), [getColumnIgnoreCase](Query.html#getColumnIgnoreCase\(java.lang.String\)), [getPagingInfo](Query.html#getPagingInfo\(\)), [getProjection](Query.html#getProjection\(\)), [hashCode](Query.html#hashCode\(\)), [hasSearch](Query.html#hasSearch\(\)), [hasSort](Query.html#hasSort\(\)), [isGrouping](Query.html#isGrouping\(\)), [isProjection](Query.html#isProjection\(\)), [multilineToString](Query.html#multilineToString\(int\)), [toString](Query.html#toString\(\)), [toStringMultiline](Query.html#toStringMultiline\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### getCriteria

        public [Criteria](Criteria.html "interface in com.appiancorp.common.query") getCriteria()

        Description copied from class: `[Query](Query.html#getCriteria\(\))`

        Gets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Specified by:

        `[getCriteria](Query.html#getCriteria\(\))` in class `[Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Returns:

        the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    -   ### setCriteria

        protected void setCriteria([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)

        Description copied from class: `[Query](Query.html#setCriteria\(com.appiancorp.common.query.Criteria\))`

        Sets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Specified by:

        `[setCriteria](Query.html#setCriteria\(com.appiancorp.common.query.Criteria\))` in class `[Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Parameters:

        `criteria` - the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    -   ### builder

        public static [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> builder()

        Obtain a new [`GenericQuery.GenericBuilder`](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query") to assist in the construction of a new [`Query`](Query.html "class in com.appiancorp.common.query") object.

        Returns:

        a new builder with operations bound by [`QueryBuilder.Selecting`](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")

    -   ### builder

        public static [Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> builder([Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> query)

        Obtains a new [`GenericQuery.GenericBuilder`](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query") with default values based on the given [`Query`](Query.html "class in com.appiancorp.common.query") to assist in the construction of a new [`Query`](Query.html "class in com.appiancorp.common.query") object.

        Returns:

        a new builder