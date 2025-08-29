---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.html
original_path: api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.html
version: "25.3"
title: "Class PortletIxHelper"
page_id: "api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.ix.data.portlet](package-summary.html)

# Class PortletIxHelper

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper

Direct Known Subclasses:

`[DefaultPortletIxHelper](DefaultPortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

* * *

public abstract class PortletIxHelper extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This is the base class for all portlet import/export (ix) helper classes. A "portlet ix helper class" is a concrete class that extends this class. A different portlet ix helper class can be specified for each [`PortletType`](../../../portal/PortletType.html "class in com.appiancorp.suiteapi.portal"), using the optional portlet type extension [`PortletType.EXTENSION_PORTLET_IX_HELPER_CLASS`](../../../portal/PortletType.html#EXTENSION_PORTLET_IX_HELPER_CLASS). The ix helper class can be registered along with the portlet type definition in `portlet-type-config.xml` (see that file for examples of this).

It is not required to implement a custom helper class for every portlet type. If a portlet type does not specify an ix helper class, portlets of that type will still be exported & imported correctly, but the portlet parameters will NOT be exported/imported. Not importing the parameters will result in the portlet being un-configured after it is imported in the target system (unless the portlet has no configuration in the first place or has a fallback configuration, such as the My Tasks portlet).

In order to enable the export & import of portlet parameters, there are 2 options:

1.  If the portlet has parameters, but none of them reference Appian objects, no custom helper class needs to be implemented. Instead, the default helper [`DefaultPortletIxHelper`](DefaultPortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet") should be specified as the ix helper for that portlet type; this is all that's needed for the portlet parameters to be exported & imported.
2.  If the portlet has some parameters that reference Appian objects, a custom ix helper must be implemented to enable the import & export of the parameters. The custom helper needs to implement these two methods: [`replaceIdsWithUuids(java.util.Map<java.lang.String, java.lang.Object>, com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder)`](#replaceIdsWithUuids\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder\)) and [`replaceUuidsWithIds(java.util.Map<java.lang.String, java.lang.Object>, com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder)`](#replaceUuidsWithIds\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder\)).

Additionally, a custom portlet ix helper class can be implemented in order to export & import custom portlet data (data that is not stored within the [`portlet parameters map`](../../../portal/Portlet.html#getParameters\(\))). In that case, the custom helper needs to implement these methods: [`exportExtraData(java.lang.Long, com.appiancorp.services.ServiceContext)`](#exportExtraData\(java.lang.Long,com.appiancorp.services.ServiceContext\))/[`exportResources(java.lang.Long, com.appiancorp.services.ServiceContext, com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceExporter)`](#exportResources\(java.lang.Long,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceExporter\)) and [`importExtraDataAndResources(java.lang.Long, java.util.Map<java.lang.String, java.lang.String>, com.appiancorp.services.ServiceContext, com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceImporter)`](#importExtraDataAndResources\(java.lang.Long,java.util.Map,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceImporter\)). This can be used to enable import/export of binary files and \[String, String\] key-value pairs.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[PortletIxHelper.ExportBinder](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

    Allows mapping local ids to UUIDs.

    `static class` 

    `[PortletIxHelper.ImportBinder](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

    Allows mapping UUIDs to local ids.

    `static class` 

    `[PortletIxHelper.ResourceExporter](PortletIxHelper.ResourceExporter.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

    `static class` 

    `[PortletIxHelper.ResourceImporter](PortletIxHelper.ResourceImporter.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[PortletIxHelper](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `protected void`

    `[addDiagnosticMessage](#addDiagnosticMessage\(com.appiancorp.ix.diagnostics.Diagnostic\))(com.appiancorp.ix.diagnostics.Diagnostic d)`

    Adds a message (such as a warning) that will be displayed to the user after the overall export or import operation is complete.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[exportExtraData](#exportExtraData\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Retrieves any custom portlet data to be exported.

    `void`

    `[exportResources](#exportResources\(java.lang.Long,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceExporter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [PortletIxHelper.ResourceExporter](PortletIxHelper.ResourceExporter.html "class in com.appiancorp.suiteapi.ix.data.portlet") re)`

    Exports portlet resources (such as binary files).

    `static [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

    `[getInstance](#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")> portletIxHelperClass, com.appiancorp.ix.Operation op, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid, com.appiancorp.ix.diagnostics.Diagnostics d)`

    Deprecated.

    use [`getInstance(Class, Operation, Long, String, Diagnostics, ServiceContext)`](#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics,com.appiancorp.services.ServiceContext\))

    `static [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")`

    `[getInstance](#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics,com.appiancorp.services.ServiceContext\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")> portletIxHelperClass, com.appiancorp.ix.Operation op, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid, com.appiancorp.ix.diagnostics.Diagnostics d, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    `protected [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(\))()`

    Returns the current service context.

    `protected com.appiancorp.ix.TypedId<com.appiancorp.ix.data.PortletHaul,[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getTypedId](#getTypedId\(\))()`

    Returns the id of the portlet that this helper is processing.

    `void`

    `[importExtraDataAndResources](#importExtraDataAndResources\(java.lang.Long,java.util.Map,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceImporter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> extraData, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [PortletIxHelper.ResourceImporter](PortletIxHelper.ResourceImporter.html "class in com.appiancorp.suiteapi.ix.data.portlet") ri)`

    Stores any custom portlet data exported using [`exportExtraData(java.lang.Long, com.appiancorp.services.ServiceContext)`](#exportExtraData\(java.lang.Long,com.appiancorp.services.ServiceContext\)) and [`exportResources(Long, ServiceContext, ResourceExporter)`](#exportResources\(java.lang.Long,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceExporter\)).

    `abstract void`

    `[replaceIdsWithUuids](#replaceIdsWithUuids\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> portletParamsMap, [PortletIxHelper.ExportBinder](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b)`

    Replaces all local ids within the portlet parameters with UUIDs.

    `abstract void`

    `[replaceUuidsWithIds](#replaceUuidsWithIds\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ImportBinder\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> portletParamsMap, [PortletIxHelper.ImportBinder](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b)`

    Replaces all UUIDs within the portlet parameters with local ids.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PortletIxHelper

        protected PortletIxHelper()

-   ## Method Details

    -   ### getInstance

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet") getInstance([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")\> portletIxHelperClass, com.appiancorp.ix.Operation op, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid, com.appiancorp.ix.diagnostics.Diagnostics d)

        Deprecated.

        use [`getInstance(Class, Operation, Long, String, Diagnostics, ServiceContext)`](#getInstance\(java.lang.Class,com.appiancorp.ix.Operation,java.lang.Long,java.lang.String,com.appiancorp.ix.diagnostics.Diagnostics,com.appiancorp.services.ServiceContext\))

    -   ### getInstance

        public static [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet") getInstance([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")\> portletIxHelperClass, com.appiancorp.ix.Operation op, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletUuid, com.appiancorp.ix.diagnostics.Diagnostics d, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc)

    -   ### getServiceContext

        protected [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") getServiceContext()

        Returns the current service context.

    -   ### getTypedId

        protected com.appiancorp.ix.TypedId<com.appiancorp.ix.data.PortletHaul,[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getTypedId()

        Returns the id of the portlet that this helper is processing.

    -   ### addDiagnosticMessage

        protected void addDiagnosticMessage(com.appiancorp.ix.diagnostics.Diagnostic d)

        Adds a message (such as a warning) that will be displayed to the user after the overall export or import operation is complete.

    -   ### replaceIdsWithUuids

        public abstract void replaceIdsWithUuids([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> portletParamsMap, [PortletIxHelper.ExportBinder](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Replaces all local ids within the portlet parameters with UUIDs. This method is invoked during the export of a portlet. The UUID bound to each local id should be retrieved using the provided [`PortletIxHelper.ExportBinder`](PortletIxHelper.ExportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet").

        Parameters:

        `portletParamsMap` - The map of portlet parameters (see [`Portlet.getParameters()`](../../../portal/Portlet.html#getParameters\(\))).

        `b` - API for mapping local ids to uuids.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the export of this portlet should be failed (the export driver will automatically handle the exception: it will add the portlet to the failed list and proceed with the export of other objects).

    -   ### replaceUuidsWithIds

        public abstract void replaceUuidsWithIds([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> portletParamsMap, [PortletIxHelper.ImportBinder](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet") b) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Replaces all UUIDs within the portlet parameters with local ids. This method is invoked during the import of a portlet, and performs the reverse of the conversions made by [`replaceIdsWithUuids(Map, ExportBinder)`](#replaceIdsWithUuids\(java.util.Map,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ExportBinder\)). The local id corresponding to each UUID should be retrieved using the provided [`PortletIxHelper.ImportBinder`](PortletIxHelper.ImportBinder.html "class in com.appiancorp.suiteapi.ix.data.portlet").

        Parameters:

        `portletParamsMap` - The map of portlet parameters (see [`Portlet.getParameters()`](../../../portal/Portlet.html#getParameters\(\))).

        `b` - API for mapping uuids to local ids.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the import of this portlet should be failed (the import driver will automatically handle the exception: it will add the portlet to the failed list and proceed with the import of other objects).

    -   ### exportExtraData

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> exportExtraData([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves any custom portlet data to be exported.

        Parameters:

        `portletId` - The id of the portlet being exported.

        `sc` - The service context of the user performing the export.

        Returns:

        A map of additional data to be exported. This data will be passed in to `#importExtraData` during import of the portlet.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the export of this portlet should be failed (the export driver will automatically handle the exception: it will add the portlet to the failed list and proceed with the export of other objects).

    -   ### exportResources

        public void exportResources([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [PortletIxHelper.ResourceExporter](PortletIxHelper.ResourceExporter.html "class in com.appiancorp.suiteapi.ix.data.portlet") re) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Exports portlet resources (such as binary files).

        Parameters:

        `portletId` - The id of the portlet being exported.

        `sc` - The service context of the user performing the export.

        `re` - API for exporting resources.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the export of this portlet should be failed (the export driver will automatically handle the exception: it will add the portlet to the failed list and proceed with the export of other objects).

    -   ### importExtraDataAndResources

        public void importExtraDataAndResources([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> extraData, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc, [PortletIxHelper.ResourceImporter](PortletIxHelper.ResourceImporter.html "class in com.appiancorp.suiteapi.ix.data.portlet") ri) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Stores any custom portlet data exported using [`exportExtraData(java.lang.Long, com.appiancorp.services.ServiceContext)`](#exportExtraData\(java.lang.Long,com.appiancorp.services.ServiceContext\)) and [`exportResources(Long, ServiceContext, ResourceExporter)`](#exportResources\(java.lang.Long,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceExporter\)).

        Parameters:

        `portletId` - The id of the portlet being imported.

        `extraData` - The map data exported using [`exportExtraData(java.lang.Long, com.appiancorp.services.ServiceContext)`](#exportExtraData\(java.lang.Long,com.appiancorp.services.ServiceContext\)).

        `sc` - The service context of the user performing the import.

        `ri` - API for importing resources.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the import of this portlet should be failed (the import driver will automatically handle the exception: it will add the portlet to the failed list and proceed with the import of other objects).