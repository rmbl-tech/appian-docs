---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/package-tree.html
original_path: api/com/appiancorp/suiteapi/forums/package-tree.html
version: "25.3"
---

# Hierarchy For Package com.appiancorp.suiteapi.forums

Package Hierarchies:

-   [All Packages](../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.suiteapi.forums.[Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.forums.[DiscussionThread](DiscussionThread.html "class in com.appiancorp.suiteapi.forums") (implements com.appiancorp.suiteapi.common.[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common"))
    -   com.appiancorp.suiteapi.forums.[Forum](Forum.html "class in com.appiancorp.suiteapi.forums") (implements com.appiancorp.suiteapi.common.[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common"))
    -   com.appiancorp.suiteapi.forums.[ForumSummary](ForumSummary.html "class in com.appiancorp.suiteapi.forums") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.forums.[Message](Message.html "class in com.appiancorp.suiteapi.forums") (implements com.appiancorp.suiteapi.common.[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common"))
    -   com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") (implements java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<K,V>, java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"))
        -   com.appiancorp.suiteapi.common.[PublicRoleMap](../common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common")
            -   com.appiancorp.suiteapi.forums.[ForumsRoleMap](ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")
        -   com.appiancorp.suiteapi.forums.[ThreadRoleMap](ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums")
    -   com.appiancorp.suiteapi.forums.[ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")
    -   com.appiancorp.suiteapi.forums.[ThreadSummary](ThreadSummary.html "class in com.appiancorp.suiteapi.forums") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.forums.[UserMessageCount](UserMessageCount.html "class in com.appiancorp.suiteapi.forums")
    -   com.appiancorp.suiteapi.forums.[UserUtilities](UserUtilities.html "class in com.appiancorp.suiteapi.forums")

## Interface Hierarchy

-   com.appiancorp.suiteapi.forums.[DiscussionBodyService](DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")
-   com.appiancorp.services.[Service](../../services/Service.html "interface in com.appiancorp.services")
    -   com.appiancorp.services.ContextSensitiveService
        -   com.appiancorp.suiteapi.forums.[DiscussionMetadataConvenienceService](DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")
        -   com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")
        -   com.appiancorp.suiteapi.forums.[ForumsSearchService](ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

## Annotation Interface Hierarchy

-   com.appiancorp.suiteapi.forums.[DiscussionMessageDataType](DiscussionMessageDataType.html "annotation interface in com.appiancorp.suiteapi.forums") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))
-   com.appiancorp.suiteapi.forums.[DiscussionThreadDataType](DiscussionThreadDataType.html "annotation interface in com.appiancorp.suiteapi.forums") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))
-   com.appiancorp.suiteapi.forums.[ForumDataType](ForumDataType.html "annotation interface in com.appiancorp.suiteapi.forums") (implements java.lang.annotation.[Annotation](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Annotation.html "class or interface in java.lang.annotation"))