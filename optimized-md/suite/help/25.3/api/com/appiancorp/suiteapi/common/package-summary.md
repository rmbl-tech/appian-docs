---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/package-summary.html
original_path: api/com/appiancorp/suiteapi/common/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.common

* * *

package com.appiancorp.suiteapi.common

Classes and interfaces for working with data structures and concepts that are common throughout Appian.

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.common.cli](cli/package-summary.html)

    [com.appiancorp.suiteapi.common.exceptions](exceptions/package-summary.html)

    [com.appiancorp.suiteapi.common.paging](paging/package-summary.html)

-   All Classes and InterfacesInterfacesClassesExceptionsAnnotation Interfaces

    Class

    Description

    [AEVRoleMap](AEVRoleMap.html "class in com.appiancorp.suiteapi.common")

    This class can be used as base class for any object acting as RoleMap where `User` and `Group` can be added to view or edit a particular object.

    [BulkArrayConverter](BulkArrayConverter.html "class in com.appiancorp.suiteapi.common")

    Utility class used to combine an array of array into a single array of combined length and vice versa.

    [Configuration](Configuration.html "class in com.appiancorp.suiteapi.common")

    Provides support for loading configuration files for the product.

    [Constants](Constants.html "interface in com.appiancorp.suiteapi.common")

    Interface to represent constants used for retrieving and sorting results obtained from database.

    [Credentials](Credentials.html "class in com.appiancorp.suiteapi.common")

    Bean that represents a User's credentials

    [CredentialsReturnConverter](CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common")

    Deprecated. 

    [DeepCloneable](DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

    This marker interface identifiers a class that supports the clone method with deep copy semantics, rather than shallow copy semantics.

    [GlobalId](GlobalId.html "interface in com.appiancorp.suiteapi.common")

    This bean is used to identify an object with `Long` Id both locally and remotely.

    [GlobalStringId](GlobalStringId.html "interface in com.appiancorp.suiteapi.common")

    This bean is used to identify an object with `String` Id both locally and remotely.

    [Identity](Identity.html "class in com.appiancorp.suiteapi.common")

    This bean is used to represent an object with a `String` name, `Long` Id, and `String` UUID.

    [IntAsBooleanXmlAdapter](IntAsBooleanXmlAdapter.html "class in com.appiancorp.suiteapi.common")

    [JSONable](JSONable.html "interface in com.appiancorp.suiteapi.common")

    Represents an object that can be converted to JSON format so that an equivalent JavaScript object can be created on the client machine.

    [JSONCacheable](JSONCacheable.html "interface in com.appiancorp.suiteapi.common")

    This marker interface indicates that a JSONable class always returns the same hidden attributes and thus its JSON marshaling information may be cached rather than recalculated each time.

    [LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common")

    LocaleString LocaleString represents one String with representations in one or more Locales, or in all Locales (an insensitive String).

    [LocaleStringParameterConverter](LocaleStringParameterConverter.html "class in com.appiancorp.suiteapi.common")

    Deprecated. 

    [LocaleStringReturnConverter](LocaleStringReturnConverter.html "class in com.appiancorp.suiteapi.common")

    Deprecated. 

    [LocaleStringXmlAdapter](LocaleStringXmlAdapter.html "class in com.appiancorp.suiteapi.common")

    [LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")

    This interface represents the local identifier of an object.

    [LocalizedIdentity](LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

    [LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")

    This class represents the base class for all first-class Appian Objects.

    [LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

    [LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")

    This bean represents the local identifier of an object.

    [Name](Name.html "annotation interface in com.appiancorp.suiteapi.common")

    Defines the name of the annotated item.

    [NamedTypedValueReturnConverter](NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

    Deprecated. 

    [ObjectTypeMapping](ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

    Enables mapping between Appian type objects and their corresponding type constants.

    [PartialResultReturnConverter](PartialResultReturnConverter.html "class in com.appiancorp.suiteapi.common")

    [Preview](Preview.html "annotation interface in com.appiancorp.suiteapi.common")

    Indicates that the target of this annotation is exposed in the Appian public API as a preview of new functionality that may be subject to change in future releases.

    [Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<T>

    An object capable of providing instances of type T.

    [ProvisionException](ProvisionException.html "class in com.appiancorp.suiteapi.common")

    [PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

    Defines the roles of users and groups for an object.

    [RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common")

    This bean represents the remote identifier of an object.

    [RemoteStringId](RemoteStringId.html "interface in com.appiancorp.suiteapi.common")

    This bean represents the remote identifier of an object.

    [Result](Result.html "class in com.appiancorp.suiteapi.common")

    Base class for storing the results returned by a service call.

    [ResultList](ResultList.html "class in com.appiancorp.suiteapi.common")

    Class for storing the results returned by a service call.

    [ResultPage](ResultPage.html "class in com.appiancorp.suiteapi.common")

    Class for storing the results returned by a paging service call.

    [ResultPageReturnConverter](ResultPageReturnConverter.html "class in com.appiancorp.suiteapi.common")

    Deprecated. 

    [Role](Role.html "class in com.appiancorp.suiteapi.common")

    Holds the data for an individual role within a role map.

    [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")

    Takes a set of existing permissions and a set of new permissions and decides how to combine them into a result set.

    [RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

    A mapping of roles and the users and groups that fill those roles.

    [RoleSet](RoleSet.html "class in com.appiancorp.suiteapi.common")

    [Security](Security.html "class in com.appiancorp.suiteapi.common")

    This bean is used to represent the security on objects in the Application, and what securities that the object can inherit from 'parent' entities, if there are any.

    [SecurityEntry](SecurityEntry.html "class in com.appiancorp.suiteapi.common")

    Base class for entities to which security can be applied.

    [ServiceFactory](ServiceFactory.html "class in com.appiancorp.suiteapi.common")

    Deprecated. 

    [ServiceLocator](ServiceLocator.html "class in com.appiancorp.suiteapi.common")

    Deprecated.

    Use services injected by the Appian plug-in framework instead.

    [ServiceName](ServiceName.html "interface in com.appiancorp.suiteapi.common")

    [ServiceProvider](ServiceProvider.html "class in com.appiancorp.suiteapi.common")<T>

    Provider implementation which will return a service from the given ServiceContext.

    [SimpleEngineCredentials](SimpleEngineCredentials.html "class in com.appiancorp.suiteapi.common")

    [SimpleValueMap](SimpleValueMap.html "class in com.appiancorp.suiteapi.common")

    [Suggestion](Suggestion.html "class in com.appiancorp.suiteapi.common")

    [SuggestParam](SuggestParam.html "class in com.appiancorp.suiteapi.common")

    [SuggestParam.SuggestFilter](SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")

    [SynchronizationService](SynchronizationService.html "interface in com.appiancorp.suiteapi.common")

    Deprecated.

    This interface and all of the methods defined within are obsolete and will be removed in a future release.

    [Tree](Tree.html "class in com.appiancorp.suiteapi.common")

    Collection of objects such that each object has data and potentially references to other `Tree`s, subject to the following restrictions: Each tree has exactly one root.

    [TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")

    Represents a node in tree without relationships to other nodes.

    [TreePivot](TreePivot.html "class in com.appiancorp.suiteapi.common")

    Represents a view of a tree from the position of a node in the tree.

    [TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")

    Base class for conversions between frontend and backend data representation.

    [TypeConverterResolver](TypeConverterResolver.html "class in com.appiancorp.suiteapi.common")

    This class defines mappings between datatypes and a set of [`TypeConverter`](TypeConverter.html "class in com.appiancorp.suiteapi.common")'s classes used for conversions between frontend and backend data representation.

    [TypedValueParameterConverter](TypedValueParameterConverter.html "class in com.appiancorp.suiteapi.common")

    TypedValue Parameter Conversion

    [Utilities](Utilities.html "class in com.appiancorp.suiteapi.common")

    [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")

    [ValidationItem](ValidationItem.html "class in com.appiancorp.suiteapi.common")

    A `ValidationItem` associates a `ValidationCode` to the the supplied parameters.

    [XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

    Implementing classes can be represented in XML.