---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/JSONable.html
original_path: api/com/appiancorp/suiteapi/common/JSONable.html
version: "25.3"
title: "Interface JSONable"
page_id: "api/com/appiancorp/suiteapi/common/JSONable"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface JSONable

All Known Subinterfaces:

`[JSONCacheable](JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`

All Known Implementing Classes:

`[AbstractProcessModel](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")`, `[AbstractProcessNode](../process/AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClass](../process/ActivityClass.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameter](../process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameterSchema](../process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassSchema](../process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityReturnVariable](../process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")`, `[AnnotationArtifact](../process/gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")`, `[AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process")`, `[Assignment](../process/Assignment.html "class in com.appiancorp.suiteapi.process")`, `[Assignment.Assignee](../process/Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")`, `[Connection](../process/Connection.html "class in com.appiancorp.suiteapi.process")`, `[Deadline](../process/Deadline.html "class in com.appiancorp.suiteapi.process")`, `[DynamicForm](../process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")`, `[Event](../process/events/Event.html "class in com.appiancorp.suiteapi.process.events")`, `[EventProducer](../process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[EventTrigger](../process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[FormConfigMap](../process/forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms")`, `[FormElement](../process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")`, `[GenericTypedVariable](../process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[Label](../process/gui/Label.html "class in com.appiancorp.suiteapi.process.gui")`, `[Mapping](../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")`, `[MessageEventProducer](../process/events/MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[MessageEventTrigger](../process/events/MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[MultipleInstance](../process/MultipleInstance.html "class in com.appiancorp.suiteapi.process")`, `[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")`, `[NavigationButton](../portal/NavigationButton.html "class in com.appiancorp.suiteapi.portal")`, `[ProcessDiagram](../process/ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModel](../process/ProcessModel.html "class in com.appiancorp.suiteapi.process")`, `[ProcessNode](../process/ProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariable](../process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariableInstance](../process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`, `[QuickFilterItem](../process/analytics2/QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[ReportData](../process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[RuleEventTrigger](../process/events/RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[RuntimeProcessNode](../process/RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[TerminateEventProducer](../process/events/TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[TimerEventTrigger](../process/events/TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`, `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[UiExpressionForm](../process/forms/UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms")`

* * *

public interface JSONable

Represents an object that can be converted to JSON format so that an equivalent JavaScript object can be created on the client machine. This type of object can be returned from a [JSON-RPC-Java](http://oss.metaparadigm.com/jsonrpc/) call, or output on a JSP using the asi:toJson tag. [JSON](http://www.json.org/) is a text representation of a JavaScript object that can be evaluated in JavaScript using the eval function. For instance, eval({a:'abc',b:5}) will return a JavaScript object with two properties/attributes, a and b, with values of 'abc' and 5 respectively.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[hiddenAttributes$TRANSIENT](#hiddenAttributes$TRANSIENT)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

-   ## Field Details

    -   ### hiddenAttributes$TRANSIENT

        static final boolean hiddenAttributes$TRANSIENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.JSONable.hiddenAttributes$TRANSIENT)

-   ## Method Details

    -   ### getHiddenAttributes

        [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Returns:

        the set of hidden attributes