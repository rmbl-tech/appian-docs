---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/DeepCloneable.html
original_path: api/com/appiancorp/suiteapi/common/DeepCloneable.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface DeepCloneable

All Superinterfaces:

`[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

All Known Subinterfaces:

`[Filter](../process/analytics2/Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`

All Known Implementing Classes:

`[ActivityClassParameter](../process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameterSchema](../process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityReturnVariable](../process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")`, `[AheadOfScheduleFilter](../process/analytics2/AheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[BaseFilter](../process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[BehindScheduleFilter](../process/analytics2/BehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[Column](../process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedAheadOfScheduleFilter](../process/analytics2/CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedBehindScheduleFilter](../process/analytics2/CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedFilter](../process/analytics2/CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[Contribution](../portal/Contribution.html "class in com.appiancorp.suiteapi.portal")`, `[DrillPath](../process/analytics2/DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[DueTodayFilter](../process/analytics2/DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[DynamicForm](../process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")`, `[FormElement](../process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")`, `[GenericTypedVariable](../process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[GroupMessageLink](../portal/portlets/groupmessage/GroupMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")`, `[LastNCompletedFilter](../process/analytics2/LastNCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[LastNDaysFilter](../process/analytics2/LastNDaysFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[LeaderMessageLink](../portal/portlets/leadermessage/LeaderMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")`, `[Link](../portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")`, `[LinkType](../portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")`, `[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")`, `[Mapping](../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")`, `[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")`, `[NotYetCompletedFilter](../process/analytics2/NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[Option](../process/forms/Option.html "class in com.appiancorp.suiteapi.process.forms")`, `[OutsideNStandardDeviationsFilter](../process/analytics2/OutsideNStandardDeviationsFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[ProcessVariable](../process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariableInstance](../process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`, `[QuickFilter](../process/analytics2/QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[QuickFilterItem](../process/analytics2/QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[RunningFilter](../process/analytics2/RunningFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[SimpleColumnFilter](../process/analytics2/SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[Threshold](../process/analytics2/Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`, `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

* * *

public interface DeepCloneable extends [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

This marker interface identifiers a class that supports the clone method with deep copy semantics, rather than shallow copy semantics. This marker indicates that the clone MUST return an instance of the same class as the object being cloned.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object using deep-copy semantics.

-   ## Method Details

    -   ### clone

        [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object using deep-copy semantics.

        Returns: