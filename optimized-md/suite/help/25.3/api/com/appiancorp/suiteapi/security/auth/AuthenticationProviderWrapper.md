---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/security/auth/AuthenticationProviderWrapper.html
original_path: api/com/appiancorp/suiteapi/security/auth/AuthenticationProviderWrapper.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.security.auth](package-summary.html)

# Class AuthenticationProviderWrapper

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.security.auth.AuthenticationProviderWrapper

All Implemented Interfaces:

`org.springframework.security.authentication.AuthenticationProvider`

* * *

public class AuthenticationProviderWrapper extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements org.springframework.security.authentication.AuthenticationProvider

The AuthenticationProviderWrapper contains an AuthenticationProvider to which it delegates the actual authentication of an AuthenticationToken. If the delegate AuthenticationProvider successfully authenticates the AuthenticationToken, the Wrapper will take the AppianUserDetails from the resulting Authentication and add an appropriate ScsKey based on the results of AuthenticationProviderWrapper.getScsKey. This value will be hashed before being added to the AppianUserDetails. This wrapper is necessary for systems that support the User Secure Credential Store.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AuthenticationProviderWrapper](#%3Cinit%3E\(org.springframework.security.authentication.AuthenticationProvider\))(org.springframework.security.authentication.AuthenticationProvider delegate)`

    Construct an AuthenticationProviderWrapper that will delegate to the given AuthenticationProvider.

    `[AuthenticationProviderWrapper](#%3Cinit%3E\(org.springframework.security.authentication.AuthenticationProvider,com.appiancorp.security.auth.ScsKeyChangeHandler\))(org.springframework.security.authentication.AuthenticationProvider delegate, com.appiancorp.security.auth.ScsKeyChangeHandler scsKeyChangeHandler)`

    Construct an AuthenticationProviderWrapper that will delegate to the given AuthenticationProvider, and will handle changes in scs key using the provided ScsKeyChangeHandler.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `final org.springframework.security.core.Authentication`

    `[authenticate](#authenticate\(org.springframework.security.core.Authentication\))(org.springframework.security.core.Authentication authentication)`

    Calls the delegate configured via the constructor.

    `org.springframework.security.authentication.AuthenticationProvider`

    `[getDelegate](#getDelegate\(\))()`

    Get the AuthenticationProvider to which the AuthenticationProviderWraper is delegating method calls.

    `protected char[]`

    `[getScsKey](#getScsKey\(org.springframework.security.core.Authentication,org.springframework.security.core.Authentication\))(org.springframework.security.core.Authentication originalAuthToken, org.springframework.security.core.Authentication resultAuthToken)`

    Get an appropriate value for the Secure Credential Store key.

    `final boolean`

    `[supports](#supports\(java.lang.Class\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> authentication)`

    Defers to the delegate configured via the constructor.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AuthenticationProviderWrapper

        public AuthenticationProviderWrapper(org.springframework.security.authentication.AuthenticationProvider delegate)

        Construct an AuthenticationProviderWrapper that will delegate to the given AuthenticationProvider. The methods `supports(Class<?>)` and `authenticate(Authenticate)` both delegate to this class. It uses the default `ScsKeyChangeHandler` to handle changes in scs key. This is the constructor that should be used to wrap custom authentication providers.

    -   ### AuthenticationProviderWrapper

        public AuthenticationProviderWrapper(org.springframework.security.authentication.AuthenticationProvider delegate, com.appiancorp.security.auth.ScsKeyChangeHandler scsKeyChangeHandler)

        Construct an AuthenticationProviderWrapper that will delegate to the given AuthenticationProvider, and will handle changes in scs key using the provided ScsKeyChangeHandler. The methods `supports(Class<?>)` and `authenticate(Authenticate)` both delegate to this class.

-   ## Method Details

    -   ### supports

        public final boolean supports([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> authentication)

        Defers to the delegate configured via the constructor.

        Specified by:

        `supports` in interface `org.springframework.security.authentication.AuthenticationProvider`

    -   ### authenticate

        public final org.springframework.security.core.Authentication authenticate(org.springframework.security.core.Authentication authentication) throws org.springframework.security.core.AuthenticationException

        Calls the delegate configured via the constructor. If authentication is successful, performs additional logic to create a valid result authentication token as required by Appian.

        Specified by:

        `authenticate` in interface `org.springframework.security.authentication.AuthenticationProvider`

        Throws:

        `org.springframework.security.core.AuthenticationException`

    -   ### getScsKey

        protected char\[\] getScsKey(org.springframework.security.core.Authentication originalAuthToken, org.springframework.security.core.Authentication resultAuthToken)

        Get an appropriate value for the Secure Credential Store key. By default this method uses the `originalAuthToken` to get the authentication credentials. The value returned from this method is never stored in the Appian system. A hashed version of it resides in memory for the duration of a User Session. It is used to encrypt and decrypt values in for the user in the Appian Secure Credential Store. A hashed version is stored on disk to compare against future keys to determine when to clear the user secured credential store for a given user.

    -   ### getDelegate

        public org.springframework.security.authentication.AuthenticationProvider getDelegate()

        Get the AuthenticationProvider to which the AuthenticationProviderWraper is delegating method calls.