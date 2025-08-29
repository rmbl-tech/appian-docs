---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/XMLBuilderUtils.html
original_path: api/com/appiancorp/suiteapi/process/XMLBuilderUtils.html
version: "25.3"
title: "Class XMLBuilderUtils"
page_id: "api/com/appiancorp/suiteapi/process/XMLBuilderUtils"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class XMLBuilderUtils

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.XMLBuilderUtils

* * *

public class XMLBuilderUtils extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Class provides utility methods to create an XML document

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[XMLBuilderUtils](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static void`

    `[addAttribute](#addAttribute\(java.lang.StringBuffer,java.lang.String,java.lang.String,boolean\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attr_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value_, boolean escape_)`

    Adds an XML attribute to a buffer

    `static void`

    `[addCData](#addCData\(java.lang.StringBuffer,java.lang.String\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value_)`

    Encloses an item in CDATA tags

    `static void`

    `[addSimpleElement](#addSimpleElement\(java.lang.StringBuffer,java.lang.String,java.lang.String,boolean\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") element_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body_, boolean cData_)`

    Adds a simple XML element to a buffer

    `static void`

    `[appendAsHtmlString](#appendAsHtmlString\(java.lang.StringBuffer,char%5B%5D\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_, char[] text_)`

    Appends the plain text as an HTML string, escaping reserved characters and replacing \\n with
    along the way

    `static void`

    `[appendAsHtmlString](#appendAsHtmlString\(java.lang.StringBuffer,java.lang.String\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text_)`

    Appends the plain text as an HTML string, escaping reserved characters and replacing \\n with
    along the way

    `static void`

    `[appendAsHtmlString](#appendAsHtmlString\(java.lang.StringBuffer,java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_, [StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") text_)`

    Appends the plain text as an HTML string, escaping reserved characters and replacing \\n with
    along the way

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### XMLBuilderUtils

        public XMLBuilderUtils()

-   ## Method Details

    -   ### addCData

        public static void addCData([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value\_)

        Encloses an item in CDATA tags

        Parameters:

        `buffer_` - buffer to add to

        `value_` - value to enclose in CDATA tags

    -   ### addSimpleElement

        public static void addSimpleElement([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") element\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body\_, boolean cData\_)

        Adds a simple XML element to a buffer

        Parameters:

        `buffer_` - buffer to add xml element to

        `element_` - element to add

        `body_` - body of element

        `cData_` - whether or not the element is CDATA. If it is, then it will be enclosed in CDATA tags using [`addCData(java.lang.StringBuffer, java.lang.String)`](#addCData\(java.lang.StringBuffer,java.lang.String\))

    -   ### addAttribute

        public static void addAttribute([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attr\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value\_, boolean escape\_)

        Adds an XML attribute to a buffer

        Parameters:

        `buffer_` - buffer to add xml element to

        `attr_` - the attribute name

        `value_` - attribute value

        `escape_` - whether or not the element should be escaped to HTML (follows the same rules as appendAsHtmlString)

    -   ### appendAsHtmlString

        public static void appendAsHtmlString([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_, char\[\] text\_)

        Appends the plain text as an HTML string, escaping reserved characters and replacing \\n with
        along the way

        Parameters:

        `buffer_` - buffer to append the HTML data to

        `text_` - plain text version of the text to add

    -   ### appendAsHtmlString

        public static void appendAsHtmlString([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text\_)

        Appends the plain text as an HTML string, escaping reserved characters and replacing \\n with
        along the way

        Parameters:

        `buffer_` - buffer to append the HTML data to

        `text_` - plain text version of the text to add

        See Also:

        -   [`appendAsHtmlString(StringBuffer, char[])`](#appendAsHtmlString\(java.lang.StringBuffer,char%5B%5D\))

    -   ### appendAsHtmlString

        public static void appendAsHtmlString([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_, [StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") text\_)

        Appends the plain text as an HTML string, escaping reserved characters and replacing \\n with
        along the way

        Parameters:

        `buffer_` - buffer to append the HTML data to

        `text_` - plain text version of the text to add

        See Also:

        -   [`appendAsHtmlString(StringBuffer, char[])`](#appendAsHtmlString\(java.lang.StringBuffer,char%5B%5D\))