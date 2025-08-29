---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/XMLable.html
original_path: api/com/appiancorp/suiteapi/common/XMLable.html
version: "25.3"
title: "Interface XMLable"
page_id: "api/com/appiancorp/suiteapi/common/XMLable"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface XMLable

All Known Implementing Classes:

`[AbstractSchedule](../process/AbstractSchedule.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClass](../process/ActivityClass.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameter](../process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameterSchema](../process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassSchema](../process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityReturnVariable](../process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")`, `[AdminConsoleRoleMap](../administration/AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration")`, `[AEVRoleMap](AEVRoleMap.html "class in com.appiancorp.suiteapi.common")`, `[AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process")`, `[Assignment](../process/Assignment.html "class in com.appiancorp.suiteapi.process")`, `[Attachment](../process/Attachment.html "class in com.appiancorp.suiteapi.process")`, `[CollaborationRoleMap](../collaboration/CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")`, `[Connection](../process/Connection.html "class in com.appiancorp.suiteapi.process")`, `[ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content")`, `[DynamicForm](../process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")`, `[FormConfig](../process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`, `[FormElement](../process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")`, `[FormElementBinding](../process/forms/FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")`, `[ForumsRoleMap](../forums/ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")`, `[GenericTypedVariable](../process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[Instances](../process/Instances.html "class in com.appiancorp.suiteapi.process")`, `[InternalForm](../process/forms/InternalForm.html "class in com.appiancorp.suiteapi.process.forms")`, `[Interval](../process/Interval.html "class in com.appiancorp.suiteapi.process")`, `[JSPForm](../process/forms/JSPForm.html "class in com.appiancorp.suiteapi.process.forms")`, `[Mapping](../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")`, `[Note](../process/Note.html "class in com.appiancorp.suiteapi.process")`, `[Option](../process/forms/Option.html "class in com.appiancorp.suiteapi.process.forms")`, `[PageRoleMap](../portal/PageRoleMap.html "class in com.appiancorp.suiteapi.portal")`, `[Palette](../process/Palette.html "class in com.appiancorp.suiteapi.process")`, `[PaletteCategory](../process/PaletteCategory.html "class in com.appiancorp.suiteapi.process")`, `[PaletteItem](../process/PaletteItem.html "class in com.appiancorp.suiteapi.process")`, `[PortalRoleMap](../portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")`, `[Priority](../process/Priority.html "class in com.appiancorp.suiteapi.process")`, `[ProcessApplicationRoleMap](../process/ProcessApplicationRoleMap.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelDetails](../process/ProcessModelDetails.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelSummary](../process/ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")`, `[ProcessRoleMap](../process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariable](../process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariableInstance](../process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`, `[PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")`, `[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")`, `[Schedule](../process/Schedule.html "class in com.appiancorp.suiteapi.process")`, `[ScheduleInstance](../process/ScheduleInstance.html "class in com.appiancorp.suiteapi.process")`, `[Spawning](../process/Spawning.html "class in com.appiancorp.suiteapi.process")`, `[ThreadRoleMap](../forums/ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums")`, `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

* * *

public interface XMLable

Implementing classes can be represented in XML.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[DEFAULT_BUFFER_SIZE](#DEFAULT_BUFFER_SIZE)`

    Deprecated.

    use the default StringBuilder constructor or one adjusted directly to the known size

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDefault Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `default void`

    `[toXML](#toXML\(java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    `default void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

-   ## Field Details

    -   ### DEFAULT\_BUFFER\_SIZE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int DEFAULT\_BUFFER\_SIZE

        Deprecated.

        use the default StringBuilder constructor or one adjusted directly to the known size

        A size to use if you are creating the buffer that will be passed to some XMLables' toXML( StringBuffer ) ot toXML( StringBuilder ) methods.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.XMLable.DEFAULT_BUFFER_SIZE)

-   ## Method Details

    -   ### toXML

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Returns:

        The XML representation of this object.

    -   ### toXML

        default void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer)

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Parameters:

        `buffer` - The buffer on which to append the XML representation.

    -   ### toXML

        default void toXML([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer)

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Parameters:

        `buffer` - The buffer on which to append the XML representation.