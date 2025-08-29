---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/package-tree.html
original_path: api/com/appiancorp/suiteapi/type/package-tree.html
version: "25.3"
title: "Hierarchy For Package com.appiancorp.suiteapi.type"
page_id: "api/com/appiancorp/suiteapi/type/package-tree"
section: "Class Hierarchy"
tags: ["appian","docs","v25.3"]
---


# Hierarchy For Package com.appiancorp.suiteapi.type

Package Hierarchies:

-   [All Packages](../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   java.util.[AbstractMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.html "class or interface in java.util")<K,V> (implements java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<K,V>)
        -   java.util.[HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")<K,V> (implements java.lang.[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<K,V>, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
            -   com.appiancorp.suiteapi.type.[TypeResource](TypeResource.html "class in com.appiancorp.suiteapi.type")
    -   com.appiancorp.suiteapi.type.[DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type") (implements com.appiancorp.suiteapi.type.[AppianType](AppianType.html "interface in com.appiancorp.suiteapi.type"), com.appiancorp.cache.CoupledValue, com.appiancorp.type.DataTypeProperties, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.type.[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") (implements com.appiancorp.cache.CoupledValue, com.appiancorp.type.DataType)
    -   com.appiancorp.suiteapi.type.[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") (implements com.appiancorp.suiteapi.common.[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.type.HasTypeRef, com.appiancorp.suiteapi.common.[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.core.expr.portable.PortableTypedValue, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.type.[NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type") (implements com.appiancorp.type.NamedType, com.appiancorp.core.expr.portable.PortableNamedTypedValue)

## Interface Hierarchy

-   com.appiancorp.suiteapi.type.[AppianType](AppianType.html "interface in com.appiancorp.suiteapi.type")
-   com.appiancorp.type.DataTypeProvider
    -   com.appiancorp.type.ExtendedDataTypeProvider
        -   com.appiancorp.suiteapi.type.[TypeService](TypeService.html "interface in com.appiancorp.suiteapi.type") (also extends com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services"))
-   com.appiancorp.services.[Service](../../services/Service.html "interface in com.appiancorp.services")
    -   com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")
        -   com.appiancorp.suiteapi.type.[TypeService](TypeService.html "interface in com.appiancorp.suiteapi.type") (also extends com.appiancorp.type.ExtendedDataTypeProvider)

## Annotation Interface Hierarchy

-   com.appiancorp.suiteapi.type.[Hidden](Hidden.html "annotation interface in com.appiancorp.suiteapi.type") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))
-   com.appiancorp.suiteapi.type.[Type](Type.html "annotation interface in com.appiancorp.suiteapi.type") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))