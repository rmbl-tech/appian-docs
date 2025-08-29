---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIdentityManagement.html
original_path: api/com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIdentityManagement.html
version: "25.3"
title: "Annotation Interface AutomationSmartServicesIdentityManagement"
page_id: "api/com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIdentityManagement"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.palette](package-summary.html)

# Annotation Interface AutomationSmartServicesIdentityManagement

* * *

[@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")([TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation")) [@PaletteInfo](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette")([paletteCategory](PaletteInfo.html#paletteCategory\(\))\="Automation Smart Services", [palette](PaletteInfo.html#palette\(\))\="Identity Management") public @interface AutomationSmartServicesIdentityManagement

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

To create a new palette category for your smart service, use the `PaletteInfo` annotation.

See Also:

-   [`PaletteInfo`](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette")