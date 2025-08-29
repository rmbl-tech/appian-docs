---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/StatisticsService.html
original_path: api/com/appiancorp/suiteapi/collaboration/StatisticsService.html
version: "25.3"
title: "Interface StatisticsService"
page_id: "api/com/appiancorp/suiteapi/collaboration/StatisticsService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface StatisticsService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface StatisticsService extends com.appiancorp.services.ContextSensitiveService

This interface provides services for other applications using methods related to collaboration download statistics

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getCommunitiesWithMostDownloads$UPDATES](#getCommunitiesWithMostDownloads$UPDATES)`

    `static final boolean`

    `[getCommunitiesWithMostDownloadsPaging$UPDATES](#getCommunitiesWithMostDownloadsPaging$UPDATES)`

    `static final boolean`

    `[getDownloadsByDayForKnowledgeCenter$UPDATES](#getDownloadsByDayForKnowledgeCenter$UPDATES)`

    `static final boolean`

    `[getDownloadsByDayForKnowledgeCenterPaging$UPDATES](#getDownloadsByDayForKnowledgeCenterPaging$UPDATES)`

    `static final boolean`

    `[getDownloadsByHour$UPDATES](#getDownloadsByHour$UPDATES)`

    `static final boolean`

    `[getDownloadsByHourPaging$UPDATES](#getDownloadsByHourPaging$UPDATES)`

    `static final boolean`

    `[getDownloadsByType$UPDATES](#getDownloadsByType$UPDATES)`

    `static final boolean`

    `[getDownloadsByTypePaging$UPDATES](#getDownloadsByTypePaging$UPDATES)`

    `static final boolean`

    `[getDownloadsByWeekDays$UPDATES](#getDownloadsByWeekDays$UPDATES)`

    `static final boolean`

    `[getDownloadsByWeekDaysPaging$UPDATES](#getDownloadsByWeekDaysPaging$UPDATES)`

    `static final boolean`

    `[getGeneralUserDownloadStatistics$UPDATES](#getGeneralUserDownloadStatistics$UPDATES)`

    `static final boolean`

    `[getKnowledgeCentersWithMostDownloads$UPDATES](#getKnowledgeCentersWithMostDownloads$UPDATES)`

    `static final boolean`

    `[getKnowledgeCentersWithMostDownloadsPaging$UPDATES](#getKnowledgeCentersWithMostDownloadsPaging$UPDATES)`

    `static final boolean`

    `[getNumberDownloads$UPDATES](#getNumberDownloads$UPDATES)`

    `static final boolean`

    `[getNumberDownloadsPaging$UPDATES](#getNumberDownloadsPaging$UPDATES)`

    `static final boolean`

    `[getPopularDocumentsKnowledgeCenter$UPDATES](#getPopularDocumentsKnowledgeCenter$UPDATES)`

    `static final boolean`

    `[getPopularDocumentsKnowledgeCenterPaging$UPDATES](#getPopularDocumentsKnowledgeCenterPaging$UPDATES)`

    `static final boolean`

    `[getTopDocumentsByDownloads$UPDATES](#getTopDocumentsByDownloads$UPDATES)`

    `static final boolean`

    `[getTopDocumentsByDownloadsPaging$UPDATES](#getTopDocumentsByDownloadsPaging$UPDATES)`

    `static final boolean`

    `[getTotalDownloads$UPDATES](#getTotalDownloads$UPDATES)`

    `static final boolean`

    `[getUsersByDownloadedContent$UPDATES](#getUsersByDownloadedContent$UPDATES)`

    `static final boolean`

    `[getUsersByDownloadedContentPaging$UPDATES](#getUsersByDownloadedContentPaging$UPDATES)`

    `static final boolean`

    `[getUsersByDownloadedDocument$UPDATES](#getUsersByDownloadedDocument$UPDATES)`

    `static final boolean`

    `[getUsersByDownloadedDocumentPaging$UPDATES](#getUsersByDownloadedDocumentPaging$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_COMMUNITY_NAME](#SORT_BY_COMMUNITY_NAME)`

    Code to use communityName as the sort property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DOCUMENT_EXTENSION](#SORT_BY_DOCUMENT_EXTENSION)`

    Code to use documentExtension as the sort property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DOWNLOAD_DATE](#SORT_BY_DOWNLOAD_DATE)`

    Code to use downloadDate as the sort property (for all methods except [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DOWNLOAD_DATE_NUMDOWNLOADS](#SORT_BY_DOWNLOAD_DATE_NUMDOWNLOADS)`

    Code to use downloadDate as the sort property (for [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DOWNLOAD_DAY_OF_WEEK](#SORT_BY_DOWNLOAD_DAY_OF_WEEK)`

    Code to use downloadDaysOfWeek as the sort property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DOWNLOAD_HOUR_OF_DAY](#SORT_BY_DOWNLOAD_HOUR_OF_DAY)`

    Code to use downloadHourOfDay as the sort property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DOWNLOADER](#SORT_BY_DOWNLOADER)`

    Code to use downloader as the sort property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_KNOWLEDGE_CENTER_NAME](#SORT_BY_KNOWLEDGE_CENTER_NAME)`

    Code to use knowledgeCenterName as the sort property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_OF_DOWNLOADS](#SORT_BY_NUMBER_OF_DOWNLOADS)`

    Code to use numberOfDownloads as the sort property (for all methods except [`getPopularDocumentsKnowledgeCenter(java.lang.Long, java.lang.Long)`](#getPopularDocumentsKnowledgeCenter\(java.lang.Long,java.lang.Long\)), [`getPopularDocumentsKnowledgeCenterPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)), [`getTopDocumentsByDownloads(java.lang.Long)`](#getTopDocumentsByDownloads\(java.lang.Long\)), [`getTopDocumentsByDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\)), [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_OF_DOWNLOADS_DOCUMENTS](#SORT_BY_NUMBER_OF_DOWNLOADS_DOCUMENTS)`

    Code to use numberOfDownloads as the sort property (for [`getPopularDocumentsKnowledgeCenter(java.lang.Long, java.lang.Long)`](#getPopularDocumentsKnowledgeCenter\(java.lang.Long,java.lang.Long\)), [`getPopularDocumentsKnowledgeCenterPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)), [`getTopDocumentsByDownloads(java.lang.Long)`](#getTopDocumentsByDownloads\(java.lang.Long\)), and [`getTopDocumentsByDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\)))

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_OF_DOWNLOADS_NUMDOWNLOADS](#SORT_BY_NUMBER_OF_DOWNLOADS_NUMDOWNLOADS)`

    Code to use numberOfDownloads as the sort property (for [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getCommunitiesWithMostDownloads](#getCommunitiesWithMostDownloads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use [`getCommunitiesWithMostDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getCommunitiesWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCommunitiesWithMostDownloadsPaging](#getCommunitiesWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the communities with the most downloads

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getDownloadsByDayForKnowledgeCenter](#getDownloadsByDayForKnowledgeCenter\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days_)`

    Deprecated.

    use [`getDownloadsByDayForKnowledgeCenterPaging(java.lang.Long, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByDayForKnowledgeCenterPaging\(java.lang.Long,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDownloadsByDayForKnowledgeCenterPaging](#getDownloadsByDayForKnowledgeCenterPaging\(java.lang.Long,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the number of downloads for the last N day for a specified knowledge center

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getDownloadsByHour](#getDownloadsByHour\(\))()`

    Deprecated.

    use [`getDownloadsByHourPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByHourPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDownloadsByHourPaging](#getDownloadsByHourPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the number of downloads for each hour

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getDownloadsByType](#getDownloadsByType\(\))()`

    Deprecated.

    use [`getDownloadsByTypePaging(int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByTypePaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDownloadsByTypePaging](#getDownloadsByTypePaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the number of downloads by document type

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getDownloadsByWeekDays](#getDownloadsByWeekDays\(\))()`

    Deprecated.

    use [`getDownloadsByWeekDaysPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByWeekDaysPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDownloadsByWeekDaysPaging](#getDownloadsByWeekDaysPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the number of downloads by weekdays

    `[UserStatistics](UserStatistics.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getGeneralUserDownloadStatistics](#getGeneralUserDownloadStatistics\(\))()`

    Gets application download statistics

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getKnowledgeCentersWithMostDownloads](#getKnowledgeCentersWithMostDownloads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use [`getKnowledgeCentersWithMostDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getKnowledgeCentersWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersWithMostDownloadsPaging](#getKnowledgeCentersWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the knowledge centers with the most downloads

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getNumberDownloads](#getNumberDownloads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days)`

    Deprecated.

    use [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getNumberDownloadsPaging](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the number of downloads in the last _days\__ days

    `[DocumentStatistics](DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getPopularDocumentsKnowledgeCenter](#getPopularDocumentsKnowledgeCenter\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") number_)`

    Deprecated.

    use [`getPopularDocumentsKnowledgeCenterPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPopularDocumentsKnowledgeCenterPaging](#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the most popular documents in a specific knowledge center

    `[DocumentStatistics](DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getTopDocumentsByDownloads](#getTopDocumentsByDownloads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use [`getTopDocumentsByDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTopDocumentsByDownloadsPaging](#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the top N documents with the most downloads

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getTotalDownloads](#getTotalDownloads\(\))()`

    Gets the total number of downloads from the collaboration application to date

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getUsersByDownloadedContent](#getUsersByDownloadedContent\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") contentId_)`

    Deprecated.

    use [`getUsersByDownloadedContentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getUsersByDownloadedContentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getUsersByDownloadedContentPaging](#getUsersByDownloadedContentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") contentId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the users who have downloaded a specific document, expressed by content id.

    `[DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getUsersByDownloadedDocument](#getUsersByDownloadedDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    use [`getUsersByDownloadedDocumentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getUsersByDownloadedDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getUsersByDownloadedDocumentPaging](#getUsersByDownloadedDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the users who have downloaded a specific document

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### SORT\_BY\_NUMBER\_OF\_DOWNLOADS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_OF\_DOWNLOADS

        Code to use numberOfDownloads as the sort property (for all methods except [`getPopularDocumentsKnowledgeCenter(java.lang.Long, java.lang.Long)`](#getPopularDocumentsKnowledgeCenter\(java.lang.Long,java.lang.Long\)), [`getPopularDocumentsKnowledgeCenterPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)), [`getTopDocumentsByDownloads(java.lang.Long)`](#getTopDocumentsByDownloads\(java.lang.Long\)), [`getTopDocumentsByDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\)), [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    -   ### SORT\_BY\_NUMBER\_OF\_DOWNLOADS\_DOCUMENTS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_OF\_DOWNLOADS\_DOCUMENTS

        Code to use numberOfDownloads as the sort property (for [`getPopularDocumentsKnowledgeCenter(java.lang.Long, java.lang.Long)`](#getPopularDocumentsKnowledgeCenter\(java.lang.Long,java.lang.Long\)), [`getPopularDocumentsKnowledgeCenterPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)), [`getTopDocumentsByDownloads(java.lang.Long)`](#getTopDocumentsByDownloads\(java.lang.Long\)), and [`getTopDocumentsByDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\)))

    -   ### SORT\_BY\_NUMBER\_OF\_DOWNLOADS\_NUMDOWNLOADS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_OF\_DOWNLOADS\_NUMDOWNLOADS

        Code to use numberOfDownloads as the sort property (for [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    -   ### SORT\_BY\_COMMUNITY\_NAME

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_COMMUNITY\_NAME

        Code to use communityName as the sort property

    -   ### SORT\_BY\_DOWNLOAD\_DATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DOWNLOAD\_DATE

        Code to use downloadDate as the sort property (for all methods except [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    -   ### SORT\_BY\_DOWNLOAD\_DATE\_NUMDOWNLOADS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DOWNLOAD\_DATE\_NUMDOWNLOADS

        Code to use downloadDate as the sort property (for [`getNumberDownloads(java.lang.Long)`](#getNumberDownloads\(java.lang.Long\)), and [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)))

    -   ### SORT\_BY\_DOWNLOAD\_HOUR\_OF\_DAY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DOWNLOAD\_HOUR\_OF\_DAY

        Code to use downloadHourOfDay as the sort property

    -   ### SORT\_BY\_DOCUMENT\_EXTENSION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DOCUMENT\_EXTENSION

        Code to use documentExtension as the sort property

    -   ### SORT\_BY\_DOWNLOAD\_DAY\_OF\_WEEK

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DOWNLOAD\_DAY\_OF\_WEEK

        Code to use downloadDaysOfWeek as the sort property

    -   ### SORT\_BY\_KNOWLEDGE\_CENTER\_NAME

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_KNOWLEDGE\_CENTER\_NAME

        Code to use knowledgeCenterName as the sort property

    -   ### SORT\_BY\_DOWNLOADER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DOWNLOADER

        Code to use downloader as the sort property

    -   ### getTotalDownloads$UPDATES

        static final boolean getTotalDownloads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getTotalDownloads$UPDATES)

    -   ### getNumberDownloads$UPDATES

        static final boolean getNumberDownloads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getNumberDownloads$UPDATES)

    -   ### getNumberDownloadsPaging$UPDATES

        static final boolean getNumberDownloadsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getNumberDownloadsPaging$UPDATES)

    -   ### getGeneralUserDownloadStatistics$UPDATES

        static final boolean getGeneralUserDownloadStatistics$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getGeneralUserDownloadStatistics$UPDATES)

    -   ### getCommunitiesWithMostDownloads$UPDATES

        static final boolean getCommunitiesWithMostDownloads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getCommunitiesWithMostDownloads$UPDATES)

    -   ### getCommunitiesWithMostDownloadsPaging$UPDATES

        static final boolean getCommunitiesWithMostDownloadsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getCommunitiesWithMostDownloadsPaging$UPDATES)

    -   ### getKnowledgeCentersWithMostDownloads$UPDATES

        static final boolean getKnowledgeCentersWithMostDownloads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getKnowledgeCentersWithMostDownloads$UPDATES)

    -   ### getKnowledgeCentersWithMostDownloadsPaging$UPDATES

        static final boolean getKnowledgeCentersWithMostDownloadsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getKnowledgeCentersWithMostDownloadsPaging$UPDATES)

    -   ### getDownloadsByHour$UPDATES

        static final boolean getDownloadsByHour$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByHour$UPDATES)

    -   ### getDownloadsByHourPaging$UPDATES

        static final boolean getDownloadsByHourPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByHourPaging$UPDATES)

    -   ### getDownloadsByType$UPDATES

        static final boolean getDownloadsByType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByType$UPDATES)

    -   ### getDownloadsByTypePaging$UPDATES

        static final boolean getDownloadsByTypePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByTypePaging$UPDATES)

    -   ### getTopDocumentsByDownloads$UPDATES

        static final boolean getTopDocumentsByDownloads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getTopDocumentsByDownloads$UPDATES)

    -   ### getTopDocumentsByDownloadsPaging$UPDATES

        static final boolean getTopDocumentsByDownloadsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getTopDocumentsByDownloadsPaging$UPDATES)

    -   ### getDownloadsByWeekDays$UPDATES

        static final boolean getDownloadsByWeekDays$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByWeekDays$UPDATES)

    -   ### getDownloadsByWeekDaysPaging$UPDATES

        static final boolean getDownloadsByWeekDaysPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByWeekDaysPaging$UPDATES)

    -   ### getUsersByDownloadedDocument$UPDATES

        static final boolean getUsersByDownloadedDocument$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getUsersByDownloadedDocument$UPDATES)

    -   ### getUsersByDownloadedContent$UPDATES

        static final boolean getUsersByDownloadedContent$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getUsersByDownloadedContent$UPDATES)

    -   ### getUsersByDownloadedDocumentPaging$UPDATES

        static final boolean getUsersByDownloadedDocumentPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getUsersByDownloadedDocumentPaging$UPDATES)

    -   ### getUsersByDownloadedContentPaging$UPDATES

        static final boolean getUsersByDownloadedContentPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getUsersByDownloadedContentPaging$UPDATES)

    -   ### getPopularDocumentsKnowledgeCenter$UPDATES

        static final boolean getPopularDocumentsKnowledgeCenter$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getPopularDocumentsKnowledgeCenter$UPDATES)

    -   ### getPopularDocumentsKnowledgeCenterPaging$UPDATES

        static final boolean getPopularDocumentsKnowledgeCenterPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getPopularDocumentsKnowledgeCenterPaging$UPDATES)

    -   ### getDownloadsByDayForKnowledgeCenter$UPDATES

        static final boolean getDownloadsByDayForKnowledgeCenter$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByDayForKnowledgeCenter$UPDATES)

    -   ### getDownloadsByDayForKnowledgeCenterPaging$UPDATES

        static final boolean getDownloadsByDayForKnowledgeCenterPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.StatisticsService.getDownloadsByDayForKnowledgeCenterPaging$UPDATES)

-   ## Method Details

    -   ### getTotalDownloads

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getTotalDownloads()

        Gets the total number of downloads from the collaboration application to date

        Returns:

        the total number of downloads

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getNumberDownloads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getNumberDownloads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days)

        Deprecated.

        use [`getNumberDownloadsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getNumberDownloadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Gets the number of downloads in the last _days\__ days

        Parameters:

        `days` - the number of days in the query

        Returns:

        a list of `DownloadStatistics` objects, with the `downloadDate` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents one day of download information.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getNumberDownloadsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getNumberDownloadsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets the number of downloads in the last _days\__ days

        Parameters:

        `days_` - the number of days in the query

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_NUMBER_OF_DOWNLOADS_NUMDOWNLOADS` or `SORT_BY_DOWNLOAD_DATE_NUMDOWNLOADS`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `downloadDate` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents one day of download information.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getGeneralUserDownloadStatistics

        [UserStatistics](UserStatistics.html "class in com.appiancorp.suiteapi.collaboration") getGeneralUserDownloadStatistics()

        Gets application download statistics

        Returns:

        a `UserStatistics` object encapsulating application download statistics, with the `numberOfUsersWhoHaveDownloaded` field populated.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getCommunitiesWithMostDownloads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getCommunitiesWithMostDownloads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Deprecated.

        use [`getCommunitiesWithMostDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getCommunitiesWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Gets the top _num\__ communities with the most downloads

        Parameters:

        `num_` - the top number of communities to return

        Returns:

        a list of `DownloadStatistics` objects, with the `communityName` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents a community's download information

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getCommunitiesWithMostDownloadsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCommunitiesWithMostDownloadsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets the communities with the most downloads

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_COMMUNITY_NAME` or `SORT_BY_NUMBER_OF_DOWNLOADS`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `communityName` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents a community's download information.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getKnowledgeCentersWithMostDownloads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getKnowledgeCentersWithMostDownloads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Deprecated.

        use [`getKnowledgeCentersWithMostDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getKnowledgeCentersWithMostDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Gets the top _num\__ knowledge centers with the most downloads

        Parameters:

        `num_` - the top number of knowledge centers to return

        Returns:

        a list of `DownloadStatistics` objects, with the `knowledgeCenterName` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents a knowledge center's download information.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getKnowledgeCentersWithMostDownloadsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersWithMostDownloadsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets the knowledge centers with the most downloads

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_KNOWLEDGE_CENTER_NAME` or `SORT_BY_NUMBER_OF_DOWNLOADS`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `knowledgeCenterName` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents a knowledge center's download information.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getDownloadsByHour

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getDownloadsByHour()

        Deprecated.

        use [`getDownloadsByHourPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByHourPaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Gets the number of downloads for each hour

        Returns:

        a list of `DownloadStatistics` objects. Each `DownloadStatistics` object represents download information for an hour, with the `downloadHourOfDay` and `numberOfDownloads` fields populated

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getDownloadsByHourPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDownloadsByHourPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets the number of downloads for each hour

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_DOWNLOAD_HOUR_OF_DAY` or `SORT_BY_NUMBER_OF_DOWNLOADS`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `downloadHourOfDay` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents download information for an hour.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getDownloadsByType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getDownloadsByType()

        Deprecated.

        use [`getDownloadsByTypePaging(int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByTypePaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Gets the number of downloads by document type

        Returns:

        a list of `DownloadStatistics` objects, with the `documentExtension` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents download information for a document extension.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getDownloadsByTypePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDownloadsByTypePaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets the number of downloads by document type

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_DOCUMENT_EXTENSION` or `SORT_BY_NUMBER_OF_DOWNLOADS`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `documentExtension` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents download information for a document extension.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getTopDocumentsByDownloads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DocumentStatistics](DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getTopDocumentsByDownloads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Deprecated.

        use [`getTopDocumentsByDownloadsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getTopDocumentsByDownloadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Gets the top _num\__ documents in terms of how often they have been downloaded

        Parameters:

        `num_` - the top number of documents to return

        Returns:

        a list of `DocumentStatistics` objects which represent the most downloaded documents, with the normal [`DocumentService.getDocuments(java.lang.Long[])`](DocumentService.html#getDocuments\(java.lang.Long%5B%5D\)) fields and the `numberOfDownloads` field populated

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getTopDocumentsByDownloadsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTopDocumentsByDownloadsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets the top N documents with the most downloads

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_NUMBER_OF_DOWNLOADS_DOCUMENTS` or any of the `SORT_BY_XXX` fields under [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration"))

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DocumentStatistics` objects which represent the most downloaded documents, with the normal [`DocumentService.getDocuments(java.lang.Long[])`](DocumentService.html#getDocuments\(java.lang.Long%5B%5D\)) fields and the `numberOfDownloads` field populated

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getDownloadsByWeekDays

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getDownloadsByWeekDays()

        Deprecated.

        use [`getDownloadsByWeekDaysPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByWeekDaysPaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Gets the number of downloads by weekdays

        Returns:

        a list of `DownloadStatistics` objects, with the `downloadDayOfWeek` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents download information for a weekday.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getDownloadsByWeekDaysPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDownloadsByWeekDaysPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets the number of downloads by weekdays

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_DOWNLOAD_DAY_OF_WEEK` or `SORT_BY_NUMBER_OF_DOWNLOADS`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `downloadDayOfWeek` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents download information for a weekday.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getUsersByDownloadedDocument

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getUsersByDownloadedDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getUsersByDownloadedDocumentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getUsersByDownloadedDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Gets the users who have downloaded a specific document

        Parameters:

        `doid_` - the unique ID of the document

        Returns:

        a list of `DownloadStatistics` objects, with the `downloader` field populated. Each `DownloadStatistics` object represents one user who downloaded the document

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist

    -   ### getUsersByDownloadedContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getUsersByDownloadedContent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") contentId\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getUsersByDownloadedContentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getUsersByDownloadedContentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Gets the users who have downloaded a specific document, expressed by content id. This allows one particular version of a document to be examined (use ContentService's getVersionId for this id).

        Parameters:

        `contentId_` - the unique content ID of the document

        Returns:

        a list of `DownloadStatistics` objects, with the `downloader` field populated. Each `DownloadStatistics` object represents one user who downloaded the document

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist

    -   ### getUsersByDownloadedDocumentPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getUsersByDownloadedDocumentPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the users who have downloaded a specific document

        Parameters:

        `docId_` - the unique ID of the document

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_DOWNLOADER`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `downloader` field populated. Each `DownloadStatistics` object represents one user who downloaded the document

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist

    -   ### getUsersByDownloadedContentPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getUsersByDownloadedContentPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") contentId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the users who have downloaded a specific document, expressed by content id. This allows one particular version of a document to be examined (use ContentService's getVersionId for this id).

        Parameters:

        `docId_` - the unique ID of the document

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_DOWNLOADER`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `downloader` field populated. Each `DownloadStatistics` object represents one user who downloaded the document

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist

    -   ### getPopularDocumentsKnowledgeCenter

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DocumentStatistics](DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getPopularDocumentsKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") number\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getPopularDocumentsKnowledgeCenterPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPopularDocumentsKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Gets the _number\__ most popular documents in a specific knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `number_` - the top number to documents to return

        Returns:

        an array of `DocumentStatistics` objects representing the most popular documents, with the normal [`DocumentService.getDocuments(java.lang.Long[])`](DocumentService.html#getDocuments\(java.lang.Long%5B%5D\)) fields and the `numberOfDownloads` field populated

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Never thrown. Is only declared for backwards compatibility.

    -   ### getPopularDocumentsKnowledgeCenterPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPopularDocumentsKnowledgeCenterPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the most popular documents in a specific knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_NUMBER_OF_DOWNLOADS_DOCUMENTS` or any of the `SORT_BY_XXX` fields under [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration"))

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DocumentStatistics` objects representing the most popular documents, with the normal [`DocumentService.getDocuments(java.lang.Long[])`](DocumentService.html#getDocuments\(java.lang.Long%5B%5D\)) fields and the `numberOfDownloads` field populated

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Never thrown. Is only declared for backwards compatibility.

    -   ### getDownloadsByDayForKnowledgeCenter

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [DownloadStatistics](DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getDownloadsByDayForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getDownloadsByDayForKnowledgeCenterPaging(java.lang.Long, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getDownloadsByDayForKnowledgeCenterPaging\(java.lang.Long,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Gets the number of downloads for the last _days\__ day for a specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `days_` - the number of days in the query

        Returns:

        a list of `DownloadStatistics` objects, with the `downloadDate` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents one day of download information for the knowledge center

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Never thrown. Is only declared for backwards compatibility.

    -   ### getDownloadsByDayForKnowledgeCenterPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDownloadsByDayForKnowledgeCenterPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the number of downloads for the last N day for a specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `days_` - the number of days in the query

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted (`SORT_BY_DOWNLOAD_DATE` or `SORT_BY_NUMBER_OF_DOWNLOADS`)

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `DownloadStatistics` objects, with the `downloadDate` and `numberOfDownloads` fields populated. Each `DownloadStatistics` object represents one day of download information for the knowledge center

        Throws:

        `ServiceException` - if any system-level error occurs

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Never thrown. Is only declared for backwards compatibility.