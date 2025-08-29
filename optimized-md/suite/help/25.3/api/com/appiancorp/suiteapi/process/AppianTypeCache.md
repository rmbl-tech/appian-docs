---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/AppianTypeCache.html
original_path: api/com/appiancorp/suiteapi/process/AppianTypeCache.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class AppianTypeCache

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.AppianTypeCache

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class AppianTypeCache extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Holds the ids and display names of Appian-typed objects such as users and groups. Generally, a cache is created for an entity such as an ActivityClass or a ProcessModel, and when that entity is loaded, the primary keys of all of the Appian-typed objects in the entity's object graph are added to the cache using [`addAppianType(java.lang.Integer, java.lang.Long)`](#addAppianType\(java.lang.Integer,java.lang.Long\)). After the primary keys have been added, one can call [`populate(com.appiancorp.services.ServiceContext)`](#populate\(com.appiancorp.services.ServiceContext\)) to fetch the display names. Once the cache has been populated,display names can be retrieved through the [`getDisplayName(java.lang.Long, java.lang.Integer)`](#getDisplayName\(java.lang.Long,java.lang.Integer\)) and [`getDisplayNames(java.lang.Long[], java.lang.Integer)`](#getDisplayNames\(java.lang.Long%5B%5D,java.lang.Integer\)) methods.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.AppianTypeCache)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_COMMUNITIES](#AT_COMMUNITIES)`

    Appian type constant for communities

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_CONTENT](#AT_CONTENT)`

    Appian type constant for content

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_CONTENT_CONSTANT](#AT_CONTENT_CONSTANT)`

    Appian type constant for content

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_DOCS](#AT_DOCS)`

    Appian type constant for documents

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_EMAIL_ADDRESSES](#AT_EMAIL_ADDRESSES)`

    Appian type constant for email addresses

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_EVENTS](#AT_EVENTS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_FOLDERS](#AT_FOLDERS)`

    Appian type constant for folders

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_FORUMS](#AT_FORUMS)`

    Appian type constant for forums

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_GROUPS](#AT_GROUPS)`

    Appian type constant for groups

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_KCS](#AT_KCS)`

    Appian type constant for knowledge centers

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_MESSAGES](#AT_MESSAGES)`

    Appian type constant for messages

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_PAGES](#AT_PAGES)`

    Appian type constant for pages

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_PROCESS_MODELS](#AT_PROCESS_MODELS)`

    Appian type constant for process models

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_PROCESSES](#AT_PROCESSES)`

    Appian type constant for processes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_PROCESSMODEL_FOLDER](#AT_PROCESSMODEL_FOLDER)`

    Appian type constant for process model folders

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_THREADS](#AT_THREADS)`

    Appian type constant for threads

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[AT_USERS](#AT_USERS)`

    Appian type constant for users

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianTypeCache](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAppianType](#addAppianType\(java.lang.Integer,java.lang.Long\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Adds the primary key of the given Appian type to the table of Appian-typed objects.

    `void`

    `[addAppianType](#addAppianType\(java.lang.Integer,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    Adds a String primary key of the given Appian type to the table of Appian-typed objects.

    `void`

    `[addAppianTypeOrTypes](#addAppianTypeOrTypes\(int,boolean,java.lang.Object\))(int type_, boolean isMultiple_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    `void`

    `[addAppianTypes](#addAppianTypes\(java.lang.Integer,java.lang.Long%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    `void`

    `[addAppianTypes](#addAppianTypes\(java.lang.Integer,java.lang.String%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] ids_)`

    Adds String primary keys to the cache for the given type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAllDisplayNames](#getAllDisplayNames\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") l_)`

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAtcTypeForTypedVariableType](#getAtcTypeForTypedVariableType\(int\))(int type_)`

    Utility method to retrieve the cache key for the given TypedVariable type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(com.appiancorp.suiteapi.common.LocalObject,java.lang.Integer\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") lo_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    Fetches the display name for the integer primary key of the given type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(java.lang.String,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    Fetches the display name for the string primary key of the given type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDisplayNames](#getDisplayNames\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,java.lang.Integer\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] los_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDisplayNames](#getDisplayNames\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    Fetches the display names for the integer primary keys of the given type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDisplayNames](#getDisplayNames\(java.lang.Object,java.lang.Integer\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDisplayNames](#getDisplayNames\(java.lang.Object,java.lang.Integer,boolean\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, boolean isMultiple)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDisplayNames](#getDisplayNames\(java.lang.String%5B%5D,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    Fetches the display names for the string primary keys of the given type.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getFullMap](#getFullMap\(\))()`

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `boolean`

    `[getInvalidReferences](#getInvalidReferences\(\))()`

    Adds multiple instances of the given Appian type to the table of Appian-typed objects.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getMap](#getMap\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") key_)`

    Retreives the map of ids to display names for the given key.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getPopulatedTypes](#getPopulatedTypes\(\))()`

    Retrieves the keys for the Appian types for which this cache has entries.

    `com.appiancorp.process.design.validation.Errors`

    `[populate](#populate\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Uses the given user to populate the display names.

    `com.appiancorp.process.design.validation.Errors`

    `[populate](#populate\(com.appiancorp.services.ServiceContext,boolean\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc, boolean includeCurrentUser_)`

    `void`

    `[setDisplayName](#setDisplayName\(java.lang.Integer,java.lang.Long,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") display_)`

    `void`

    `[setDisplayName](#setDisplayName\(java.lang.Integer,java.lang.String,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") display_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### AT\_USERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_USERS

        Appian type constant for users

    -   ### AT\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_GROUPS

        Appian type constant for groups

    -   ### AT\_FOLDERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_FOLDERS

        Appian type constant for folders

    -   ### AT\_DOCS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_DOCS

        Appian type constant for documents

    -   ### AT\_PAGES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_PAGES

        Appian type constant for pages

    -   ### AT\_FORUMS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_FORUMS

        Appian type constant for forums

    -   ### AT\_THREADS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_THREADS

        Appian type constant for threads

    -   ### AT\_MESSAGES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_MESSAGES

        Appian type constant for messages

    -   ### AT\_KCS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_KCS

        Appian type constant for knowledge centers

    -   ### AT\_CONTENT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_CONTENT

        Appian type constant for content

    -   ### AT\_CONTENT\_CONSTANT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_CONTENT\_CONSTANT

        Appian type constant for content

    -   ### AT\_EMAIL\_ADDRESSES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_EMAIL\_ADDRESSES

        Appian type constant for email addresses

    -   ### AT\_PROCESS\_MODELS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_PROCESS\_MODELS

        Appian type constant for process models

    -   ### AT\_PROCESSES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_PROCESSES

        Appian type constant for processes

    -   ### AT\_COMMUNITIES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_COMMUNITIES

        Appian type constant for communities

    -   ### AT\_EVENTS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_EVENTS

    -   ### AT\_PROCESSMODEL\_FOLDER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") AT\_PROCESSMODEL\_FOLDER

        Appian type constant for process model folders

-   ## Constructor Details

    -   ### AppianTypeCache

        public AppianTypeCache()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(\))`

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuilder\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### getInvalidReferences

        public boolean getInvalidReferences()

        Adds multiple instances of the given Appian type to the table of Appian-typed objects.

        Parameters:

        `type_` - one of the AT\_XXX constants

        `ids_` - an array of integer primary keys of Appian objects

    -   ### addAppianTypes

        public void addAppianTypes([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

    -   ### setDisplayName

        public void setDisplayName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") display\_)

    -   ### setDisplayName

        public void setDisplayName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") display\_)

    -   ### addAppianType

        public void addAppianType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Adds the primary key of the given Appian type to the table of Appian-typed objects.

        Parameters:

        `type_` - one of the AT\_XXX constants

        `id_` - an integer primary key of an Appian object

    -   ### addAppianTypes

        public void addAppianTypes([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] ids\_)

        Adds String primary keys to the cache for the given type.

        Parameters:

        `type_` - one of the AT\_XXX constants

        `ids_` - array of String primary keys

    -   ### addAppianType

        public void addAppianType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_)

        Adds a String primary key of the given Appian type to the table of Appian-typed objects.

        Parameters:

        `type_` - one of the AT\_XXX constants

        `id_` - a String primary key of an Appian object

    -   ### addAppianTypeOrTypes

        public void addAppianTypeOrTypes(int type\_, boolean isMultiple\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

    -   ### getPopulatedTypes

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getPopulatedTypes()

        Retrieves the keys for the Appian types for which this cache has entries. If any calls to the addAppianType or addAppianTypes methods have been made with a key, the returned array will contain that key.

    -   ### populate

        public com.appiancorp.process.design.validation.Errors populate([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

        Uses the given user to populate the display names.

    -   ### populate

        public com.appiancorp.process.design.validation.Errors populate([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc, boolean includeCurrentUser\_)

    -   ### getAtcTypeForTypedVariableType

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAtcTypeForTypedVariableType(int type\_)

        Utility method to retrieve the cache key for the given TypedVariable type.

        Parameters:

        `type_` - one of the constants from TypedVariable

        Returns:

        the cache key for the given type. Arrays have the same key as their corresponding scalars.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if type\_is not a valid type.

        See Also:

        -   [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### getAllDisplayNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAllDisplayNames([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") l\_)

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

        Fetches the display name for the integer primary key of the given type.

        Parameters:

        `id_` - an integer primary key

        `type_` - one of the AT\_XXX constants indicating an Appian type

        Returns:

        the display name for the Appian type object of the given type and with the given id, or `null` if no scuh object exists (or the display name has not been retrieved).

    -   ### getDisplayNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDisplayNames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

        Fetches the display names for the integer primary keys of the given type. Display names will be in the same order as the primary keys, and `null` will correspond to any primary key for which there is no display name in the cache.

        Parameters:

        `ids_` - an array of integer primary keys

        `type_` - one of the AT\_XXX constants indicating an Appian type

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

        Fetches the display name for the string primary key of the given type.

        Parameters:

        `id_` - a String primary key

        `type_` - one of the AT\_XXX constants indicating an Appian type

        Returns:

        the display name for the Appian type object of the given type and with the given id, or `null` if no scuh object exists (or the display name has not been retrieved).

    -   ### getDisplayNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDisplayNames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

        Fetches the display names for the string primary keys of the given type. Display names will be in the same order as the primary keys, and `null` will correspond to any primary key for which there is no display name in the cache.

        Parameters:

        `ids_` - an array of String primary keys

        `type_` - one of the AT\_XXX constants indicating an Appian type

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") lo\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

    -   ### getDisplayNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDisplayNames([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] los\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

    -   ### getDisplayNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDisplayNames([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

    -   ### getDisplayNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDisplayNames([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, boolean isMultiple)

    -   ### getMap

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getMap([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") key\_)

        Retreives the map of ids to display names for the given key.

        Parameters:

        `key_` - one of the AT\_XXX constants

        Returns:

        the corresponding map, never null

    -   ### getFullMap

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getFullMap()