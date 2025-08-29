---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/palette/DataServices.html
original_path: api/com/appiancorp/suiteapi/process/palette/DataServices.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.palette](package-summary.html)

# Annotation Interface DataServices

* * *

[@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")([TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation")) [@PaletteInfo](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette")([paletteCategory](PaletteInfo.html#paletteCategory\(\))\="Integration Services", [palette](PaletteInfo.html#palette\(\))\="Data Services") [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public @interface DataServices

Deprecated.

This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesDataServices`](AutomationSmartServicesDataServices.html "annotation interface in com.appiancorp.suiteapi.process.palette")

This annotation can be used on a custom smart service to designate that it should appear in the palette in a pre-existing palette category.

To create a new palette category for your smart service, use the `PaletteInfo` annotation.

See Also:

-   [`PaletteInfo`](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette")