---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/cfg/ConfigurationLoader.html
original_path: api/com/appiancorp/suiteapi/cfg/ConfigurationLoader.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.cfg](package-summary.html)

# Class ConfigurationLoader

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.cfg.ConfigurationLoader

* * *

public final class ConfigurationLoader extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Factory for returning an instance of Configuration.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ConfigurationLoader](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static [Configuration](Configuration.html "interface in com.appiancorp.suiteapi.cfg")`

    `[getConfiguration](#getConfiguration\(\))()`

    Returns the first instance of the Configuration class found.

    `static void`

    `[initializeConfigurations](#initializeConfigurations\(\))()`

    Deprecated.

    This method is needed to use the service APIs from a standalone application, which is no longer supported.

    `static boolean`

    `[isInitialized](#isInitialized\(\))()`

    Deprecated.

    This method is needed to use the service APIs from a standalone application, which is no longer supported.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ConfigurationLoader

        public ConfigurationLoader()

-   ## Method Details

    -   ### getConfiguration

        public static [Configuration](Configuration.html "interface in com.appiancorp.suiteapi.cfg") getConfiguration()

        Returns the first instance of the Configuration class found. Call this to get an instance that implements the [`Configuration`](Configuration.html "interface in com.appiancorp.suiteapi.cfg") interface and allows access to configuration property values.

        Returns:

        the instance of Configuration

    -   ### initializeConfigurations

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void initializeConfigurations()

        Deprecated.

        This method is needed to use the service APIs from a standalone application, which is no longer supported.

        Initializes the configurations needed to use the service APIs from a standalone application. Typically, these configurations are initialized during the application server startup, however if you are writing a standalone application that does not run in the application server, you need to call this method to initialize the prerequisite configurations before making any calls to the services. You must have the \_admin/\_scripts/classpath.jar in your classpath, and must not change the product installation directory structure.

    -   ### isInitialized

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static boolean isInitialized()

        Deprecated.

        This method is needed to use the service APIs from a standalone application, which is no longer supported.

        Returns true if [`initializeConfigurations`](#initializeConfigurations\(\)) has been called, and false otherwise.