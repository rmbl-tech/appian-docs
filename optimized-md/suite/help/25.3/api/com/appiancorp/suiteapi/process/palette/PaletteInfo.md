---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/palette/PaletteInfo.html
original_path: api/com/appiancorp/suiteapi/process/palette/PaletteInfo.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.palette](package-summary.html)

# Annotation Interface PaletteInfo

* * *

[@Inherited](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Inherited.html "class or interface in java.lang.annotation") [@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation"),[ANNOTATION\_TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#ANNOTATION_TYPE "class or interface in java.lang.annotation")}) public @interface PaletteInfo

-   ## Required Element Summary

    Required Elements

    Modifier and Type

    Required Element

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[palette](#palette\(\))`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[paletteCategory](#paletteCategory\(\))`

    Since 22.2, any category other than [`PaletteCategoryConstants.WORKFLOW`](PaletteCategoryConstants.html#WORKFLOW), [`PaletteCategoryConstants.AUTOMATION_SMART_SERVICES`](PaletteCategoryConstants.html#AUTOMATION_SMART_SERVICES), [`PaletteCategoryConstants.DEPRECATED_SERVICES`](PaletteCategoryConstants.html#DEPRECATED_SERVICES) or [`PaletteCategoryConstants.HIDDEN_CATEGORY`](PaletteCategoryConstants.html#HIDDEN_CATEGORY) will be mapped to [`PaletteCategoryConstants.AUTOMATION_SMART_SERVICES`](PaletteCategoryConstants.html#AUTOMATION_SMART_SERVICES)

-   ## Element Details

    -   ### paletteCategory

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") paletteCategory

        Since 22.2, any category other than [`PaletteCategoryConstants.WORKFLOW`](PaletteCategoryConstants.html#WORKFLOW), [`PaletteCategoryConstants.AUTOMATION_SMART_SERVICES`](PaletteCategoryConstants.html#AUTOMATION_SMART_SERVICES), [`PaletteCategoryConstants.DEPRECATED_SERVICES`](PaletteCategoryConstants.html#DEPRECATED_SERVICES) or [`PaletteCategoryConstants.HIDDEN_CATEGORY`](PaletteCategoryConstants.html#HIDDEN_CATEGORY) will be mapped to [`PaletteCategoryConstants.AUTOMATION_SMART_SERVICES`](PaletteCategoryConstants.html#AUTOMATION_SMART_SERVICES)

    -   ### palette

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") palette