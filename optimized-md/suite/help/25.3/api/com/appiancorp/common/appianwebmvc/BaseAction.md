---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/appianwebmvc/BaseAction.html
original_path: api/com/appiancorp/common/appianwebmvc/BaseAction.html
version: "25.3"
---

Package [com.appiancorp.common.appianwebmvc](package-summary.html)

# Class BaseAction

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.web.framework.kernel.main.Action

com.appiancorp.common.appianwebmvc.BaseAction

All Implemented Interfaces:

`com.appiancorp.web.framework.kernel.main.IAction`

Direct Known Subclasses:

`[BaseViewAction](BaseViewAction.html "class in com.appiancorp.common.appianwebmvc")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public abstract class BaseAction extends com.appiancorp.web.framework.kernel.main.Action

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Base Action class for all actions in the product.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORWARD_ERROR](#FORWARD_ERROR)`

    Deprecated.

    Global appianwebmvc forward for all errors - "error"

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORWARD_NO_ACCESS](#FORWARD_NO_ACCESS)`

    Deprecated.

    Global appianwebmvc forward for actions that the current user does not have access to - "no\_access"

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FORWARD_SUCCESS](#FORWARD_SUCCESS)`

    Deprecated.

    Global default appianwebmvc forward - "success"

    ### Fields inherited from class com.appiancorp.web.framework.kernel.main.Action

    `servlet`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BaseAction](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.AppianException\))(javax.servlet.http.HttpServletRequest q_, [AppianException](../../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") ae_)`

    Deprecated.

    Adds an application exception to the request.

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))(javax.servlet.http.HttpServletRequest q, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArguments)`

    Deprecated.

    Adds an error to the request using the specified `AppianErrorCode` to retrieve the message and substitutes the provided arguments inside the error text.

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.ActionMessage error_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle_)`

    Deprecated.

    Adds an error to the request using the specified bundle for this Action.

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.IActionMessage error_)`

    Deprecated.

    Adds an error to the request using the default bundle for this Action.

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)`

    Deprecated.

    use addError(HttpServletRequest q\_, ActionError error\_) instead.

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))(javax.servlet.http.HttpServletRequest q, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArguments)`

    Deprecated.

    Adds an error to the request using the specified `AppianErrorCode` to retrieve the message and substitutes the provided arguments inside the error text.

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property_, com.appiancorp.web.framework.kernel.main.ActionMessage error_)`

    Deprecated.

    Adds an error to the request using the default bundle for this Action.

    `void`

    `[addError](#addError\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property_, com.appiancorp.web.framework.kernel.main.ActionMessage error_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle_)`

    Deprecated.

    Adds an error to the request using the specified bundle for this Action.

    `void`

    `[addMessage](#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.ActionMessage message_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle_)`

    Deprecated.

    Adds a message to the request using the specified bundle for this Action.

    `void`

    `[addMessage](#addMessage\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessage\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.IActionMessage message_)`

    Deprecated.

    Adds a message to the request using the default bundle for this Action.

    `void`

    `[addMessage](#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property_, com.appiancorp.web.framework.kernel.main.ActionMessage message_)`

    Deprecated.

    Adds a message to the request using the default bundle for this Action.

    `void`

    `[addMessage](#addMessage\(javax.servlet.http.HttpServletRequest,java.lang.String,com.appiancorp.web.framework.kernel.main.ActionMessage,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property_, com.appiancorp.web.framework.kernel.main.ActionMessage message_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle_)`

    Deprecated.

    Adds a message to the request using the specified bundle for this Action.

    `protected boolean`

    `[canAccess](#canAccess\(com.appiancorp.web.framework.kernel.main.IActionMapping,javax.servlet.http.HttpServletRequest\))(com.appiancorp.web.framework.kernel.main.IActionMapping m, javax.servlet.http.HttpServletRequest q)`

    Deprecated.

    Returns whether the web user can execute this action.

    `static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[decodeParameters](#decodeParameters\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Decodes the parameters from the request and returns them in the Map.

    `final com.appiancorp.web.framework.kernel.main.IActionForward`

    `[execute](#execute\(com.appiancorp.web.framework.kernel.main.IActionMapping,com.appiancorp.web.framework.kernel.main.IActionForm,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse\))(com.appiancorp.web.framework.kernel.main.IActionMapping m_, com.appiancorp.web.framework.kernel.main.IActionForm f_, javax.servlet.http.HttpServletRequest q_, javax.servlet.http.HttpServletResponse r_)`

    Deprecated.

    Checks credentials by calling `canAccess` and then calls `executeImpl`, if `canAccess` returns `true`.

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[generateToken](#generateToken\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Do not call.

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAuthorizationActionName](#getAuthorizationActionName\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q)`

    Deprecated.

    Returns this action's name, as registered with the authorization framework.

    `protected com.appiancorp.security.authz.AuthorizationProvider`

    `[getAuthorizationProvider](#getAuthorizationProvider\(\))()`

    Deprecated.

    Returns the `AuthorizationProvider` to be used to perform authorization.

    `protected [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q)`

    Deprecated.

    Returns the [`ServiceContext`](../../services/ServiceContext.html "interface in com.appiancorp.services") for the user executing this request.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getValueFromRequest](#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_)`

    Deprecated.

    Returns the parameter or attribute value from the request based on the key

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getValueFromRequest](#getValueFromRequest\(javax.servlet.http.HttpServletRequest,java.lang.String,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") default_)`

    Deprecated.

    Returns the parameter or attribute value from the request based on the key.

    `protected void`

    `[initBundle](#initBundle\(\))()`

    Deprecated.

     

    `protected boolean`

    `[isTokenValid](#isTokenValid\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Detemines if the current request token is valid

    `protected boolean`

    `[isTokenValid](#isTokenValid\(javax.servlet.http.HttpServletRequest,boolean\))(javax.servlet.http.HttpServletRequest q_, boolean reset_)`

    Deprecated.

    Detemines if the current request token is valid

    `protected boolean`

    `[requiresAuthorization](#requiresAuthorization\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q)`

    Deprecated.

    Returns whether this action needs to be authorized prior to execution.

    `protected void`

    `[resetToken](#resetToken\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Reset the token

    `protected void`

    `[saveErrors](#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.ActionMessages errors_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle_)`

    Deprecated.

    Mimics the implementation of the appianwebmvc Action `saveErrors` method.

    `protected void`

    `[saveErrors](#saveErrors\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.IActionMessages errors_)`

    Deprecated.

    Overrides the implementation of the appianwebmvc Action `saveErrors` method.

    `protected void`

    `[saveMessages](#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.ActionMessages,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.ActionMessages messages_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle_)`

    Deprecated.

    Mimics the implementation of the appianwebmvc Action `saveMessages` method.

    `protected void`

    `[saveMessages](#saveMessages\(javax.servlet.http.HttpServletRequest,com.appiancorp.web.framework.kernel.main.IActionMessages\))(javax.servlet.http.HttpServletRequest q_, com.appiancorp.web.framework.kernel.main.IActionMessages messages_)`

    Deprecated.

    Overrides the implementation of the appianwebmvc Action `saveMessages` method.

    `protected void`

    `[saveToken](#saveToken\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Deprecated.

    Save a new token for the request

    ### Methods inherited from class com.appiancorp.web.framework.kernel.main.Action

    `addErrors, addMessages, execute, getErrors, getLocale, getMessages, getResources, getResources, getServlet, isCancelled, saveErrors, saveMessages, setLocale, setServlet`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### FORWARD\_ERROR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORWARD\_ERROR

        Deprecated.

        Global appianwebmvc forward for all errors - "error"

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseAction.FORWARD_ERROR)

    -   ### FORWARD\_NO\_ACCESS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORWARD\_NO\_ACCESS

        Deprecated.

        Global appianwebmvc forward for actions that the current user does not have access to - "no\_access"

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseAction.FORWARD_NO_ACCESS)

    -   ### FORWARD\_SUCCESS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FORWARD\_SUCCESS

        Deprecated.

        Global default appianwebmvc forward - "success"

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.appianwebmvc.BaseAction.FORWARD_SUCCESS)

-   ## Constructor Details

    -   ### BaseAction

        public BaseAction()

        Deprecated.

-   ## Method Details

    -   ### decodeParameters

        public static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") decodeParameters(javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Decodes the parameters from the request and returns them in the Map. This is useful for hiding multipart request parameters (i.e. doc upload) since any form submitted using this mechanism can only be decoded once. This function can be called any number of times, since the decoding is done only once, and the results are stored on the request.

        Parameters:

        `q_` - the request that contains the parameters to be decoded.

        Returns:

        a `Map` of the parameters, where the keys are the parameter names and the values are the parameter values

    -   ### addError

        public void addError(javax.servlet.http.HttpServletRequest q\_, [AppianException](../../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") ae\_)

        Deprecated.

        Adds an application exception to the request. Used to display the error to the end user. The message displayed to the end user will be the detail message of the exception. These types of exception cannot be associated with a form element.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the error

        `ae_` - the `AppianException` representing the error

    -   ### addError

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void addError(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)

        Deprecated.

        use addError(HttpServletRequest q\_, ActionError error\_) instead.

    -   ### addError

        public void addError(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.IActionMessage error\_)

        Deprecated.

        Adds an error to the request using the default bundle for this Action. Bundles are associated to actions by the package of the concrete action class.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the error

        `error_` - the `ActionError` representing the error

    -   ### addError

        public void addError(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.ActionMessage error\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle\_)

        Deprecated.

        Adds an error to the request using the specified bundle for this Action.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the error

        `error_` - the `ActionError` representing the error

        `bundle_` - The name of the bundle as it is referenced in appianwebmvc.

    -   ### addError

        public void addError(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property\_, com.appiancorp.web.framework.kernel.main.ActionMessage error\_)

        Deprecated.

        Adds an error to the request using the default bundle for this Action. Bundles are associated to actions by the package of the concrete action class.

        This method takes in the form property that the error is associated with. For example, if you validate a form and the "username" field is invalid, you would pass in "username" in the property field and the error messages will appear context sensitive to the username on the form.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the error

        `property_` - The property on the form that was the source of this error.

        `error_` - the `ActionError` representing the error

    -   ### addError

        public void addError(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property\_, com.appiancorp.web.framework.kernel.main.ActionMessage error\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle\_)

        Deprecated.

        Adds an error to the request using the specified bundle for this Action.

        This method takes in the form property that the error is associated with. For example, if you validate a form and the "username" field is invalid, you would pass in "username" in the property field and the error messages will appear context sensitive to the username on the form.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the error

        `property_` - The property on the form that was the source of this error

        `error_` - the `ActionError` representing the error

        `bundle_` - The name of the bundle as it is referenced in appianwebmvc.

    -   ### addError

        public void addError(javax.servlet.http.HttpServletRequest q, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArguments)

        Deprecated.

        Adds an error to the request using the specified `AppianErrorCode` to retrieve the message and substitutes the provided arguments inside the error text.

        Parameters:

        `q` - the `HttpServletRequest` with which to associate the error

        `errorCode` - the `AppianErrorCode` that will be used to retrieve the message

        `errorCodeArguments` - the `Object` array that will be replaced inside the error code message

    -   ### addError

        public void addError(javax.servlet.http.HttpServletRequest q, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArguments)

        Deprecated.

        Adds an error to the request using the specified `AppianErrorCode` to retrieve the message and substitutes the provided arguments inside the error text. This method takes in the form property that the error is associated with. For example, if you are validating a form and the "username" field is invalid, "username" is the property value. The error messages will appear context sensitive to the "username" field in the form.

        Parameters:

        `q` - q the `HttpServletRequest` with which to associate the error

        `property` - property The property on the form that was the source of this error

        `errorCode` - errorCode the `AppianErrorCode` that will be used to retrieve the message

        `errorCodeArguments` - the `Object` array that will be replaced inside the error code message

    -   ### addMessage

        public void addMessage(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.IActionMessage message\_)

        Deprecated.

        Adds a message to the request using the default bundle for this Action. Bundles are associated to actions by the package of the concrete action class.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the message

        `message_` - the message

    -   ### addMessage

        public void addMessage(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.ActionMessage message\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle\_)

        Deprecated.

        Adds a message to the request using the specified bundle for this Action.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the message

        `message_` - the message

        `bundle_` - The name of the bundle as it is referenced in appianwebmvc. e.g. "ap-app-i18n" and not "text.java.com.appiancorp.ap2.application-i18n"

    -   ### addMessage

        public void addMessage(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property\_, com.appiancorp.web.framework.kernel.main.ActionMessage message\_)

        Deprecated.

        Adds a message to the request using the default bundle for this Action. Bundles are associated to actions by the package of the concrete action class.

        This method takes in the form property that the message is associated with. For example, if you validate a form and the "username" field is invalid, you would pass in "username" in the property field and the messages will appear context sensitive to the username on the form.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the message

        `property_` - the property on the form that was the source of this error.

        `message_` - the message

    -   ### addMessage

        public void addMessage(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") property\_, com.appiancorp.web.framework.kernel.main.ActionMessage message\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle\_)

        Deprecated.

        Adds a message to the request using the specified bundle for this Action.

        This method takes in the form property that the message is associated with.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the message

        `property_` - The property on the form that was the source of this error.

        `message_` - the message

        `bundle_` - The name of the bundle as it is referenced in appianwebmvc. e.g. "ap-app-i18n" and not "text.java.com.appiancorp.ap2.application-i18n"

    -   ### saveErrors

        protected void saveErrors(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.IActionMessages errors\_)

        Deprecated.

        Overrides the implementation of the appianwebmvc Action `saveErrors` method. Default bundle for this action is used.

        Overrides:

        `saveErrors` in class `com.appiancorp.web.framework.kernel.main.Action`

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the message

        `errors_` - the `ActionErrors` representation of the errors

    -   ### saveErrors

        protected void saveErrors(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.ActionMessages errors\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle\_)

        Deprecated.

        Mimics the implementation of the appianwebmvc Action `saveErrors` method.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the errors

        `errors_` - the `ActionErrors` representation of the errors

        `bundle_` - the name of the bundle as it is referenced in appianwebmvc. e.g. "ap-app-i18n" and not "text.java.com.appiancorp.ap2.application-i18n"

    -   ### saveMessages

        protected void saveMessages(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.IActionMessages messages\_)

        Deprecated.

        Overrides the implementation of the appianwebmvc Action `saveMessages` method. Default bundle for this action is used.

        Overrides:

        `saveMessages` in class `com.appiancorp.web.framework.kernel.main.Action`

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the messages

        `messages_` - the `ActionMessages` representation of the messages e.g. "ap-app-i18n" and not "text.java.com.appiancorp.ap2.application-i18n"

    -   ### saveMessages

        protected void saveMessages(javax.servlet.http.HttpServletRequest q\_, com.appiancorp.web.framework.kernel.main.ActionMessages messages\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundle\_)

        Deprecated.

        Mimics the implementation of the appianwebmvc Action `saveMessages` method. Default bundle for this action is used.

        Parameters:

        `q_` - the `HttpServletRequest` with which to associate the messages

        `messages_` - the messages to save

        `bundle_` - the name of the bundle as it is referenced in appianwebmvc. e.g. "ap-app-i18n" and not "text.java.com.appiancorp.ap2.application-i18n"

    -   ### execute

        public final com.appiancorp.web.framework.kernel.main.IActionForward execute(com.appiancorp.web.framework.kernel.main.IActionMapping m\_, com.appiancorp.web.framework.kernel.main.IActionForm f\_, javax.servlet.http.HttpServletRequest q\_, javax.servlet.http.HttpServletResponse r\_)

        Deprecated.

        Checks credentials by calling `canAccess` and then calls `executeImpl`, if `canAccess` returns `true`. If `canAccess` returns `false`, the returned action forward will be the one corresponding to `FORWARD_NO_ACCESS`. If there is no such forward, then the forward corresponding to `FORWARD_ERROR` will be returned.

        Specified by:

        `execute` in interface `com.appiancorp.web.framework.kernel.main.IAction`

        Overrides:

        `execute` in class `com.appiancorp.web.framework.kernel.main.Action`

        Parameters:

        `m_` - the information mapping the request to an `Action` object

        `f_` - an `ActionForm` JavaBean that contains the form data from the request parameters

        `q_` - the request

        `r_` - the response

        Returns:

        an `ActionForward` to the `Action` to perform after this one

        Throws:

        `com.appiancorp.common.appianwebmvc.InvalidFormClassException` - if the `ActionForm` cannot be cast to required `ActionForm` implementation.

    -   ### initBundle

        protected void initBundle()

        Deprecated.

    -   ### getValueFromRequest

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getValueFromRequest(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_)

        Deprecated.

        Returns the parameter or attribute value from the request based on the key

        Calls `getValueFromRequest(q_,key_,null)`

        Parameters:

        `q_` - the request

        `key_` - the property name

        Returns:

        the value for the given requeset parameter or request attribute key

    -   ### getValueFromRequest

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getValueFromRequest(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") default\_)

        Deprecated.

        Returns the parameter or attribute value from the request based on the key.

        Parameters:

        `q_` - the request

        `key_` - the property name

        `default_` - the default value (what to return if no value exists)

        Returns:

        the value for the given key from a request parameter or attribute

    -   ### canAccess

        protected boolean canAccess(com.appiancorp.web.framework.kernel.main.IActionMapping m, javax.servlet.http.HttpServletRequest q)

        Deprecated.

        Returns whether the web user can execute this action. The default implementation will perform authorization if [`requiresAuthorization(HttpServletRequest)`](#requiresAuthorization\(javax.servlet.http.HttpServletRequest\)) returns `true`. If [`requiresAuthorization(HttpServletRequest)`](#requiresAuthorization\(javax.servlet.http.HttpServletRequest\)) returns `false`, this method will just return `true`.
        This method should be overridden to provide an alternative access scheme.

        Parameters:

        `m` - the action mapping

        `q` - the request

        Returns:

        `true` if the current user can execute this action; `false` otherwise

    -   ### requiresAuthorization

        protected boolean requiresAuthorization(javax.servlet.http.HttpServletRequest q)

        Deprecated.

        Returns whether this action needs to be authorized prior to execution. By default, returns `false`.

    -   ### getAuthorizationActionName

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAuthorizationActionName(javax.servlet.http.HttpServletRequest q)

        Deprecated.

        Returns this action's name, as registered with the authorization framework. By default, returns this action's fully qualified class name. This method should be overridden to provide more granular action names, based on the data in the request.

    -   ### getServiceContext

        protected [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") getServiceContext(javax.servlet.http.HttpServletRequest q)

        Deprecated.

        Returns the [`ServiceContext`](../../services/ServiceContext.html "interface in com.appiancorp.services") for the user executing this request.

    -   ### getAuthorizationProvider

        protected com.appiancorp.security.authz.AuthorizationProvider getAuthorizationProvider()

        Deprecated.

        Returns the `AuthorizationProvider` to be used to perform authorization.

    -   ### generateToken

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") generateToken(javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Do not call. Will throw AbstractMethodError

        Overrides:

        `generateToken` in class `com.appiancorp.web.framework.kernel.main.Action`

    -   ### isTokenValid

        protected boolean isTokenValid(javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Detemines if the current request token is valid

        Overrides:

        `isTokenValid` in class `com.appiancorp.web.framework.kernel.main.Action`

        Parameters:

        `q_` - the request

        Returns:

        `true` if the token is valid; `false` otherwise

    -   ### isTokenValid

        protected boolean isTokenValid(javax.servlet.http.HttpServletRequest q\_, boolean reset\_)

        Deprecated.

        Detemines if the current request token is valid

        Overrides:

        `isTokenValid` in class `com.appiancorp.web.framework.kernel.main.Action`

        Parameters:

        `q_` - the request

        `reset_` - whether to reset the token

        Returns:

        `true` if the token is valid; `false` otherwise

    -   ### resetToken

        protected void resetToken(javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Reset the token

        Overrides:

        `resetToken` in class `com.appiancorp.web.framework.kernel.main.Action`

        Parameters:

        `q_` - the request

    -   ### saveToken

        protected void saveToken(javax.servlet.http.HttpServletRequest q\_)

        Deprecated.

        Save a new token for the request

        Overrides:

        `saveToken` in class `com.appiancorp.web.framework.kernel.main.Action`

        Parameters:

        `q_` - the request