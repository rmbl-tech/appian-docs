---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/LocaleString.html
original_path: api/com/appiancorp/suiteapi/common/LocaleString.html
version: "25.3"
title: "Class LocaleString"
page_id: "api/com/appiancorp/suiteapi/common/LocaleString"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class LocaleString

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.LocaleString

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public final class LocaleString extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

LocaleString LocaleString represents one String with representations in one or more Locales, or in all Locales (an insensitive String). This may be output or input as a single encoded String, using escapes.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.LocaleString)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LocaleString](#%3Cinit%3E\(\))()`

    `[LocaleString](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") overall)`

    `[LocaleString](#%3Cinit%3E\(java.util.Locale,java.lang.String\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[clone](#clone\(\))()`

    Clone this LocaleString; the result will have its own locale sensitive map.

    `boolean`

    `[containsLocale](#containsLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[get](#get\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") locale)`

    `final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[get](#get\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")>`

    `[getLocales](#getLocales\(\))()`

    Get the Locale keys for this LocaleString.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizeExpressionString](#getLocalizeExpressionString\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getStringLocales](#getStringLocales\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isExpression](#isExpression\(\))()`

    `boolean`

    `[isNullOrEmpty](#isNullOrEmpty\(\))()`

    `boolean`

    `[isSensitiveToLocale](#isSensitiveToLocale\(\))()`

    `final void`

    `[put](#put\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)`

    `final void`

    `[put](#put\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)`

    `final void`

    `[put](#put\(java.util.Locale,java.lang.String\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)`

    `final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[retrieveValueForLocaleOrFirstAvailable](#retrieveValueForLocaleOrFirstAvailable\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale)`

    Returns the localized value for the given locale, if available.

    `final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[retrieveValueForUserLocaleOrPrimary](#retrieveValueForUserLocaleOrPrimary\(java.util.Locale,com.appiancorp.suiteapi.portal.SiteLocaleSettings\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") userLocale, [SiteLocaleSettings](../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") sls)`

    Deprecated.

    This method will be removed in a future release.

    `final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[retrieveValueForUserLocaleOrPrimary](#retrieveValueForUserLocaleOrPrimary\(java.util.Locale,java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") userLocale, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") primaryLocale)`

    Returns the localized value for the user's locale, if available.

    `int`

    `[structuralHashCode](#structuralHashCode\(\))()`

    Method that calculates the "structural" hash code, which is the true hash code of the contents of this object.

    `final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toEncodedString](#toEncodedString\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the given [`LocaleString`](LocaleString.html "class in com.appiancorp.suiteapi.common") object.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### LocaleString

        public LocaleString()

    -   ### LocaleString

        public LocaleString([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)

    -   ### LocaleString

        public LocaleString([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") overall)

-   ## Method Details

    -   ### get

        public final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") get([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Parameters:

        `locale` -

        Returns:

        text for the given locale, or insensitive text if this LocaleString is not sensitive to Locale

    -   ### get

        public final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") get([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") locale)

        Parameters:

        `locale` -

        Returns:

        text for the given locale, or insensitive text if this LocaleString is not sensitive to Locale

    -   ### retrieveValueForUserLocaleOrPrimary

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") retrieveValueForUserLocaleOrPrimary([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") userLocale, [SiteLocaleSettings](../portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") sls)

        Deprecated.

        This method will be removed in a future release. Use retrieveValueForUserLocaleOrPrimary(Locale, Locale) instead.

        Returns the localized value for the user's locale, if available. If the value is not available in the user's locale, it falls back to the site's primary locale.

    -   ### retrieveValueForUserLocaleOrPrimary

        public final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") retrieveValueForUserLocaleOrPrimary([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") userLocale, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") primaryLocale)

        Returns the localized value for the user's locale, if available. If the value is not available in the user's locale, it falls back to the site's primary locale.

    -   ### retrieveValueForLocaleOrFirstAvailable

        public final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") retrieveValueForLocaleOrFirstAvailable([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale)

        Returns the localized value for the given locale, if available. If the value is not available in the given locale, returns the first available value. If there are no values at all, returns `null`.

    -   ### put

        public final void put([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)

        Parameters:

        `text` - replacing all sensitive text with this text insensitive to Locale (similar to plain String)

    -   ### put

        public final void put([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)

        Parameters:

        `locale` - under which to place this text

        `text` - associated with this given locale

    -   ### put

        public final void put([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") text)

    -   ### toEncodedString

        public final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toEncodedString()

        Returns:

        the encoded representation of the mappings contained in this object.

    -   ### getLocales

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")\> getLocales()

        Get the Locale keys for this LocaleString.

        Returns:

        Set of Locales stored in this LocaleString, which may be empty for LocaleStrings insensitive to Locale

        Throws:

        `[IllegalStateException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalStateException.html "class or interface in java.lang")` - if an invalid Locale is encountered

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns a string representation of the given [`LocaleString`](LocaleString.html "class in com.appiancorp.suiteapi.common") object. The returned string representation is suitable for logging or debugging. This should NOT be used for outputting the string to the end-user.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### isNullOrEmpty

        public boolean isNullOrEmpty()

        Returns:

        true if this LocaleString has no locales with associated text, or insensitive to Locale with empty string

    -   ### isExpression

        public boolean isExpression()

        Returns:

        if this LocaleString contains an expression as part of its locale mappings.

    -   ### getLocalizeExpressionString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizeExpressionString()

        Returns:

        the String representation of the localize expression-function used to validate LocaleString objects that contain expressions in its mappings.

    -   ### getStringLocales

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getStringLocales()

    -   ### containsLocale

        public boolean containsLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### structuralHashCode

        public int structuralHashCode()

        Method that calculates the "structural" hash code, which is the true hash code of the contents of this object. The value will be calculated only once and cached, since this method should only be used in a SAIL context where LocaleString instances are immutable. If the value is mutated afterwards this method will return an incorrect value.

    -   ### clone

        public [LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common") clone()

        Clone this LocaleString; the result will have its own locale sensitive map.

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### isSensitiveToLocale

        public boolean isSensitiveToLocale()

        Returns:

        Is this LocaleString sensitive to input locale, that is, has it been loaded with Locale sensitive data, e.g., by put(Locale,String)? If not, then all get(Locale) will return the same results.