---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/TypeResource.html
original_path: api/com/appiancorp/suiteapi/type/TypeResource.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type](package-summary.html)

# Class TypeResource

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.util.AbstractMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.html "class or interface in java.util")<K,V>

[java.util.HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")

com.appiancorp.suiteapi.type.TypeResource

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

* * *

public class TypeResource extends [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")

HashMap that validates 'K' keys. Used for type resources Keys have to be strings and value can be any POJO

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.type.TypeResource)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.util.[AbstractMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.html "class or interface in java.util")

    `[AbstractMap.SimpleEntry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.SimpleEntry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.SimpleEntry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.SimpleEntry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>, [AbstractMap.SimpleImmutableEntry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.SimpleImmutableEntry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.SimpleImmutableEntry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.SimpleImmutableEntry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    ## Nested classes/interfaces inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[Map.Entry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypeResource](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[put](#put\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    ### Methods inherited from class java.util.[HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")

    `[clear](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#clear\(\) "class or interface in java.util"), [clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#clone\(\) "class or interface in java.util"), [compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [containsKey](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#containsKey\(java.lang.Object\) "class or interface in java.util"), [containsValue](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#containsValue\(java.lang.Object\) "class or interface in java.util"), [entrySet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#entrySet\(\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [get](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#get\(java.lang.Object\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [isEmpty](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#isEmpty\(\) "class or interface in java.util"), [keySet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#keySet\(\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [put](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#put\(K,V\) "class or interface in java.util"), [putAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#putAll\(java.util.Map\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#remove\(java.lang.Object\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util"), [size](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#size\(\) "class or interface in java.util"), [values](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html#values\(\) "class or interface in java.util")`

    ### Methods inherited from class java.util.[AbstractMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.html "class or interface in java.util")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.html#equals\(java.lang.Object\) "class or interface in java.util"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.html#hashCode\(\) "class or interface in java.util"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/AbstractMap.html#toString\(\) "class or interface in java.util")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#equals\(java.lang.Object\) "class or interface in java.util"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#hashCode\(\) "class or interface in java.util")`

-   ## Constructor Details

    -   ### TypeResource

        public TypeResource()

-   ## Method Details

    -   ### put

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") put([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)