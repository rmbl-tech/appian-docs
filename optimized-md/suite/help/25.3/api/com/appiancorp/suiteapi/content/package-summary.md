---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/package-summary.html
original_path: api/com/appiancorp/suiteapi/content/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.content"
page_id: "api/com/appiancorp/suiteapi/content/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.content

* * *

package com.appiancorp.suiteapi.content

Provides access and modification functionality for content, which replaces collaboration and is more extensible (for instance, content is now also being used for rules).

The most important classes are `Content` and its sub-classes, which represent different kinds of content, and `ContentService`, which allows you to interact with the content.

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.content.exceptions](exceptions/package-summary.html)

    Contains exceptions that are thrown by [`ContentService`](ContentService.html "interface in com.appiancorp.suiteapi.content").

-   All Classes and InterfacesInterfacesClasses

    Class

    Description

    [Approval](Approval.html "class in com.appiancorp.suiteapi.content")

    The approval bean contains the approval status for a list of content items.

    [Approved](Approved.html "class in com.appiancorp.suiteapi.content")

    This bean contains information about an approved action.

    [Container](Container.html "class in com.appiancorp.suiteapi.content")

    This is the abstract class used to represent Content objects that may contain other Content objects.

    [Content](Content.html "class in com.appiancorp.suiteapi.content")

    Represents an item of content.

    [ContentAccess](ContentAccess.html "class in com.appiancorp.suiteapi.content")

    This class provides methods accessible through JSON, which are relevant to Content objects.

    [ContentBeanFactory](ContentBeanFactory.html "class in com.appiancorp.suiteapi.content")

    Provides utility methods for creating content objects based on the type identifiers.

    [ContentConstants](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

    Contains constants for use with Content.

    [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")

    Filters may be applied to Content Service operations in order to filter the final results by the criteria listed here.

    [ContentFilter.KeyValue](ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content")

    This represents a Key and Value of a Content Attribute.

    [ContentOutputStream](ContentOutputStream.html "class in com.appiancorp.suiteapi.content")

    Deprecated.

    since 23.2.

    [ContentRole](ContentRole.html "class in com.appiancorp.suiteapi.content")

    Holds the data for an individual role within a Content object's role map.

    [ContentRoleMap](ContentRoleMap.html "class in com.appiancorp.suiteapi.content")

    This class represents the access permissions for an element in the collaboration center.

    [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")

    This class represents the access permissions for a Content item.

    [ContentService](ContentService.html "interface in com.appiancorp.suiteapi.content")

    This interface provides access to the Content service (formerly the Collaboration service).

    [ContentStatisticsService](ContentStatisticsService.html "interface in com.appiancorp.suiteapi.content")

    This interface provides access to the Content Statistics service.

    [ContentUploadOutputStream](ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content")

    Represents a document and its output stream to which the document's content should be written during an upload.

    [CopyReference](CopyReference.html "class in com.appiancorp.suiteapi.content")

    Represents a reference to a copied Content item.

    [CopySource](CopySource.html "class in com.appiancorp.suiteapi.content")

    Represents an instruction for the source of a Content copy.

    [CustomContent](CustomContent.html "class in com.appiancorp.suiteapi.content")

    Custom Content object.

    [DocumentInputStream](DocumentInputStream.html "class in com.appiancorp.suiteapi.content")

    Represents an input stream for a Document object.

    [DocumentOutputStream](DocumentOutputStream.html "class in com.appiancorp.suiteapi.content")

    Represents an output stream for a Document object.

    [Folder](Folder.html "class in com.appiancorp.suiteapi.content")

    Represents a folder in any application.

    [MaxAvgMetric](MaxAvgMetric.html "class in com.appiancorp.suiteapi.content")

    A simple POJO for holding a particular metric.

    [PendingAccess](PendingAccess.html "class in com.appiancorp.suiteapi.content")

    Holds information on which content is pending access for making it a favorite.

    [RoleMapChanges](RoleMapChanges.html "class in com.appiancorp.suiteapi.content")

    This class returns information about which users/groups were approved/rejected when modifying the roleMap for a content item.

    [Total](Total.html "class in com.appiancorp.suiteapi.content")

    This class stores a count and is extended by classes used in the ContentStatisticsService.

    [TotalByDayOfWeek](TotalByDayOfWeek.html "class in com.appiancorp.suiteapi.content")

    This bean tracks the count for a day of the week.

    [TotalByExtension](TotalByExtension.html "class in com.appiancorp.suiteapi.content")

    This bean tracks the count for an extension.

    [TotalByHour](TotalByHour.html "class in com.appiancorp.suiteapi.content")

    This bean tracks the count for a an hour of the day.

    [TotalByType](TotalByType.html "class in com.appiancorp.suiteapi.content")

    This bean tracks the count for a Content type.

    [UserStatistics](UserStatistics.html "class in com.appiancorp.suiteapi.content")

    This class is used for statistics on users in the AE system.