---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/JSONCacheable.html
original_path: api/com/appiancorp/suiteapi/common/JSONCacheable.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface JSONCacheable

All Superinterfaces:

`[JSONable](JSONable.html "interface in com.appiancorp.suiteapi.common")`

All Known Implementing Classes:

`[AbstractProcessModel](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")`, `[AbstractProcessNode](../process/AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClass](../process/ActivityClass.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameter](../process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameterSchema](../process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassSchema](../process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityReturnVariable](../process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")`, `[AnnotationArtifact](../process/gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")`, `[AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process")`, `[Assignment](../process/Assignment.html "class in com.appiancorp.suiteapi.process")`, `[Assignment.Assignee](../process/Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")`, `[Connection](../process/Connection.html "class in com.appiancorp.suiteapi.process")`, `[Deadline](../process/Deadline.html "class in com.appiancorp.suiteapi.process")`, `[DynamicForm](../process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")`, `[Event](../process/events/Event.html "class in com.appiancorp.suiteapi.process.events")`, `[EventProducer](../process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[EventTrigger](../process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[FormConfigMap](../process/forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms")`, `[FormElement](../process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")`, `[GenericTypedVariable](../process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[Label](../process/gui/Label.html "class in com.appiancorp.suiteapi.process.gui")`, `[Mapping](../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")`, `[MessageEventProducer](../process/events/MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[MessageEventTrigger](../process/events/MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[MultipleInstance](../process/MultipleInstance.html "class in com.appiancorp.suiteapi.process")`, `[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")`, `[NavigationButton](../portal/NavigationButton.html "class in com.appiancorp.suiteapi.portal")`, `[ProcessDiagram](../process/ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModel](../process/ProcessModel.html "class in com.appiancorp.suiteapi.process")`, `[ProcessNode](../process/ProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariable](../process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariableInstance](../process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`, `[QuickFilterItem](../process/analytics2/QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[ReportData](../process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[RuleEventTrigger](../process/events/RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[RuntimeProcessNode](../process/RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[TerminateEventProducer](../process/events/TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[TimerEventTrigger](../process/events/TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`, `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[UiExpressionForm](../process/forms/UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms")`

* * *

public interface JSONCacheable extends [JSONable](JSONable.html "interface in com.appiancorp.suiteapi.common")

This marker interface indicates that a JSONable class always returns the same hidden attributes and thus its JSON marshaling information may be cached rather than recalculated each time. Implementing this interface is optional, but it will speed up performance of marshaling of classes. Thus, implement this class if your class is JSONable, your hidden attributes are static (i.e. always the same) and you want to take advantage of the caching mechanism for serialization.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Method Summary

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[JSONable](JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[getHiddenAttributes](JSONable.html#getHiddenAttributes\(\))`