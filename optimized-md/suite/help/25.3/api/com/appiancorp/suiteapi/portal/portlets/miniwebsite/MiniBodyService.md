---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.miniwebsite](package-summary.html)

# Interface MiniBodyService

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface MiniBodyService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines methods for manipulating the body of miniwebsite portlets.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[copyWebsiteBody$UPDATES](#copyWebsiteBody$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createWebsiteBody$UPDATES](#createWebsiteBody$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteWebsiteBody$UPDATES](#deleteWebsiteBody$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[readWebsiteBody$UPDATES](#readWebsiteBody$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateWebsiteBody$UPDATES](#updateWebsiteBody$UPDATES)`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[copyWebsiteBody](#copyWebsiteBody\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") oldId_)`

    Deprecated.

    Copies the body of one miniwebsite portlet to another

    `void`

    `[createWebsiteBody](#createWebsiteBody\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text_)`

    Deprecated.

    Stores the body of a miniwebsite portlet

    `void`

    `[deleteWebsiteBody](#deleteWebsiteBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    Deprecated.

    Deletes the body of a miniwebsite portlet

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[readWebsiteBody](#readWebsiteBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    Deprecated.

    Reads the body of a miniwebsite portlet

    `void`

    `[updateWebsiteBody](#updateWebsiteBody\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text_)`

    Deprecated.

    Updates the body of a miniwebsite portlet

-   ## Field Details

    -   ### readWebsiteBody$UPDATES

        static final boolean readWebsiteBody$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniBodyService.readWebsiteBody$UPDATES)

    -   ### createWebsiteBody$UPDATES

        static final boolean createWebsiteBody$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniBodyService.createWebsiteBody$UPDATES)

    -   ### updateWebsiteBody$UPDATES

        static final boolean updateWebsiteBody$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniBodyService.updateWebsiteBody$UPDATES)

    -   ### copyWebsiteBody$UPDATES

        static final boolean copyWebsiteBody$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniBodyService.copyWebsiteBody$UPDATES)

    -   ### deleteWebsiteBody$UPDATES

        static final boolean deleteWebsiteBody$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniBodyService.deleteWebsiteBody$UPDATES)

-   ## Method Details

    -   ### readWebsiteBody

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") readWebsiteBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_) throws [AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        Reads the body of a miniwebsite portlet

        Parameters:

        `id_` - The ID of a miniwebsite portlet

        Returns:

        The String body, if found; `null`, if not found.

        Throws:

        `[AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

    -   ### createWebsiteBody

        void createWebsiteBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text\_) throws [AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        Stores the body of a miniwebsite portlet

        Parameters:

        `id_` - The ID of a miniwebsite portlet

        `text_` - The body to be stored

        Throws:

        `[AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

    -   ### updateWebsiteBody

        void updateWebsiteBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text\_) throws [AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        Updates the body of a miniwebsite portlet

        Parameters:

        `id_` - The ID of a miniwebsite portlet

        `text_` - The body to be updated

        Throws:

        `[AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

    -   ### copyWebsiteBody

        void copyWebsiteBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") oldId\_) throws [FileNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileNotFoundException.html "class or interface in java.io"), [AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        Copies the body of one miniwebsite portlet to another

        Parameters:

        `newId_` - The ID of the miniwebsite portlet that is to be updated

        `oldId_` - The ID of the miniwebsite portlet that is to be copied

        Throws:

        `[FileNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileNotFoundException.html "class or interface in java.io")` - if the miniwebsite portlet that is to be updated is not found

        `[AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

    -   ### deleteWebsiteBody

        void deleteWebsiteBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_) throws [AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        Deletes the body of a miniwebsite portlet

        Parameters:

        `id_` - The ID of a miniwebsite portlet

        Throws:

        `[AppianException](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method