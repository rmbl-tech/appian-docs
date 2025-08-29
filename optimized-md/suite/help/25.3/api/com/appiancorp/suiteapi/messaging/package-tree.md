---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/package-tree.html
original_path: api/com/appiancorp/suiteapi/messaging/package-tree.html
version: "25.3"
---

# Hierarchy For Package com.appiancorp.suiteapi.messaging

Package Hierarchies:

-   [All Packages](../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.common.config.AbstractConfiguration
        -   com.appiancorp.suiteapi.messaging.[JmsConfiguration](JmsConfiguration.html "class in com.appiancorp.suiteapi.messaging")
    -   com.appiancorp.kougar.mapper.returns.AbstractReturnConverter (implements com.appiancorp.kougar.mapper.returns.ReturnConverter)
        -   com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](../common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
            -   com.appiancorp.suiteapi.process.[TvReturnConverter](../process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
                -   com.appiancorp.suiteapi.messaging.[MappingReturnConverter](MappingReturnConverter.html "class in com.appiancorp.suiteapi.messaging") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
    -   com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.suiteapi.common.[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.messaging.[MessageType](MessageType.html "class in com.appiancorp.suiteapi.messaging")
    -   com.appiancorp.suiteapi.messaging.[InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")
        -   com.appiancorp.suiteapi.messaging.[InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")
    -   com.appiancorp.suiteapi.messaging.[JmsTopic](JmsTopic.html "class in com.appiancorp.suiteapi.messaging")
    -   com.appiancorp.suiteapi.messaging.[MessagePropertySchema](MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging") (implements com.appiancorp.suiteapi.process.[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process"))
    -   com.appiancorp.suiteapi.messaging.[MessagingProperties](MessagingProperties.html "class in com.appiancorp.suiteapi.messaging")
    -   java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   java.lang.[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")
            -   com.appiancorp.suiteapi.common.exceptions.[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")
                -   com.appiancorp.exceptions.[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")
                    -   com.appiancorp.suiteapi.messaging.[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")
    -   com.appiancorp.suiteapi.type.[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") (implements com.appiancorp.suiteapi.common.[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.type.HasTypeRef, com.appiancorp.suiteapi.common.[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.core.expr.portable.PortableTypedValue, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.type.[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") (implements com.appiancorp.type.NamedType, com.appiancorp.core.expr.portable.PortableNamedTypedValue)
            -   com.appiancorp.suiteapi.process.[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") (implements com.appiancorp.suiteapi.process.[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), com.appiancorp.suiteapi.common.[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), com.appiancorp.suiteapi.process.[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process"), com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"))
                -   com.appiancorp.suiteapi.messaging.[Mapping](Mapping.html "class in com.appiancorp.suiteapi.messaging") (implements com.appiancorp.suiteapi.process.[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), com.appiancorp.suiteapi.common.[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.type.ExpressionableNamedTypedValue, com.appiancorp.suiteapi.process.[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process"))

## Interface Hierarchy

-   com.appiancorp.suiteapi.messaging.[JmsConnectionFactory](JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")
-   com.appiancorp.services.[Service](../../services/Service.html "interface in com.appiancorp.services")
    -   com.appiancorp.services.ContextSensitiveService
        -   com.appiancorp.suiteapi.messaging.[MessagePublisherService](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging")