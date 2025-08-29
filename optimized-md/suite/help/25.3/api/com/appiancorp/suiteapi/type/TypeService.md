---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/TypeService.html
original_path: api/com/appiancorp/suiteapi/type/TypeService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type](package-summary.html)

# Interface TypeService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `com.appiancorp.type.DataTypeProvider`, `com.appiancorp.type.ExtendedDataTypeProvider`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface TypeService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services"), com.appiancorp.type.ExtendedDataTypeProvider

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[cast$UPDATES](#cast$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DEACTIVATE_ALREADY_DEACTIVATED](#DEACTIVATE_ALREADY_DEACTIVATED)`

    Result code indicating that a type could not be deactivated because it is already deactivated.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DEACTIVATE_INVALID](#DEACTIVATE_INVALID)`

    Result code indicating that deactivation of a type could not occur because the type does not exist.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DEACTIVATE_NOT_ALLOWED](#DEACTIVATE_NOT_ALLOWED)`

    Result code indicating that deactivation of a type was not allowed.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DEACTIVATE_SUCCESS](#DEACTIVATE_SUCCESS)`

    Result code indicating that deactivation of a type was successful.

    `static final boolean`

    `[deactivateTypes$UPDATES](#deactivateTypes$UPDATES)`

    `static final boolean`

    `[delete$UPDATES](#delete$UPDATES)`

    `static final boolean`

    `[getDatatypeProperties$UPDATES](#getDatatypeProperties$UPDATES)`

    `static final boolean`

    `[getDirectlyReferencedTypes$UPDATES](#getDirectlyReferencedTypes$UPDATES)`

    `static final boolean`

    `[getInstanceProperties$UPDATES](#getInstanceProperties$UPDATES)`

    `static final boolean`

    `[getInstancePropertyTypesRecursive$UPDATES](#getInstancePropertyTypesRecursive$UPDATES)`

    `static final boolean`

    `[getReferencedTypes$UPDATES](#getReferencedTypes$UPDATES)`

    `static final boolean`

    `[getSystemTypes$UPDATES](#getSystemTypes$UPDATES)`

    `static final boolean`

    `[getSystemTypesByParent$UPDATES](#getSystemTypesByParent$UPDATES)`

    `static final boolean`

    `[getType$UPDATES](#getType$UPDATES)`

    `static final boolean`

    `[getTypeByExternalTypeId$UPDATES](#getTypeByExternalTypeId$UPDATES)`

    `static final boolean`

    `[getTypeByQualifiedName$UPDATES](#getTypeByQualifiedName$UPDATES)`

    `static final boolean`

    `[getTypeByQualifiedNames$UPDATES](#getTypeByQualifiedNames$UPDATES)`

    `static final boolean`

    `[getTypes$UPDATES](#getTypes$UPDATES)`

    `static final boolean`

    `[getTypeSafe$UPDATES](#getTypeSafe$UPDATES)`

    `static final boolean`

    `[getTypesByNamespace$UPDATES](#getTypesByNamespace$UPDATES)`

    `static final boolean`

    `[getTypesByParentFilteredPaging$UPDATES](#getTypesByParentFilteredPaging$UPDATES)`

    `static final boolean`

    `[getTypesByParentPaging$UPDATES](#getTypesByParentPaging$UPDATES)`

    `static final boolean`

    `[getTypesFilteredPaging$UPDATES](#getTypesFilteredPaging$UPDATES)`

    `static final boolean`

    `[getTypesPaging$UPDATES](#getTypesPaging$UPDATES)`

    `static final boolean`

    `[getWSDLTypes$UPDATES](#getWSDLTypes$UPDATES)`

    `static final boolean`

    `[insert$UPDATES](#insert$UPDATES)`

    `static final int`

    `[LISTS_FILTER_ALL](#LISTS_FILTER_ALL)`

    Filter all lists.

    `static final int`

    `[LISTS_FILTER_NON_EXPLICIT](#LISTS_FILTER_NON_EXPLICIT)`

    Filter all lists except explicitly created lists (ie. lists created via 'xsd:list' in XSD).

    `static final int`

    `[LISTS_NO_FILTERING](#LISTS_NO_FILTERING)`

    Do not do any filtering of lists.

    `static final boolean`

    `[select$UPDATES](#select$UPDATES)`

    `static final boolean`

    `[setVisibilityForType$UPDATES](#setVisibilityForType$UPDATES)`

    `static final boolean`

    `[setVisibilityForTypes$UPDATES](#setVisibilityForTypes$UPDATES)`

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    `static final boolean`

    `[update$UPDATES](#update$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[cast](#cast\(java.lang.Long,com.appiancorp.suiteapi.type.TypedValue\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toTypeId, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") value)`

    Cast a TypedValue to another type, if possible, returning the new TypedValue.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[deactivateTypes](#deactivateTypes\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] typeIds)`

    Deactivates each of the specified types, if possible.

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[delete](#delete\(com.appiancorp.suiteapi.type.TypedValue,com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")[] indices)`

    Delete a value at indices from data.

    `[DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type")`

    `[getDatatypeProperties](#getDatatypeProperties\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)`

    Get DatatypeProperties from server.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")>`

    `[getDirectlyReferencedTypes](#getDirectlyReferencedTypes\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... typeIds)`

    Returns a list containing all datatypes **directly** referenced by the given datatypes.

    `[NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[]`

    `[getInstanceProperties](#getInstanceProperties\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)`

    Gets the instance properties for the given type

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getInstancePropertyTypesRecursive](#getInstancePropertyTypesRecursive\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId_)`

    Returns a Set containing all type ids (as java.lang.Long objects) referenced by the given type.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")>`

    `[getReferencedTypes](#getReferencedTypes\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId_)`

    Returns a list containing the given datatype and all datatypes referenced by it.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")>`

    `[getReferencedTypes](#getReferencedTypes\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] typeIds_)`

    Returns a list containing the given datatypes and all datatypes referenced by them.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getSystemTypes](#getSystemTypes\(\))()`

    Retrieves all system datatypes.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getSystemTypesByParent](#getSystemTypesByParent\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent)`

    Deprecated.

    Use [`getSystemTypes()`](#getSystemTypes\(\)).

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[getType](#getType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)`

    Get Datatype from server.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[getTypeByExternalTypeId](#getTypeByExternalTypeId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalTypeId)`

    Gets the datatype corresponding to an external type id.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[getTypeByExternalTypeId](#getTypeByExternalTypeId\(java.lang.String,com.appiancorp.suiteapi.type.TypedValue\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalTypeId, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent)`

    Deprecated.

    Use [`getTypeByExternalTypeId(String)`](#getTypeByExternalTypeId\(java.lang.String\)).

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[getTypeByQualifiedName](#getTypeByQualifiedName\(javax.xml.namespace.QName\))([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") qName_)`

    Gets the current version of a type, given a QName.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[getTypeByQualifiedName](#getTypeByQualifiedName\(javax.xml.namespace.QName,com.appiancorp.suiteapi.type.TypedValue\))([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") qName_, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent_)`

    Deprecated.

    Use [`getTypeByQualifiedName(QName)`](#getTypeByQualifiedName\(javax.xml.namespace.QName\)).

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getTypeByQualifiedNames](#getTypeByQualifiedNames\(javax.xml.namespace.QName%5B%5D\))([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")[] qName_)`

    Gets the current version of a list of types, given a list of QName.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getTypeByQualifiedNames](#getTypeByQualifiedNames\(javax.xml.namespace.QName%5B%5D,com.appiancorp.suiteapi.type.TypedValue\))([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")[] qName_, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent_)`

    Deprecated.

    Use [`getTypeByQualifiedNames(QName[])`](#getTypeByQualifiedNames\(javax.xml.namespace.QName%5B%5D\)).

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getTypes](#getTypes\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] typeIds_)`

    Get datatypes from the server.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[getTypeSafe](#getTypeSafe\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)`

    Deprecated.

    use [`getType(Long)`](#getType\(java.lang.Long\)) instead.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getTypesByNamespace](#getTypesByNamespace\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace)`

    Retrieves an array of datatypes with the given namespace.

    `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getTypesByNamespace](#getTypesByNamespace\(java.lang.String,com.appiancorp.suiteapi.type.TypedValue\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent)`

    Deprecated.

    Use [`getTypesByNamespace(String)`](#getTypesByNamespace\(java.lang.String\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTypesByParentFilteredPaging](#getTypesByParentFilteredPaging\(com.appiancorp.suiteapi.type.TypedValue,int,int,int,int,java.lang.Integer,java.lang.Integer\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent, int excludeFlags, int listsFilteringMode, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)`

    Deprecated.

    Use [`getTypesFilteredPaging(int, int, int, int, Integer, Integer)`](#getTypesFilteredPaging\(int,int,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTypesByParentPaging](#getTypesByParentPaging\(com.appiancorp.suiteapi.type.TypedValue,int,int,java.lang.Integer,java.lang.Integer\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)`

    Deprecated.

    Use [`getTypesPaging(int, int, Integer, Integer)`](#getTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTypesFilteredPaging](#getTypesFilteredPaging\(int,int,int,int,java.lang.Integer,java.lang.Integer\))(int excludeFlags, int listsFilteringMode, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)`

    Retrieves all the datatypes allowing custom filtering.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTypesFilteredPaging](#getTypesFilteredPaging\(int,int,java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))(int excludeFlags, int listsFilteringMode, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foundationTypes, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)`

    Retrieves all the datatypes allowing custom filtering.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTypesPaging](#getTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)`

    Retrieves all the datatypes.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getWSDLTypes](#getWSDLTypes\(\))()`

    Gets WSDL type ids and their dependents.

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[insert](#insert\(com.appiancorp.suiteapi.type.TypedValue,com.appiancorp.suiteapi.type.TypedValue%5B%5D,com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")[] indices, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") insertValue)`

    Insert a value at indices into data.

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[select](#select\(com.appiancorp.suiteapi.type.TypedValue,com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")[] indices)`

    Select an item of data from a TypedValue by indices.

    `void`

    `[setVisibilityForType](#setVisibilityForType\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId_, boolean visible_)`

    Sets the visibility for a type.

    `void`

    `[setVisibilityForTypes](#setVisibilityForTypes\(java.lang.Long%5B%5D,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] typeIds_, boolean visible_)`

    Sets the visibility for an array of types.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_)`

    Queries for content and returns a JSON formatted string to be used by autocomplete.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    Queries for content and returns a JSON formatted string to be used by autocomplete.

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[update](#update\(com.appiancorp.suiteapi.type.TypedValue,com.appiancorp.suiteapi.type.TypedValue%5B%5D,com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")[] indices, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") assignValue)`

    Update a value at indices from data.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### DEACTIVATE\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DEACTIVATE\_SUCCESS

        Result code indicating that deactivation of a type was successful.

    -   ### DEACTIVATE\_INVALID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DEACTIVATE\_INVALID

        Result code indicating that deactivation of a type could not occur because the type does not exist.

    -   ### DEACTIVATE\_NOT\_ALLOWED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DEACTIVATE\_NOT\_ALLOWED

        Result code indicating that deactivation of a type was not allowed. System types cannot be deactivated.

    -   ### DEACTIVATE\_ALREADY\_DEACTIVATED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DEACTIVATE\_ALREADY\_DEACTIVATED

        Result code indicating that a type could not be deactivated because it is already deactivated.

    -   ### LISTS\_NO\_FILTERING

        static final int LISTS\_NO\_FILTERING

        Do not do any filtering of lists.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.LISTS_NO_FILTERING)

    -   ### LISTS\_FILTER\_NON\_EXPLICIT

        static final int LISTS\_FILTER\_NON\_EXPLICIT

        Filter all lists except explicitly created lists (ie. lists created via 'xsd:list' in XSD).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.LISTS_FILTER_NON_EXPLICIT)

    -   ### LISTS\_FILTER\_ALL

        static final int LISTS\_FILTER\_ALL

        Filter all lists. No lists will be returned.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.LISTS_FILTER_ALL)

    -   ### getType$UPDATES

        static final boolean getType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getType$UPDATES)

    -   ### getTypeSafe$UPDATES

        static final boolean getTypeSafe$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypeSafe$UPDATES)

    -   ### getTypes$UPDATES

        static final boolean getTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypes$UPDATES)

    -   ### getDatatypeProperties$UPDATES

        static final boolean getDatatypeProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getDatatypeProperties$UPDATES)

    -   ### getInstanceProperties$UPDATES

        static final boolean getInstanceProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getInstanceProperties$UPDATES)

    -   ### getTypesByNamespace$UPDATES

        static final boolean getTypesByNamespace$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypesByNamespace$UPDATES)

    -   ### getTypesPaging$UPDATES

        static final boolean getTypesPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypesPaging$UPDATES)

    -   ### getTypesByParentPaging$UPDATES

        static final boolean getTypesByParentPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypesByParentPaging$UPDATES)

    -   ### getTypesFilteredPaging$UPDATES

        static final boolean getTypesFilteredPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypesFilteredPaging$UPDATES)

    -   ### getTypesByParentFilteredPaging$UPDATES

        static final boolean getTypesByParentFilteredPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypesByParentFilteredPaging$UPDATES)

    -   ### getSystemTypes$UPDATES

        static final boolean getSystemTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getSystemTypes$UPDATES)

    -   ### getSystemTypesByParent$UPDATES

        static final boolean getSystemTypesByParent$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getSystemTypesByParent$UPDATES)

    -   ### setVisibilityForType$UPDATES

        static final boolean setVisibilityForType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.setVisibilityForType$UPDATES)

    -   ### setVisibilityForTypes$UPDATES

        static final boolean setVisibilityForTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.setVisibilityForTypes$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.suggest$UPDATES)

    -   ### getInstancePropertyTypesRecursive$UPDATES

        static final boolean getInstancePropertyTypesRecursive$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getInstancePropertyTypesRecursive$UPDATES)

    -   ### getReferencedTypes$UPDATES

        static final boolean getReferencedTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getReferencedTypes$UPDATES)

    -   ### getTypeByQualifiedName$UPDATES

        static final boolean getTypeByQualifiedName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypeByQualifiedName$UPDATES)

    -   ### getTypeByQualifiedNames$UPDATES

        static final boolean getTypeByQualifiedNames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypeByQualifiedNames$UPDATES)

    -   ### cast$UPDATES

        static final boolean cast$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.cast$UPDATES)

    -   ### select$UPDATES

        static final boolean select$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.select$UPDATES)

    -   ### update$UPDATES

        static final boolean update$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.update$UPDATES)

    -   ### delete$UPDATES

        static final boolean delete$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.delete$UPDATES)

    -   ### insert$UPDATES

        static final boolean insert$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.insert$UPDATES)

    -   ### deactivateTypes$UPDATES

        static final boolean deactivateTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.deactivateTypes$UPDATES)

    -   ### getTypeByExternalTypeId$UPDATES

        static final boolean getTypeByExternalTypeId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getTypeByExternalTypeId$UPDATES)

    -   ### getWSDLTypes$UPDATES

        static final boolean getWSDLTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getWSDLTypes$UPDATES)

    -   ### getDirectlyReferencedTypes$UPDATES

        static final boolean getDirectlyReferencedTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypeService.getDirectlyReferencedTypes$UPDATES)

-   ## Method Details

    -   ### getType

        [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") getType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Get Datatype from server. The Datatype is immutable (save for explicitly declared mutable properties), so it may be cached safely in Java for efficiency.

        Specified by:

        `getType` in interface `com.appiancorp.type.DataTypeProvider`

        Specified by:

        `getType` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `typeId` -

        Returns:

        the datatype

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if there is no type with that id.

    -   ### getTypeSafe

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") getTypeSafe([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)

        Deprecated.

        use [`getType(Long)`](#getType\(java.lang.Long\)) instead.

        Get Datatype from server. The Datatype is immutable (save for explicitly declared mutable properties), so it may be cached safely in Java for efficiency. Use this instead of [`getType(Long)`](#getType\(java.lang.Long\)) when the typeId has been validated

        Specified by:

        `getTypeSafe` in interface `com.appiancorp.type.DataTypeProvider`

        Specified by:

        `getTypeSafe` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `typeId` -

        Returns:

        the datatype

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if there is no type with that id.

    -   ### getTypes

        [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] typeIds\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Get datatypes from the server. The Datatype objects are immutable (save for explicitly declared mutable properties), so they may be cached safely in Java for efficiency.

        Specified by:

        `getTypes` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `typeIds_` -

        Returns:

        the datatypes

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if any of the types do not exist

    -   ### getDatatypeProperties

        [DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type") getDatatypeProperties([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Get DatatypeProperties from server.

        Specified by:

        `getDatatypeProperties` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `typeId` -

        Returns:

        the datatype

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if there is no type with that id.

    -   ### getInstanceProperties

        [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] getInstanceProperties([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Gets the instance properties for the given type

        Parameters:

        `typeId` - a type id

        Returns:

        an array of instance properties

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if the type does not exist

    -   ### getTypesByNamespace

        [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getTypesByNamespace([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace)

        Retrieves an array of datatypes with the given namespace.

        Parameters:

        `namespace` - the namespace in which the datatype resides

        Returns:

        an array of datatypes

    -   ### getTypesByNamespace

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getTypesByNamespace([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent)

        Deprecated.

        Use [`getTypesByNamespace(String)`](#getTypesByNamespace\(java.lang.String\)).

        Retrieves an array of datatypes with the given namespace and parent.

        Parameters:

        `namespace` - the namespace in which the datatype resides

        `parent` - the parent of the datatype, or null for all datatypes

        Returns:

        an array of datatypes

    -   ### getTypesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTypesPaging(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)

        Retrieves all the datatypes.

        Parameters:

        `startIndex` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty` - The property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type")

        `sortOrder` - the order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing `Datatype` objects.

    -   ### getTypesByParentPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTypesByParentPaging([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)

        Deprecated.

        Use [`getTypesPaging(int, int, Integer, Integer)`](#getTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)).

        Retrieves datatypes under a given parent.

        Parameters:

        `parent` - The parent of the datatype, or null for all datatypes.

        `startIndex` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty` - The property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type")

        `sortOrder` - the order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing `Datatype` objects.

    -   ### getTypesFilteredPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTypesFilteredPaging(int excludeFlags, int listsFilteringMode, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)

        Retrieves all the datatypes allowing custom filtering. If 0 is passed in for excludeFlags and LISTS\_NO\_FILTERING is passed in for listsFilteringMode, the data returned is exactly the same as when calling [`getTypesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)). Specifying other values for excludeFlags and listsFilteringMode allows doing additional filtering on the data; for example, to retrieve all types that are not hidden and not lists, call: getTypesFilteredPaging(Datatype.FLAG\_HIDDEN, true, ...)

        Parameters:

        `excludeFlags` - A mask (such as Datatype.FLAG\_SYSTEM | Datatype.FLAG\_HIDDEN) allowing datatypes with particular flags to be filtered out. Pass in 0 to not do any flag-based filtering.

        `listsFilteringMode` - One of the LISTS\_XXX constants of this interface

        `startIndex` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty` - The property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type")

        `sortOrder` - the order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing `Datatype` objects.

    -   ### getTypesFilteredPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTypesFilteredPaging(int excludeFlags, int listsFilteringMode, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foundationTypes, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)

        Retrieves all the datatypes allowing custom filtering. Specifying values for excludeFlags and listsFilteringMode allows doing filtering on the data; for example, to retrieve all types that are not hidden and not lists, call: getTypesFilteredPaging(Datatype.FLAG\_HIDDEN, true, ...)

        In addition, a list of datatypes can be provided in order to constrain the resulting list of types to those that have a foundation contained in the given list.

        Parameters:

        `excludeFlags` - A mask (such as Datatype.FLAG\_SYSTEM | Datatype.FLAG\_HIDDEN) allowing datatypes with particular flags to be filtered out. Pass in 0 to not do any flag-based filtering.

        `listsFilteringMode` - One of the LISTS\_XXX constants of this interface

        `foundationTypes` - The list of types returned will all satisfy the constraint that their foundation types will be listed in this array.

        `startIndex` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty` - The property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type")

        `sortOrder` - the order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing `Datatype` objects.

    -   ### getTypesByParentFilteredPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTypesByParentFilteredPaging([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent, int excludeFlags, int listsFilteringMode, int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)

        Deprecated.

        Use [`getTypesFilteredPaging(int, int, int, int, Integer, Integer)`](#getTypesFilteredPaging\(int,int,int,int,java.lang.Integer,java.lang.Integer\)).

        Retrieves datatypes under a given parent allowing custom filtering. If 0 is passed in for excludeFlags and LISTS\_NO\_FILTERING is passed in for listsFilteringMode, the data returned is exactly the same as when calling [`getTypesByParentPaging(com.appiancorp.suiteapi.type.TypedValue, int, int, java.lang.Integer, java.lang.Integer)`](#getTypesByParentPaging\(com.appiancorp.suiteapi.type.TypedValue,int,int,java.lang.Integer,java.lang.Integer\)). Specifying other values for excludeFlags and listsFilteringMode allows doing additional filtering on the data; for example, to retrieve all types that are not hidden and not lists, call: getTypesByParentFilteredPaging(null, Datatype.FLAG\_HIDDEN, true, ...)

        Parameters:

        `parent` - The parent of the datatype, or null for all datatypes.

        `excludeFlags` - A mask (such as Datatype.FLAG\_SYSTEM | Datatype.FLAG\_HIDDEN) allowing datatypes with particular flags to be filtered out. Pass in 0 to not do any flag-based filtering.

        `listsFilteringMode` - One of the LISTS\_XXX constants of this interface

        `startIndex` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty` - The property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants located in [`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type")

        `sortOrder` - the order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing `Datatype` objects.

    -   ### getSystemTypes

        [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getSystemTypes()

        Retrieves all system datatypes.

        Returns:

        a list of datatypes

    -   ### getSystemTypesByParent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getSystemTypesByParent([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent)

        Deprecated.

        Use [`getSystemTypes()`](#getSystemTypes\(\)).

        Retrieves all system datatypes under the given parent.

        Parameters:

        `parent` - The parent of the datatype, or null for all datatypes

        Returns:

        a list of datatypes

    -   ### setVisibilityForType

        void setVisibilityForType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId\_, boolean visible\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Sets the visibility for a type. If the visible\_ parameter is true, then the type will be made visible (the `DataTypeProperties.FLAG_HIDDEN` flag will be removed) and if the type is temporary, then it will be made permanent (the `DataTypeProperties.FLAG_TEMPORARY` flag will be removed). If the visible\_ parameter is false, the type will be made hidden. This method is not safe for clustered appservers due to Datatype caching; another communication mechanism must be used to communicate this information to the other clustered appservers' Datatype caches.

        Parameters:

        `typeIds_` - the types to modify

        `visible_` - whether or not to make the types visible

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if any of the types do not exist

    -   ### setVisibilityForTypes

        void setVisibilityForTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] typeIds\_, boolean visible\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Sets the visibility for an array of types. If the visible\_ parameter is true, then all types will be made visible (the `DataTypeProperties.FLAG_HIDDEN` flag will be removed) and any temporary types will be made permanent (the `DataTypeProperties.FLAG_TEMPORARY` flag will be removed). If the visible\_ parameter is false, all types will be made hidden. This method is not safe for clustered appservers due to Datatype caching; another communication mechanism must be used to communicate this information to the other clustered appservers' Datatype caches.

        Parameters:

        `typeIds_` - the types to modify

        `visible_` - whether or not to make the types visible

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if any of the types do not exist

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_)

        Queries for content and returns a JSON formatted string to be used by autocomplete.

        Parameters:

        `query_` - query

        `maxItems_` - max number of items to return

        `params_` - list of information on what is being suggested and what format the results should be in. valid types are rules.

        `groupResults_` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Queries for content and returns a JSON formatted string to be used by autocomplete.

        Parameters:

        `query_` - query

        `maxItems_` - max number of items to return

        `params_` - list of information on what is being suggested and what format the results should be in. valid types are rules.

        `groupResults_` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string

    -   ### getInstancePropertyTypesRecursive

        [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getInstancePropertyTypesRecursive([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Returns a Set containing all type ids (as java.lang.Long objects) referenced by the given type. The referenced types include the types of its instance properties, as well as their instance properties, and so on.

        Parameters:

        `typeId_` - The type for which we want all referenced types

        Returns:

        the referenced types

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getReferencedTypes

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\> getReferencedTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Returns a list containing the given datatype and all datatypes referenced by it. The referenced types include all types referenced in one of the following ways: (1) instance properties, (2) list item type, (3) base type of a derived type. Referenced types recursively include all types referenced by the references of the given type. However, the returned list does not contain any duplicate entries.

        Parameters:

        `typeId_` - the target datatype id

        Returns:

        a List of Datatype objects

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getReferencedTypes

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\> getReferencedTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] typeIds\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Returns a list containing the given datatypes and all datatypes referenced by them. The referenced types include all types referenced in one of the following ways:

        1.  instance properties
        2.  list item type
        3.  list type
        4.  base type of a derived type

        . Referenced types recursively include all types referenced by the references of the given types. However, the returned list does not contain any duplicate entries.

        Parameters:

        `typeId_` - the target datatype ids

        Returns:

        a List of Datatype objects

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getTypeByQualifiedName

        [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") getTypeByQualifiedName([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") qName\_)

        Gets the current version of a type, given a QName.

        Specified by:

        `getTypeByQualifiedName` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `qName_` - The QName that identifies the type. The namespaceURI and localPart must be set. Prefix is ignored.

        Returns:

        the current version of the datatype, or null if there is no type corresponding to the parameters

    -   ### getTypeByQualifiedName

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") getTypeByQualifiedName([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") qName\_, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent\_)

        Deprecated.

        Use [`getTypeByQualifiedName(QName)`](#getTypeByQualifiedName\(javax.xml.namespace.QName\)).

        Gets the current version of a type, given a QName and parent.

        Parameters:

        `qName_` - The QName that identifies the type. The namespaceURI and localPart must be set. Prefix is ignored.

        `parent` - the parent of the datatype, or null for all datatypes

        Returns:

        the current version of the datatype, or null if there is no type corresponding to the parameters

    -   ### getTypeByQualifiedNames

        [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getTypeByQualifiedNames([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")\[\] qName\_)

        Gets the current version of a list of types, given a list of QName.

        Specified by:

        `getTypeByQualifiedNames` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `qName_` - The QName list that identifies the types. For each element the namespaceURI and localPart must be set. Prefix is ignored.

        Returns:

        the current version of the list of datatypes, or null if there is no type corresponding to the parameters

    -   ### getTypeByQualifiedNames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getTypeByQualifiedNames([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")\[\] qName\_, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent\_)

        Deprecated.

        Use [`getTypeByQualifiedNames(QName[])`](#getTypeByQualifiedNames\(javax.xml.namespace.QName%5B%5D\)).

        Gets the current version of a list of types, given a list of QName.

        Parameters:

        `qName_` - The QName that identifies the type. The namespaceURI and localPart must be set. Prefix is ignored.

        `parent` - the parent of the datatypes, or null for all datatypes

        Returns:

        the current version of the list of datatypes, or null if there is no type corresponding to the parameters

    -   ### cast

        [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") cast([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toTypeId, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") value)

        Cast a TypedValue to another type, if possible, returning the new TypedValue.

        Parameters:

        `toTypeId` -

        `value` -

        Returns:

        Throws:

        `[ClassCastException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/ClassCastException.html "class or interface in java.lang")` - if the cast is invalid

    -   ### select

        [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") select([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] indices)

        Select an item of data from a TypedValue by indices.

        Parameters:

        `data` - Data from which the value is selected.

        `indices` - Typically, indices will be either integer (based at 1) for lists, list of integer (based at 1) for lists, or string for records. Each successive index digs deeper into records.

        Returns:

        TypedValue of selected data.

    -   ### update

        [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") update([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] indices, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") assignValue)

        Update a value at indices from data.

        Parameters:

        `data` - Data from which the value is selected.

        `indices` - Typically, indices will be either integer (based at 1) for lists, list of integer (based at 1) for lists, or string for records. Each successive index digs deeper into records.

        `assignValue` -

        Returns:

    -   ### delete

        [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") delete([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] indices)

        Delete a value at indices from data.

        Parameters:

        `data` - Data from which the value is deleted.

        `indices` - Typically, indices will be either integer (based at 1) for lists, list of integer (based at 1) for lists, or string for records. Each successive index digs deeper into records.

        Returns:

    -   ### insert

        [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") insert([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") data, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] indices, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") insertValue)

        Insert a value at indices into data.

        Parameters:

        `data` - Data into which the value is selected.

        `indices` - Typically, indices will be either integer (based at 1) for lists, list of integer (based at 1) for lists, or string for records. The insertion point is before the index. Each successive index digs deeper into records.

        `insertValue` -

        Returns:

    -   ### deactivateTypes

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") deactivateTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] typeIds) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deactivates each of the specified types, if possible. System types cannot be deactivated. The following actions are taken for each type that can be deactivated. The flag `DataTypeProperties.FLAG_DEACTIVATED` is added for the type. The type's qualified name (returned by [`DatatypeProperties.getQualifiedName()`](DatatypeProperties.html#getQualifiedName\(\))) will have its local part modified to "\[OriginalLocalPart\]^n" where 'n' is the next number in the sequence of deleted types with the same qualified name. If the local part is blank, no change will be made. If not blank, the type's name (returned by [`DatatypeProperties.getName()`](DatatypeProperties.html#getName\(\))) will be modified to "\[OriginalTypeName\]^n" where 'n' is the same value as that appended to the local part of the qualified name. Except for invalid and system types passed in, the list type of each specified type will be deactivated as well.

        Parameters:

        `typeIds` - the types to deactivate

        Returns:

        a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common"). [`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\)) will return the result codes corresponding to the type ids passed in, followed by the codes corresponding to automatic deactivations (ie. lists). The DEACTIVATE\_XXX constants of this interface make up the possible result codes. [`Result.getResults()`](../common/Result.html#getResults\(\)) will return a `Datatype[]` of the same length as the result codes. The value at each index will be either the up-to-date `Datatype` or null for invalid type ids.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to deactivate types. Only system administrators can deactivate types.

    -   ### getTypeByExternalTypeId

        [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") getTypeByExternalTypeId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalTypeId)

        Gets the datatype corresponding to an external type id.

        Specified by:

        `getTypeByExternalTypeId` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `externalTypeId` - the external type id that identifies the type. It cannot be null.

        Returns:

        the type corresponding to the parameters, or null if there is no such type

    -   ### getWSDLTypes

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getWSDLTypes()

        Gets WSDL type ids and their dependents.

        Returns:

        a list of type ids of WSDL types and their dependents

    -   ### getTypeByExternalTypeId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") getTypeByExternalTypeId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalTypeId, [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent)

        Deprecated.

        Use [`getTypeByExternalTypeId(String)`](#getTypeByExternalTypeId\(java.lang.String\)).

        Gets the datatype corresponding to an external type id and parent.

        Parameters:

        `externalTypeId` - the external type id that identifies the type. It cannot be null.

        `parent` - the parent of the datatype, or null for all datatypes

        Returns:

        the type corresponding to the parameters, or null if there is no such type

    -   ### getDirectlyReferencedTypes

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\> getDirectlyReferencedTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... typeIds)

        Returns a list containing all datatypes **directly** referenced by the given datatypes. The referenced types include all types referenced in one of the following ways:

        1.  instance properties
        2.  list item type
        3.  list type
        4.  base type of a derived type
        5.  union types

        Specified by:

        `getDirectlyReferencedTypes` in interface `com.appiancorp.type.ExtendedDataTypeProvider`

        Parameters:

        `typeIds` - target datatypes

        Returns:

        list of datatype objects