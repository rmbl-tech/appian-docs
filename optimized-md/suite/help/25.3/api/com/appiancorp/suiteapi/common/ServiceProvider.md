---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ServiceProvider.html
original_path: api/com/appiancorp/suiteapi/common/ServiceProvider.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ServiceProvider<T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.ServiceProvider<T>

Type Parameters:

`T` - the service class to return

All Implemented Interfaces:

`[Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<T>`

* * *

public class ServiceProvider<T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<T>

Provider implementation which will return a service from the given ServiceContext.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ServiceProvider](#%3Cinit%3E\(com.appiancorp.services.ServiceContext,java.lang.String\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") ctx, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?>,[Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<?>>`

    `[create](#create\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") ctx)`

    Provides a default implementation of all the known Services.

    `[T](ServiceProvider.html "type parameter in ServiceProvider")`

    `[get](#get\(\))()`

    Provides an instance of T.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ServiceProvider

        public ServiceProvider([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") ctx, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName)

-   ## Method Details

    -   ### get

        public [T](ServiceProvider.html "type parameter in ServiceProvider") get()

        Description copied from interface: `[Provider](Provider.html#get\(\))`

        Provides an instance of T. Must never return null.

        Specified by:

        `[get](Provider.html#get\(\))` in interface `[Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<[T](ServiceProvider.html "type parameter in ServiceProvider")>`

        Returns:

    -   ### create

        public static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?>,[Provider](Provider.html "interface in com.appiancorp.suiteapi.common")<?>> create([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") ctx)

        Provides a default implementation of all the known Services.

        See Also:

        -   [`ServiceLocator`](ServiceLocator.html "class in com.appiancorp.suiteapi.common")