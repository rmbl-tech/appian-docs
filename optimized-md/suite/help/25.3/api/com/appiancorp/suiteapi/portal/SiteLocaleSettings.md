---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/SiteLocaleSettings.html
original_path: api/com/appiancorp/suiteapi/portal/SiteLocaleSettings.html
version: "25.3"
title: "Class SiteLocaleSettings"
page_id: "api/com/appiancorp/suiteapi/portal/SiteLocaleSettings"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class SiteLocaleSettings

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.SiteLocaleSettings

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class SiteLocaleSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean to hold the application locale settings.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.SiteLocaleSettings)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SiteLocaleSettings](#%3Cinit%3E\(\))()`

    `[SiteLocaleSettings](#%3Cinit%3E\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\))([SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") siteLocaleSettings)`

    Create copy of SiteLocaleSettings object.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `com.appiancorp.suiteapi.portal.LocaleSetting[]`

    `[getLocaleSettings](#getLocaleSettings\(\))()`

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getPrimaryLocale](#getPrimaryLocale\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isSitewideLocale](#isSitewideLocale\(\))()`

    `void`

    `[setLocaleSettings](#setLocaleSettings\(com.appiancorp.suiteapi.portal.LocaleSetting%5B%5D\))(com.appiancorp.suiteapi.portal.LocaleSetting[] localSettings)`

    `void`

    `[setPrimaryLocale](#setPrimaryLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") primaryLocale)`

    `void`

    `[setSitewideLocale](#setSitewideLocale\(boolean\))(boolean siteWideLocale)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SiteLocaleSettings

        public SiteLocaleSettings()

    -   ### SiteLocaleSettings

        public SiteLocaleSettings([SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") siteLocaleSettings)

        Create copy of SiteLocaleSettings object. Used to ensure that the object stored in the cache is not directly modified.

        Parameters:

        `siteLocaleSettings` - Locale Settings to create a clone of.

-   ## Method Details

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getPrimaryLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getPrimaryLocale()

        Returns:

        Returns the primaryLocale.

    -   ### setPrimaryLocale

        public void setPrimaryLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") primaryLocale)

        Parameters:

        `primaryLocale` - The primaryLocale to set.

    -   ### isSitewideLocale

        public boolean isSitewideLocale()

        Returns:

        Returns the siteWideLocale.

    -   ### setSitewideLocale

        public void setSitewideLocale(boolean siteWideLocale)

        Parameters:

        `siteWideLocale` - The siteWideLocale to set.

    -   ### getLocaleSettings

        public com.appiancorp.suiteapi.portal.LocaleSetting\[\] getLocaleSettings()

        Returns:

        Returns the localSettings.

    -   ### setLocaleSettings

        public void setLocaleSettings(com.appiancorp.suiteapi.portal.LocaleSetting\[\] localSettings)

        Parameters:

        `localSettings` - The localSettings to set.