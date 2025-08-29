---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentBeanFactory.html
original_path: api/com/appiancorp/suiteapi/content/ContentBeanFactory.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentBeanFactory

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.ContentBeanFactory

* * *

public class ContentBeanFactory extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Provides utility methods for creating content objects based on the type identifiers.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentBeanFactory](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getContentClass](#getContentClass\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Gets the class of the content object associated with the type passed in.

    `static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getContentClass](#getContentClass\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subtype_)`

    Gets the class of the content object associated with the type and sub-type passed in.

    `static [Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[newContent](#newContent\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Creates a new Content object of the type specified.

    `static [Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[newContent](#newContent\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subtype_)`

    Creates a new Content object of the type and sub-type specified.

    `static void`

    `[setApplicationContentSubtypeClass](#setApplicationContentSubtypeClass\(int,java.lang.Class\))(int subtype_, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") customClass_)`

    Registers the java class to be instantiated when retrieving application content objects of a given subtype.

    `static void`

    `[setCustomContentSubtypeClass](#setCustomContentSubtypeClass\(int,java.lang.Class\))(int subtype_, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") customClass_)`

    Registers the java class to be instantiated when retrieving custom content objects of a given subtype.

    `static void`

    `[setCustomContentSubtypeClassesMap](#setCustomContentSubtypeClassesMap\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") subtypeToClass_)`

    Sets all the custom content subtype class mappings.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ContentBeanFactory

        public ContentBeanFactory()

-   ## Method Details

    -   ### setCustomContentSubtypeClass

        public static void setCustomContentSubtypeClass(int subtype\_, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") customClass\_)

        Registers the java class to be instantiated when retrieving custom content objects of a given subtype. The class should extend [`CustomContent`](CustomContent.html "class in com.appiancorp.suiteapi.content").

        Parameters:

        `subtype_` - The subtype of the custom content.

        `customClass_` - The class to use for custom content of this subtype.

    -   ### setApplicationContentSubtypeClass

        public static void setApplicationContentSubtypeClass(int subtype\_, [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") customClass\_)

        Registers the java class to be instantiated when retrieving application content objects of a given subtype.

        Parameters:

        `subtype_` - The subtype of the custom content.

        `customClass_` - The class to use for custom content of this subtype.

    -   ### setCustomContentSubtypeClassesMap

        public static void setCustomContentSubtypeClassesMap([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") subtypeToClass\_)

        Sets all the custom content subtype class mappings.

        Parameters:

        `subtypeToClass_` - A map of <Long, Class> entries, where the key is a custom content subtype, and the value is the java class to be instantiated when retrieving custom content of that subtype. The classes should extend [`CustomContent`](CustomContent.html "class in com.appiancorp.suiteapi.content").

    -   ### newContent

        public static [Content](Content.html "class in com.appiancorp.suiteapi.content") newContent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Creates a new Content object of the type specified. Uses `null` as the sub-type.

        Parameters:

        `type_` - the type of content to create

        Returns:

        the Content object

        See Also:

        -   [`newContent(Long, Long)`](#newContent\(java.lang.Long,java.lang.Long\))

    -   ### newContent

        public static [Content](Content.html "class in com.appiancorp.suiteapi.content") newContent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subtype\_)

        Creates a new Content object of the type and sub-type specified.

        Parameters:

        `type_` - the type of content to create

        `subtype_` - the subtype of content to create (may be `null`)

        Returns:

        the Content object

        See Also:

        -   [`newContent(Long)`](#newContent\(java.lang.Long\))

    -   ### getContentClass

        public static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getContentClass([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Gets the class of the content object associated with the type passed in. Each of the classes returned extends [`Content`](Content.html "class in com.appiancorp.suiteapi.content").

        Parameters:

        `type_` - the content type

        Returns:

        the associated class

        See Also:

        -   [`getContentClass(Long, Long)`](#getContentClass\(java.lang.Long,java.lang.Long\))

    -   ### getContentClass

        public static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getContentClass([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subtype\_)

        Gets the class of the content object associated with the type and sub-type passed in. Each of the classes returned extends [`Content`](Content.html "class in com.appiancorp.suiteapi.content").

        Parameters:

        `type_` - the content type

        `subtype_` - the content sub-type

        Returns:

        the associated class

        See Also:

        -   [`getContentClass(Long)`](#getContentClass\(java.lang.Long\))