---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/gui/AnnotationArtifact.html
original_path: api/com/appiancorp/suiteapi/process/gui/AnnotationArtifact.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.gui](package-summary.html)

# Class AnnotationArtifact

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.gui.AnnotationArtifact

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`

* * *

public class AnnotationArtifact extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[INDEX_BOLD](#INDEX_BOLD)`

    `static final int`

    `[INDEX_ITALIC](#INDEX_ITALIC)`

    `static final int`

    `[INDEX_UNDERLINE](#INDEX_UNDERLINE)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AnnotationArtifact](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Connection](../Connection.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssociations](#getAssociations\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGuiId](#getGuiId\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getHeight](#getHeight\(\))()`

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[Label](Label.html "class in com.appiancorp.suiteapi.process.gui")`

    `[getLabelStyle](#getLabelStyle\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getText](#getText\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getWidth](#getWidth\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getX](#getX\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getY](#getY\(\))()`

    `void`

    `[setAssociations](#setAssociations\(com.appiancorp.suiteapi.process.Connection%5B%5D\))([Connection](../Connection.html "class in com.appiancorp.suiteapi.process")[] associations_)`

    `void`

    `[setGuiId](#setGuiId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") guiId_)`

    `void`

    `[setHeight](#setHeight\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") height_)`

    `void`

    `[setLabelStyle](#setLabelStyle\(com.appiancorp.suiteapi.process.gui.Label\))([Label](Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle_)`

    `void`

    `[setText](#setText\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text_)`

    `void`

    `[setWidth](#setWidth\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") width_)`

    `void`

    `[setX](#setX\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") x_)`

    `void`

    `[setY](#setY\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") y_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### INDEX\_BOLD

        public static final int INDEX\_BOLD

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.gui.AnnotationArtifact.INDEX_BOLD)

    -   ### INDEX\_ITALIC

        public static final int INDEX\_ITALIC

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.gui.AnnotationArtifact.INDEX_ITALIC)

    -   ### INDEX\_UNDERLINE

        public static final int INDEX\_UNDERLINE

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.gui.AnnotationArtifact.INDEX_UNDERLINE)

-   ## Constructor Details

    -   ### AnnotationArtifact

        public AnnotationArtifact()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getGuiId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGuiId()

    -   ### setGuiId

        public void setGuiId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") guiId\_)

    -   ### getText

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getText()

    -   ### setText

        public void setText([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text\_)

    -   ### getX

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getX()

    -   ### setX

        public void setX([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") x\_)

    -   ### getY

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getY()

    -   ### setY

        public void setY([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") y\_)

    -   ### getWidth

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getWidth()

    -   ### setWidth

        public void setWidth([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") width\_)

    -   ### getHeight

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getHeight()

    -   ### setHeight

        public void setHeight([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") height\_)

    -   ### getLabelStyle

        public [Label](Label.html "class in com.appiancorp.suiteapi.process.gui") getLabelStyle()

    -   ### setLabelStyle

        public void setLabelStyle([Label](Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle\_)

    -   ### getAssociations

        public [Connection](../Connection.html "class in com.appiancorp.suiteapi.process")\[\] getAssociations()

    -   ### setAssociations

        public void setAssociations([Connection](../Connection.html "class in com.appiancorp.suiteapi.process")\[\] associations\_)