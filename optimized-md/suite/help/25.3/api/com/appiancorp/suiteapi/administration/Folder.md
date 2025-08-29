---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/administration/Folder.html
original_path: api/com/appiancorp/suiteapi/administration/Folder.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.administration](package-summary.html)

# Class Folder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.administration.Folder

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Folder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

This class represents a folder in the Administration Console.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.administration.Folder)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Folder](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.administration")`

    `[copyNonLocalizedFieldsOnly](#copyNonLocalizedFieldsOnly\(\))()`

    Deprecated.

    Creates and returns a new Folder object.

    `[Page](../portal/Page.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getAccessiblePages](#getAccessiblePages\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Deprecated.

    Returns the description of the folder.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Returns the unique ID of the folder.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Returns the name of the folder.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getPageIds](#getPageIds\(\))()`

    Deprecated.

    Returns a list of page IDs which identify pages contained in the folder.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentId](#getParentId\(\))()`

    Deprecated.

    Returns the ID of the parent folder of the folder, or `null` if the folder has no parent.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Folder](Folder.html "class in com.appiancorp.suiteapi.administration")>`

    `[getSubFolders](#getSubFolders\(\))()`

    Deprecated.

    Returns the sub-folders of the current folder.

    `void`

    `[resolvePageIds](#resolvePageIds\(com.appiancorp.suiteapi.portal.AdministrationService\))([AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") pas)`

    Deprecated.

    Converts the parsed String UUIDs into Longs.

    `void`

    `[setAccessiblePages](#setAccessiblePages\(com.appiancorp.suiteapi.portal.Page%5B%5D\))([Page](../portal/Page.html "class in com.appiancorp.suiteapi.portal")[] accessiblePages)`

    Deprecated.

     

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Deprecated.

    See [`getDescription()`](#getDescription\(\)).

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    See [`getId()`](#getId\(\)).

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    See [`getName()`](#getName\(\)).

    `void`

    `[setPageIds](#setPageIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids)`

    Deprecated.

    See [`getPageIds()`](#getPageIds\(\)).

    `void`

    `[setParentId](#setParentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    See [`getParentId()`](#getParentId\(\)).

    `void`

    `[setSubFolders](#setSubFolders\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Folder](Folder.html "class in com.appiancorp.suiteapi.administration")> folders)`

    Deprecated.

    See [`getSubFolders()`](#getSubFolders\(\)).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Folder

        public Folder()

        Deprecated.

-   ## Method Details

    -   ### copyNonLocalizedFieldsOnly

        public [Folder](Folder.html "class in com.appiancorp.suiteapi.administration") copyNonLocalizedFieldsOnly()

        Deprecated.

        Creates and returns a new Folder object. The returned object's "non-localized" fields will be set to point to this object's corresponding fields. Non-localized fields are all the fields that are not String fields holding bundle keys.

        Returns:

        a new Folder object.

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Deprecated.

        Returns the description of the folder.

        Returns:

        the description of the folder.

        See Also:

        -   [`setDescription(String)`](#setDescription\(java.lang.String\))

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Deprecated.

        See [`getDescription()`](#getDescription\(\)).

        Parameters:

        `description_` - The description of the folder.

        See Also:

        -   [`getDescription()`](#getDescription\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Returns the unique ID of the folder.

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the unique ID of the folder.

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        See [`getId()`](#getId\(\)).

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id_` - Id to set

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Returns the name of the folder.

        Returns:

        the name of the folder.

        See Also:

        -   [`setName(String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        See [`getName()`](#getName\(\)).

        Parameters:

        `name_` - The name of this folder.

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getPageIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getPageIds()

        Deprecated.

        Returns a list of page IDs which identify pages contained in the folder.

        Returns:

        a list of page IDs which identify pages contained in the folder.

        See Also:

        -   [`setPageIds(Long[])`](#setPageIds\(java.lang.Long%5B%5D\))

    -   ### setPageIds

        public void setPageIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids)

        Deprecated.

        See [`getPageIds()`](#getPageIds\(\)).

        Parameters:

        `ids_` - An array of page IDs which identify pages contained in the folder.

        See Also:

        -   [`getPageIds()`](#getPageIds\(\))

    -   ### getParentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentId()

        Deprecated.

        Returns the ID of the parent folder of the folder, or `null` if the folder has no parent.

        Returns:

        the ID of the parent folder of the folder, or `null` if the folder has no parent.

        See Also:

        -   [`setParentId(Long)`](#setParentId\(java.lang.Long\))

    -   ### setParentId

        public void setParentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        See [`getParentId()`](#getParentId\(\)).

        Parameters:

        `id_` - The parent id.

        See Also:

        -   [`getParentId()`](#getParentId\(\))

    -   ### getSubFolders

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Folder](Folder.html "class in com.appiancorp.suiteapi.administration")\> getSubFolders()

        Deprecated.

        Returns the sub-folders of the current folder.

        Returns:

        the sub-folders of the current folder

        See Also:

        -   `#setSubFolders(Folder[])`

    -   ### setSubFolders

        public void setSubFolders([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Folder](Folder.html "class in com.appiancorp.suiteapi.administration")\> folders)

        Deprecated.

        See [`getSubFolders()`](#getSubFolders\(\)).

        Parameters:

        `folders` - An array of `Folder`s that are the sub-folders of the current folder.

        See Also:

        -   [`getSubFolders()`](#getSubFolders\(\))

    -   ### getAccessiblePages

        public [Page](../portal/Page.html "class in com.appiancorp.suiteapi.portal")\[\] getAccessiblePages()

        Deprecated.

    -   ### setAccessiblePages

        public void setAccessiblePages([Page](../portal/Page.html "class in com.appiancorp.suiteapi.portal")\[\] accessiblePages)

        Deprecated.

    -   ### resolvePageIds

        public void resolvePageIds([AdministrationService](../portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal") pas)

        Deprecated.

        Converts the parsed String UUIDs into Longs.

        Parameters:

        `pas` - the service which provides the lookup