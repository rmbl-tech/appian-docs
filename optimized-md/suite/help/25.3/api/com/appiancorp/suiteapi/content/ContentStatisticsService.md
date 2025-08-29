---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentStatisticsService.html
original_path: api/com/appiancorp/suiteapi/content/ContentStatisticsService.html
version: "25.3"
title: "Interface ContentStatisticsService"
page_id: "api/com/appiancorp/suiteapi/content/ContentStatisticsService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Interface ContentStatisticsService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ContentStatisticsService extends com.appiancorp.services.ContextSensitiveService

This interface provides access to the Content Statistics service. NOTE: This is the Content server, NOT the Collab Statistics server.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getContentMegabytesUsed$UPDATES](#getContentMegabytesUsed$UPDATES)`

    `static final boolean`

    `[getContentStatistics$UPDATES](#getContentStatistics$UPDATES)`

    `static final boolean`

    `[getTotal$UPDATES](#getTotal$UPDATES)`

    `static final boolean`

    `[getTotalByDayOfWeek$UPDATES](#getTotalByDayOfWeek$UPDATES)`

    `static final boolean`

    `[getTotalByExtension$UPDATES](#getTotalByExtension$UPDATES)`

    `static final boolean`

    `[getTotalByHour$UPDATES](#getTotalByHour$UPDATES)`

    `static final boolean`

    `[getTotalFiles$UPDATES](#getTotalFiles$UPDATES)`

    `static final boolean`

    `[getTotalModified$UPDATES](#getTotalModified$UPDATES)`

    `static final boolean`

    `[getUserStatistics$UPDATES](#getUserStatistics$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[getContentMegabytesUsed](#getContentMegabytesUsed\(\))()`

    Get the amount of space used by all leaf content.

    `[TotalByType](TotalByType.html "class in com.appiancorp.suiteapi.content")[]`

    `[getContentStatistics](#getContentStatistics\(\))()`

    Get a count of content items by type.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getTotal](#getTotal\(com.appiancorp.suiteapi.content.ContentFilter\))([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    This returns the total number of content items matching the typemask.

    `[TotalByDayOfWeek](TotalByDayOfWeek.html "class in com.appiancorp.suiteapi.content")[]`

    `[getTotalByDayOfWeek](#getTotalByDayOfWeek\(com.appiancorp.suiteapi.content.ContentFilter\))([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Get a count of content items modified by day of week.

    `[TotalByExtension](TotalByExtension.html "class in com.appiancorp.suiteapi.content")[]`

    `[getTotalByExtension](#getTotalByExtension\(\))()`

    Get a count of content items by extension.

    `[TotalByHour](TotalByHour.html "class in com.appiancorp.suiteapi.content")[]`

    `[getTotalByHour](#getTotalByHour\(com.appiancorp.suiteapi.content.ContentFilter\))([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Get a count of content items modified by hour.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getTotalFiles](#getTotalFiles\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includingVersions)`

    Get a count of the total number of content items.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getTotalModified](#getTotalModified\(com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days)`

    Get the total number of Content items modified in the given number of days.

    `[UserStatistics](UserStatistics.html "class in com.appiancorp.suiteapi.content")`

    `[getUserStatistics](#getUserStatistics\(\))()`

    Get user statistics for content.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getTotal$UPDATES

        static final boolean getTotal$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getTotal$UPDATES)

    -   ### getTotalModified$UPDATES

        static final boolean getTotalModified$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getTotalModified$UPDATES)

    -   ### getTotalByHour$UPDATES

        static final boolean getTotalByHour$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getTotalByHour$UPDATES)

    -   ### getTotalByDayOfWeek$UPDATES

        static final boolean getTotalByDayOfWeek$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getTotalByDayOfWeek$UPDATES)

    -   ### getTotalByExtension$UPDATES

        static final boolean getTotalByExtension$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getTotalByExtension$UPDATES)

    -   ### getTotalFiles$UPDATES

        static final boolean getTotalFiles$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getTotalFiles$UPDATES)

    -   ### getContentStatistics$UPDATES

        static final boolean getContentStatistics$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getContentStatistics$UPDATES)

    -   ### getContentMegabytesUsed$UPDATES

        static final boolean getContentMegabytesUsed$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getContentMegabytesUsed$UPDATES)

    -   ### getUserStatistics$UPDATES

        static final boolean getUserStatistics$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentStatisticsService.getUserStatistics$UPDATES)

-   ## Method Details

    -   ### getTotal

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getTotal([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This returns the total number of content items matching the typemask. (getTotalNumber(TYPE\_DOCUMENT) returns the total number of uploads.)

        Parameters:

        `filter` - only count contents matching this filter

        Returns:

        integer count

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask is specified in the filter

    -   ### getTotalModified

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getTotalModified([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the total number of Content items modified in the given number of days. (getTotalModified(TYPE\_DOCUMENT,days) returns the total number uploaded in the last so many days.)

        Parameters:

        `filter` - only count contents matching this filter

        `days` - number of days

        Returns:

        integer count

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask is specified in the filter

    -   ### getTotalByHour

        [TotalByHour](TotalByHour.html "class in com.appiancorp.suiteapi.content")\[\] getTotalByHour([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get a count of content items modified by hour.

        Parameters:

        `filter` - only count contents matching this filter

        Returns:

        bean with hour and count fields

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask is specified in the filter

    -   ### getTotalByDayOfWeek

        [TotalByDayOfWeek](TotalByDayOfWeek.html "class in com.appiancorp.suiteapi.content")\[\] getTotalByDayOfWeek([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get a count of content items modified by day of week.

        Parameters:

        `filter` - only count contents matching this filter

        Returns:

        bean with dayOfWeek and count fields

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask is specified in the filter

    -   ### getTotalByExtension

        [TotalByExtension](TotalByExtension.html "class in com.appiancorp.suiteapi.content")\[\] getTotalByExtension()

        Get a count of content items by extension.

        Returns:

        bean with extension and count fields

    -   ### getTotalFiles

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getTotalFiles([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includingVersions)

        Get a count of the total number of content items. This includes active and inactive content.

        Parameters:

        `includingVersions` - true if including version, false otherwise

        Returns:

        total count

    -   ### getContentStatistics

        [TotalByType](TotalByType.html "class in com.appiancorp.suiteapi.content")\[\] getContentStatistics()

        Get a count of content items by type.

        Returns:

        bean of type and count

    -   ### getContentMegabytesUsed

        [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") getContentMegabytesUsed()

        Get the amount of space used by all leaf content.

        Returns:

        number of megabytes used by all leaf content (floating-point)

    -   ### getUserStatistics

        [UserStatistics](UserStatistics.html "class in com.appiancorp.suiteapi.content") getUserStatistics()

        Get user statistics for content.

        Returns:

        UserStatistics