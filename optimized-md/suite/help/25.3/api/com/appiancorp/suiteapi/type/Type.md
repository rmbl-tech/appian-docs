---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/Type.html
original_path: api/com/appiancorp/suiteapi/type/Type.html
version: "25.3"
title: "Annotation Interface Type"
page_id: "api/com/appiancorp/suiteapi/type/Type"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type](package-summary.html)

# Annotation Interface Type

* * *

[@Inherited](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Inherited.html "class or interface in java.lang.annotation") [@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation"),[ANNOTATION\_TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#ANNOTATION_TYPE "class or interface in java.lang.annotation"),[TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation"),[PARAMETER](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#PARAMETER "class or interface in java.lang.annotation")}) public @interface Type

The Type annotation enables one to indicate that the annotated method or parameter is dealing with the specified type. The name and namespace of the type are given as the attributes of the annotation.

The Type annotation can be used with custom smart services and custom functions to indicate the type of the parameters and return values. In most cases, primitive types will be automatically converted to their Appian type equivalent, but in the cases of Appian objects (like Community) a type annotation should be used. Type annotations have been pre-defined for the standard Appian objects (see the See Also list below).

The Type annotation can also be used to indicate that a type is a custom data type:

`@Type(namespace="http://example.org", name="MyCustomType")`
`public void setMyValue(TypedValue v);`

The Type annotation can be used to annotate custom pre-defined data type annotations like the ones provided for Appian types. For example:

`@Inherited`
`@Documented`
`@Retention(RetentionPolicy.RUNTIME)`
`@Target(ElementType.METHOD)`
`@Type(namespace="http://example.org", name="MyCustomType")`
`public @interface MyCustomDataType`

See Also:

-   [`CommunityDataType`](../knowledge/CommunityDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")
-   [`DiscussionMessageDataType`](../forums/DiscussionMessageDataType.html "annotation interface in com.appiancorp.suiteapi.forums")
-   [`DiscussionThreadDataType`](../forums/DiscussionThreadDataType.html "annotation interface in com.appiancorp.suiteapi.forums")
-   [`DocumentDataType`](../knowledge/DocumentDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")
-   [`DocumentOrFolderDataType`](../knowledge/DocumentOrFolderDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")
-   [`EmailAddressDataType`](../personalization/EmailAddressDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")
-   [`EmailRecipientDataType`](../personalization/EmailRecipientDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")
-   [`FolderDataType`](../knowledge/FolderDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")
-   [`ForumDataType`](../forums/ForumDataType.html "annotation interface in com.appiancorp.suiteapi.forums")
-   [`GroupDataType`](../personalization/GroupDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")
-   [`KnowledgeCenterDataType`](../knowledge/KnowledgeCenterDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge")
-   [`PageDataType`](../portal/PageDataType.html "annotation interface in com.appiancorp.suiteapi.portal")
-   [`UserDataType`](../personalization/UserDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")
-   [`UserOrGroupDataType`](../personalization/UserOrGroupDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")
-   [`PasswordDataType`](../personalization/PasswordDataType.html "annotation interface in com.appiancorp.suiteapi.personalization")
-   [`ConstantDataType`](../rules/ConstantDataType.html "annotation interface in com.appiancorp.suiteapi.rules")
-   [`RuleDataType`](../rules/RuleDataType.html "annotation interface in com.appiancorp.suiteapi.rules")
-   [`EncryptedTextDataType`](../encryption/EncryptedTextDataType.html "annotation interface in com.appiancorp.suiteapi.encryption")

-   ## Required Element Summary

    Required Elements

    Modifier and Type

    Required Element

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[name](#name\(\))`

    The name attribute is used to indicate the local part (name) of the type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[namespace](#namespace\(\))`

    The namespace attribute is used to indicate the namespace of the type.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[APPIAN_NAMESPACE](#APPIAN_NAMESPACE)`

-   ## Field Details

    -   ### APPIAN\_NAMESPACE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") APPIAN\_NAMESPACE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.Type.APPIAN_NAMESPACE)

-   ## Element Details

    -   ### name

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

        The name attribute is used to indicate the local part (name) of the type.

    -   ### namespace

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace

        The namespace attribute is used to indicate the namespace of the type.