---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/Comparisons.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/Comparisons.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class Comparisons

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.Comparisons

* * *

public class Comparisons extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Defines constants for logical comparisons between values.

See Also:

-   [`SimpleColumnFilter`](SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[BETWEEN](#BETWEEN)`

    Operator representing "lies between the given range of values".

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[EQUAL](#EQUAL)`

    Operator representing "is equal to the given value".

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GREATER_THAN](#GREATER_THAN)`

    Operator representing "is greater than the given value".

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GREATER_THAN_OR_EQUALS](#GREATER_THAN_OR_EQUALS)`

    Operator representing "is greater than or equal to the given value".

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[IN](#IN)`

    Operator representing "exists in the given array of values".

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LESS_THAN](#LESS_THAN)`

    Operator representing "is less than the given value".

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LESS_THAN_OR_EQUALS](#LESS_THAN_OR_EQUALS)`

    Operator representing "is less than or equal to the given value".

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LIKE](#LIKE)`

    Operator representing "is a substring of another String".

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOT_BETWEEN](#NOT_BETWEEN)`

    Operator representing "does not lie between the given range of values".

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOT_EQUAL](#NOT_EQUAL)`

    Operator representing "is not equal to the given value".

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOT_IN](#NOT_IN)`

    Operator representing "does not exist in the given array of values".

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NOT_LIKE](#NOT_LIKE)`

    Operator representing "is not a substring of another String".

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Comparisons](#%3Cinit%3E\(\))()`

-   ## Method Summary

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### GREATER\_THAN

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GREATER\_THAN

        Operator representing "is greater than the given value".

    -   ### LESS\_THAN

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LESS\_THAN

        Operator representing "is less than the given value".

    -   ### GREATER\_THAN\_OR\_EQUALS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GREATER\_THAN\_OR\_EQUALS

        Operator representing "is greater than or equal to the given value".

    -   ### LESS\_THAN\_OR\_EQUALS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LESS\_THAN\_OR\_EQUALS

        Operator representing "is less than or equal to the given value".

    -   ### EQUAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") EQUAL

        Operator representing "is equal to the given value".

    -   ### NOT\_EQUAL

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOT\_EQUAL

        Operator representing "is not equal to the given value".

    -   ### IN

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") IN

        Operator representing "exists in the given array of values".

    -   ### NOT\_IN

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOT\_IN

        Operator representing "does not exist in the given array of values".

    -   ### BETWEEN

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") BETWEEN

        Operator representing "lies between the given range of values".

    -   ### NOT\_BETWEEN

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOT\_BETWEEN

        Operator representing "does not lie between the given range of values".

    -   ### LIKE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LIKE

        Operator representing "is a substring of another String". Wildcards are allowed in the values being operated on, such that when "\*abc\*" is operated on, the result will be all Strings containing the substring "abc"; when "abc" is operated on, the result will be all Strings equal to "abc" The comparison is case insensitive.

    -   ### NOT\_LIKE

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NOT\_LIKE

        Operator representing "is not a substring of another String". Wildcards are allowed in the values being operated on, such that when "\*abc\*" is operated on, the result will be all Strings not containing the substring "abc"; when "abc" is operated on, the result will be all Strings not equal to "abc" The comparison is case insensitive.

-   ## Constructor Details

    -   ### Comparisons

        public Comparisons()