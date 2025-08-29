---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/FilterValidator.html
original_path: api/com/appiancorp/common/query/FilterValidator.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Interface FilterValidator

All Known Implementing Classes:

`[AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterContainmentValidation](TypedValueCriteriaValidatorProvider.FilterContainmentValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterEqualityValidation](TypedValueCriteriaValidatorProvider.FilterEqualityValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterInequalityValidation](TypedValueCriteriaValidatorProvider.FilterInequalityValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterNullnessValidation](TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterRangeValidation](TypedValueCriteriaValidatorProvider.FilterRangeValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterWildcardValidation](TypedValueCriteriaValidatorProvider.FilterWildcardValidation.html "class in com.appiancorp.common.query")`

* * *

public interface FilterValidator

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query")`

    `[getFilterOperatorCategory](#getFilterOperatorCategory\(\))()`

    `void`

    `[validate](#validate\(com.appiancorp.common.query.Filter,com.appiancorp.core.expr.portable.ReadOnlyType,java.lang.String\))([Filter](Filter.html "class in com.appiancorp.common.query")<? extends com.appiancorp.core.expr.portable.PortableTypedValue> criteria, com.appiancorp.core.expr.portable.ReadOnlyType fieldType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldDisplayName)`

-   ## Method Details

    -   ### validate

        void validate([Filter](Filter.html "class in com.appiancorp.common.query")<? extends com.appiancorp.core.expr.portable.PortableTypedValue> criteria, com.appiancorp.core.expr.portable.ReadOnlyType fieldType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldDisplayName)

    -   ### getFilterOperatorCategory

        [FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query") getFilterOperatorCategory()