---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/Input.html
original_path: api/com/appiancorp/suiteapi/process/framework/Input.html
version: "25.3"
title: "Annotation Interface Input"
page_id: "api/com/appiancorp/suiteapi/process/framework/Input"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Annotation Interface Input

* * *

[@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")([METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation")) public @interface Input

The @Input annotation is an optional annotation for smart service setter methods that allows for additional input behaviors to be described.

-   ## Optional Element Summary

    Optional Elements

    Modifier and Type

    Optional Element

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[customDisplayReference](#customDisplayReference\(\))`

    If a picker for an input other than the type that is typically used for the input type is required, the customDisplayReference attribute can be used to refer to the name of the picker that should be used instead.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[defaultValue](#defaultValue\(\))`

    The String representation of the default value of the input.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[enumeration](#enumeration\(\))`

    If the input should be based on an enumeration, pass the name of the enumeration to this attribute.

    `boolean`

    `[hiddenFromDesigner](#hiddenFromDesigner\(\))`

    Determines whether the input will show up in the Data tab of the node in the process modeler.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[localId](#localId\(\))`

    The localId attribute is used for converting pre-existing smart services to the annotated smart service plug-ins.

    `[Required](Required.html "enum class in com.appiancorp.suiteapi.process.framework")`

    `[required](#required\(\))`

    Whether or not the input is required.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[NOT_DEFINED](#NOT_DEFINED)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[NULL](#NULL)`

-   ## Field Details

    -   ### NULL

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") NULL

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.framework.Input.NULL)

    -   ### NOT\_DEFINED

        static final int NOT\_DEFINED

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.framework.Input.NOT_DEFINED)

-   ## Element Details

    -   ### defaultValue

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] defaultValue

        The String representation of the default value of the input. For multiple value inputs give the default value as an array of strings. For example, for a multiple Boolean:
        {@code @Input(defaultValue={"false","true","true"})

        Default:

        {"##default"}

    -   ### required

        [Required](Required.html "enum class in com.appiancorp.suiteapi.process.framework") required

        Whether or not the input is required. Use an item from the [`Required`](Required.html "enum class in com.appiancorp.suiteapi.process.framework") enumeration as the value. The default is for the input to be required.

        Default:

        ALWAYS

    -   ### enumeration

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") enumeration

        If the input should be based on an enumeration, pass the name of the enumeration to this attribute. The enumeration must be one of the provided enumerations in `WEB-INF/conf/process/enumeration-config-process.xml` or a custom enumeration provided in `WEB-INF/conf/process/enumeration-config-<custom>.xml` or provided in a plug-in.

        Default:

        "##default"

    -   ### localId

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId

        The localId attribute is used for converting pre-existing smart services to the annotated smart service plug-ins. It should be used when the target system already has models that use the existing smart service that is being replaced by the new plug-in. The value of the `activity-class-parameter-schema` local-id should be passed to this attribute. Using this attribute is not required and not recommended for new smart service plug-ins.

        Default:

        ""

    -   ### hiddenFromDesigner

        boolean hiddenFromDesigner

        Determines whether the input will show up in the Data tab of the node in the process modeler. If set to true, the input should be given a default value.

        Default:

        false

    -   ### customDisplayReference

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customDisplayReference

        If a picker for an input other than the type that is typically used for the input type is required, the customDisplayReference attribute can be used to refer to the name of the picker that should be used instead. For example, to limit the picker for an input of type Group to just show Departments:
        `@Input(customDisplayReference="departments")`

        If the input is of type String, the value of `"htmlarea"` can be passed to the attribute in order to change the standard text input to a rich text variation.

        Default:

        "##default"