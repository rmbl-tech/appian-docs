---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/appianwebmvc/BaseUpdateAction.html
original_path: api/com/appiancorp/common/appianwebmvc/BaseUpdateAction.html
version: "25.3"
---

Package [com.appiancorp.common.appianwebmvc](package-summary.html)

# Class BaseUpdateAction

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.web.framework.kernel.main.Action

[com.appiancorp.common.appianwebmvc.BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")

[com.appiancorp.common.appianwebmvc.BaseViewAction](BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")

com.appiancorp.common.appianwebmvc.BaseUpdateAction

All Implemented Interfaces:

`com.appiancorp.web.framework.kernel.main.IAction`

Direct Known Subclasses:

`[PortletUpdateAction](../../ap2/PortletUpdateAction.html "class in com.appiancorp.ap2")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public abstract class BaseUpdateAction extends [BaseViewAction](BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Base Action class for all actions in the product.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORWARD_CANCEL](#FORWARD_CANCEL)`

    Deprecated.

    The name of the "cancel" `ActionForward`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORWARD_INVALID_TOKEN](#FORWARD_INVALID_TOKEN)`

    Deprecated.

    Forward taken if the token is invalid (i.e. double submit)

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORWARD_PREPARE](#FORWARD_PREPARE)`

    Deprecated.

    The name of the "prepare" `ActionForward`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[REQUEST_FORM_STATE](#REQUEST_FORM_STATE)`

    Deprecated.

    Request parameter for the state of the form.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[REQUEST_RECOVERED](#REQUEST_RECOVERED)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[REQUEST_TOKEN](#REQUEST_TOKEN)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[REQUEST_TOKEN_OVERRIDE](#REQUEST_TOKEN_OVERRIDE)`

    Deprecated.

    Request parameter for overriding the token check.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[STATE_PREPARE](#STATE_PREPARE)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[STATE_SAVE](#STATE_SAVE)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[STATE_VALIDATE](#STATE_VALIDATE)`

    Deprecated.

     

    ### Fields inherited from class com.appiancorp.common.appianwebmvc.[BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")

    `[FORWARD_ERROR](BaseAction.html#FORWARD_ERROR), [FORWARD_NO_ACCESS](BaseAction.html#FORWARD_NO_ACCESS), [FORWARD_SUCCESS](BaseAction.html#FORWARD_SUCCESS)`

    ### Fields inherited from class com.appiancorp.web.framework.kernel.main.Action

    `servlet`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BaseUpdateAction](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `protected com.appiancorp.web.framework.kernel.main.IActionForward`

    `[afterPrepare](#afterPrepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.appiancorp.web.framework.kernel.main.IActionForward\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_, com.appiancorp.web.framework.kernel.main.IActionForward defaultForward_)`

    Deprecated.

    Performed after the [`prepare(IActionMapping, IActionForm, HttpServletRequest, HttpServletResponse)`](#prepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)).

    `protected com.appiancorp.web.framework.kernel.main.ActionErrors`

    `[afterValidate](#afterValidate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") currentStep_)`

    Deprecated.

    Performed after [`validate(IActionMapping, IActionForm, HttpServletRequest, String)`](#validate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\)).

    `protected com.appiancorp.web.framework.kernel.main.IActionForward`

    `[beforePrepare](#beforePrepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Performed before [`prepare(IActionMapping, IActionForm, HttpServletRequest, HttpServletResponse)`](#prepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)).

    `protected com.appiancorp.web.framework.kernel.main.ActionErrors`

    `[beforeValidate](#beforeValidate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") currentStep_)`

    Deprecated.

    Performed before [`validate(IActionMapping, IActionForm, HttpServletRequest, String)`](#validate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\)).

    `protected com.appiancorp.web.framework.kernel.main.IActionForward`

    `[handleInvalidToken](#handleInvalidToken\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Returns the `ActionForward` object mapped from this Action for invalid tokens

    `protected com.appiancorp.web.framework.kernel.main.IActionForward`

    `[prepare](#prepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Perpares the data, usually by populating the `ActionForm` to pre-populate a JSP form.

    `protected boolean`

    `[shouldSetSessionAttributes](#shouldSetSessionAttributes\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q)`

    Deprecated.

     

    `protected com.appiancorp.web.framework.kernel.main.ActionErrors`

    `[validate](#validate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") currentStep_)`

    Deprecated.

    Validates the data and returns any errors.

    ### Methods inherited from class com.appiancorp.common.appianwebmvc.[BaseViewAction](BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")

    `[addOutput](BaseViewAction.html#addOutput\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.Object\)), [afterMain](BaseViewAction.html#afterMain\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.appiancorp.web.framework.kernel.main.IActionForward\)), [beforeMain](BaseViewAction.html#beforeMain\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [getOutputValue](BaseViewAction.html#getOutputValue\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [getServiceContext](BaseViewAction.html#getServiceContext\(javax.servlet.http.HttpServletRequest\)), [main](BaseViewAction.html#main\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))`

    ### Methods inherited from class com.appiancorp.common.appianwebmvc.[BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")

    `[addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.AppianException\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [canAccess](BaseAction.html#canAccess\(com.appiancorp.web.framework.kernel.main.IActionMapping,javax.servlet.http.HttpServletRequest\)), [decodeParameters](BaseAction.html#decodeParameters\(javax.servlet.http.HttpServletRequest\)), [execute](BaseAction.html#execute\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [generateToken](BaseAction.html#generateToken\(javax.servlet.http.HttpServletRequest\)), [getAuthorizationActionName](BaseAction.html#getAuthorizationActionName\(javax.servlet.http.HttpServletRequest\)), [getAuthorizationProvider](BaseAction.html#getAuthorizationProvider\(\)), [getValueFromRequest](BaseAction.html#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [getValueFromRequest](BaseAction.html#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.String\)), [initBundle](BaseAction.html#initBundle\(\)), [isTokenValid](BaseAction.html#isTokenValid\(javax.servlet.http.HttpServletRequest\)), [isTokenValid](BaseAction.html#isTokenValid\(javax.servlet.http.HttpServletRequest,boolean\)), [requiresAuthorization](BaseAction.html#requiresAuthorization\(javax.servlet.http.HttpServletRequest\)), [resetToken](BaseAction.html#resetToken\(javax.servlet.http.HttpServletRequest\)), [saveErrors](BaseAction.html#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\)), [saveErrors](BaseAction.html#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\)), [saveMessages](BaseAction.html#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\)), [saveMessages](BaseAction.html#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\)), [saveToken](BaseAction.html#saveToken\(javax.servlet.http.HttpServletRequest\))`

    ### Methods inherited from class com.appiancorp.web.framework.kernel.main.Action

    `addErrors, addMessages, execute, getErrors, getLocale, getMessages, getResources, getResources, getServlet, isCancelled, saveErrors, saveMessages, setLocale, setServlet`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### REQUEST\_TOKEN\_OVERRIDE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") REQUEST\_TOKEN\_OVERRIDE

        Deprecated.

        Request parameter for overriding the token check. If this parameter is present on the request, then the main method will be called (not the prepare).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.REQUEST_TOKEN_OVERRIDE)

    -   ### REQUEST\_FORM\_STATE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") REQUEST\_FORM\_STATE

        Deprecated.

        Request parameter for the state of the form. States include STATE\_PREPARE, STATE\_SAVE, and STATE\_VALIDATE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.REQUEST_FORM_STATE)

    -   ### REQUEST\_TOKEN

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") REQUEST\_TOKEN

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.REQUEST_TOKEN)

    -   ### REQUEST\_RECOVERED

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") REQUEST\_RECOVERED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.REQUEST_RECOVERED)

    -   ### STATE\_PREPARE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") STATE\_PREPARE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.STATE_PREPARE)

    -   ### STATE\_SAVE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") STATE\_SAVE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.STATE_SAVE)

    -   ### STATE\_VALIDATE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") STATE\_VALIDATE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.STATE_VALIDATE)

    -   ### FORWARD\_CANCEL

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORWARD\_CANCEL

        Deprecated.

        The name of the "cancel" `ActionForward`

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.FORWARD_CANCEL)

    -   ### FORWARD\_PREPARE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORWARD\_PREPARE

        Deprecated.

        The name of the "prepare" `ActionForward`

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.FORWARD_PREPARE)

    -   ### FORWARD\_INVALID\_TOKEN

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORWARD\_INVALID\_TOKEN

        Deprecated.

        Forward taken if the token is invalid (i.e. double submit)

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseUpdateAction.FORWARD_INVALID_TOKEN)

-   ## Constructor Details

    -   ### BaseUpdateAction

        public BaseUpdateAction()

        Deprecated.

-   ## Method Details

    -   ### beforeValidate

        protected com.appiancorp.web.framework.kernel.main.ActionErrors beforeValidate(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") currentStep\_)

        Deprecated.

        Performed before [`validate(IActionMapping, IActionForm, HttpServletRequest, String)`](#validate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\)). Override to implement.

        Parameters:

        `m_` - the action mapping

        `f_` - the action form

        `q_` - the request

        `currentStep_` - the current step in a UI wizard, if applicable

        Returns:

        any errors that may have occurred during execution of this method

    -   ### validate

        protected com.appiancorp.web.framework.kernel.main.ActionErrors validate(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") currentStep\_)

        Deprecated.

        Validates the data and returns any errors. Can be called explicitly, but also called before [`BaseViewAction.main(com.appiancorp.web.framework.kernel.main.IActionMapping, com.appiancorp.web.framework.kernel.main.IActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)`](BaseViewAction.html#main\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)) is executed. Override to implement.

        Parameters:

        `m_` - the action mapping

        `f_` - the action form

        `q_` - the request

        `currentStep_` - the current step in a UI wizard, if applicable

        Returns:

        any errors that may have occurred during execution of this method, particularly validation-related

    -   ### afterValidate

        protected com.appiancorp.web.framework.kernel.main.ActionErrors afterValidate(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") currentStep\_)

        Deprecated.

        Performed after [`validate(IActionMapping, IActionForm, HttpServletRequest, String)`](#validate\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,java.lang.String\)). Override to implement.

        Parameters:

        `m_` - the action mapping

        `f_` - the action form

        `q_` - the request

        `currentStep_` - the current step in a UI wizard, if applicable

        Returns:

        any errors that may have occurred during execution of this method

    -   ### prepare

        protected com.appiancorp.web.framework.kernel.main.IActionForward prepare(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Perpares the data, usually by populating the `ActionForm` to pre-populate a JSP form. This implementation simply returns the "prepare" `ActionForward` destination. Override to provide a custom implementation.

        Parameters:

        `m_` - The `ActionMapping` used to select this instance

        `f_` - The optional `ActionForm` bean for this request (if any)

        `q_` - The HTTP request we are processing

        `r_` - The HTTP response we are creating

        Returns:

        the destination `ActionForward`

    -   ### beforePrepare

        protected com.appiancorp.web.framework.kernel.main.IActionForward beforePrepare(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Performed before [`prepare(IActionMapping, IActionForm, HttpServletRequest, HttpServletResponse)`](#prepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)). Override to implement.

        Parameters:

        `m_` - The `ActionMapping` used to select this instance

        `f_` - The optional `ActionForm` bean for this request (if any)

        `q_` - The HTTP request we are processing

        `r_` - The HTTP response we are creating

        Returns:

        the destination `ActionForward`

    -   ### afterPrepare

        protected com.appiancorp.web.framework.kernel.main.IActionForward afterPrepare(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_, com.appiancorp.web.framework.kernel.main.IActionForward defaultForward\_)

        Deprecated.

        Performed after the [`prepare(IActionMapping, IActionForm, HttpServletRequest, HttpServletResponse)`](#prepare\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)). Override to implement.

        Parameters:

        `m_` - The `ActionMapping` used to select this instance

        `f_` - The optional `ActionForm` bean for this request (if any)

        `q_` - The HTTP request we are processing

        `r_` - The HTTP response we are creating

        `defaultForward_` - the default action forward

        Returns:

        the destination `ActionForward`

    -   ### shouldSetSessionAttributes

        protected boolean shouldSetSessionAttributes(javax.servlet.http.HttpServletRequest q)

        Deprecated.

    -   ### handleInvalidToken

        protected com.appiancorp.web.framework.kernel.main.IActionForward handleInvalidToken(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Returns the `ActionForward` object mapped from this Action for invalid tokens

        Parameters:

        `m_` - The `ActionMapping` used to select this instance

        `f_` - The optional `ActionForm` bean for this request (if any)

        `q_` - The HTTP request we are processing

        `r_` - The HTTP response we are creating

        Returns:

        the destination `ActionForward` object