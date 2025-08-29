---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/package-tree.html
original_path: api/com/appiancorp/suiteapi/common/package-tree.html
version: "25.3"
---

# Hierarchy For Package com.appiancorp.suiteapi.common

Package Hierarchies:

-   [All Packages](../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.common.config.AbstractConfiguration
        -   com.appiancorp.suiteapi.common.[Configuration](Configuration.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.kougar.mapper.returns.AbstractReturnConverter (implements com.appiancorp.kougar.mapper.returns.ReturnConverter)
        -   com.appiancorp.suiteapi.common.[CredentialsReturnConverter](CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
        -   com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
        -   com.appiancorp.suiteapi.common.[PartialResultReturnConverter](PartialResultReturnConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
        -   com.appiancorp.suiteapi.common.[ResultPageReturnConverter](ResultPageReturnConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
    -   com.appiancorp.exceptions.[AppianErrorCode](../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.common.[ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[BulkArrayConverter](BulkArrayConverter.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[Credentials](Credentials.html "class in com.appiancorp.suiteapi.common") (implements com.appian.komodo.api.EngineCredentials, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[Identity](Identity.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.suiteapi.common.[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.common.[RoleSet](RoleSet.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common") (implements java.lang.[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[LocaleStringParameterConverter](LocaleStringParameterConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.parameters.ParameterConverter)
    -   com.appiancorp.suiteapi.common.[LocaleStringReturnConverter](LocaleStringReturnConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.returns.ReturnConverter)
    -   com.appiancorp.suiteapi.common.[LocalizedIdentity](LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common") (implements java.lang.[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<T>, com.appiancorp.suiteapi.common.[DeepCloneable](DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.suiteapi.common.[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.suiteapi.common.[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.core.expr.portable.PortableLocalObject, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")
        -   com.appiancorp.suiteapi.common.[ObjectTypeMapping](ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[Result](Result.html "class in com.appiancorp.suiteapi.common") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.common.[ResultList](ResultList.html "class in com.appiancorp.suiteapi.common")
        -   com.appiancorp.suiteapi.common.[ResultPage](ResultPage.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[Role](Role.html "class in com.appiancorp.suiteapi.common") (implements java.lang.[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<T>)
    -   com.appiancorp.suiteapi.common.[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") (implements java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<K,V>, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common"))
        -   com.appiancorp.suiteapi.common.[PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")
            -   com.appiancorp.suiteapi.common.[AEVRoleMap](AEVRoleMap.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[Security](Security.html "class in com.appiancorp.suiteapi.common") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[SecurityEntry](SecurityEntry.html "class in com.appiancorp.suiteapi.common") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[ServiceFactory](ServiceFactory.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[ServiceLocator](ServiceLocator.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.suiteapi.common.[ServiceName](ServiceName.html "interface in com.appiancorp.suiteapi.common"))
    -   com.appiancorp.suiteapi.common.[ServiceProvider](ServiceProvider.html "class in com.appiancorp.suiteapi.common")<T> (implements com.appiancorp.suiteapi.common.[Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<T>)
    -   com.appiancorp.suiteapi.common.[SimpleEngineCredentials](SimpleEngineCredentials.html "class in com.appiancorp.suiteapi.common") (implements com.appian.komodo.api.EngineCredentials)
    -   com.appiancorp.suiteapi.common.[SimpleValueMap](SimpleValueMap.html "class in com.appiancorp.suiteapi.common") (implements java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<K,V>, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[Suggestion](Suggestion.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[SuggestParam](SuggestParam.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[SuggestParam.SuggestFilter](SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")
    -   java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   java.lang.[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")
            -   java.lang.[RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")
                -   com.appiancorp.suiteapi.common.[ProvisionException](ProvisionException.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.common.[Tree](Tree.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[TreePivot](TreePivot.html "class in com.appiancorp.suiteapi.common") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.common.[TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.TypeConverter, com.appiancorp.kougar.mapper.parameters.TypeParameterConversion, com.appiancorp.kougar.mapper.returns.TypeReturnConversion)
    -   com.appiancorp.suiteapi.common.[TypedValueParameterConverter](TypedValueParameterConverter.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.kougar.mapper.parameters.ParameterConverter)
    -   com.appiancorp.type.TypeMappingResolver<M>
        -   com.appiancorp.suiteapi.common.[TypeConverterResolver](TypeConverterResolver.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[Utilities](Utilities.html "class in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[ValidationItem](ValidationItem.html "class in com.appiancorp.suiteapi.common")
    -   javax.xml.bind.annotation.adapters.XmlAdapter<ValueType,BoundType>
        -   com.appiancorp.suiteapi.common.[IntAsBooleanXmlAdapter](IntAsBooleanXmlAdapter.html "class in com.appiancorp.suiteapi.common")
        -   com.appiancorp.suiteapi.common.[LocaleStringXmlAdapter](LocaleStringXmlAdapter.html "class in com.appiancorp.suiteapi.common")

## Interface Hierarchy

-   java.lang.[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")
    -   com.appiancorp.suiteapi.common.[DeepCloneable](DeepCloneable.html "interface in com.appiancorp.suiteapi.common")
-   com.appiancorp.suiteapi.common.[Constants](Constants.html "interface in com.appiancorp.suiteapi.common")
-   com.appiancorp.suiteapi.common.[JSONable](JSONable.html "interface in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[JSONCacheable](JSONCacheable.html "interface in com.appiancorp.suiteapi.common")
-   com.appiancorp.suiteapi.common.[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[GlobalStringId](GlobalStringId.html "interface in com.appiancorp.suiteapi.common")
    -   com.appiancorp.suiteapi.common.[RemoteStringId](RemoteStringId.html "interface in com.appiancorp.suiteapi.common")
-   com.appiancorp.suiteapi.common.[Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<T>
-   com.appiancorp.suiteapi.common.[Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")
-   java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")
    -   com.appiancorp.suiteapi.common.[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")
        -   com.appiancorp.suiteapi.common.[GlobalId](GlobalId.html "interface in com.appiancorp.suiteapi.common")
        -   com.appiancorp.suiteapi.common.[RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common")
-   com.appiancorp.services.[Service](../../services/Service.html "interface in com.appiancorp.services")
    -   com.appiancorp.services.ContextSensitiveService
        -   com.appiancorp.suiteapi.common.[SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common")
-   com.appiancorp.suiteapi.common.[ServiceName](ServiceName.html "interface in com.appiancorp.suiteapi.common")
-   com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

## Annotation Interface Hierarchy

-   com.appiancorp.suiteapi.common.[Name](Name.html "annotation interface in com.appiancorp.suiteapi.common") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))
-   com.appiancorp.suiteapi.common.[Preview](Preview.html "annotation interface in com.appiancorp.suiteapi.common") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))