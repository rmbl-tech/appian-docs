---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Provider.html
original_path: api/com/appiancorp/suiteapi/common/Provider.html
version: "25.3"
title: "Interface Provider<T>"
page_id: "api/com/appiancorp/suiteapi/common/Provider"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface Provider<T>

Type Parameters:

`T` - the type of object this provides

All Known Implementing Classes:

`[ServiceProvider](ServiceProvider.html "class in com.appiancorp.suiteapi.common")`

* * *

public interface Provider<T>

An object capable of providing instances of type T.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[T](Provider.html "type parameter in Provider")`

    `[get](#get\(\))()`

    Provides an instance of T.

-   ## Method Details

    -   ### get

        [T](Provider.html "type parameter in Provider") get()

        Provides an instance of T. Must never return null.

        Returns: