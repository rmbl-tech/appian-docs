---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/data/portlet/DefaultPortletIxHelper.html
original_path: api/com/appiancorp/suiteapi/ix/data/portlet/DefaultPortletIxHelper.html
version: "25.3"
title: "Class DefaultPortletIxHelper"
page_id: "api/com/appiancorp/suiteapi/ix/data/portlet/DefaultPortletIxHelper"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.ix.data.portlet](package-summary.html)

# Class DefaultPortletIxHelper

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

com.appiancorp.suiteapi.ix.data.portlet.DefaultPortletIxHelper

* * *

public final class DefaultPortletIxHelper extends [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class com.appiancorp.suiteapi.ix.data.portlet.[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

    `[PortletIxHelper.ExportBinder](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet"), [PortletIxHelper.ImportBinder](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet"), [PortletIxHelper.ResourceExporter](PortletIxHelper.ResourceExporter.html "class in com.appiancorp.suiteapi.ix.data.portlet"), [PortletIxHelper.ResourceImporter](PortletIxHelper.ResourceImporter.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DefaultPortletIxHelper](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[replaceIdsWithUuids](#replaceIdsWithUuids\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> portletParamsMap, [PortletIxHelper.ExportBinder](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b)`

    Replaces all local ids within the portlet parameters with UUIDs.

    `void`

    `[replaceUuidsWithIds](#replaceUuidsWithIds\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> portletParamsMap, [PortletIxHelper.ImportBinder](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b)`

    Replaces all UUIDs within the portlet parameters with local ids.

    ### Methods inherited from class com.appiancorp.suiteapi.ix.data.portlet.[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

    `[addDiagnosticMessage](PortletIxHelper.html#addDiagnosticMessage\(com.appiancorp.ix.diagnostics.Diagnostic\)), [exportExtraData](PortletIxHelper.html#exportExtraData\(java.lang.Long,com.appiancorp.services.ServiceContext\)), [exportResources](PortletIxHelper.html#exportResources\(java.lang.Long,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceExporter\)), [getInstance](PortletIxHelper.html#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics\)), [getInstance](PortletIxHelper.html#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics,com.appiancorp.services.ServiceContext\)), [getServiceContext](PortletIxHelper.html#getServiceContext\(\)), [getTypedId](PortletIxHelper.html#getTypedId\(\)), [importExtraDataAndResources](PortletIxHelper.html#importExtraDataAndResources\(java.lang.Long,java.util.Map,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceImporter\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### DefaultPortletIxHelper

        public DefaultPortletIxHelper()

-   ## Method Details

    -   ### replaceIdsWithUuids

        public void replaceIdsWithUuids([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> portletParamsMap, [PortletIxHelper.ExportBinder](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Description copied from class: `[PortletIxHelper](PortletIxHelper.html#replaceIdsWithUuids\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder\))`

        Replaces all local ids within the portlet parameters with UUIDs. This method is invoked during the export of a portlet. The UUID bound to each local id should be retrieved using the provided [`PortletIxHelper.ExportBinder`](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet").

        Specified by:

        `[replaceIdsWithUuids](PortletIxHelper.html#replaceIdsWithUuids\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder\))` in class `[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

        Parameters:

        `portletParamsMap` - The map of portlet parameters (see [`Portlet.getParameters()`](../../../portal/Portlet.html#getParameters\(\))).

        `b` - API for mapping local ids to uuids.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the export of this portlet should be failed (the export driver will automatically handle the exception: it will add the portlet to the failed list and proceed with the export of other objects).

    -   ### replaceUuidsWithIds

        public void replaceUuidsWithIds([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> portletParamsMap, [PortletIxHelper.ImportBinder](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Description copied from class: `[PortletIxHelper](PortletIxHelper.html#replaceUuidsWithIds\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder\))`

        Replaces all UUIDs within the portlet parameters with local ids. This method is invoked during the import of a portlet, and performs the reverse of the conversions made by [`PortletIxHelper.replaceIdsWithUuids(Map, ExportBinder)`](PortletIxHelper.html#replaceIdsWithUuids\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder\)). The local id corresponding to each UUID should be retrieved using the provided [`PortletIxHelper.ImportBinder`](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet").

        Specified by:

        `[replaceUuidsWithIds](PortletIxHelper.html#replaceUuidsWithIds\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder\))` in class `[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

        Parameters:

        `portletParamsMap` - The map of portlet parameters (see [`Portlet.getParameters()`](../../../portal/Portlet.html#getParameters\(\))).

        `b` - API for mapping uuids to local ids.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the import of this portlet should be failed (the import driver will automatically handle the exception: it will add the portlet to the failed list and proceed with the import of other objects).