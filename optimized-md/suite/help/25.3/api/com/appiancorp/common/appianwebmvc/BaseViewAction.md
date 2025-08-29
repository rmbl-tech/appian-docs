---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/appianwebmvc/BaseViewAction.html
original_path: api/com/appiancorp/common/appianwebmvc/BaseViewAction.html
version: "25.3"
---

Package [com.appiancorp.common.appianwebmvc](package-summary.html)

# Class BaseViewAction

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.web.framework.kernel.main.Action

[com.appiancorp.common.appianwebmvc.BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")

com.appiancorp.common.appianwebmvc.BaseViewAction

All Implemented Interfaces:

`com.appiancorp.web.framework.kernel.main.IAction`

Direct Known Subclasses:

`[BaseUpdateAction](BaseUpdateAction.html "class in com.appiancorp.common.appianwebmvc")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public abstract class BaseViewAction extends [BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Super class for all actions in the product concerned only with viewing data (not saving to the database). This class provides useful features for all implemented appianwebmvc actions, including simplified integration for customizers.

When extending this class, all Actions core to the AES should implement the `main` method. No core action should implement `beforeMain` or `afterMain`. Those methods should be implemented by customizers who wish to modify the action in some way. Customizers should not extend the `main` method.

When customizers extend a concrete BaseAction class they must use the same `ActionForm` class for the parent or a subclass of that `ActionForm` so that the `main` in the parent does not break.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.appianwebmvc.[BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")

    `[FORWARD_ERROR](BaseAction.html#FORWARD_ERROR), [FORWARD_NO_ACCESS](BaseAction.html#FORWARD_NO_ACCESS), [FORWARD_SUCCESS](BaseAction.html#FORWARD_SUCCESS)`

    ### Fields inherited from class com.appiancorp.web.framework.kernel.main.Action

    `servlet`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BaseViewAction](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `protected final void`

    `[addOutput](#addOutput\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.Object\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Deprecated.

    Add a value to a `java.util.Map` that is stored as a request attribute

    `com.appiancorp.web.framework.kernel.main.IActionForward`

    `[afterMain](#afterMain\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.appiancorp.web.framework.kernel.main.IActionForward\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_, com.appiancorp.web.framework.kernel.main.IActionForward defaultForward_)`

    Deprecated.

    Should never be implemented in-house.

    `com.appiancorp.web.framework.kernel.main.IActionForward`

    `[beforeMain](#beforeMain\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Should never be implemented in-house.

    `protected final [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getOutputValue](#getOutputValue\(javax.servlet.http.HttpServletRequest,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_)`

    Deprecated.

    Retrieve a value from the output map

    `protected [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Returns the [`ServiceContext`](../../services/ServiceContext.html "interface in com.appiancorp.services") for the user executing this request.

    `abstract com.appiancorp.web.framework.kernel.main.IActionForward`

    `[main](#main\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Should be implemented only by internal Appian development.

    ### Methods inherited from class com.appiancorp.common.appianwebmvc.[BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")

    `[addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.AppianException\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\)), [addError](BaseAction.html#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\)), [addMessage](BaseAction.html#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\)), [canAccess](BaseAction.html#canAccess\(com.appiancorp.web.framework.kernel.main.IActionMapping,javax.servlet.http.HttpServletRequest\)), [decodeParameters](BaseAction.html#decodeParameters\(javax.servlet.http.HttpServletRequest\)), [execute](BaseAction.html#execute\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\)), [generateToken](BaseAction.html#generateToken\(javax.servlet.http.HttpServletRequest\)), [getAuthorizationActionName](BaseAction.html#getAuthorizationActionName\(javax.servlet.http.HttpServletRequest\)), [getAuthorizationProvider](BaseAction.html#getAuthorizationProvider\(\)), [getValueFromRequest](BaseAction.html#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String\)), [getValueFromRequest](BaseAction.html#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.String\)), [initBundle](BaseAction.html#initBundle\(\)), [isTokenValid](BaseAction.html#isTokenValid\(javax.servlet.http.HttpServletRequest\)), [isTokenValid](BaseAction.html#isTokenValid\(javax.servlet.http.HttpServletRequest,boolean\)), [requiresAuthorization](BaseAction.html#requiresAuthorization\(javax.servlet.http.HttpServletRequest\)), [resetToken](BaseAction.html#resetToken\(javax.servlet.http.HttpServletRequest\)), [saveErrors](BaseAction.html#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\)), [saveErrors](BaseAction.html#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\)), [saveMessages](BaseAction.html#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\)), [saveMessages](BaseAction.html#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\)), [saveToken](BaseAction.html#saveToken\(javax.servlet.http.HttpServletRequest\))`

    ### Methods inherited from class com.appiancorp.web.framework.kernel.main.Action

    `addErrors, addMessages, execute, getErrors, getLocale, getMessages, getResources, getResources, getServlet, isCancelled, saveErrors, saveMessages, setLocale, setServlet`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### BaseViewAction

        public BaseViewAction()

        Deprecated.

-   ## Method Details

    -   ### getServiceContext

        protected [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") getServiceContext(javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Description copied from class: `[BaseAction](BaseAction.html#getServiceContext\(javax.servlet.http.HttpServletRequest\))`

        Returns the [`ServiceContext`](../../services/ServiceContext.html "interface in com.appiancorp.services") for the user executing this request.

        Overrides:

        `[getServiceContext](BaseAction.html#getServiceContext\(javax.servlet.http.HttpServletRequest\))` in class `[BaseAction](BaseAction.html "class in com.appiancorp.common.appianwebmvc")`

    -   ### addOutput

        protected final void addOutput(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Deprecated.

        Add a value to a `java.util.Map` that is stored as a request attribute

        Parameters:

        `q_` - the request

        `key_` - the key under which the value will be stoed

        `value_` - the value to be stored

    -   ### getOutputValue

        protected final [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getOutputValue(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_)

        Deprecated.

        Retrieve a value from the output map

        Parameters:

        `q_` - the request

        `key_` - the key

        Returns:

        the object stored in the output map at the given key

        See Also:

        -   [`addOutput(javax.servlet.http.HttpServletRequest, java.lang.String, java.lang.Object)`](#addOutput\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.Object\))

    -   ### main

        public abstract com.appiancorp.web.framework.kernel.main.IActionForward main(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Should be implemented only by internal Appian development. No consultants should write code that extends this method directly.

        Parameters:

        `m_` - The appianwebmvc action mapping.

        `f_` - The action form.

        `q_` - The request.

        `r_` - The response.

        Throws:

        `com.appiancorp.common.appianwebmvc.InvalidFormClassException` - if the `ActionForm` cannot be cast to the required `ActionForm` implementation.

    -   ### beforeMain

        public com.appiancorp.web.framework.kernel.main.IActionForward beforeMain(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Should never be implemented in-house. Should only be implemented by customizers of AES. This method will be called before `main`.

        Parameters:

        `m_` - The appianwebmvc action mapping.

        `f_` - The action form.

        `q_` - The request.

        `r_` - The response.

        Throws:

        `com.appiancorp.common.appianwebmvc.InvalidFormClassException` - if the `ActionForm` cannot be cast to the required `ActionForm` implementation.

    -   ### afterMain

        public com.appiancorp.web.framework.kernel.main.IActionForward afterMain(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_, com.appiancorp.web.framework.kernel.main.IActionForward defaultForward\_)

        Deprecated.

        Should never be implemented in-house. Should only be implemented by customizers of AES. This method will be called after `main`.

        Parameters:

        `m_` - The appianwebmvc action mapping.

        `f_` - The action form.

        `q_` - The request.

        `r_` - The response.

        Throws:

        `com.appiancorp.common.appianwebmvc.InvalidFormClassException` - if the `ActionForm` cannot be cast to required `ActionForm` implementation.