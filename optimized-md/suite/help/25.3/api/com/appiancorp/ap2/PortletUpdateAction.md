---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/ap2/PortletUpdateAction.html
original_path: api/com/appiancorp/ap2/PortletUpdateAction.html
version: "25.3"
title: "Class PortletUpdateAction"
page_id: "api/com/appiancorp/ap2/PortletUpdateAction"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.ap2](package-summary.html)

# Class PortletUpdateAction

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.web.framework.kernel.main.Action

[com.appiancorp.common.appianwebmvc.BaseAction](../common/appianwebmvc/BaseAction.html "class in com.appiancorp.common.appianwebmvc")

[com.appiancorp.common.appianwebmvc.BaseViewAction](../common/appianwebmvc/BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")

[com.appiancorp.common.appianwebmvc.BaseUpdateAction](../common/appianwebmvc/BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")

com.appiancorp.ap2.PortletUpdateAction

All Implemented Interfaces:

`com.appiancorp.web.framework.kernel.main.IAction`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public abstract class PortletUpdateAction extends [BaseUpdateAction](../common/appianwebmvc/BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Framework for updating portlets. The `portletmain` method must be implemented in the children. The method will contain the logic for updating the specific `Portlet`, and for determining the `ActionForward` after the `Portlet` is updated. The `canAcces` method currently checks if the user has editor privileges and can perform an update. (@see com.appiancorp.suiteapi.portal.Portlet#PORTLET\_ACCESS\_LEVEL\_EDIT ) It can be overwritten to give anyone privileges by always returning `true` as it is done in `BaseUpdateAction`

See Also:

-   [`BaseUpdateAction`](../common/appianwebmvc/BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORM_FORWARD](#FORM_FORWARD)`

    Deprecated.

     

    ### Fields inherited from class com.appiancorp.common.appianwebmvc.[BaseUpdateAction](../common/appianwebmvc/BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")

    `[FORWARD_CANCEL](../common/appianwebmvc/BaseUpdateAction.html#FORWARD_CANCEL), [FORWARD_INVALID_TOKEN](../common/appianwebmvc/BaseUpdateAction.html#FORWARD_INVALID_TOKEN), [FORWARD_PREPARE](../common/appianwebmvc/BaseUpdateAction.html#FORWARD_PREPARE), [REQUEST_FORM_STATE](../common/appianwebmvc/BaseUpdateAction.html#REQUEST_FORM_STATE), [REQUEST_RECOVERED](../common/appianwebmvc/BaseUpdateAction.html#REQUEST_RECOVERED), [REQUEST_TOKEN](../common/appianwebmvc/BaseUpdateAction.html#REQUEST_TOKEN), [REQUEST_TOKEN_OVERRIDE](../common/appianwebmvc/BaseUpdateAction.html#REQUEST_TOKEN_OVERRIDE), [STATE_PREPARE](../common/appianwebmvc/BaseUpdateAction.html#STATE_PREPARE), [STATE_SAVE](../common/appianwebmvc/BaseUpdateAction.html#STATE_SAVE), [STATE_VALIDATE](../common/appianwebmvc/BaseUpdateAction.html#STATE_VALIDATE)`

    ### Fields inherited from class com.appiancorp.common.appianwebmvc.[BaseAction](../common/appianwebmvc/BaseAction.html "class in com.appiancorp.common.appianwebmvc")

    `[FORWARD_ERROR](../common/appianwebmvc/BaseAction.html#FORWARD_ERROR), [FORWARD_NO_ACCESS](../common/appianwebmvc/BaseAction.html#FORWARD_NO_ACCESS), [FORWARD_SUCCESS](../common/appianwebmvc/BaseAction.html#FORWARD_SUCCESS)`

    ### Fields inherited from class com.appiancorp.web.framework.kernel.main.Action

    `servlet`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PortletUpdateAction](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `protected boolean`

    `[canAccess](#canAccess\(com.appiancorp.web.framework.kernel.main.IActionMapping,javax.servlet.http.HttpServletRequest\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Checks if the user has update privileges on the `Portlet`.

    `static void`

    `[clearPortletTarget](#clearPortletTarget\(com.appiancorp.ap2.PortalRequest\))(com.appiancorp.ap2.PortalRequest pq_)`

    Deprecated.

     

    `static void`

    `[clearPortletTarget](#clearPortletTarget\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Clears the portlet target action path, so that the next time the portlet is loaded it will use the default $t from its tiles config.

    `final com.appiancorp.web.framework.kernel.main.IActionForward`

    `[main](#main\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Executes the `portletmain` method of its child class, returns the child `ActionForward`, and resets the `PortletTarget` to be `null`;

    `abstract com.appiancorp.web.framework.kernel.main.IActionForward`

    `[portletMain](#portletMain\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Abstract method that must be overriden to specify the `ActionForward` after the `Portlet` updates

    ### Methods inherited from class com.appiancorp.common.appianwebmvc.[BaseUpdateAction](../common/appianwebmvc/BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")

    `[afterPrepare](../common/appianwebmvc/BaseUpdateAction.html#afterPrepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.appiancorp.web.framework.kernel.main.IActionForward\)), [afterValidate](../common/appianwebmvc/BaseUpdateAction.html#afterValidate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\)), [beforePrepare](../common/appianwebmvc/BaseUpdateAction.html#beforePrepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [beforeValidate](../common/appianwebmvc/BaseUpdateAction.html#beforeValidate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\)), [handleInvalidToken](../common/appianwebmvc/BaseUpdateAction.html#handleInvalidToken\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [prepare](../common/appianwebmvc/BaseUpdateAction.html#prepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [shouldSetSessionAttributes](../common/appianwebmvc/BaseUpdateAction.html#shouldSetSessionAttributes\(javax.servlet.http.HttpServletRequest\)), [validate](../common/appianwebmvc/BaseUpdateAction.html#validate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\))`

    ### Methods inherited from class com.appiancorp.common.appianwebmvc.[BaseViewAction](../common/appianwebmvc/BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")

    `[addOutput](../common/appianwebmvc/BaseViewAction.html#addOutput\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.Object\)), [afterMain](../common/appianwebmvc/BaseViewAction.html#afterMain\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.appiancorp.web.framework.kernel.main.IActionForward\)), [beforeMain](../common/appianwebmvc/BaseViewAction.html#beforeMain\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [getOutputValue](../common/appianwebmvc/BaseViewAction.html#getOutputValue\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [getServiceContext](../common/appianwebmvc/BaseViewAction.html#getServiceContext\(javax.servlet.http.HttpServletRequest\))`

    ### Methods inherited from class com.appiancorp.common.appianwebmvc.[BaseAction](../common/appianwebmvc/BaseAction.html "class in com.appiancorp.common.appianwebmvc")

    `[addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.AppianException\)), [addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\)), [addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\)), [addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\)), [addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\)), [addError](../common/appianwebmvc/BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addMessage](../common/appianwebmvc/BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addMessage](../common/appianwebmvc/BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\)), [addMessage](../common/appianwebmvc/BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\)), [addMessage](../common/appianwebmvc/BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [decodeParameters](../common/appianwebmvc/BaseAction.html#decodeParameters\(javax.servlet.http.HttpServletRequest\)), [execute](../common/appianwebmvc/BaseAction.html#execute\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [generateToken](../common/appianwebmvc/BaseAction.html#generateToken\(javax.servlet.http.HttpServletRequest\)), [getAuthorizationActionName](../common/appianwebmvc/BaseAction.html#getAuthorizationActionName\(javax.servlet.http.HttpServletRequest\)), [getAuthorizationProvider](../common/appianwebmvc/BaseAction.html#getAuthorizationProvider\(\)), [getValueFromRequest](../common/appianwebmvc/BaseAction.html#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [getValueFromRequest](../common/appianwebmvc/BaseAction.html#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.String\)), [initBundle](../common/appianwebmvc/BaseAction.html#initBundle\(\)), [isTokenValid](../common/appianwebmvc/BaseAction.html#isTokenValid\(javax.servlet.http.HttpServletRequest\)), [isTokenValid](../common/appianwebmvc/BaseAction.html#isTokenValid\(javax.servlet.http.HttpServletRequest,boolean\)), [requiresAuthorization](../common/appianwebmvc/BaseAction.html#requiresAuthorization\(javax.servlet.http.HttpServletRequest\)), [resetToken](../common/appianwebmvc/BaseAction.html#resetToken\(javax.servlet.http.HttpServletRequest\)), [saveErrors](../common/appianwebmvc/BaseAction.html#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\)), [saveErrors](../common/appianwebmvc/BaseAction.html#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\)), [saveMessages](../common/appianwebmvc/BaseAction.html#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\)), [saveMessages](../common/appianwebmvc/BaseAction.html#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\)), [saveToken](../common/appianwebmvc/BaseAction.html#saveToken\(javax.servlet.http.HttpServletRequest\))`

    ### Methods inherited from class com.appiancorp.web.framework.kernel.main.Action

    `addErrors, addMessages, execute, getErrors, getLocale, getMessages, getResources, getResources, getServlet, isCancelled, saveErrors, saveMessages, setLocale, setServlet`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### FORM\_FORWARD

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORM\_FORWARD

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.ap2.PortletUpdateAction.FORM_FORWARD)

-   ## Constructor Details

    -   ### PortletUpdateAction

        public PortletUpdateAction()

        Deprecated.

-   ## Method Details

    -   ### main

        public final com.appiancorp.web.framework.kernel.main.IActionForward main(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Executes the `portletmain` method of its child class, returns the child `ActionForward`, and resets the `PortletTarget` to be `null`;

        Specified by:

        `[main](../common/appianwebmvc/BaseViewAction.html#main\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))` in class `[BaseViewAction](../common/appianwebmvc/BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")`

        Parameters:

        `m_` - the mapping

        `f_` - the form

        `q_` - the request

        `r_` - the response

        Returns:

        an `ActionForward`

    -   ### portletMain

        public abstract com.appiancorp.web.framework.kernel.main.IActionForward portletMain(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Abstract method that must be overriden to specify the `ActionForward` after the `Portlet` updates

        Parameters:

        `m_` - the mapping

        `f_` - the form

        `q_` - the request

        `r_` - the response

        Returns:

        an `ActionForward`

    -   ### canAccess

        protected boolean canAccess(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Checks if the user has update privileges on the `Portlet`. Guards against people updating `portlets` they do not have access to. This can be extended and overriden to return always `true` if anyone can update.

        Overrides:

        `[canAccess](../common/appianwebmvc/BaseAction.html#canAccess\(com.appiancorp.web.framework.kernel.main.IActionMapping,javax.servlet.http.HttpServletRequest\))` in class `[BaseAction](../common/appianwebmvc/BaseAction.html "class in com.appiancorp.common.appianwebmvc")`

        Parameters:

        `m_` - the mapping of a particular request to an instance of a particular `Action` class

        `q_` - the request

        Returns:

        `true` if the user has edit privileges otherwise `false`

    -   ### clearPortletTarget

        public static void clearPortletTarget(javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Clears the portlet target action path, so that the next time the portlet is loaded it will use the default $t from its tiles config.

        Parameters:

        `q_` - the request

    -   ### clearPortletTarget

        public static void clearPortletTarget(com.appiancorp.ap2.PortalRequest pq\_)

        Deprecated.