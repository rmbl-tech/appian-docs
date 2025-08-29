---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/ReportingService.html
original_path: api/com/appiancorp/suiteapi/collaboration/ReportingService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface ReportingService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ReportingService extends com.appiancorp.services.ContextSensitiveService

Defines related methods for usage reporting within collaboration.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`AdministrationService`](AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CollaborationSearchService`](CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CommunityService`](CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`FolderService`](FolderService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`KnowledgeCenterService`](KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`StatisticsService`](StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getCommunitiesWithMostUploads$UPDATES](#getCommunitiesWithMostUploads$UPDATES)`

    `static final boolean`

    `[getCommunitiesWithMostUploadsPaging$UPDATES](#getCommunitiesWithMostUploadsPaging$UPDATES)`

    `static final boolean`

    `[getCommunityAdminReport$UPDATES](#getCommunityAdminReport$UPDATES)`

    `static final boolean`

    `[getCommunityAdminReportPaging$UPDATES](#getCommunityAdminReportPaging$UPDATES)`

    `static final boolean`

    `[getGeneralStatistics$UPDATES](#getGeneralStatistics$UPDATES)`

    `static final boolean`

    `[getGeneralUserStatistics$UPDATES](#getGeneralUserStatistics$UPDATES)`

    `static final boolean`

    `[getKnowledgeCentersWithMostUploads$UPDATES](#getKnowledgeCentersWithMostUploads$UPDATES)`

    `static final boolean`

    `[getKnowledgeCentersWithMostUploadsPaging$UPDATES](#getKnowledgeCentersWithMostUploadsPaging$UPDATES)`

    `static final boolean`

    `[getMoreWhatsNewSubscriptions$UPDATES](#getMoreWhatsNewSubscriptions$UPDATES)`

    `static final boolean`

    `[getMoreWhatsNewSubscriptionsPaging$UPDATES](#getMoreWhatsNewSubscriptionsPaging$UPDATES)`

    `static final boolean`

    `[getNumberUploads$UPDATES](#getNumberUploads$UPDATES)`

    `static final boolean`

    `[getNumberUploadsPaging$UPDATES](#getNumberUploadsPaging$UPDATES)`

    `static final boolean`

    `[getTotalUploads$UPDATES](#getTotalUploads$UPDATES)`

    `static final boolean`

    `[getUploadsByHour$UPDATES](#getUploadsByHour$UPDATES)`

    `static final boolean`

    `[getUploadsByHourPaging$UPDATES](#getUploadsByHourPaging$UPDATES)`

    `static final boolean`

    `[getUploadsByType$UPDATES](#getUploadsByType$UPDATES)`

    `static final boolean`

    `[getUploadsByTypePaging$UPDATES](#getUploadsByTypePaging$UPDATES)`

    `static final boolean`

    `[getUploadsByWeekDays$UPDATES](#getUploadsByWeekDays$UPDATES)`

    `static final boolean`

    `[getUploadsByWeekDaysPaging$UPDATES](#getUploadsByWeekDaysPaging$UPDATES)`

    `static final boolean`

    `[getWhatsNewCommunity$UPDATES](#getWhatsNewCommunity$UPDATES)`

    `static final boolean`

    `[getWhatsNewCommunityForUser$UPDATES](#getWhatsNewCommunityForUser$UPDATES)`

    `static final boolean`

    `[getWhatsNewCommunityForUserPaging$UPDATES](#getWhatsNewCommunityForUserPaging$UPDATES)`

    `static final boolean`

    `[getWhatsNewCommunityPaging$UPDATES](#getWhatsNewCommunityPaging$UPDATES)`

    `static final boolean`

    `[getWhatsNewKnowledgeCenter$UPDATES](#getWhatsNewKnowledgeCenter$UPDATES)`

    `static final boolean`

    `[getWhatsNewKnowledgeCenterPaging$UPDATES](#getWhatsNewKnowledgeCenterPaging$UPDATES)`

    `static final boolean`

    `[getWhatsNewSubscriptions$UPDATES](#getWhatsNewSubscriptions$UPDATES)`

    `static final boolean`

    `[getWhatsNewSubscriptionsPaging$UPDATES](#getWhatsNewSubscriptionsPaging$UPDATES)`

    `static final boolean`

    `[getWhatsNewTopLevelCommunity$UPDATES](#getWhatsNewTopLevelCommunity$UPDATES)`

    `static final boolean`

    `[getWhatsNewTopLevelCommunityForUser$UPDATES](#getWhatsNewTopLevelCommunityForUser$UPDATES)`

    `static final boolean`

    `[getWhatsNewTopLevelCommunityForUserPaging$UPDATES](#getWhatsNewTopLevelCommunityForUserPaging$UPDATES)`

    `static final boolean`

    `[getWhatsNewTopLevelCommunityPaging$UPDATES](#getWhatsNewTopLevelCommunityPaging$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getCommunitiesWithMostUploads](#getCommunitiesWithMostUploads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use getCommunitiesWithMostUploadsPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCommunitiesWithMostUploadsPaging](#getCommunitiesWithMostUploadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getCommunityAdminReport](#getCommunityAdminReport\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") commid_)`

    Deprecated.

    use getCommunityAdminReportPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCommunityAdminReportPaging](#getCommunityAdminReportPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") commid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Statistics](Statistics.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getGeneralStatistics](#getGeneralStatistics\(\))()`

    Deprecated. 

    `[UserStatistics](UserStatistics.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getGeneralUserStatistics](#getGeneralUserStatistics\(\))()`

    Deprecated. 

    `[UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getKnowledgeCentersWithMostUploads](#getKnowledgeCentersWithMostUploads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use getKnowledgeCentersWithMostUploadsPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersWithMostUploadsPaging](#getKnowledgeCentersWithMostUploadsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getMoreWhatsNewSubscriptions](#getMoreWhatsNewSubscriptions\(java.lang.String,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortLength_)`

    Deprecated.

    use getMoreWhatsNewSubscriptionsPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMoreWhatsNewSubscriptionsPaging](#getMoreWhatsNewSubscriptionsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getNumberUploads](#getNumberUploads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days_)`

    Deprecated.

    user getNumberUploadsPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getNumberUploadsPaging](#getNumberUploadsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the number of uploads in the last N days

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getTotalUploads](#getTotalUploads\(\))()`

    Deprecated. 

    `[UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getUploadsByHour](#getUploadsByHour\(\))()`

    Deprecated.

    use getUploadsByHourPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getUploadsByHourPaging](#getUploadsByHourPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getUploadsByType](#getUploadsByType\(\))()`

    Deprecated.

    use getUploadsByTypePaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getUploadsByTypePaging](#getUploadsByTypePaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getUploadsByWeekDays](#getUploadsByWeekDays\(\))()`

    Deprecated.

    use getUploadsByWeekDaysPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getUploadsByWeekDaysPaging](#getUploadsByWeekDaysPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWhatsNewCommunity](#getWhatsNewCommunity\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use getWhatsNewCommunityPaging

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWhatsNewCommunityForUser](#getWhatsNewCommunityForUser\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use getWhatsNewCommunityForUserPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWhatsNewCommunityForUserPaging](#getWhatsNewCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWhatsNewCommunityPaging](#getWhatsNewCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWhatsNewKnowledgeCenter](#getWhatsNewKnowledgeCenter\(java.lang.Long,java.lang.Integer,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_)`

    Deprecated.

    use getWhatsNewKnowledgeCenterPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWhatsNewKnowledgeCenterPaging](#getWhatsNewKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWhatsNewSubscriptions](#getWhatsNewSubscriptions\(\))()`

    Deprecated.

    use getWhatsNewSubscriptionsPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWhatsNewSubscriptionsPaging](#getWhatsNewSubscriptionsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWhatsNewTopLevelCommunity](#getWhatsNewTopLevelCommunity\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use getWhatsNewTopLevelCommunityPaging

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWhatsNewTopLevelCommunityForUser](#getWhatsNewTopLevelCommunityForUser\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    use getWhatsNewTopLevelCommunityForUserPaging

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWhatsNewTopLevelCommunityForUserPaging](#getWhatsNewTopLevelCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    This method always returns an empty array of Documents

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWhatsNewTopLevelCommunityPaging](#getWhatsNewTopLevelCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getTotalUploads$UPDATES

        static final boolean getTotalUploads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getTotalUploads$UPDATES)

    -   ### getNumberUploads$UPDATES

        static final boolean getNumberUploads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getNumberUploads$UPDATES)

    -   ### getNumberUploadsPaging$UPDATES

        static final boolean getNumberUploadsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getNumberUploadsPaging$UPDATES)

    -   ### getGeneralStatistics$UPDATES

        static final boolean getGeneralStatistics$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getGeneralStatistics$UPDATES)

    -   ### getGeneralUserStatistics$UPDATES

        static final boolean getGeneralUserStatistics$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getGeneralUserStatistics$UPDATES)

    -   ### getCommunitiesWithMostUploads$UPDATES

        static final boolean getCommunitiesWithMostUploads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getCommunitiesWithMostUploads$UPDATES)

    -   ### getCommunitiesWithMostUploadsPaging$UPDATES

        static final boolean getCommunitiesWithMostUploadsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getCommunitiesWithMostUploadsPaging$UPDATES)

    -   ### getKnowledgeCentersWithMostUploads$UPDATES

        static final boolean getKnowledgeCentersWithMostUploads$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getKnowledgeCentersWithMostUploads$UPDATES)

    -   ### getKnowledgeCentersWithMostUploadsPaging$UPDATES

        static final boolean getKnowledgeCentersWithMostUploadsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getKnowledgeCentersWithMostUploadsPaging$UPDATES)

    -   ### getUploadsByHour$UPDATES

        static final boolean getUploadsByHour$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByHour$UPDATES)

    -   ### getUploadsByHourPaging$UPDATES

        static final boolean getUploadsByHourPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByHourPaging$UPDATES)

    -   ### getUploadsByType$UPDATES

        static final boolean getUploadsByType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByType$UPDATES)

    -   ### getUploadsByTypePaging$UPDATES

        static final boolean getUploadsByTypePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByTypePaging$UPDATES)

    -   ### getUploadsByWeekDays$UPDATES

        static final boolean getUploadsByWeekDays$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByWeekDays$UPDATES)

    -   ### getUploadsByWeekDaysPaging$UPDATES

        static final boolean getUploadsByWeekDaysPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getUploadsByWeekDaysPaging$UPDATES)

    -   ### getCommunityAdminReport$UPDATES

        static final boolean getCommunityAdminReport$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getCommunityAdminReport$UPDATES)

    -   ### getCommunityAdminReportPaging$UPDATES

        static final boolean getCommunityAdminReportPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getCommunityAdminReportPaging$UPDATES)

    -   ### getWhatsNewSubscriptions$UPDATES

        static final boolean getWhatsNewSubscriptions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewSubscriptions$UPDATES)

    -   ### getWhatsNewSubscriptionsPaging$UPDATES

        static final boolean getWhatsNewSubscriptionsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewSubscriptionsPaging$UPDATES)

    -   ### getMoreWhatsNewSubscriptions$UPDATES

        static final boolean getMoreWhatsNewSubscriptions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getMoreWhatsNewSubscriptions$UPDATES)

    -   ### getMoreWhatsNewSubscriptionsPaging$UPDATES

        static final boolean getMoreWhatsNewSubscriptionsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getMoreWhatsNewSubscriptionsPaging$UPDATES)

    -   ### getWhatsNewCommunityForUser$UPDATES

        static final boolean getWhatsNewCommunityForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunityForUser$UPDATES)

    -   ### getWhatsNewCommunityForUserPaging$UPDATES

        static final boolean getWhatsNewCommunityForUserPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunityForUserPaging$UPDATES)

    -   ### getWhatsNewTopLevelCommunityForUser$UPDATES

        static final boolean getWhatsNewTopLevelCommunityForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunityForUser$UPDATES)

    -   ### getWhatsNewTopLevelCommunityForUserPaging$UPDATES

        static final boolean getWhatsNewTopLevelCommunityForUserPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunityForUserPaging$UPDATES)

    -   ### getWhatsNewCommunityPaging$UPDATES

        static final boolean getWhatsNewCommunityPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunityPaging$UPDATES)

    -   ### getWhatsNewCommunity$UPDATES

        static final boolean getWhatsNewCommunity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewCommunity$UPDATES)

    -   ### getWhatsNewTopLevelCommunity$UPDATES

        static final boolean getWhatsNewTopLevelCommunity$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunity$UPDATES)

    -   ### getWhatsNewTopLevelCommunityPaging$UPDATES

        static final boolean getWhatsNewTopLevelCommunityPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewTopLevelCommunityPaging$UPDATES)

    -   ### getWhatsNewKnowledgeCenter$UPDATES

        static final boolean getWhatsNewKnowledgeCenter$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewKnowledgeCenter$UPDATES)

    -   ### getWhatsNewKnowledgeCenterPaging$UPDATES

        static final boolean getWhatsNewKnowledgeCenterPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.ReportingService.getWhatsNewKnowledgeCenterPaging$UPDATES)

-   ## Method Details

    -   ### getTotalUploads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getTotalUploads()

        Deprecated.

        Gets the total number of uploads to the collaboration application

        Returns:

        the total number of uploads

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getNumberUploads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getNumberUploads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days\_)

        Deprecated.

        user getNumberUploadsPaging

        Gets the number of uploads in the last N days

        Parameters:

        `days_` - the number of days in the query

        Returns:

        a list of `UploadStatistics` objects. Each `UploadStatistics` object represents one day of upload information. The fields `uploadDate` and `numberOfUploads` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getNumberUploadsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getNumberUploadsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the number of uploads in the last N days

        Parameters:

        `days_` - the number of days in the query

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted:

        -   0 - uploadDate
        -   1 - numberOfUploads

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `UploadStatistics` objects. Each `UploadStatistics` object represents one day of upload information. The fields `uploadDate` and `numberOfUploads` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `days_` is `null`

    -   ### getGeneralStatistics

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Statistics](Statistics.html "class in com.appiancorp.suiteapi.collaboration") getGeneralStatistics()

        Deprecated.

        Gets the general usage statistics and patterns of the collaboration application (eg the number of folders created).

        Returns:

        a `Statistics` object encapsulating the general usage statistics

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getGeneralUserStatistics

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UserStatistics](UserStatistics.html "class in com.appiancorp.suiteapi.collaboration") getGeneralUserStatistics()

        Deprecated.

        Gets user statistics in the collaboration application (eg the number of users who have uploaded documents).

        Returns:

        a `UserStatistics` object encapsulating the usage statistics

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunitiesWithMostUploads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getCommunitiesWithMostUploads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Deprecated.

        use getCommunitiesWithMostUploadsPaging

        Gets the top _num\__ communities with the most uploads

        Parameters:

        `num_` - the top number of communities to return

        Returns:

        a list of `UploadStatistics` objects. Each `UploadStatistics` object represents a community's upload information. The fields `communityName` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunitiesWithMostUploadsPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCommunitiesWithMostUploadsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the communities with the most uploads

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted:

        -   0 - communityName
        -   1 - numberOfDocumentsUploaded

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `UploadStatistics` objects. Each `UploadStatistics` object represents a community's upload information. The fields `communityName` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersWithMostUploads

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getKnowledgeCentersWithMostUploads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Deprecated.

        use getKnowledgeCentersWithMostUploadsPaging

        Gets the top _num\__ knowledge centers with the most uploads

        Parameters:

        `num_` - the top number of knowledge centers to return

        Returns:

        a list of `UploadStatistics` objects. Each `UploadStatistics` object represents a knowledge center's upload information. The fields `knowledgeCenterName` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersWithMostUploadsPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersWithMostUploadsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the knowledge centers with the most uploads

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted:

        -   0 - knowledgeCenterName
        -   1 - numberOfDocumentsUploaded

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `UploadStatistics` objects. Each `UploadStatistics` object represents a knowledge center's upload information. The fields `knowledgeCenterName` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUploadsByHour

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getUploadsByHour()

        Deprecated.

        use getUploadsByHourPaging

        Gets the number of uploads for each hour

        Returns:

        a list of `UploadStatistics` objects. Each `UploadStatistics` object represents upload information for an hour. The fields `uploadHourOfDay` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUploadsByHourPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getUploadsByHourPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the number of uploads for each hour

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted:

        -   0 - uploadHourOfDay
        -   1 - numberOfDocumentsUploaded

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `UploadStatistics` objects. Each `UploadStatistics` object represents upload information for an hour. The fields `uploadHourOfDay` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUploadsByType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getUploadsByType()

        Deprecated.

        use getUploadsByTypePaging

        Gets the number of uploads by document extension

        Returns:

        a list of `UploadStatistics` objects. Each `UploadStatistics` object represents upload information for a document extension. The fields `documentExtension` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUploadsByTypePaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getUploadsByTypePaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the number of uploads by document extension

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted:

        -   0 - documentExtension
        -   1 - numberOfDocumentsUploaded

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `UploadStatistics` objects. Each `UploadStatistics` object represents upload information for a document extension. The fields `documentExtension` and `numberOfDocumensUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUploadsByWeekDays

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UploadStatistics](UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")\[\] getUploadsByWeekDays()

        Deprecated.

        use getUploadsByWeekDaysPaging

        Gets the number of uploads by weekdays

        Returns:

        a list of `UploadStatistics` objects. Each `UploadStatistics` object represents upload information for a weekday. The fields `uploadDayOfWeek` and `numberOfDocumentsUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUploadsByWeekDaysPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getUploadsByWeekDaysPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the number of uploads by weekdays

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted:

        -   0 - uploadDayOfWeek
        -   1 - numberOfDocumentsUploaded

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `UploadStatistics` objects. Each `UploadStatistics` object represents upload information for a weekday. The fields `uploadDayOfWeek` and `numberOfDocumentsUploaded` are the only fields populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunityAdminReport

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getCommunityAdminReport([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") commid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getCommunityAdminReportPaging

        Gets information about a specified community and all its sub communities

        Parameters:

        `commid_` - the unique ID of the community

        Returns:

        a list of `Community` objects which represent the community and sub-communities

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the given community does not exist

    -   ### getCommunityAdminReportPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCommunityAdminReportPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") commid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets information about a specified community and all its sub communities

        Parameters:

        `commid_` - the unique ID of the community

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Community` objects which represent the community and sub-communities

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

    -   ### getWhatsNewSubscriptions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWhatsNewSubscriptions() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getWhatsNewSubscriptionsPaging

        Gets the latest documents 10 documents added/updated in the application in knowledge centers to which the user is subscribed

        Returns:

        a list of `Document` objects that represent the top 10 latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

    -   ### getWhatsNewSubscriptionsPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWhatsNewSubscriptionsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the latest documents added/updated in the application in knowledge centers to which the user is subscribed

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results. Use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection up to the minimum of config property WHATS\_NEW\_LIMIT (if set, default 500 in collaboration.properties, Integer.MAX\_VALUE if not set) and WHATS\_NEW\_SECURITY\_LIMIT (if set, default 1000 in collaboration.properties) from collaboration.properties being returned.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Document` objects which represent the latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

    -   ### getMoreWhatsNewSubscriptions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getMoreWhatsNewSubscriptions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortLength\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getMoreWhatsNewSubscriptionsPaging

        Gets the latest documents added/updated in the application in knowledge centers to which the user is subscribed

        Parameters:

        `sortColumn_` - the field of the `Document` by which to sort the returned list of documents. This is one of the `SORT_COLUMN_XXX` in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        `sortLength_` - the maximum number of documents to return

        Returns:

        a list of `Document` objects, of maximum length `sortLength_` which represent the latest documents in a users subscriptions

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

    -   ### getMoreWhatsNewSubscriptionsPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMoreWhatsNewSubscriptionsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the latest documents added/updated in the application in knowledge centers to which the user is subscribed

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Document` objects that represent the latest documents in a user's subscriptions

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

    -   ### getWhatsNewCommunityForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWhatsNewCommunityForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getWhatsNewCommunityForUserPaging

        Gets the latest documents (that the user can access) added/updated in the application in a specific community and its sub-communties

        Parameters:

        `communityId_` - the unique ID of the community

        `num_` - the top number of documents to return

        Returns:

        a list of `Document` objects which represent the top N latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

    -   ### getWhatsNewCommunityForUserPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWhatsNewCommunityForUserPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the latest documents (that the user can access) added/updated in the application in a specific community and its sub-communties

        Parameters:

        `communityId_` - the unique ID of the community

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Document` objects which represent the top N latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

    -   ### getWhatsNewTopLevelCommunityForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWhatsNewTopLevelCommunityForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getWhatsNewTopLevelCommunityForUserPaging

        Gets the latest documents (that the user can access) added/updated in the application in a specific community (but not its sub-communties)

        Parameters:

        `communityId_` - the unique ID of the community

        `num_` - the top number of documents to return

        Returns:

        a list of `Document` objects which represent the top _num\__ latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

    -   ### getWhatsNewTopLevelCommunityForUserPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWhatsNewTopLevelCommunityForUserPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        This method always returns an empty array of Documents

        Gets the latest documents added/updated in the application in a specific community (but not its sub-communties) that the user can access

        Parameters:

        `communityId_` - the unique ID of the community

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Document` objects which represents the latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

    -   ### getWhatsNewCommunityPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWhatsNewCommunityPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the latest documents added/updated in the application in a specific community and its sub-communties (regardless of user)

        Parameters:

        `coid_` - the unique ID of the community

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Document` objects which represent the top N latest documents

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWhatsNewCommunity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWhatsNewCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getWhatsNewCommunityPaging

        Gets the latest documents added/updated in the application in a specific community and its sub-communties (regardless of user)

        Parameters:

        `coid_` - the unique ID of the community

        `num_` - the top number of documents to return

        Returns:

        a list of `Document` objects which represent the top N latest documents

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getWhatsNewTopLevelCommunity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWhatsNewTopLevelCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getWhatsNewTopLevelCommunityPaging

        Retrieves the the top N latest documents added or updated in a specified community, but not its sub-communities (regardless of user)

        Parameters:

        `coid_` - the unique ID of the community

        `num_` - the top number of documents to return

        Returns:

        a list of `Document` objects which represent the documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

    -   ### getWhatsNewTopLevelCommunityPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWhatsNewTopLevelCommunityPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the the latest documents added or updated in a specified community, but not its sub-communities (regardless of user)

        Parameters:

        `coid_` - the unique ID of the community

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Document` objects which represents the documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

    -   ### getWhatsNewKnowledgeCenter

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWhatsNewKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use getWhatsNewKnowledgeCenterPaging

        Retrieves the top N latest documents added or updated in a specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `sortColumn_` - the field of the `Document` by which to sort the returned list of documents. This is one of the `SORT_COLUMN_XXX` in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a list of `Document` objects which represent the top N latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user service context is invalid.

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") does not exist

    -   ### getWhatsNewKnowledgeCenterPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWhatsNewKnowledgeCenterPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the top N latest documents added or updated in a specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing a list of `Document` objects which represent the top N latest documents

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the logged in user does not have access

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") does not exist