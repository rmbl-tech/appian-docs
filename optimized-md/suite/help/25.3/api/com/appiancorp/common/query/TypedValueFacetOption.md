---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueFacetOption.html
original_path: api/com/appiancorp/common/query/TypedValueFacetOption.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueFacetOption

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

com.appiancorp.common.query.TypedValueFacetOption

All Implemented Interfaces:

`com.appiancorp.common.query.ReadOnlyFacetOption`

* * *

@GwtCompatible public final class TypedValueFacetOption extends [FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

This class holds the metadata for an individual option for a [`facet`](Facet.html "class in com.appiancorp.common.query"). The key piece of metadata of a facet option is the filters that should be applied when that facet is selected. For example:

-   a "Color" facet could have the option "Black" which specifies a single filter: `color = black`
-   a "Closing Date" facet could have the option "1st Quarter" which specifies the filters: `closingDate >= 2012-01-01` and `closingDate < 2012-04-01`

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.query.[FacetOption](FacetOption.html "class in com.appiancorp.common.query")

    `[COUNT_NOT_AVAILABLE](FacetOption.html#COUNT_NOT_AVAILABLE), [LOCAL_PART](FacetOption.html#LOCAL_PART), [QNAME](FacetOption.html#QNAME), [XML_ROOT_ELEMENT](FacetOption.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueFacetOption](#%3Cinit%3E\(java.lang.String,java.lang.String,java.util.List\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> filters)`

    Constructs a new facet option.

    `[TypedValueFacetOption](#%3Cinit%3E\(java.lang.String,java.lang.String,java.util.List,boolean,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> filters, boolean isApplied, int dataCount)`

    Constructs a new facet option.

    `[TypedValueFacetOption](#%3Cinit%3E\(java.lang.String,java.util.List,boolean,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> filters, boolean isApplied, int dataCount)`

    This is for creating a facet using design time data (a facet that does not yet have an ID since it has not been persisted).

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>>`

    `[getFilters](#getFilters\(\))()`

    `[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[getFiltersAsCriteria](#getFiltersAsCriteria\(\))()`

    `protected void`

    `[setFilters](#setFilters\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> filters)`

    Sets the list of filters to add to a query when this option is selected.

    ### Methods inherited from class com.appiancorp.common.query.[FacetOption](FacetOption.html "class in com.appiancorp.common.query")

    `[equalDataCheck](FacetOption.html#equalDataCheck\(\)), [equals](FacetOption.html#equals\(java.lang.Object\)), [getAppliedOptions](FacetOption.html#getAppliedOptions\(java.lang.Iterable\)), [getDataCount](FacetOption.html#getDataCount\(\)), [getFiltersReadOnly](FacetOption.html#getFiltersReadOnly\(\)), [getId](FacetOption.html#getId\(\)), [getName](FacetOption.html#getName\(\)), [hashCode](FacetOption.html#hashCode\(\)), [isApplied](FacetOption.html#isApplied\(\)), [isAppliedPredicate](FacetOption.html#isAppliedPredicate\(\)), [setApplied](FacetOption.html#setApplied\(boolean\)), [setDataCount](FacetOption.html#setDataCount\(int\)), [toString](FacetOption.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypedValueFacetOption

        public TypedValueFacetOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> filters)

        Constructs a new facet option. The [`isApplied`](FacetOption.html#isApplied\(\)) property is set to `false`, and the [`dataCount`](FacetOption.html#getDataCount\(\)) property is set to [`FacetOption.COUNT_NOT_AVAILABLE`](FacetOption.html#COUNT_NOT_AVAILABLE).

        Parameters:

        `id` - the id of this option

        `name` - the name of this option

        `filters` - the list of filters to add to a query when this option is selected

    -   ### TypedValueFacetOption

        public TypedValueFacetOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> filters, boolean isApplied, int dataCount)

        Constructs a new facet option.

        Parameters:

        `id` - the id of this option

        `name` - the name of this option

        `filters` - the list of filters to add to a query when this option is selected

        `isApplied` - whether this option is selected or not

        `dataCount` - the number of objects whose data matches the filters of this option

    -   ### TypedValueFacetOption

        public TypedValueFacetOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> filters, boolean isApplied, int dataCount)

        This is for creating a facet using design time data (a facet that does not yet have an ID since it has not been persisted). This is necessary to show designers the performance of their record types using changes they have not yet saved.

        Parameters:

        `name` - the name of this option

        `filters` - the list of filters to add to a query when this option is selected

        `isApplied` - whether this option is selected or not

        `dataCount` - the number of objects whose data matches the filters of this option

-   ## Method Details

    -   ### getFilters

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> getFilters()

        Specified by:

        `[getFilters](FacetOption.html#getFilters\(\))` in class `[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Returns:

        The list of filters to add to a query when this option is selected.

    -   ### setFilters

        protected void setFilters([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> filters)

        Description copied from class: `[FacetOption](FacetOption.html#setFilters\(java.util.List\))`

        Sets the list of filters to add to a query when this option is selected.

        Specified by:

        `[setFilters](FacetOption.html#setFilters\(java.util.List\))` in class `[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Parameters:

        `filters` - the list of filters

    -   ### getFiltersAsCriteria

        public [Criteria](Criteria.html "interface in com.appiancorp.common.query") getFiltersAsCriteria()

        Specified by:

        `getFiltersAsCriteria` in interface `com.appiancorp.common.query.ReadOnlyFacetOption`

        Specified by:

        `[getFiltersAsCriteria](FacetOption.html#getFiltersAsCriteria\(\))` in class `[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Returns:

        This option's filters wrapped in a criteria if needed.