---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/ImportResults.html
original_path: api/com/appiancorp/suiteapi/ix/ImportResults.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.ix](package-summary.html)

# Class ImportResults

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.ix.ImportResults

* * *

public class ImportResults extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Detailed results from importing or inspecting a package with objects. When inspecting, this reports which objects will be created, or updated, and which objects will fail to be imported due to a missing precedent. When importing, this is a report of exactly which objects were created, updated, or failed to import.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ImportResults](#%3Cinit%3E\(java.lang.Long,java.util.List,java.util.List,java.util.List\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") logId, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> createdObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> updatedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> failedObjects)`

    Deprecated.

    This constructor will be removed in a future release.

    `[ImportResults](#%3Cinit%3E\(java.lang.Long,java.util.List,java.util.List,java.util.List,java.util.List,java.util.List\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") logId, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> createdObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> updatedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> failedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> notChangedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")> conflictedObjects)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")>`

    `[getConflictedObjects](#getConflictedObjects\(\))()`

    A conflict means that changes were made in both the source (package) and target systems.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")>`

    `[getCreatedObjects](#getCreatedObjects\(\))()`

    On import, returns the list of objects that were created.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")>`

    `[getFailedObjects](#getFailedObjects\(\))()`

    On import, returns the list of objects that have failed to import, along with the list of objects already in the target system which are now in a failure state as a result of this import.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getLogDocumentId](#getLogDocumentId\(\))()`

    Retrieves the document ID of the detailed import log file.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")>`

    `[getNotChangedObjects](#getNotChangedObjects\(\))()`

    On import, returns the list of objects that were skipped because no changes were detected.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")>`

    `[getUpdatedObjects](#getUpdatedObjects\(\))()`

    On import, returns the list of objects that were updated.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ImportResults

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public ImportResults([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") logId, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> createdObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> updatedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> failedObjects)

        Deprecated.

        This constructor will be removed in a future release. Use [`ImportResults(Long, List, List, List, List, List)`](#%3Cinit%3E\(java.lang.Long,java.util.List,java.util.List,java.util.List,java.util.List,java.util.List\)) instead

    -   ### ImportResults

        public ImportResults([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") logId, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> createdObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> updatedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> failedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> notChangedObjects, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> conflictedObjects)

-   ## Method Details

    -   ### getLogDocumentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getLogDocumentId()

        Retrieves the document ID of the detailed import log file.

        Returns:

        the document ID of the detailed import log file.

    -   ### getCreatedObjects

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> getCreatedObjects()

        On import, returns the list of objects that were created. On inspect, returns the list of objects that will be created. This method internally uses [`Collections.unmodifiableList(List)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableList\(java.util.List\) "class or interface in java.util") in order to return an unmodifiable list.

        Returns:

        the list of objects that were or would be created.

    -   ### getUpdatedObjects

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> getUpdatedObjects()

        On import, returns the list of objects that were updated. On inspect, returns the list of objects that will be updated. This method internally uses [`Collections.unmodifiableList(List)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableList\(java.util.List\) "class or interface in java.util") in order to return an unmodifiable list.

        Returns:

        the list of objects that were or would be updated.

    -   ### getNotChangedObjects

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> getNotChangedObjects()

        On import, returns the list of objects that were skipped because no changes were detected. On inspect, returns the list of objects that will be skipped on import because no changes have been detected. Import can be forced by including an import customization file with the relevant setting. This method internally uses [`Collections.unmodifiableList(List)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableList\(java.util.List\) "class or interface in java.util") in order to return an unmodifiable list.

        Returns:

        the list of objects that were not changed on import or would not be changed on inspect. Not changed objects are the ones in the import package which are identical to an object already on the target system.

    -   ### getConflictedObjects

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> getConflictedObjects()

        A conflict means that changes were made in both the source (package) and target systems. On import, returns the list of objects where conflicts were detected and changes in the target system were overwritten by the definition in the import package. On inspect, returns the list of objects where conflicts were detected. If imported, these objects will overwrite any changes in the target system. This method internally uses [`Collections.unmodifiableList(List)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableList\(java.util.List\) "class or interface in java.util") in order to return an unmodifiable list.

        Returns:

        the subset of [`getUpdatedObjects()`](#getUpdatedObjects\(\)) where the object in the import package overwrote or would have overwritten a change on the target system.

    -   ### getFailedObjects

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ImportObject](ImportObject.html "class in com.appiancorp.suiteapi.ix")\> getFailedObjects()

        On import, returns the list of objects that have failed to import, along with the list of objects already in the target system which are now in a failure state as a result of this import. On inspect, returns the list of objects that will fail to import, along with the list of objects already in the target system which would be in a failure state as a result of this import. This method internally uses [`Collections.unmodifiableList(List)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableList\(java.util.List\) "class or interface in java.util") in order to return an unmodifiable list.

        Returns:

        the list of objects that have failed or will fail to import.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`