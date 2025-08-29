---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentFilter.html
original_path: api/com/appiancorp/suiteapi/content/ContentFilter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.ContentFilter

* * *

public class ContentFilter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Filters may be applied to Content Service operations in order to filter the final results by the criteria listed here. All string filters are database regular expressions: A database regular expression is one executing within backend database, supporting a set of regular expression patterns. The following escape character commands are supported: \* matches zero or more characters (e.g., "\*.jpg") ? matches exactly one character (e.g., "myfile?.txt") \[characters\] matches exactly one of the characters given (e.g., \[cC\]). Other characters represent themselves. Within \[characters\], additional escape character commands are supported: ^characters is none of the character character-character is the range of characters in ASCII between the given two characters, such as 0-9 or a-z. A single character in \[\] allows escape characters themselves to be represented, such as \[\*\], \[?\] and \[\[\].

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[ContentFilter.KeyValue](ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content")`

    This represents a Key and Value of a Content Attribute.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[ALL](#ALL)`

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[APPLICATIONS](#APPLICATIONS)`

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[DOCUMENTS](#DOCUMENTS)`

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[FOLDERS](#FOLDERS)`

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[KNOWLEDGE_CENTERS](#KNOWLEDGE_CENTERS)`

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[RULE_FOLDERS](#RULE_FOLDERS)`

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[RULES](#RULES)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentFilter](#%3Cinit%3E\(int\))(int typemask_)`

    Constructs a filter which only returns Content items matching the given typemask.

    `[ContentFilter](#%3Cinit%3E\(int,int\))(int typemask_, int subtype_)`

    Constructs a filter which only returns Content items matching the given typemask and subtype.

    `[ContentFilter](#%3Cinit%3E\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Constructs a filter which only returns Content items matching the given typemask.

    `[ContentFilter](#%3Cinit%3E\(java.lang.Integer,java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") subtype_)`

    Constructs a filter which only returns Content items matching the given typemask and subtype.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAccessLevel](#getAccessLevel\(\))()`

    Set the access level for this filter.

    `[ContentFilter.KeyValue](ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content")[]`

    `[getAttributes](#getAttributes\(\))()`

    Return the attributes searched for by the filter.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Returns the description expression of the filter.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getExtension](#getExtension\(\))()`

    Returns the extensions of the filter.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Returns the name expression of the filter.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParent](#getParent\(\))()`

    Returns the parent for the filter.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getRoot](#getRoot\(\))()`

    Get the root for this filter.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSubtype](#getSubtype\(\))()`

    Returns the subtype for this filter.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getTypemask](#getTypemask\(\))()`

    Get the typemask for this filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setAccessLevel](#setAccessLevel\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") accessLevel_)`

    Get the access level for this filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setAttribute](#setAttribute\(com.appiancorp.suiteapi.content.ContentFilter.KeyValue%5B%5D\))([ContentFilter.KeyValue](ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content")[] attributes)`

    Set the KeyValues for an attribute search.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Set the description expression of the filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setExtension](#setExtension\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] extension_)`

    Set the extensions of the filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Set the name expression of the filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setParent](#setParent\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parent_)`

    Set the parent for the filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setRoot](#setRoot\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_)`

    Set the root for this filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setSubtype](#setSubtype\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") subtype_)`

    Set the subtype for this filter.

    `[ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[setTypemask](#setTypemask\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Set the typemask for this filter.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### DOCUMENTS

        public static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") DOCUMENTS

    -   ### FOLDERS

        public static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") FOLDERS

    -   ### RULES

        public static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") RULES

    -   ### RULE\_FOLDERS

        public static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") RULE\_FOLDERS

    -   ### APPLICATIONS

        public static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") APPLICATIONS

    -   ### KNOWLEDGE\_CENTERS

        public static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") KNOWLEDGE\_CENTERS

    -   ### ALL

        public static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") ALL

-   ## Constructor Details

    -   ### ContentFilter

        public ContentFilter(int typemask\_)

        Constructs a filter which only returns Content items matching the given typemask.

        Parameters:

        `typemask_` - any combination of the TYPE\_ constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

    -   ### ContentFilter

        public ContentFilter(int typemask\_, int subtype\_)

        Constructs a filter which only returns Content items matching the given typemask and subtype.

        Parameters:

        `typemask_` - any combination of the TYPE\_ constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

        `subtype_` - subtype

    -   ### ContentFilter

        public ContentFilter([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_)

        Constructs a filter which only returns Content items matching the given typemask.

        Parameters:

        `typemask_` - any combination of the TYPE\_ constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

    -   ### ContentFilter

        public ContentFilter([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") subtype\_)

        Constructs a filter which only returns Content items matching the given typemask and subtype.

        Parameters:

        `typemask_` - any combination of the TYPE\_ constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

        `subtype_` - subtype

-   ## Method Details

    -   ### getSubtype

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSubtype()

        Returns the subtype for this filter. The subtype must match exactly in order for the Content to be returned, or set to null to ignore.

        Returns:

        the subtype

        See Also:

        -   [`setSubtype(Integer)`](#setSubtype\(java.lang.Integer\))

    -   ### setSubtype

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setSubtype([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") subtype\_)

        Set the subtype for this filter. The subtype must match exactly in order for the Content to be returned, or set to null to ignore.

        Parameters:

        `subtype_` - the subtype, or null to ignore the subtype

        Returns:

        the ContentFilter

        See Also:

        -   [`getSubtype()`](#getSubtype\(\))

    -   ### getTypemask

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getTypemask()

        Get the typemask for this filter. The typemask is 'and'ed with the type of the Content, returning the Content where the 'and' is non-0.

        Returns:

        the typemask

        See Also:

        -   [`setTypemask(Integer)`](#setTypemask\(java.lang.Integer\))

    -   ### setTypemask

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setTypemask([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_)

        Set the typemask for this filter. The typemask is 'and'ed with the type of the Content, returning the Content where the 'and' is non-0.

        Parameters:

        `typemask_` - any combination of the TYPE\_ constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

        Returns:

        the ContentFilter

        See Also:

        -   [`getTypemask()`](#getTypemask\(\))

    -   ### getRoot

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getRoot()

        Get the root for this filter. Filter will only return content items that are descendants of this root

        Returns:

        the root.

        See Also:

        -   [`setRoot(Long)`](#setRoot\(java.lang.Long\))

    -   ### setRoot

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_)

        Set the root for this filter. Filter will only return content items that are descendants of this root

        Parameters:

        `root_` - The root to set.

        Returns:

        the ContentFilter

        See Also:

        -   [`getRoot()`](#getRoot\(\))

    -   ### getAccessLevel

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAccessLevel()

        Set the access level for this filter. Filter will only return content of this access level.

        Returns:

        the accessLevel.

        See Also:

        -   [`setAccessLevel(Integer)`](#setAccessLevel\(java.lang.Integer\))

    -   ### setAccessLevel

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setAccessLevel([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") accessLevel\_)

        Get the access level for this filter. Filter will only return content of this access level.

        Parameters:

        `accessLevel_` - The accessLevel to set.

        Returns:

        the ContentFilter

        See Also:

        -   [`getAccessLevel()`](#getAccessLevel\(\))

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Returns the description expression of the filter. Filter will only return content items whose descriptions match this regular expression.

        Returns:

        Returns the description.

        See Also:

        -   [`setDescription(String)`](#setDescription\(java.lang.String\))

    -   ### setDescription

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Set the description expression of the filter. Filter will only return content items whose descriptions match this regular expression.

        Parameters:

        `description_` - The description to set.

        Returns:

        the ContentFilter

        See Also:

        -   [`getDescription()`](#getDescription\(\))

    -   ### getExtension

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getExtension()

        Returns the extensions of the filter. Filter will only return content items with the given extensions.

        Returns:

        Returns the extension.

        See Also:

        -   [`setExtension(String[])`](#setExtension\(java.lang.String%5B%5D\))

    -   ### setExtension

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] extension\_)

        Set the extensions of the filter. Filter will only return content items with the given extensions.

        Parameters:

        `extension_` - The extension to set.

        Returns:

        the ContentFilter

        See Also:

        -   [`getExtension()`](#getExtension\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Returns the name expression of the filter. Filter will only return content items whose names match this regular expression.

        Returns:

        Returns the name.

        See Also:

        -   [`setName(String)`](#setName\(java.lang.String\))

    -   ### setName

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Set the name expression of the filter. Filter will only return content items whose names match this regular expression.

        Parameters:

        `name_` - The name to set.

        Returns:

        the ContentFilter

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getParent

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParent()

        Returns the parent for the filter. Filter will only return content items that are children of the given parent.

        Returns:

        Returns the parent.

        See Also:

        -   [`setParent(Long)`](#setParent\(java.lang.Long\))

    -   ### setParent

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parent\_)

        Set the parent for the filter. Filter will only return content items that are children of the given parent.

        Parameters:

        `parent_` - The parent to set.

        Returns:

        the ContentFilter

        See Also:

        -   [`getParent()`](#getParent\(\))

    -   ### getAttributes

        public [ContentFilter.KeyValue](ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content")\[\] getAttributes()

        Return the attributes searched for by the filter. Filter will only return content items that have attributes with the given name and value from the KeyValue.

        Returns:

    -   ### setAttribute

        public [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") setAttribute([ContentFilter.KeyValue](ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content")\[\] attributes)

        Set the KeyValues for an attribute search. Filter will only return content items that have attributes with the given key and value from the KeyValue.

        Parameters:

        `attribute_` - The name and value of the attribute.

        Returns:

        the ContentFilter

        See Also:

        -   `#getAttribute()`