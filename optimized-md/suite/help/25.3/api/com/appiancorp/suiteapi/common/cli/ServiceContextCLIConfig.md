---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/cli/ServiceContextCLIConfig.html
original_path: api/com/appiancorp/suiteapi/common/cli/ServiceContextCLIConfig.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.cli](package-summary.html)

# Class ServiceContextCLIConfig

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.cli.ServiceContextCLIConfig

All Implemented Interfaces:

`[Configurable](Configurable.html "interface in com.appiancorp.suiteapi.common.cli")`

* * *

public abstract class ServiceContextCLIConfig extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Configurable](Configurable.html "interface in com.appiancorp.suiteapi.common.cli")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[password](#password)`

    `protected [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[sc](#sc)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[username](#username)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ServiceContextCLIConfig](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[configure](#configure\(\))()`

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Option](Option.html "class in com.appiancorp.suiteapi.common.cli")>`

    `[getOptions](#getOptions\(\))()`

    `[ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### username

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username

    -   ### password

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password

    -   ### sc

        protected [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc

-   ## Constructor Details

    -   ### ServiceContextCLIConfig

        public ServiceContextCLIConfig()

-   ## Method Details

    -   ### getServiceContext

        public [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") getServiceContext()

    -   ### configure

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") configure() throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Specified by:

        `[configure](Configurable.html#configure\(\))` in interface `[Configurable](Configurable.html "interface in com.appiancorp.suiteapi.common.cli")`

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### getOptions

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Option](Option.html "class in com.appiancorp.suiteapi.common.cli")\> getOptions()

        Specified by:

        `[getOptions](Configurable.html#getOptions\(\))` in interface `[Configurable](Configurable.html "interface in com.appiancorp.suiteapi.common.cli")`