---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/paging/PagingInfoConverter.html
original_path: api/com/appiancorp/suiteapi/common/paging/PagingInfoConverter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.paging](package-summary.html)

# Class PagingInfoConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.paging.PagingInfoConverter

* * *

public class PagingInfoConverter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Helper functions to convert between PagingInfo Java objects and Appian data types

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PagingInfoConverter](#%3Cinit%3E\(com.appiancorp.common.xml.JaxbConverterWrapper,com.appiancorp.suiteapi.type.TypeService\))(com.appiancorp.common.xml.JaxbConverterWrapper jaxbConverterWrapper, [TypeService](../../type/TypeService.html "interface in com.appiancorp.suiteapi.type") typeService)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[convertValueToPagingInfo](#convertValueToPagingInfo\(com.appiancorp.core.expr.portable.Value\))(com.appiancorp.core.expr.portable.Value pagingInfoValue)`

    Converts Value to PagingInfo Java object

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PagingInfoConverter

        public PagingInfoConverter(com.appiancorp.common.xml.JaxbConverterWrapper jaxbConverterWrapper, [TypeService](../../type/TypeService.html "interface in com.appiancorp.suiteapi.type") typeService)

-   ## Method Details

    -   ### convertValueToPagingInfo

        public [PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") convertValueToPagingInfo(com.appiancorp.core.expr.portable.Value pagingInfoValue)

        Converts Value to PagingInfo Java object