---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Configuration.html
original_path: api/com/appiancorp/suiteapi/common/Configuration.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class Configuration

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.config.AbstractConfiguration

com.appiancorp.suiteapi.common.Configuration

* * *

public abstract class Configuration extends com.appiancorp.common.config.AbstractConfiguration

Provides support for loading configuration files for the product.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.config.AbstractConfiguration

    `CUSTOM_PROPERTIES_NAME, DELIMITER, SYS_PROPS_PREFIX`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Configuration](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace)`

    Constructs a new Configuration object with a namespace.

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.common.config.AbstractConfiguration

    `cacheConfigurationValues, clearCache, getAeHome, getBoolean, getClass, getConfiguration, getDefaultFileRefreshMs, getDouble, getDuration, getFallbackPropertiesConfigurations, getHostAndPort, getHostAndPortSet, getInt, getInteger, getIntegerSet, getKeys, getList, getList, getLong, getNonZeroPositiveInt, getPositiveInt, getPositiveIntIncludingZero, getPositiveLong, getResourceBundleName, getResourceKey, getSet, getSet, getString, getString, getStringIgnoringCache, getVersion, getVersion, init, init, loadCustomProperties, loadCustomPropertiesFile, onReload, setBooleanKeyListener, subset`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Configuration

        public Configuration([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace)

        Constructs a new Configuration object with a namespace.

        Parameters:

        `namespace` - configuration property "namespace"; this will be the prefix to use when defining properties in conf/custom.properties