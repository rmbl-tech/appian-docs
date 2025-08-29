---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/LocalId.html
original_path: api/com/appiancorp/suiteapi/common/LocalId.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Interface LocalId

All Superinterfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

All Known Subinterfaces:

`[GlobalId](GlobalId.html "interface in com.appiancorp.suiteapi.common")`, `[RemoteId](RemoteId.html "interface in com.appiancorp.suiteapi.common")`

All Known Implementing Classes:

`[ActivityClass](../process/ActivityClass.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassSchema](../process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`, `[Application](../applications/Application.html "class in com.appiancorp.suiteapi.applications")`, `[ApplicationsFolder](../applications/ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications")`, `[Community](../collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration")`, `[Community](../knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge")`, `[CommunityKnowledgeCenter](../knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[Constant](../rules/Constant.html "class in com.appiancorp.suiteapi.rules")`, `[Container](../content/Container.html "class in com.appiancorp.suiteapi.content")`, `[Content](../content/Content.html "class in com.appiancorp.suiteapi.content")`, `[ContentRoleSet](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content")`, `[Contribution](../portal/Contribution.html "class in com.appiancorp.suiteapi.portal")`, `[CustomContent](../content/CustomContent.html "class in com.appiancorp.suiteapi.content")`, `[DiscussionThread](../forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums")`, `[Document](../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration")`, `[Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")`, `[DocumentStatistics](../collaboration/DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")`, `[DownloadStatistics](../collaboration/DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")`, `[Folder](../administration/Folder.html "class in com.appiancorp.suiteapi.administration")`, `[Folder](../collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration")`, `[Folder](../content/Folder.html "class in com.appiancorp.suiteapi.content")`, `[Forum](../forums/Forum.html "class in com.appiancorp.suiteapi.forums")`, `[FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules")`, `[Group](../personalization/Group.html "class in com.appiancorp.suiteapi.personalization")`, `[GroupSummary](../personalization/GroupSummary.html "class in com.appiancorp.suiteapi.personalization")`, `[GroupType](../personalization/GroupType.html "class in com.appiancorp.suiteapi.personalization")`, `[Identity](Identity.html "class in com.appiancorp.suiteapi.common")`, `[KnowledgeCenter](../collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")`, `[KnowledgeCenter](../knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[KnowledgeFolder](../knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge")`, `[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")`, `[MenuTree](../collaboration/MenuTree.html "class in com.appiancorp.suiteapi.collaboration")`, `[Message](../forums/Message.html "class in com.appiancorp.suiteapi.forums")`, `[MessageType](../messaging/MessageType.html "class in com.appiancorp.suiteapi.messaging")`, `[Page](../portal/Page.html "class in com.appiancorp.suiteapi.portal")`, `[PageInfo](../portal/PageInfo.html "class in com.appiancorp.suiteapi.portal")`, `[Palette](../process/Palette.html "class in com.appiancorp.suiteapi.process")`, `[Palette.Descriptor](../process/Palette.Descriptor.html "class in com.appiancorp.suiteapi.process")`, `[PaletteCategory](../process/PaletteCategory.html "class in com.appiancorp.suiteapi.process")`, `[PaletteCategory.AllCategories](../process/PaletteCategory.AllCategories.html "class in com.appiancorp.suiteapi.process")`, `[PaletteCategory.Descriptor](../process/PaletteCategory.Descriptor.html "class in com.appiancorp.suiteapi.process")`, `[PaletteErrorItem](../process/PaletteErrorItem.html "class in com.appiancorp.suiteapi.process")`, `[PaletteItem](../process/PaletteItem.html "class in com.appiancorp.suiteapi.process")`, `[PersonalKnowledgeCenter](../knowledge/PersonalKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[PortalGroup.Page](../portal/PortalGroup.Page.html "class in com.appiancorp.suiteapi.portal")`, `[Portlet](../portal/Portlet.html "class in com.appiancorp.suiteapi.portal")`, `[Priority](../process/Priority.html "class in com.appiancorp.suiteapi.process")`, `[ProcessDetails](../process/ProcessDetails.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelDetails](../process/ProcessModelDetails.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelFolder](../process/ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelProperties](../process/ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelSummary](../process/ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")`, `[ProcessProperties](../process/ProcessProperties.html "class in com.appiancorp.suiteapi.process")`, `[ProcessSummary](../process/ProcessSummary.html "class in com.appiancorp.suiteapi.process")`, `[RoleSet](RoleSet.html "class in com.appiancorp.suiteapi.common")`, `[Rule](../rules/Rule.html "class in com.appiancorp.suiteapi.rules")`, `[RulesFolder](../rules/RulesFolder.html "class in com.appiancorp.suiteapi.rules")`, `[TaskDetails](../process/TaskDetails.html "class in com.appiancorp.suiteapi.process")`, `[TaskProperties](../process/TaskProperties.html "class in com.appiancorp.suiteapi.process")`, `[TaskSummary](../process/TaskSummary.html "class in com.appiancorp.suiteapi.process")`, `[UploadStatistics](../collaboration/UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")`, `[UserSpace](../collaboration/UserSpace.html "class in com.appiancorp.suiteapi.collaboration")`, `[UserStatistics](../collaboration/UserStatistics.html "class in com.appiancorp.suiteapi.collaboration")`

* * *

public interface LocalId extends [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This interface represents the local identifier of an object. The local identifier is used to identify an object within the scope of one application instance. The `id` property can often be passed directly to functions as an `Long` parameter

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets this object's local identifier.

-   ## Method Details

    -   ### getId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

        Returns:

        Object's Id

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets this object's local identifier.

        Parameters:

        `id_` - Id to set

        See Also:

        -   [`getId()`](#getId\(\))