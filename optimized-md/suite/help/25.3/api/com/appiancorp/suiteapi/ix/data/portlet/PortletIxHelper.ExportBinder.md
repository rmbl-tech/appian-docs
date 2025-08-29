---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ExportBinder.html
original_path: api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ExportBinder.html
version: "25.3"
title: "Class PortletIxHelper.ExportBinder"
page_id: "api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ExportBinder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.ix.data.portlet](package-summary.html)

# Class PortletIxHelper.ExportBinder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder

Enclosing class:

[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

* * *

public static class PortletIxHelper.ExportBinder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Allows mapping local ids to UUIDs.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ExportBinder](#%3Cinit%3E\(com.appiancorp.ix.binding.ExportBindingMap\))(com.appiancorp.ix.binding.ExportBindingMap ebm)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

    `[ExportBinder](#%3Cinit%3E\(com.appiancorp.ix.binding.ExportBindingMap,java.lang.Long,java.lang.String\))(com.appiancorp.ix.binding.ExportBindingMap ebm, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid)`

    Deprecated.

    This API is being phased out and will be removed in a future release.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `com.appiancorp.ix.binding.ExportBindingMap`

    `[getExportBindingMap](#getExportBindingMap\(\))()`

    `<I, U> U`

    `[getUuidFromId](#getUuidFromId\(java.lang.Long,I\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId, I id)`

    Returns the UUID corresponding to the given local id.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ExportBinder

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public ExportBinder(com.appiancorp.ix.binding.ExportBindingMap ebm)

        Deprecated.

        This API is being phased out and will be removed in a future release.

    -   ### ExportBinder

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public ExportBinder(com.appiancorp.ix.binding.ExportBindingMap ebm, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid)

        Deprecated.

        This API is being phased out and will be removed in a future release.

-   ## Method Details

    -   ### getUuidFromId

        public <I, U> U getUuidFromId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId, I id) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the UUID corresponding to the given local id. Note: If the id references a collab object, the id must be a content id, not an old collab id.

        Parameters:

        `datatypeId` - The type of the local id. This is the id of the type (can be obtained from [`TypedValue.getInstanceType()`](../../../type/TypedValue.html#getInstanceType\(\)) or [`DatatypeProperties.getId()`](../../../type/DatatypeProperties.html#getId\(\))).

        `id` - The local id for which the UUID should be returned.

        Returns:

        The UUID corresponding to the given local id.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getExportBindingMap

        public com.appiancorp.ix.binding.ExportBindingMap getExportBindingMap()

        Returns:

        a map of local id to UUID bindings.