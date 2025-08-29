---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/web/portal/PortalStateTag.html
original_path: api/com/appiancorp/suiteapi/web/portal/PortalStateTag.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.web.portal](package-summary.html)

# Class PortalStateTag

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

javax.servlet.jsp.tagext.TagSupport

com.appiancorp.suiteapi.web.portal.PortalStateTag

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `javax.servlet.jsp.tagext.IterationTag`, `javax.servlet.jsp.tagext.JspTag`, `javax.servlet.jsp.tagext.Tag`

* * *

public class PortalStateTag extends javax.servlet.jsp.tagext.TagSupport implements javax.servlet.jsp.tagext.Tag

Implementation for the `portalState` tag, which provides access to a `PortalState` object initialized from the current `HttpServletRequest`.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.web.portal.PortalStateTag)

-   ## Field Summary

    ### Fields inherited from class javax.servlet.jsp.tagext.TagSupport

    `id, pageContext`

    ### Fields inherited from interface javax.servlet.jsp.tagext.IterationTag

    `EVAL_BODY_AGAIN`

    ### Fields inherited from interface javax.servlet.jsp.tagext.Tag

    `EVAL_BODY_INCLUDE, EVAL_PAGE, SKIP_BODY, SKIP_PAGE`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PortalStateTag](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[doEndTag](#doEndTag\(\))()`

    `int`

    `[doStartTag](#doStartTag\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getScope](#getScope\(\))()`

    Get the scope in which the variable will be created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getVar](#getVar\(\))()`

    Get the name of the variable that this tag will create.

    `void`

    `[setScope](#setScope\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Set the scope in which the variable will be created.

    `void`

    `[setVar](#setVar\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)`

    Set the name of the variable that this tag will create.

    ### Methods inherited from class javax.servlet.jsp.tagext.TagSupport

    `doAfterBody, findAncestorWithClass, getId, getParent, getValue, getValues, release, removeValue, setId, setPageContext, setParent, setValue`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface javax.servlet.jsp.tagext.Tag

    `getParent, release, setPageContext, setParent`

-   ## Constructor Details

    -   ### PortalStateTag

        public PortalStateTag()

-   ## Method Details

    -   ### getVar

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getVar()

        Get the name of the variable that this tag will create.

        Returns:

        The name.

    -   ### setVar

        public void setVar([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Set the name of the variable that this tag will create.

        Parameters:

        `p` - The name.

    -   ### getScope

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getScope()

        Get the scope in which the variable will be created.

        Returns:

        The name of the scope.

    -   ### setScope

        public void setScope([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p)

        Set the scope in which the variable will be created. The default is "page".

        Parameters:

        `p` - The name of the scope. One of "page", "request", "session", or "application".

    -   ### doStartTag

        public int doStartTag() throws javax.servlet.jsp.JspException

        Specified by:

        `doStartTag` in interface `javax.servlet.jsp.tagext.Tag`

        Overrides:

        `doStartTag` in class `javax.servlet.jsp.tagext.TagSupport`

        Throws:

        `javax.servlet.jsp.JspException`

    -   ### doEndTag

        public int doEndTag() throws javax.servlet.jsp.JspException

        Specified by:

        `doEndTag` in interface `javax.servlet.jsp.tagext.Tag`

        Overrides:

        `doEndTag` in class `javax.servlet.jsp.tagext.TagSupport`

        Throws:

        `javax.servlet.jsp.JspException`