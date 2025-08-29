---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ImportBinder.html
original_path: api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ImportBinder.html
version: "25.3"
title: "Class PortletIxHelper.ImportBinder"
page_id: "api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ImportBinder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.ix.data.portlet](package-summary.html)

# Class PortletIxHelper.ImportBinder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder

Enclosing class:

[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

* * *

public static class PortletIxHelper.ImportBinder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Allows mapping UUIDs to local ids.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ImportBinder](#%3Cinit%3E\(com.appiancorp.ix.binding.ImportBindingMap\))(com.appiancorp.ix.binding.ImportBindingMap ibm)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `[ImportBinder](#%3Cinit%3E\(com.appiancorp.ix.binding.ImportBindingMap,java.lang.Long,java.lang.String\))(com.appiancorp.ix.binding.ImportBindingMap ibm, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `<I, U> I`

    `[getIdFromUuid](#getIdFromUuid\(java.lang.Long,U\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId, U uuid)`

    Returns the local id corresponding to the given UUID.

    `com.appiancorp.ix.binding.ImportBindingMap`

    `[getImportBindingMap](#getImportBindingMap\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ImportBinder

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public ImportBinder(com.appiancorp.ix.binding.ImportBindingMap ibm)

        Deprecated.

        This API is being phased out and will be removed in a future release.

    -   ### ImportBinder

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public ImportBinder(com.appiancorp.ix.binding.ImportBindingMap ibm, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid)

        Deprecated.

        This API is being phased out and will be removed in a future release.

-   ## Method Details

    -   ### getIdFromUuid

        public <I, U> I getIdFromUuid([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId, U uuid) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the local id corresponding to the given UUID. Note: If the UUID references a collab object, the local id returned is a content id, not an old collab id.

        Parameters:

        `datatypeId` - The type of the UUID. This is the id of the type (can be obtained from [`TypedValue.getInstanceType()`](../../../type/TypedValue.html#getInstanceType\(\)) or [`DatatypeProperties.getId()`](../../../type/DatatypeProperties.html#getId\(\))).

        `uuid` - The UUID for which the local id should be returned.

        Returns:

        The local id corresponding to the given UUID.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getImportBindingMap

        public com.appiancorp.ix.binding.ImportBindingMap getImportBindingMap()

        Returns:

        a map of UUID to local id bindings.