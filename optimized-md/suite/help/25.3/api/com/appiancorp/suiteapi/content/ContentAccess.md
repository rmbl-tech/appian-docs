---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentAccess.html
original_path: api/com/appiancorp/suiteapi/content/ContentAccess.html
version: "25.3"
title: "Class ContentAccess"
page_id: "api/com/appiancorp/suiteapi/content/ContentAccess"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentAccess

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.process.common.presentation.JSONCallableObject

com.appiancorp.suiteapi.content.ContentAccess

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ContentAccess extends com.appiancorp.process.common.presentation.JSONCallableObject

This class provides methods accessible through JSON, which are relevant to Content objects.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.content.ContentAccess)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FAIL](#FAIL)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[NAME](#NAME)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SUCCESS](#SUCCESS)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentAccess](#%3Cinit%3E\(jakarta.servlet.http.HttpSession\))(jakarta.servlet.http.HttpSession session_)`

    Constructs a ContentAccess object.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[hasRuleEditingPrivileges](#hasRuleEditingPrivileges\(\))()`

    Returns true if the user has edit privileges for Rules.

    `[HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")`

    `[saveFreeformRule](#saveFreeformRule\(com.appiancorp.suiteapi.rules.FreeformRule,java.lang.Long\))([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") oldParentId)`

    This method saves a freeform rule and returns a map of validation messages.

    `com.appiancorp.process.common.presentation.Response`

    `[testFreeformRule](#testFreeformRule\(com.appiancorp.suiteapi.rules.FreeformRule\))([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule_)`

    This method tests a freeform rule by evaluating its definition.

    `static [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")`

    `[validate](#validate\(com.appiancorp.suiteapi.rules.FreeformRule,jakarta.servlet.http.HttpSession,boolean\))([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule_, jakarta.servlet.http.HttpSession session_, boolean checkNameCollision)`

    This method validates a freeform rule and returns a map of validation messages.

    `[HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")`

    `[validateFreeformRule](#validateFreeformRule\(com.appiancorp.suiteapi.rules.FreeformRule\))([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule_)`

    This method validates a freeform rule for testing.

    ### Methods inherited from class com.appiancorp.process.common.presentation.JSONCallableObject

    `getServiceContext, getSession`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SUCCESS

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SUCCESS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentAccess.SUCCESS)

    -   ### NAME

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") NAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentAccess.NAME)

    -   ### FAIL

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FAIL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentAccess.FAIL)

-   ## Constructor Details

    -   ### ContentAccess

        public ContentAccess(jakarta.servlet.http.HttpSession session\_)

        Constructs a ContentAccess object.

        Parameters:

        `session_` - an HttpSession object

-   ## Method Details

    -   ### testFreeformRule

        public com.appiancorp.process.common.presentation.Response testFreeformRule([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule\_)

        This method tests a freeform rule by evaluating its definition.

        Parameters:

        `rule_` - the rule to test

        Returns:

        a Response object

    -   ### validateFreeformRule

        public [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util") validateFreeformRule([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule\_)

        This method validates a freeform rule for testing. It calls the process design service to ensure that the expression is well formed, and that all inputs have been declared.

        Parameters:

        `rule_` - the freeform rule to validate

        Returns:

        a map of validation messages

    -   ### saveFreeformRule

        public [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util") saveFreeformRule([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") oldParentId)

        This method saves a freeform rule and returns a map of validation messages. If given rule has an id, it attempts to create a new version. Otherwise, it creates a new rule The HashMap we return is converted to a JSON object and used by the edit rule page to display inline messages for any validation errors for each rule field. Thus the map mimics the structure of a rule bean, e.g. an error on rule.parent gets stored in map.parent. On a successful save, we populate the return HashMap with:

        -   success: internationalized key for success message
        -   successMessage: actual success message
        -   successParam: success message param

        We must pass the actual successMessage as well as the success key, because the message is shown directly from javascript when this is called by the expression editor, but is passed through the ActionError framework otherwise

        Parameters:

        `rule_` - the freeform rule to save

        `oldParentId` - the old parent id

        Returns:

        map of validation messages

    -   ### validate

        public static [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util") validate([FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") rule\_, jakarta.servlet.http.HttpSession session\_, boolean checkNameCollision)

        This method validates a freeform rule and returns a map of validation messages. It validates for: input parameter names rule name The HashMap we return is converted to a JSON object and used by the edit rule page to display inline messages for any validation errors for each rule field. Thus the map mimics the structure of a rule bean, e.g. an error on rule.name gets stored in map.name.

        Parameters:

        `rule_` - the freeform rule to validate

        `session_` - the session

        `checkNameCollision` - if set to false, names will not be compared against existing expression functions.

        Returns:

        map of error messages

    -   ### hasRuleEditingPrivileges

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") hasRuleEditingPrivileges()

        Returns true if the user has edit privileges for Rules.

        Returns:

        true if the user can edit rules