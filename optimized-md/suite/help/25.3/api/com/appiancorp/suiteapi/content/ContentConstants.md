---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentConstants.html
original_path: api/com/appiancorp/suiteapi/content/ContentConstants.html
version: "25.3"
title: "Interface ContentConstants"
page_id: "api/com/appiancorp/suiteapi/content/ContentConstants"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Interface ContentConstants

All Known Implementing Classes:

`[Application](../applications/Application.html "class in com.appiancorp.suiteapi.applications")`, `[ApplicationsFolder](../applications/ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications")`, `[Community](../knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge")`, `[CommunityKnowledgeCenter](../knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[Constant](../rules/Constant.html "class in com.appiancorp.suiteapi.rules")`, `[Container](Container.html "class in com.appiancorp.suiteapi.content")`, `[Content](Content.html "class in com.appiancorp.suiteapi.content")`, `[CustomContent](CustomContent.html "class in com.appiancorp.suiteapi.content")`, `[Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")`, `[Folder](Folder.html "class in com.appiancorp.suiteapi.content")`, `[FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules")`, `[KnowledgeCenter](../knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[KnowledgeFolder](../knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge")`, `[PersonalKnowledgeCenter](../knowledge/PersonalKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[Rule](../rules/Rule.html "class in com.appiancorp.suiteapi.rules")`, `[RulesFolder](../rules/RulesFolder.html "class in com.appiancorp.suiteapi.rules")`

* * *

public interface ContentConstants

Contains constants for use with Content.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ACT_CREATE](#ACT_CREATE)`

    Indicates that the content has a create action pending approval.

    `static final int`

    `[ACT_DEACTIVATE](#ACT_DEACTIVATE)`

    Indicates that the content has a deactivate action pending approval.

    `static final int`

    `[ACT_DELETE](#ACT_DELETE)`

    Indicates that the content has a delete action pending approval.

    `static final int`

    `[AL_ADMIN](#AL_ADMIN)`

    Indicates that the current user has admin access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

    `static final int`

    `[AL_EDITOR](#AL_EDITOR)`

    Indicates that the current user has edit access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

    `static final int`

    `[AL_INVALID_ID](#AL_INVALID_ID)`

    Indicates that the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)) is invalid.

    `static final int`

    `[AL_NONE](#AL_NONE)`

    Indicates that the current user has no access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

    `static final int`

    `[AL_VIEWER](#AL_VIEWER)`

    Indicates that the current user has view access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ALLOCATE_FSID](#ALLOCATE_FSID)`

    Indicates that the database should determine what the file system ID should be for a document.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ALLOCATE_GLOBAL_PART](#ALLOCATE_GLOBAL_PART)`

    Indicates that the database should determine what the partition should be for a KC.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ALLOCATE_PART](#ALLOCATE_PART)`

    Indicates that the database should determine what the partition should be for a document.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[APPLICATIONS_ROOT_DESCRIPTION](#APPLICATIONS_ROOT_DESCRIPTION)`

    Internationalization key for the description of the root Apps folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[APPLICATIONS_ROOT_NAME](#APPLICATIONS_ROOT_NAME)`

    Internationalization key for the name of the root Apps folder.

    `static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[CHILDREN](#CHILDREN)`

    Pass to [`ContentService.delete(Long[], Boolean)`](ContentService.html#delete\(java.lang.Long%5B%5D,java.lang.Boolean\)) or [`ContentService.deactivate$UPDATES`](ContentService.html#deactivate$UPDATES) to indicate that children should automatically be deleted or deactivated.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_ACTION_REQUESTED](#COLUMN_ACTION_REQUESTED)`

    Action Requested column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_ACTION_REQUESTER](#COLUMN_ACTION_REQUESTER)`

    Action Requester column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_ATTRIBUTES](#COLUMN_ATTRIBUTES)`

    Attributes column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_CHANGES_REQUIRE_APPROVAL](#COLUMN_CHANGES_REQUIRE_APPROVAL)`

    Changes Require Approval column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_CREATED_TIMESTAMP](#COLUMN_CREATED_TIMESTAMP)`

    Created Timestamp column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_CREATOR](#COLUMN_CREATOR)`

    Creator column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_DESCRIPTION](#COLUMN_DESCRIPTION)`

    Description column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_EXPIRATION_DAYS](#COLUMN_EXPIRATION_DAYS)`

    Expiration Days column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_EXPIRATION_TIMESTAMP](#COLUMN_EXPIRATION_TIMESTAMP)`

    Expiration Timestamp column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_EXTENSION](#COLUMN_EXTENSION)`

    Extension column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_FORUM](#COLUMN_FORUM)`

    Forum column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_FSID](#COLUMN_FSID)`

    FSID column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_FSID_COUNT](#COLUMN_FSID_COUNT)`

    FSID count column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_ID](#COLUMN_ID)`

    Id column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_LOCKED_BY](#COLUMN_LOCKED_BY)`

    Locked by column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_LOG](#COLUMN_LOG)`

    Log column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_LOG_NAME](#COLUMN_LOG_NAME)`

    Log Name column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_METADATA_IDS](#COLUMN_METADATA_IDS)`

    Deprecated.

    Use attributes to associate metadata instead.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_NAME](#COLUMN_NAME)`

    Name column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_NONE](#COLUMN_NONE)`

    Use this if you do not want a paging function to sort.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_NUMBER_OF_VERSIONS](#COLUMN_NUMBER_OF_VERSIONS)`

    Number of Versions column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_PARENT_ID](#COLUMN_PARENT_ID)`

    Parent Id column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_PARENT_NAME](#COLUMN_PARENT_NAME)`

    Parent Name column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_PARENT_TYPE](#COLUMN_PARENT_TYPE)`

    Parent Type column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_PARTITION](#COLUMN_PARTITION)`

    Partition column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_PARTITION_NAME](#COLUMN_PARTITION_NAME)`

    Partition Name column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_SECURITY](#COLUMN_SECURITY)`

    Security column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_SIZE](#COLUMN_SIZE)`

    Size column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_STATE](#COLUMN_STATE)`

    State column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_SUBTYPE](#COLUMN_SUBTYPE)`

    Subtype column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_TYPE](#COLUMN_TYPE)`

    Type column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_UPDATED_TIMESTAMP](#COLUMN_UPDATED_TIMESTAMP)`

    Updated Timestamp column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_UUID](#COLUMN_UUID)`

    Uuid column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_VERSION_ID](#COLUMN_VERSION_ID)`

    Version Id column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_VERSIONS](#COLUMN_VERSIONS)`

    Versions column.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[COLUMN_VISIBILITY](#COLUMN_VISIBILITY)`

    Visibility column.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[COMMUNITY_ROOT](#COMMUNITY_ROOT)`

    Community RootID.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[CONTENT_SECURITY_TYPE](#CONTENT_SECURITY_TYPE)`

    The Security Manager Configuration type for content.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[CREATION_SECURITY_TYPE](#CREATION_SECURITY_TYPE)`

    Deprecated.

    No longer used

    `static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content")`

    `[FILTER_TYPE_ALL](#FILTER_TYPE_ALL)`

    Deprecated.

    use [`ContentFilter.ALL`](ContentFilter.html#ALL)

    `static final int`

    `[GC_MOD_DRAFT](#GC_MOD_DRAFT)`

    Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that drafts should be returned in addition to published content.

    `static final int`

    `[GC_MOD_LINKS](#GC_MOD_LINKS)`

    Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that links should be returned as children for containers.

    `static final int`

    `[GC_MOD_NORMAL](#GC_MOD_NORMAL)`

    Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that no modifiers are present.

    `static final int`

    `[GC_MOD_POPULATE_TYPES_OF_CHILDREN](#GC_MOD_POPULATE_TYPES_OF_CHILDREN)`

    Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that it should populate [`Content.getTypesOfChildren()`](Content.html#getTypesOfChildren\(\)), which in turn enables [`Content.hasChildrenOfType(int)`](Content.html#hasChildrenOfType\(int\)).

    `static final int`

    `[GC_VERSIONS_AS_FOLDERS](#GC_VERSIONS_AS_FOLDERS)`

    Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that it should include versioned documents as folders ending in " (versions)", which in turn enables `getByPath` and {`getIdByPath`.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[I18N_PREFIX](#I18N_PREFIX)`

    `static final int`

    `[IMPORT_INVALID_PRIVILEGE](#IMPORT_INVALID_PRIVILEGE)`

    You do not have permission to import to that location.

    `static final int`

    `[IMPORT_NAME_EXISTS_WITHIN_PARENT](#IMPORT_NAME_EXISTS_WITHIN_PARENT)`

    A content item already exists with the same name and parent.

    `static final int`

    `[IMPORT_NAME_EXISTS_WITHIN_TYPE](#IMPORT_NAME_EXISTS_WITHIN_TYPE)`

    A content item already exists with the same name and type.

    `static final int`

    `[IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT](#IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT)`

    A content item already exists with the same name, uuid, and parent.

    `static final int`

    `[IMPORT_UUID_EXISTS_ELSEWHERE](#IMPORT_UUID_EXISTS_ELSEWHERE)`

    A content item already exists with the same uuid.

    `static final int`

    `[IMPORT_VALID](#IMPORT_VALID)`

    Content is valid for import.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[INFINITY](#INFINITY)`

    Represents infinity to the database (used for some other constants).

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[KM_EXPIRATION_DURATION_CHECK](#KM_EXPIRATION_DURATION_CHECK)`

    File Expiration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KM_SECURITY_COMMUNITY](#KM_SECURITY_COMMUNITY)`

    The Security Manager Configuration type for community.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KM_SECURITY_CONTENT_COMMUNITY](#KM_SECURITY_CONTENT_COMMUNITY)`

    The Security Manager Configuration Content Type name for community.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KM_SECURITY_CONTENT_FOLDER](#KM_SECURITY_CONTENT_FOLDER)`

    The Security Manager Configuration Content Type name for Knowledge Folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KM_SECURITY_CONTENT_KC](#KM_SECURITY_CONTENT_KC)`

    The Security Manager Configuration Content Type name for Knowledge Center.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KM_SECURITY_FOLDER](#KM_SECURITY_FOLDER)`

    The Security Manager Configuration type for Knowledge Folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KM_SECURITY_KNOWLEDGE_CENTER](#KM_SECURITY_KNOWLEDGE_CENTER)`

    The Security Manager Configuration type for Knowledge Center.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[KNOWLEDGE_ROOT](#KNOWLEDGE_ROOT)`

    Knowledge Root content ID.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KNOWLEDGE_ROOT_SYSTEM_ID](#KNOWLEDGE_ROOT_SYSTEM_ID)`

    Deprecated.

    use [`UUID_COMMUNITY_ROOT`](#UUID_COMMUNITY_ROOT) and [`ContentService.getIdByUuid(String)`](ContentService.html#getIdByUuid\(java.lang.String\))

    `static final int`

    `[MIGRATION_FLAG](#MIGRATION_FLAG)`

    Migration Flag Type.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NEGATIVE_INFINITY](#NEGATIVE_INFINITY)`

    Represents negative infinity to the database (used for some other constants).

    `static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[NO_CHILDREN](#NO_CHILDREN)`

    Pass to [`ContentService.delete(Long[], Boolean)`](ContentService.html#delete\(java.lang.Long%5B%5D,java.lang.Boolean\)) or [`ContentService.deactivate$UPDATES`](ContentService.html#deactivate$UPDATES) to indicate that children should NOT automatically be deleted or deactivated.

    `static final [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[NO_EXPIRATION_TIMESTAMP](#NO_EXPIRATION_TIMESTAMP)`

    Timestamp to use for the expiration timestamp if you do not want the document to expire.

    `static final int`

    `[NO_FORUM](#NO_FORUM)`

    Returned by [`Content.getForum()`](Content.html#getForum\(\)) to indicate that no forum has been assigned.

    `static final int`

    `[NO_REVIEW](#NO_REVIEW)`

    Returned by [`ContentService.getRequests()`](ContentService.html#getRequests\(\)) to indicate that there is nothing to view.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[QUERY_KEYWORDS](#QUERY_KEYWORDS)`

    Special keywords for the query indicating which content to return and which fields to search for specified query terms.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC](#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME](#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME)`

    Record Documents knowledge Center

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[RESTRICTION_ROLE_MAP_ROLES](#RESTRICTION_ROLE_MAP_ROLES)`

    Names of all the roles within a Content restriction role map.

    `static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[RM_AGGREGATE](#RM_AGGREGATE)`

    Indicates that [`ContentService.getRoleMap(Long, Boolean)`](ContentService.html#getRoleMap\(java.lang.Long,java.lang.Boolean\)) should aggregate from the parents if any of the SEC\_INH flags are set.

    `static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[RM_EXPLICIT](#RM_EXPLICIT)`

    Indicates that [`ContentService.getRoleMap(Long, Boolean)`](ContentService.html#getRoleMap\(java.lang.Long,java.lang.Boolean\)) should not aggregate from the parents, even if any of the SEC\_INH flags are set.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ROLE_ADMINISTRATORS](#ROLE_ADMINISTRATORS)`

    Has administrative privileges.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ROLE_AUTHORS](#ROLE_AUTHORS)`

    Has write privileges.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ROLE_DENY_ADMINISTRATORS](#ROLE_DENY_ADMINISTRATORS)`

    Explicitly deny administrative privileges.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ROLE_DENY_AUTHORS](#ROLE_DENY_AUTHORS)`

    Explicitly deny write privileges.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ROLE_DENY_READERS](#ROLE_DENY_READERS)`

    Explicitly deny read privileges.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[ROLE_MAP_ROLES](#ROLE_MAP_ROLES)`

    Names of all the roles within a Content role map.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ROLE_READERS](#ROLE_READERS)`

    Has read privileges.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RULE_ENCODING](#RULE_ENCODING)`

    Encoding used when importing/exporting rules.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RULES_ROOT_DESCRIPTION](#RULES_ROOT_DESCRIPTION)`

    Internationalization key for the description of the root Rules folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RULES_ROOT_NAME](#RULES_ROOT_NAME)`

    Internationalization key for the name of the root Rules folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RULES_ROOT_SYSTEM_ID](#RULES_ROOT_SYSTEM_ID)`

    Deprecated.

    use [`UUID_RULES_ROOT_FOLDER`](#UUID_RULES_ROOT_FOLDER) and [`ContentService.getIdByUuid(String)`](ContentService.html#getIdByUuid\(java.lang.String\))

    `static final int`

    `[SEC_ALL_ADMIN](#SEC_ALL_ADMIN)`

    Indicates that all users should have admin privileges, including ANONYMOUS.

    `static final int`

    `[SEC_ALL_EDITOR](#SEC_ALL_EDITOR)`

    Indicates that all users should have editor privileges, including ANONYMOUS.

    `static final int`

    `[SEC_ALL_VIEWER](#SEC_ALL_VIEWER)`

    Indicates that all users should have viewer privileges, including ANONYMOUS.

    `static final int`

    `[SEC_CREATOR_ADMIN](#SEC_CREATOR_ADMIN)`

    When creating a new Content object, this flag specifies whether the user doing the create should be added as an administrator of the object (set in the role [`ROLE_ADMINISTRATORS`](#ROLE_ADMINISTRATORS) ).

    `static final int`

    `[SEC_INH_ADMIN](#SEC_INH_ADMIN)`

    Indicates that the content should inherit admin privileges from its parent.

    `static final int`

    `[SEC_INH_ADMIN_MASK](#SEC_INH_ADMIN_MASK)`

    Bitmask to use to remove viewer and editor inheritances.

    `static final int`

    `[SEC_INH_ALL](#SEC_INH_ALL)`

    Indicates that the content should inherit all privileges (viewer, editor, admin) from its parent.

    `static final int`

    `[SEC_INH_EDITOR](#SEC_INH_EDITOR)`

    Indicates that the content should inherit editor privileges from its parent.

    `static final int`

    `[SEC_INH_VIEWER](#SEC_INH_VIEWER)`

    Indicates that the content should inherit viewer privileges from its parent.

    `static final int`

    `[SEC_PUBLIC](#SEC_PUBLIC)`

    Indicates that the content is public.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SECURITY_MANAGER_CONFIG](#SECURITY_MANAGER_CONFIG)`

    Security manager configuration file name (without the .xml).

    `static final int`

    `[STATE_ACTIVE](#STATE_ACTIVE)`

    Amount to add to inactive states to get the equivalent active states.

    `static final int`

    `[STATE_ACTIVE_PENDING_APPROVAL](#STATE_ACTIVE_PENDING_APPROVAL)`

    State indicating that the content is active and is pending approval.

    `static final int`

    `[STATE_ACTIVE_PUBLISHED](#STATE_ACTIVE_PUBLISHED)`

    State indicating that the content is active and has been published.

    `static final int`

    `[STATE_ACTIVE_REJECTED](#STATE_ACTIVE_REJECTED)`

    State indicating that the content is active and was rejected in the approval process.

    `static final int`

    `[STATE_PENDING_APPROVAL](#STATE_PENDING_APPROVAL)`

    State indicating that the content is inactive and is pending approval.

    `static final int`

    `[STATE_PUBLISHED](#STATE_PUBLISHED)`

    State indicating that the content is inactive and has been published.

    `static final int`

    `[STATE_REJECTED](#STATE_REJECTED)`

    State indicating that the content is inactive and was rejected in the approval process.

    `static final int`

    `[SUBTYPE_CONNECTED_SYSTEM](#SUBTYPE_CONNECTED_SYSTEM)`

    Subtype for Connected System objects

    `static final int`

    `[SUBTYPE_DATA_STORE_CONFIG](#SUBTYPE_DATA_STORE_CONFIG)`

    Reserved subtype for future use.

    `static final int`

    `[SUBTYPE_FOLDER_APPLICATIONS](#SUBTYPE_FOLDER_APPLICATIONS)`

    Applications folder subtype for Folders.

    `static final int`

    `[SUBTYPE_FOLDER_CONNECTED_SYSTEMS](#SUBTYPE_FOLDER_CONNECTED_SYSTEMS)`

    Root folder for Connected System objects.

    `static final int`

    `[SUBTYPE_FOLDER_DATA_STORE_CONFIGS](#SUBTYPE_FOLDER_DATA_STORE_CONFIGS)`

    Reserved subtype for future use.

    `static final int`

    `[SUBTYPE_FOLDER_KNOWLEDGE](#SUBTYPE_FOLDER_KNOWLEDGE)`

    Knowledge folder subtype for Folders.

    `static final int`

    `[SUBTYPE_FOLDER_MIGRATION_FLAGS](#SUBTYPE_FOLDER_MIGRATION_FLAGS)`

    Root folder for Migration Flags objects.

    `static final int`

    `[SUBTYPE_FOLDER_RULES](#SUBTYPE_FOLDER_RULES)`

    Rules folder subtype for Folders.

    `static final int`

    `[SUBTYPE_MIGRATION_FLAG](#SUBTYPE_MIGRATION_FLAG)`

    Subtype for Migration Flag objects

    `static final int`

    `[SUBTYPE_RULE_CONSTANT](#SUBTYPE_RULE_CONSTANT)`

    Constant subtype for Rules.

    `static final int`

    `[SUBTYPE_RULE_DECISION](#SUBTYPE_RULE_DECISION)`

    `static final int`

    `[SUBTYPE_RULE_DECISION_TABLE](#SUBTYPE_RULE_DECISION_TABLE)`

    Deprecated.

    Was never supported.

    `static final int`

    `[SUBTYPE_RULE_FREEFORM](#SUBTYPE_RULE_FREEFORM)`

    Freeform rule subtype for Rules.

    `static final int`

    `[SUBTYPE_RULE_INTERFACE](#SUBTYPE_RULE_INTERFACE)`

    `static final int`

    `[SUBTYPE_RULE_OUTBOUND_INTEGRATION](#SUBTYPE_RULE_OUTBOUND_INTEGRATION)`

    `static final int`

    `[SUBTYPE_RULE_QUERY](#SUBTYPE_RULE_QUERY)`

    Reserved subtype for future use.

    `static final int`

    `[SYSADMIN_GRP](#SYSADMIN_GRP)`

    The group ID for system administrators.

    `static final int`

    `[SYSADMIN_UTYPE](#SYSADMIN_UTYPE)`

    User type indicating that the user is the system administrator for content.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_ASYNC_INSPECT_FOLDER_NAME](#SYSTEM_ASYNC_INSPECT_FOLDER_NAME)`

    Name of the external System IX sub folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_COPILOT_FOLDER_NAME](#SYSTEM_COPILOT_FOLDER_NAME)`

    Name of the System Copilot folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_FOLDER_COVER_PHOTOS_NAME](#SYSTEM_FOLDER_COVER_PHOTOS_NAME)`

    Name of the System User Cover Photos folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME](#SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME)`

    Name of the System Rule Bundles folder

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_FOLDER_RECORD_TYPES_NAME](#SYSTEM_FOLDER_RECORD_TYPES_NAME)`

    Name of the System Record Types folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION](#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION)`

    Internationalization key for the description of the root System Tempo Attachments folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME](#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME)`

    Internationalization key for the name of the root System Tempo Attachments folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_IX_FOLDER_NAME](#SYSTEM_IX_FOLDER_NAME)`

    Name of the System IX folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME](#SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME)`

    Name of the object templates System IX sub folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_OPENAPI_FOLDER_NAME](#SYSTEM_OPENAPI_FOLDER_NAME)`

    Name of the System OpenAPI folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_PACKAGES_FOLDER_NAME](#SYSTEM_PACKAGES_FOLDER_NAME)`

    Name of the System Packages folder.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_RECORD_TYPE_NAME_PREFIX](#SYSTEM_RECORD_TYPE_NAME_PREFIX)`

    Prefix for all system record zips

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION](#SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION)`

    Description of visible system rules root.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_SYSRULES_DESIGNER_ROOT_NAME](#SYSTEM_SYSRULES_DESIGNER_ROOT_NAME)`

    Name of visible system rules root.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION](#SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION)`

    Description of hidden system rules root.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SYSTEM_SYSRULES_INTERNAL_ROOT_NAME](#SYSTEM_SYSRULES_INTERNAL_ROOT_NAME)`

    Name of hidden system rules root.

    `static final int`

    `[TYPE_ALL](#TYPE_ALL)`

    Type mask to match any type.

    `static final int`

    `[TYPE_ANY_KC](#TYPE_ANY_KC)`

    Knowledge Center type, includes both personal and community KCs.

    `static final int`

    `[TYPE_APPLICATION](#TYPE_APPLICATION)`

    Application type.

    `static final int`

    `[TYPE_COMMUNITY](#TYPE_COMMUNITY)`

    Community type.

    `static final int`

    `[TYPE_COMMUNITY_KC](#TYPE_COMMUNITY_KC)`

    Community Knowledge Center type.

    `static final int`

    `[TYPE_CONTAINER](#TYPE_CONTAINER)`

    Container type, includes communities, KCs, and folders.

    `static final int`

    `[TYPE_CONTENT](#TYPE_CONTENT)`

    Content type, includes folders and documents.

    `static final int`

    `[TYPE_CUSTOM](#TYPE_CUSTOM)`

    Custom content type.

    `static final int`

    `[TYPE_DOCUMENT](#TYPE_DOCUMENT)`

    Document type.

    `static final int`

    `[TYPE_FOLDER](#TYPE_FOLDER)`

    Folder type.

    `static final int`

    `[TYPE_IGNORE](#TYPE_IGNORE)`

    Type mask to ignore the type (matches any type).

    `static final int`

    `[TYPE_NON_CONTAINER](#TYPE_NON_CONTAINER)`

    Typemask to exclude only containers.

    `static final int`

    `[TYPE_NON_DOCUMENT](#TYPE_NON_DOCUMENT)`

    Typemask to exclude documents.

    `static final int`

    `[TYPE_PERSONAL_KC](#TYPE_PERSONAL_KC)`

    Personal Knowledge Center type.

    `static final int`

    `[TYPE_RULE](#TYPE_RULE)`

    Rule type.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNIQUE_FOR_ALL](#UNIQUE_FOR_ALL)`

    Names must be unique for all content.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNIQUE_FOR_PARENT](#UNIQUE_FOR_PARENT)`

    Names must be unique among siblings.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION](#UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION)`

    Names must be unique within system rules and constants but only within the latest versions

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNIQUE_FOR_TYPE](#UNIQUE_FOR_TYPE)`

    Names must be unique within type.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION](#UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION)`

    Names must be unique within type and sub-type but only within the latest versions

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNIQUE_FOR_TYPE_LATEST_VERSION](#UNIQUE_FOR_TYPE_LATEST_VERSION)`

    Names must be unique within type but only within the latest versions

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNIQUE_NONE](#UNIQUE_NONE)`

    No checks for name uniqueness.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ACTIVE_PROCESSES_REPORT](#UUID_ACTIVE_PROCESSES_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT](#UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ACTIVE_TASKS_GROUP_REPORT](#UUID_ACTIVE_TASKS_GROUP_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ACTIVE_TASKS_REPORT](#UUID_ACTIVE_TASKS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ALL_PROCESS_MODELS_REPORT](#UUID_ALL_PROCESS_MODELS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ALL_PROCESSES_REPORT](#UUID_ALL_PROCESSES_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ALL_TASKS_REPORT](#UUID_ALL_TASKS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_APPLICATIONS_HOME](#UUID_APPLICATIONS_HOME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_APPLICATIONS_ROOT](#UUID_APPLICATIONS_ROOT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_ASYNC_INSPECT_FOLDER](#UUID_ASYNC_INSPECT_FOLDER)`

    IX sub folder containing async inspection json files of inspection requests.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_CANCELED_PROCESSES_REPORT](#UUID_CANCELED_PROCESSES_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_COMMUNITY_ROOT](#UUID_COMMUNITY_ROOT)`

    System Objects UUIDs

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_COMPLETED_PROCESSES_REPORT](#UUID_COMPLETED_PROCESSES_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_COMPLETED_TASKS_REPORT](#UUID_COMPLETED_TASKS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_COPILOT_FOLDER](#UUID_COPILOT_FOLDER)`

    Folder containing user-uploaded pdfs converted to SAIL using Co-pilot.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_CURRENT_TASKS_PER_PROCESS_REPORT](#UUID_CURRENT_TASKS_PER_PROCESS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_DATA_STORE_CONFIGS_ROOT_FOLDER](#UUID_DATA_STORE_CONFIGS_ROOT_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_DEFAULT_COMMUNITY](#UUID_DEFAULT_COMMUNITY)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_EMAIL_FOOTER_TEMPLATE](#UUID_EMAIL_FOOTER_TEMPLATE)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_EMAIL_HEADER_TEMPLATE](#UUID_EMAIL_HEADER_TEMPLATE)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_EMAIL_TEMPLATE_FOLDER](#UUID_EMAIL_TEMPLATE_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_FAVORITE_PROCESS_MODELS_REPORT](#UUID_FAVORITE_PROCESS_MODELS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_FAVORITE_PROCESSES_REPORT](#UUID_FAVORITE_PROCESSES_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_FAVORITE_TASKS_REPORT](#UUID_FAVORITE_TASKS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_HIGH_PRIORITY_TASKS_REPORT](#UUID_HIGH_PRIORITY_TASKS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_IX_FOLDER](#UUID_IX_FOLDER)`

    Folder containing import and export zips and logs.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_LEADER_MESSAGE_PICTURES_FOLDER](#UUID_LEADER_MESSAGE_PICTURES_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_MIGRATION_FLAGS_ROOT_FOLDER](#UUID_MIGRATION_FLAGS_ROOT_FOLDER)`

    UUID for root folder of migration flag objects

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT](#UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_NAVIGATION_CONFIG](#UUID_NAVIGATION_CONFIG)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT](#UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_NODE_STATS_PER_PROCESS_REPORT](#UUID_NODE_STATS_PER_PROCESS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_OBJECT_TEMPLATES_FOLDER](#UUID_OBJECT_TEMPLATES_FOLDER)`

    IX sub folder containing object templates ix documents.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_OFFLINE_RULE_BUNDLES_FOLDER](#UUID_OFFLINE_RULE_BUNDLES_FOLDER)`

    UUID of the System Rule Bundles folder

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_OPENAPI_FOLDER](#UUID_OPENAPI_FOLDER)`

    Folder containing export OpenAPI documents.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_OVERDUE_TASKS_REPORT](#UUID_OVERDUE_TASKS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PACKAGES_FOLDER](#UUID_PACKAGES_FOLDER)`

    Folder containing the database scripts, plugins and other documents belonging to packages.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PAUSED_PROCESSES_REPORT](#UUID_PAUSED_PROCESSES_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PERFORMANCE_INDICATOR_GREEN](#UUID_PERFORMANCE_INDICATOR_GREEN)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PERFORMANCE_INDICATOR_RED](#UUID_PERFORMANCE_INDICATOR_RED)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PERFORMANCE_INDICATOR_YELLOW](#UUID_PERFORMANCE_INDICATOR_YELLOW)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PRIORITY_ICONS_FOLDER](#UUID_PRIORITY_ICONS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT](#UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PROCESS_INSTANCES_PER_MODEL_REPORT](#UUID_PROCESS_INSTANCES_PER_MODEL_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PROCESS_MODEL_REPORT_FOLDER](#UUID_PROCESS_MODEL_REPORT_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER](#UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PROCESS_REPORTS_FOLDER](#UUID_PROCESS_REPORTS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PROCESSES_STARTED_BY_ME_REPORT](#UUID_PROCESSES_STARTED_BY_ME_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_PROCESSES_WITH_PROBLEMS_REPORT](#UUID_PROCESSES_WITH_PROBLEMS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER](#UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER)`

    Knowledge Center for record documents

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_RULES_ROOT_FOLDER](#UUID_RULES_ROOT_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_RUNNING_PROCESSES_PER_MODEL_REPORT](#UUID_RUNNING_PROCESSES_PER_MODEL_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_STATISTICS_ACROSS_PROCESSES_REPORT](#UUID_STATISTICS_ACROSS_PROCESSES_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SUBPROCESSES_PER_PROCESS_REPORT](#UUID_SUBPROCESSES_PER_PROCESS_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SUMMARY_REPORTS_FOLDER](#UUID_SUMMARY_REPORTS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_DOC_PRIORITY_HIGH](#UUID_SYSTEM_DOC_PRIORITY_HIGH)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_DOC_PRIORITY_LOW](#UUID_SYSTEM_DOC_PRIORITY_LOW)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_DOC_PRIORITY_NORMAL](#UUID_SYSTEM_DOC_PRIORITY_NORMAL)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS](#UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS)`

    UUID for root folder of tempo attachments

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_KNOWLEDGE_CENTER](#UUID_SYSTEM_KNOWLEDGE_CENTER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_RECORD_TYPES_FOLDER](#UUID_SYSTEM_RECORD_TYPES_FOLDER)`

    Folder containing system record types.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_REPORTS_FOLDER](#UUID_SYSTEM_REPORTS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_SYSRULES_DESIGNER_ROOT](#UUID_SYSTEM_SYSRULES_DESIGNER_ROOT)`

    Root of all visible system rules.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER](#UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING](#UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING)`

    Folder containing system rules for engineering use

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS](#UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_SYSRULES_FOLDER_HOME](#UUID_SYSTEM_SYSRULES_FOLDER_HOME)`

    Folder containing system rules for home and engineering use

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_SYSTEM_SYSRULES_INTERNAL_ROOT](#UUID_SYSTEM_SYSRULES_INTERNAL_ROOT)`

    Root of all hidden system rules.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_TASK_REPORTS_FOLDER](#UUID_TASK_REPORTS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_TASKS_DUE_TODAY_REPORT](#UUID_TASKS_DUE_TODAY_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_TASKS_FOR_USER_REPORT](#UUID_TASKS_FOR_USER_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_TASKS_PER_PROCESS_MODEL_REPORT](#UUID_TASKS_PER_PROCESS_MODEL_REPORT)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_TEMPORARY_DOCS_FOLDER](#UUID_TEMPORARY_DOCS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_TEMPORARY_DOCS_KC](#UUID_TEMPORARY_DOCS_KC)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_USER_COVER_PHOTOS_FOLDER](#UUID_USER_COVER_PHOTOS_FOLDER)`

    Folder containing use cover photos.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_USER_PICTURES_FOLDER](#UUID_USER_PICTURES_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_USER_THUMBNAILS_FOLDER](#UUID_USER_THUMBNAILS_FOLDER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[UUID_VERSIONS_PER_PROCESS_MODEL_REPORT](#UUID_VERSIONS_PER_PROCESS_MODEL_REPORT)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[VERSION_CURRENT](#VERSION_CURRENT)`

    Current version.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[VERSION_ORIGINAL](#VERSION_ORIGINAL)`

    Oldest version.

    `static final int`

    `[VIS_ADVERTISE](#VIS_ADVERTISE)`

    Indicates that the content is visible to online search or query, EVEN WHEN USER HAS NO VIEW PERMISSION (this is used for Medium Security KCs).

    `static final int`

    `[VIS_DEFAULT](#VIS_DEFAULT)`

    The default visibility for all content (automatically set by the constructor).

    `static final int`

    `[VIS_HIERARCHY](#VIS_HIERARCHY)`

    Indicates that the content is visible in hierarchy functions, such as listing children.

    `static final int`

    `[VIS_INDEXABLE](#VIS_INDEXABLE)`

    Indicates that the content should be included in search index generation.

    `static final int`

    `[VIS_QUOTA](#VIS_QUOTA)`

    Deprecated.

    User quotas have been removed.

    `static final int`

    `[VIS_SEARCHABLE](#VIS_SEARCHABLE)`

    Indicates that the content is searchable through the search and query API methods.

    `static final int`

    `[VIS_SYSTEM](#VIS_SYSTEM)`

    Indicates that the content is system content, which implies special restrictions.

    `static final int`

    `[VIS_UNLOGGED](#VIS_UNLOGGED)`

    Indicates that the downloads of this content should not be logged for statistics.

-   ## Field Details

    -   ### TYPE\_DOCUMENT

        static final int TYPE\_DOCUMENT

        Document type. Corresponds with [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_DOCUMENT)

    -   ### TYPE\_FOLDER

        static final int TYPE\_FOLDER

        Folder type. Corresponds with [`Folder`](Folder.html "class in com.appiancorp.suiteapi.content").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_FOLDER)

    -   ### TYPE\_PERSONAL\_KC

        static final int TYPE\_PERSONAL\_KC

        Personal Knowledge Center type. Corresponds with [`PersonalKnowledgeCenter`](../knowledge/PersonalKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_PERSONAL_KC)

    -   ### TYPE\_COMMUNITY\_KC

        static final int TYPE\_COMMUNITY\_KC

        Community Knowledge Center type. Corresponds with [`CommunityKnowledgeCenter`](../knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_COMMUNITY_KC)

    -   ### TYPE\_COMMUNITY

        static final int TYPE\_COMMUNITY

        Community type. Corresponds with [`Community`](../knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_COMMUNITY)

    -   ### TYPE\_RULE

        static final int TYPE\_RULE

        Rule type. Corresponds with [`Rule`](../rules/Rule.html "class in com.appiancorp.suiteapi.rules").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_RULE)

    -   ### TYPE\_APPLICATION

        static final int TYPE\_APPLICATION

        Application type. Corresponds with [`Application`](../applications/Application.html "class in com.appiancorp.suiteapi.applications").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_APPLICATION)

    -   ### TYPE\_CUSTOM

        static final int TYPE\_CUSTOM

        Custom content type. Consultants should use this for their own custom content. Corresponds with [`CustomContent`](CustomContent.html "class in com.appiancorp.suiteapi.content").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_CUSTOM)

    -   ### TYPE\_ANY\_KC

        static final int TYPE\_ANY\_KC

        Knowledge Center type, includes both personal and community KCs. Types included are sub-classes of [`KnowledgeCenter`](../knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_ANY_KC)

    -   ### TYPE\_CONTAINER

        static final int TYPE\_CONTAINER

        Container type, includes communities, KCs, and folders. Types included are sub-classes of [`Container`](Container.html "class in com.appiancorp.suiteapi.content").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_CONTAINER)

    -   ### TYPE\_IGNORE

        static final int TYPE\_IGNORE

        Type mask to ignore the type (matches any type).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_IGNORE)

    -   ### TYPE\_ALL

        static final int TYPE\_ALL

        Type mask to match any type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_ALL)

    -   ### TYPE\_NON\_CONTAINER

        static final int TYPE\_NON\_CONTAINER

        Typemask to exclude only containers.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_NON_CONTAINER)

    -   ### TYPE\_NON\_DOCUMENT

        static final int TYPE\_NON\_DOCUMENT

        Typemask to exclude documents.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_NON_DOCUMENT)

    -   ### TYPE\_CONTENT

        static final int TYPE\_CONTENT

        Content type, includes folders and documents. Corresponds with [`TypedVariableTypes.CONTENT`](../process/TypedVariableTypes.html#CONTENT).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.TYPE_CONTENT)

    -   ### MIGRATION\_FLAG

        static final int MIGRATION\_FLAG

        Migration Flag Type. Differentiated from Community KC with subtype.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.MIGRATION_FLAG)

    -   ### SUBTYPE\_RULE\_CONSTANT

        static final int SUBTYPE\_RULE\_CONSTANT

        Constant subtype for Rules. Corresponds with [`Constant`](../rules/Constant.html "class in com.appiancorp.suiteapi.rules").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_RULE_CONSTANT)

    -   ### SUBTYPE\_RULE\_FREEFORM

        static final int SUBTYPE\_RULE\_FREEFORM

        Freeform rule subtype for Rules. Corresponds with [`FreeformRule`](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_RULE_FREEFORM)

    -   ### SUBTYPE\_RULE\_DECISION\_TABLE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int SUBTYPE\_RULE\_DECISION\_TABLE

        Deprecated.

        Was never supported.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_RULE_DECISION_TABLE)

    -   ### SUBTYPE\_RULE\_QUERY

        static final int SUBTYPE\_RULE\_QUERY

        Reserved subtype for future use. Structured query rule subtype for Rules.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_RULE_QUERY)

    -   ### SUBTYPE\_RULE\_DECISION

        static final int SUBTYPE\_RULE\_DECISION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_RULE_DECISION)

    -   ### SUBTYPE\_RULE\_OUTBOUND\_INTEGRATION

        static final int SUBTYPE\_RULE\_OUTBOUND\_INTEGRATION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_RULE_OUTBOUND_INTEGRATION)

    -   ### SUBTYPE\_RULE\_INTERFACE

        static final int SUBTYPE\_RULE\_INTERFACE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_RULE_INTERFACE)

    -   ### SUBTYPE\_FOLDER\_KNOWLEDGE

        static final int SUBTYPE\_FOLDER\_KNOWLEDGE

        Knowledge folder subtype for Folders. Corresponds with [`KnowledgeFolder`](../knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_FOLDER_KNOWLEDGE)

    -   ### SUBTYPE\_FOLDER\_RULES

        static final int SUBTYPE\_FOLDER\_RULES

        Rules folder subtype for Folders. Corresponds with [`RulesFolder`](../rules/RulesFolder.html "class in com.appiancorp.suiteapi.rules").

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_FOLDER_RULES)

    -   ### SUBTYPE\_FOLDER\_APPLICATIONS

        static final int SUBTYPE\_FOLDER\_APPLICATIONS

        Applications folder subtype for Folders. Corresponds with [`ApplicationsFolder`](../applications/ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications"). Note that this is only used in order to create the application's root; however `Application`s are not stored in it.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_FOLDER_APPLICATIONS)

    -   ### SUBTYPE\_FOLDER\_DATA\_STORE\_CONFIGS

        static final int SUBTYPE\_FOLDER\_DATA\_STORE\_CONFIGS

        Reserved subtype for future use. Root folder for Data Store objects.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_FOLDER_DATA_STORE_CONFIGS)

    -   ### SUBTYPE\_FOLDER\_MIGRATION\_FLAGS

        static final int SUBTYPE\_FOLDER\_MIGRATION\_FLAGS

        Root folder for Migration Flags objects.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_FOLDER_MIGRATION_FLAGS)

    -   ### SUBTYPE\_FOLDER\_CONNECTED\_SYSTEMS

        static final int SUBTYPE\_FOLDER\_CONNECTED\_SYSTEMS

        Root folder for Connected System objects.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_FOLDER_CONNECTED_SYSTEMS)

    -   ### SUBTYPE\_DATA\_STORE\_CONFIG

        static final int SUBTYPE\_DATA\_STORE\_CONFIG

        Reserved subtype for future use. Subtype for Data Store objects.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_DATA_STORE_CONFIG)

    -   ### SUBTYPE\_CONNECTED\_SYSTEM

        static final int SUBTYPE\_CONNECTED\_SYSTEM

        Subtype for Connected System objects

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_CONNECTED_SYSTEM)

    -   ### SUBTYPE\_MIGRATION\_FLAG

        static final int SUBTYPE\_MIGRATION\_FLAG

        Subtype for Migration Flag objects

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SUBTYPE_MIGRATION_FLAG)

    -   ### NO\_EXPIRATION\_TIMESTAMP

        static final [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") NO\_EXPIRATION\_TIMESTAMP

        Timestamp to use for the expiration timestamp if you do not want the document to expire.

    -   ### NO\_FORUM

        static final int NO\_FORUM

        Returned by [`Content.getForum()`](Content.html#getForum\(\)) to indicate that no forum has been assigned.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.NO_FORUM)

    -   ### NO\_REVIEW

        static final int NO\_REVIEW

        Returned by [`ContentService.getRequests()`](ContentService.html#getRequests\(\)) to indicate that there is nothing to view.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.NO_REVIEW)

    -   ### INFINITY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") INFINITY

        Represents infinity to the database (used for some other constants).

    -   ### NEGATIVE\_INFINITY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NEGATIVE\_INFINITY

        Represents negative infinity to the database (used for some other constants).

    -   ### ALLOCATE\_FSID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ALLOCATE\_FSID

        Indicates that the database should determine what the file system ID should be for a document. Used with [`Document.setFileSystemId(Integer)`](../knowledge/Document.html#setFileSystemId\(java.lang.Integer\)).

    -   ### ALLOCATE\_PART

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ALLOCATE\_PART

        Indicates that the database should determine what the partition should be for a document. Used with `com.appiancorp.suiteapi.knowledge.Content#setPartition(Integer)`.

    -   ### ALLOCATE\_GLOBAL\_PART

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ALLOCATE\_GLOBAL\_PART

        Indicates that the database should determine what the partition should be for a KC. Used with `com.appiancorp.suiteapi.knowledge.Content#setPartition(Integer)`.

    -   ### GC\_MOD\_NORMAL

        static final int GC\_MOD\_NORMAL

        Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that no modifiers are present.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.GC_MOD_NORMAL)

    -   ### GC\_MOD\_DRAFT

        static final int GC\_MOD\_DRAFT

        Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that drafts should be returned in addition to published content.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.GC_MOD_DRAFT)

    -   ### GC\_MOD\_LINKS

        static final int GC\_MOD\_LINKS

        Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that links should be returned as children for containers.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.GC_MOD_LINKS)

    -   ### GC\_MOD\_POPULATE\_TYPES\_OF\_CHILDREN

        static final int GC\_MOD\_POPULATE\_TYPES\_OF\_CHILDREN

        Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that it should populate [`Content.getTypesOfChildren()`](Content.html#getTypesOfChildren\(\)), which in turn enables [`Content.hasChildrenOfType(int)`](Content.html#hasChildrenOfType\(int\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.GC_MOD_POPULATE_TYPES_OF_CHILDREN)

    -   ### GC\_VERSIONS\_AS\_FOLDERS

        static final int GC\_VERSIONS\_AS\_FOLDERS

        Pass to [`ContentService.getChildren(Long, ContentFilter, Integer)`](ContentService.html#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\)) to indicate that it should include versioned documents as folders ending in " (versions)", which in turn enables `getByPath` and {`getIdByPath`.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.GC_VERSIONS_AS_FOLDERS)

    -   ### CHILDREN

        static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") CHILDREN

        Pass to [`ContentService.delete(Long[], Boolean)`](ContentService.html#delete\(java.lang.Long%5B%5D,java.lang.Boolean\)) or [`ContentService.deactivate$UPDATES`](ContentService.html#deactivate$UPDATES) to indicate that children should automatically be deleted or deactivated.

    -   ### NO\_CHILDREN

        static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") NO\_CHILDREN

        Pass to [`ContentService.delete(Long[], Boolean)`](ContentService.html#delete\(java.lang.Long%5B%5D,java.lang.Boolean\)) or [`ContentService.deactivate$UPDATES`](ContentService.html#deactivate$UPDATES) to indicate that children should NOT automatically be deleted or deactivated.

    -   ### STATE\_PENDING\_APPROVAL

        static final int STATE\_PENDING\_APPROVAL

        State indicating that the content is inactive and is pending approval.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.STATE_PENDING_APPROVAL)

    -   ### STATE\_REJECTED

        static final int STATE\_REJECTED

        State indicating that the content is inactive and was rejected in the approval process.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.STATE_REJECTED)

    -   ### STATE\_PUBLISHED

        static final int STATE\_PUBLISHED

        State indicating that the content is inactive and has been published.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.STATE_PUBLISHED)

    -   ### STATE\_ACTIVE

        static final int STATE\_ACTIVE

        Amount to add to inactive states to get the equivalent active states.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.STATE_ACTIVE)

    -   ### STATE\_ACTIVE\_PENDING\_APPROVAL

        static final int STATE\_ACTIVE\_PENDING\_APPROVAL

        State indicating that the content is active and is pending approval.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.STATE_ACTIVE_PENDING_APPROVAL)

    -   ### STATE\_ACTIVE\_REJECTED

        static final int STATE\_ACTIVE\_REJECTED

        State indicating that the content is active and was rejected in the approval process.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.STATE_ACTIVE_REJECTED)

    -   ### STATE\_ACTIVE\_PUBLISHED

        static final int STATE\_ACTIVE\_PUBLISHED

        State indicating that the content is active and has been published.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.STATE_ACTIVE_PUBLISHED)

    -   ### VIS\_HIERARCHY

        static final int VIS\_HIERARCHY

        Indicates that the content is visible in hierarchy functions, such as listing children. Not currently enforced.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_HIERARCHY)

    -   ### VIS\_SEARCHABLE

        static final int VIS\_SEARCHABLE

        Indicates that the content is searchable through the search and query API methods.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_SEARCHABLE)

    -   ### VIS\_SYSTEM

        static final int VIS\_SYSTEM

        Indicates that the content is system content, which implies special restrictions.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_SYSTEM)

    -   ### VIS\_QUOTA

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int VIS\_QUOTA

        Deprecated.

        User quotas have been removed. This visibility flag has no effect.

        Indicates that the content's size count toward the space quota. Only set this once within any parent/child chain.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_QUOTA)

    -   ### VIS\_UNLOGGED

        static final int VIS\_UNLOGGED

        Indicates that the downloads of this content should not be logged for statistics.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_UNLOGGED)

    -   ### VIS\_INDEXABLE

        static final int VIS\_INDEXABLE

        Indicates that the content should be included in search index generation.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_INDEXABLE)

    -   ### VIS\_ADVERTISE

        static final int VIS\_ADVERTISE

        Indicates that the content is visible to online search or query, EVEN WHEN USER HAS NO VIEW PERMISSION (this is used for Medium Security KCs).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_ADVERTISE)

    -   ### VIS\_DEFAULT

        static final int VIS\_DEFAULT

        The default visibility for all content (automatically set by the constructor).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.VIS_DEFAULT)

    -   ### QUERY\_KEYWORDS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] QUERY\_KEYWORDS

        Special keywords for the query indicating which content to return and which fields to search for specified query terms.

        See Also:

        -   [`ContentService.queryByRoot(Long, String, ContentFilter)`](ContentService.html#queryByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### SEC\_PUBLIC

        static final int SEC\_PUBLIC

        Indicates that the content is public. This setting affects the author role ( [`ROLE_AUTHORS`](#ROLE_AUTHORS)). For content that is NOT public, authors need to get approval to create, delete and deactivate the content.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_PUBLIC)

    -   ### SEC\_INH\_VIEWER

        static final int SEC\_INH\_VIEWER

        Indicates that the content should inherit viewer privileges from its parent.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_INH_VIEWER)

    -   ### SEC\_INH\_EDITOR

        static final int SEC\_INH\_EDITOR

        Indicates that the content should inherit editor privileges from its parent.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_INH_EDITOR)

    -   ### SEC\_INH\_ADMIN

        static final int SEC\_INH\_ADMIN

        Indicates that the content should inherit admin privileges from its parent.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_INH_ADMIN)

    -   ### SEC\_ALL\_VIEWER

        static final int SEC\_ALL\_VIEWER

        Indicates that all users should have viewer privileges, including ANONYMOUS.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_ALL_VIEWER)

    -   ### SEC\_ALL\_EDITOR

        static final int SEC\_ALL\_EDITOR

        Indicates that all users should have editor privileges, including ANONYMOUS.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_ALL_EDITOR)

    -   ### SEC\_ALL\_ADMIN

        static final int SEC\_ALL\_ADMIN

        Indicates that all users should have admin privileges, including ANONYMOUS.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_ALL_ADMIN)

    -   ### SEC\_CREATOR\_ADMIN

        static final int SEC\_CREATOR\_ADMIN

        When creating a new Content object, this flag specifies whether the user doing the create should be added as an administrator of the object (set in the role [`ROLE_ADMINISTRATORS`](#ROLE_ADMINISTRATORS) ). When retrieving a Content object or a Content role map, this flag can be used as a shortcut for determining whether the creator user is an administrator of the Content object.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_CREATOR_ADMIN)

    -   ### SEC\_INH\_ALL

        static final int SEC\_INH\_ALL

        Indicates that the content should inherit all privileges (viewer, editor, admin) from its parent.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_INH_ALL)

    -   ### SEC\_INH\_ADMIN\_MASK

        static final int SEC\_INH\_ADMIN\_MASK

        Bitmask to use to remove viewer and editor inheritances. Bitwise and it with the current security to apply it.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SEC_INH_ADMIN_MASK)

    -   ### RM\_AGGREGATE

        static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") RM\_AGGREGATE

        Indicates that [`ContentService.getRoleMap(Long, Boolean)`](ContentService.html#getRoleMap\(java.lang.Long,java.lang.Boolean\)) should aggregate from the parents if any of the SEC\_INH flags are set.

    -   ### RM\_EXPLICIT

        static final [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") RM\_EXPLICIT

        Indicates that [`ContentService.getRoleMap(Long, Boolean)`](ContentService.html#getRoleMap\(java.lang.Long,java.lang.Boolean\)) should not aggregate from the parents, even if any of the SEC\_INH flags are set.

    -   ### SYSADMIN\_UTYPE

        static final int SYSADMIN\_UTYPE

        User type indicating that the user is the system administrator for content. Pass this to [`ContentService.activateUserSession(Long[], Long[], Integer)`](ContentService.html#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Integer\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSADMIN_UTYPE)

    -   ### SYSADMIN\_GRP

        static final int SYSADMIN\_GRP

        The group ID for system administrators.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSADMIN_GRP)

    -   ### AL\_INVALID\_ID

        static final int AL\_INVALID\_ID

        Indicates that the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)) is invalid.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.AL_INVALID_ID)

    -   ### AL\_NONE

        static final int AL\_NONE

        Indicates that the current user has no access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.AL_NONE)

    -   ### AL\_VIEWER

        static final int AL\_VIEWER

        Indicates that the current user has view access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.AL_VIEWER)

    -   ### AL\_EDITOR

        static final int AL\_EDITOR

        Indicates that the current user has edit access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.AL_EDITOR)

    -   ### AL\_ADMIN

        static final int AL\_ADMIN

        Indicates that the current user has admin access to the corresponding ID passed to [`ContentService.getAccessLevel(Long[], Integer)`](ContentService.html#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.AL_ADMIN)

    -   ### ACT\_DELETE

        static final int ACT\_DELETE

        Indicates that the content has a delete action pending approval. The requested action can be obtained from [`Content.getActionRequested()`](Content.html#getActionRequested\(\)) after getting the content from [`ContentService.getRequests()`](ContentService.html#getRequests\(\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ACT_DELETE)

    -   ### ACT\_DEACTIVATE

        static final int ACT\_DEACTIVATE

        Indicates that the content has a deactivate action pending approval. The requested action can be obtained from [`Content.getActionRequested()`](Content.html#getActionRequested\(\)) after getting the content from [`ContentService.getRequests()`](ContentService.html#getRequests\(\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ACT_DEACTIVATE)

    -   ### ACT\_CREATE

        static final int ACT\_CREATE

        Indicates that the content has a create action pending approval. The requested action can be obtained from [`Content.getActionRequested()`](Content.html#getActionRequested\(\)) after getting the content from [`ContentService.getRequests()`](ContentService.html#getRequests\(\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ACT_CREATE)

    -   ### UNIQUE\_NONE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNIQUE\_NONE

        No checks for name uniqueness.

    -   ### UNIQUE\_FOR\_PARENT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNIQUE\_FOR\_PARENT

        Names must be unique among siblings.

    -   ### UNIQUE\_FOR\_TYPE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNIQUE\_FOR\_TYPE

        Names must be unique within type.

    -   ### UNIQUE\_FOR\_ALL

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNIQUE\_FOR\_ALL

        Names must be unique for all content.

    -   ### UNIQUE\_FOR\_TYPE\_LATEST\_VERSION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNIQUE\_FOR\_TYPE\_LATEST\_VERSION

        Names must be unique within type but only within the latest versions

    -   ### UNIQUE\_FOR\_TYPE\_AND\_SUBTYPE\_LATEST\_VERSION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNIQUE\_FOR\_TYPE\_AND\_SUBTYPE\_LATEST\_VERSION

        Names must be unique within type and sub-type but only within the latest versions

    -   ### UNIQUE\_FOR\_SYSTEM\_RULES\_LATEST\_VERSION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNIQUE\_FOR\_SYSTEM\_RULES\_LATEST\_VERSION

        Names must be unique within system rules and constants but only within the latest versions

    -   ### IMPORT\_VALID

        static final int IMPORT\_VALID

        Content is valid for import.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.IMPORT_VALID)

    -   ### IMPORT\_NAME\_EXISTS\_WITHIN\_TYPE

        static final int IMPORT\_NAME\_EXISTS\_WITHIN\_TYPE

        A content item already exists with the same name and type. Valid for rule folders, not for rules.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.IMPORT_NAME_EXISTS_WITHIN_TYPE)

    -   ### IMPORT\_NAME\_EXISTS\_WITHIN\_PARENT

        static final int IMPORT\_NAME\_EXISTS\_WITHIN\_PARENT

        A content item already exists with the same name and parent.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.IMPORT_NAME_EXISTS_WITHIN_PARENT)

    -   ### IMPORT\_UUID\_EXISTS\_ELSEWHERE

        static final int IMPORT\_UUID\_EXISTS\_ELSEWHERE

        A content item already exists with the same uuid.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.IMPORT_UUID_EXISTS_ELSEWHERE)

    -   ### IMPORT\_INVALID\_PRIVILEGE

        static final int IMPORT\_INVALID\_PRIVILEGE

        You do not have permission to import to that location.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.IMPORT_INVALID_PRIVILEGE)

    -   ### IMPORT\_NAME\_WITH\_UUID\_EXISTS\_WITHIN\_PARENT

        static final int IMPORT\_NAME\_WITH\_UUID\_EXISTS\_WITHIN\_PARENT

        A content item already exists with the same name, uuid, and parent. This is a valid import code if you want to create a new version

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT)

    -   ### COLUMN\_NONE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_NONE

        Use this if you do not want a paging function to sort.

    -   ### COLUMN\_ID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_ID

        Id column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_VERSION\_ID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_VERSION\_ID

        Version Id column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_NAME

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_NAME

        Name column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_DESCRIPTION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_DESCRIPTION

        Description column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_TYPE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_TYPE

        Type column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_PARENT\_ID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_PARENT\_ID

        Parent Id column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_PARENT\_NAME

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_PARENT\_NAME

        Parent Name column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_PARENT\_TYPE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_PARENT\_TYPE

        Parent Type column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_LOG

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_LOG

        Log column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_LOG\_NAME

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_LOG\_NAME

        Log Name column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_STATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_STATE

        State column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_VISIBILITY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_VISIBILITY

        Visibility column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_SECURITY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_SECURITY

        Security column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_CREATOR

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_CREATOR

        Creator column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_CREATED\_TIMESTAMP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_CREATED\_TIMESTAMP

        Created Timestamp column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_UPDATED\_TIMESTAMP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_UPDATED\_TIMESTAMP

        Updated Timestamp column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_EXPIRATION\_TIMESTAMP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_EXPIRATION\_TIMESTAMP

        Expiration Timestamp column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_METADATA\_IDS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_METADATA\_IDS

        Deprecated.

        Use attributes to associate metadata instead.

        Metadata Ids column.

    -   ### COLUMN\_PARTITION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_PARTITION

        Partition column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_PARTITION\_NAME

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_PARTITION\_NAME

        Partition Name column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_FSID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_FSID

        FSID column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_EXTENSION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_EXTENSION

        Extension column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_SIZE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_SIZE

        Size column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_VERSIONS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_VERSIONS

        Versions column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_FORUM

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_FORUM

        Forum column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_LOCKED\_BY

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_LOCKED\_BY

        Locked by column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_CHANGES\_REQUIRE\_APPROVAL

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_CHANGES\_REQUIRE\_APPROVAL

        Changes Require Approval column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_EXPIRATION\_DAYS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_EXPIRATION\_DAYS

        Expiration Days column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_NUMBER\_OF\_VERSIONS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_NUMBER\_OF\_VERSIONS

        Number of Versions column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_FSID\_COUNT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_FSID\_COUNT

        FSID count column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_SUBTYPE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_SUBTYPE

        Subtype column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_ATTRIBUTES

        Attributes column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_UUID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_UUID

        Uuid column. Used for [`ContentService.updateFields(Content, Integer[], Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) and sorting within paging functions.

    -   ### COLUMN\_ACTION\_REQUESTED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_ACTION\_REQUESTED

        Action Requested column. Used for sorting when viewing Pending Changes.

    -   ### COLUMN\_ACTION\_REQUESTER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") COLUMN\_ACTION\_REQUESTER

        Action Requester column. Used for sorting when viewing Pending Changes.

    -   ### COMMUNITY\_ROOT

        static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") COMMUNITY\_ROOT

        Community RootID.

    -   ### KNOWLEDGE\_ROOT

        static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") KNOWLEDGE\_ROOT

        Knowledge Root content ID.

    -   ### KNOWLEDGE\_ROOT\_SYSTEM\_ID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KNOWLEDGE\_ROOT\_SYSTEM\_ID

        Deprecated.

        use [`UUID_COMMUNITY_ROOT`](#UUID_COMMUNITY_ROOT) and [`ContentService.getIdByUuid(String)`](ContentService.html#getIdByUuid\(java.lang.String\))

        Knowledge Root system ID.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.KNOWLEDGE_ROOT_SYSTEM_ID)

    -   ### RULES\_ROOT\_SYSTEM\_ID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RULES\_ROOT\_SYSTEM\_ID

        Deprecated.

        use [`UUID_RULES_ROOT_FOLDER`](#UUID_RULES_ROOT_FOLDER) and [`ContentService.getIdByUuid(String)`](ContentService.html#getIdByUuid\(java.lang.String\))

        Rules Root system ID.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.RULES_ROOT_SYSTEM_ID)

    -   ### RULES\_ROOT\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RULES\_ROOT\_NAME

        Internationalization key for the name of the root Rules folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.RULES_ROOT_NAME)

    -   ### SYSTEM\_SYSRULES\_DESIGNER\_ROOT\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_SYSRULES\_DESIGNER\_ROOT\_NAME

        Name of visible system rules root.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_SYSRULES_DESIGNER_ROOT_NAME)

    -   ### SYSTEM\_SYSRULES\_INTERNAL\_ROOT\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_SYSRULES\_INTERNAL\_ROOT\_NAME

        Name of hidden system rules root.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_SYSRULES_INTERNAL_ROOT_NAME)

    -   ### RULES\_ROOT\_DESCRIPTION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RULES\_ROOT\_DESCRIPTION

        Internationalization key for the description of the root Rules folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.RULES_ROOT_DESCRIPTION)

    -   ### SYSTEM\_SYSRULES\_DESIGNER\_ROOT\_DESCRIPTION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_SYSRULES\_DESIGNER\_ROOT\_DESCRIPTION

        Description of visible system rules root.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION)

    -   ### SYSTEM\_SYSRULES\_INTERNAL\_ROOT\_DESCRIPTION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_SYSRULES\_INTERNAL\_ROOT\_DESCRIPTION

        Description of hidden system rules root.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION)

    -   ### SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS\_ROOT\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS\_ROOT\_NAME

        Internationalization key for the name of the root System Tempo Attachments folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME)

    -   ### SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS\_ROOT\_DESCRIPTION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS\_ROOT\_DESCRIPTION

        Internationalization key for the description of the root System Tempo Attachments folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION)

    -   ### SYSTEM\_FOLDER\_COVER\_PHOTOS\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_FOLDER\_COVER\_PHOTOS\_NAME

        Name of the System User Cover Photos folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_FOLDER_COVER_PHOTOS_NAME)

    -   ### SYSTEM\_FOLDER\_RECORD\_TYPES\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_FOLDER\_RECORD\_TYPES\_NAME

        Name of the System Record Types folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_FOLDER_RECORD_TYPES_NAME)

    -   ### SYSTEM\_IX\_FOLDER\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_IX\_FOLDER\_NAME

        Name of the System IX folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_IX_FOLDER_NAME)

    -   ### SYSTEM\_ASYNC\_INSPECT\_FOLDER\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_ASYNC\_INSPECT\_FOLDER\_NAME

        Name of the external System IX sub folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_ASYNC_INSPECT_FOLDER_NAME)

    -   ### SYSTEM\_OBJECT\_TEMPLATES\_FOLDER\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_OBJECT\_TEMPLATES\_FOLDER\_NAME

        Name of the object templates System IX sub folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME)

    -   ### SYSTEM\_PACKAGES\_FOLDER\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_PACKAGES\_FOLDER\_NAME

        Name of the System Packages folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_PACKAGES_FOLDER_NAME)

    -   ### SYSTEM\_OPENAPI\_FOLDER\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_OPENAPI\_FOLDER\_NAME

        Name of the System OpenAPI folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_OPENAPI_FOLDER_NAME)

    -   ### SYSTEM\_FOLDER\_OFFLINE\_RULE\_BUNDLES\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_FOLDER\_OFFLINE\_RULE\_BUNDLES\_NAME

        Name of the System Rule Bundles folder

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME)

    -   ### SYSTEM\_COPILOT\_FOLDER\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_COPILOT\_FOLDER\_NAME

        Name of the System Copilot folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_COPILOT_FOLDER_NAME)

    -   ### RECORD\_DOCUMENTS\_KNOWLEDGE\_CENTER\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RECORD\_DOCUMENTS\_KNOWLEDGE\_CENTER\_NAME

        Record Documents knowledge Center

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME)

    -   ### RECORD\_DOCUMENTS\_KNOWLEDGE\_CENTER\_DESC

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RECORD\_DOCUMENTS\_KNOWLEDGE\_CENTER\_DESC

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC)

    -   ### APPLICATIONS\_ROOT\_NAME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") APPLICATIONS\_ROOT\_NAME

        Internationalization key for the name of the root Apps folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.APPLICATIONS_ROOT_NAME)

    -   ### APPLICATIONS\_ROOT\_DESCRIPTION

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") APPLICATIONS\_ROOT\_DESCRIPTION

        Internationalization key for the description of the root Apps folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.APPLICATIONS_ROOT_DESCRIPTION)

    -   ### VERSION\_CURRENT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") VERSION\_CURRENT

        Current version.

    -   ### SECURITY\_MANAGER\_CONFIG

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SECURITY\_MANAGER\_CONFIG

        Security manager configuration file name (without the .xml).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SECURITY_MANAGER_CONFIG)

    -   ### CONTENT\_SECURITY\_TYPE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CONTENT\_SECURITY\_TYPE

        The Security Manager Configuration type for content.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.CONTENT_SECURITY_TYPE)

    -   ### CREATION\_SECURITY\_TYPE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CREATION\_SECURITY\_TYPE

        Deprecated.

        No longer used

        The Security Manager Configuration type for the rule creation restriction map.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.CREATION_SECURITY_TYPE)

    -   ### ROLE\_READERS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ROLE\_READERS

        Has read privileges.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ROLE_READERS)

    -   ### ROLE\_AUTHORS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ROLE\_AUTHORS

        Has write privileges.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ROLE_AUTHORS)

    -   ### ROLE\_ADMINISTRATORS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ROLE\_ADMINISTRATORS

        Has administrative privileges.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ROLE_ADMINISTRATORS)

    -   ### ROLE\_DENY\_READERS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ROLE\_DENY\_READERS

        Explicitly deny read privileges.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ROLE_DENY_READERS)

    -   ### ROLE\_DENY\_AUTHORS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ROLE\_DENY\_AUTHORS

        Explicitly deny write privileges.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ROLE_DENY_AUTHORS)

    -   ### ROLE\_DENY\_ADMINISTRATORS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ROLE\_DENY\_ADMINISTRATORS

        Explicitly deny administrative privileges.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.ROLE_DENY_ADMINISTRATORS)

    -   ### ROLE\_MAP\_ROLES

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] ROLE\_MAP\_ROLES

        Names of all the roles within a Content role map.

    -   ### RESTRICTION\_ROLE\_MAP\_ROLES

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] RESTRICTION\_ROLE\_MAP\_ROLES

        Names of all the roles within a Content restriction role map.

    -   ### RULE\_ENCODING

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RULE\_ENCODING

        Encoding used when importing/exporting rules.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.RULE_ENCODING)

    -   ### KM\_SECURITY\_COMMUNITY

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KM\_SECURITY\_COMMUNITY

        The Security Manager Configuration type for community.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.KM_SECURITY_COMMUNITY)

    -   ### KM\_SECURITY\_KNOWLEDGE\_CENTER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KM\_SECURITY\_KNOWLEDGE\_CENTER

        The Security Manager Configuration type for Knowledge Center.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.KM_SECURITY_KNOWLEDGE_CENTER)

    -   ### KM\_SECURITY\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KM\_SECURITY\_FOLDER

        The Security Manager Configuration type for Knowledge Folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.KM_SECURITY_FOLDER)

    -   ### KM\_SECURITY\_CONTENT\_COMMUNITY

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KM\_SECURITY\_CONTENT\_COMMUNITY

        The Security Manager Configuration Content Type name for community.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.KM_SECURITY_CONTENT_COMMUNITY)

    -   ### KM\_SECURITY\_CONTENT\_KC

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KM\_SECURITY\_CONTENT\_KC

        The Security Manager Configuration Content Type name for Knowledge Center.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.KM_SECURITY_CONTENT_KC)

    -   ### KM\_SECURITY\_CONTENT\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KM\_SECURITY\_CONTENT\_FOLDER

        The Security Manager Configuration Content Type name for Knowledge Folder.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.KM_SECURITY_CONTENT_FOLDER)

    -   ### KM\_EXPIRATION\_DURATION\_CHECK

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") KM\_EXPIRATION\_DURATION\_CHECK

        File Expiration

    -   ### FILTER\_TYPE\_ALL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") FILTER\_TYPE\_ALL

        Deprecated.

        use [`ContentFilter.ALL`](ContentFilter.html#ALL)

    -   ### VERSION\_ORIGINAL

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") VERSION\_ORIGINAL

        Oldest version.

    -   ### I18N\_PREFIX

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") I18N\_PREFIX

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.I18N_PREFIX)

    -   ### SYSTEM\_RECORD\_TYPE\_NAME\_PREFIX

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SYSTEM\_RECORD\_TYPE\_NAME\_PREFIX

        Prefix for all system record zips

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.SYSTEM_RECORD_TYPE_NAME_PREFIX)

    -   ### UUID\_COMMUNITY\_ROOT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_COMMUNITY\_ROOT

        System Objects UUIDs

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_COMMUNITY_ROOT)

    -   ### UUID\_DEFAULT\_COMMUNITY

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_DEFAULT\_COMMUNITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_DEFAULT_COMMUNITY)

    -   ### UUID\_SYSTEM\_KNOWLEDGE\_CENTER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_KNOWLEDGE\_CENTER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_KNOWLEDGE_CENTER)

    -   ### UUID\_TEMPORARY\_DOCS\_KC

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_TEMPORARY\_DOCS\_KC

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_TEMPORARY_DOCS_KC)

    -   ### UUID\_TEMPORARY\_DOCS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_TEMPORARY\_DOCS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_TEMPORARY_DOCS_FOLDER)

    -   ### UUID\_SYSTEM\_REPORTS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_REPORTS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_REPORTS_FOLDER)

    -   ### UUID\_RULES\_ROOT\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_RULES\_ROOT\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_RULES_ROOT_FOLDER)

    -   ### UUID\_USER\_PICTURES\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_USER\_PICTURES\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_USER_PICTURES_FOLDER)

    -   ### UUID\_USER\_THUMBNAILS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_USER\_THUMBNAILS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_USER_THUMBNAILS_FOLDER)

    -   ### UUID\_IX\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_IX\_FOLDER

        Folder containing import and export zips and logs.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_IX_FOLDER)

    -   ### UUID\_ASYNC\_INSPECT\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ASYNC\_INSPECT\_FOLDER

        IX sub folder containing async inspection json files of inspection requests.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ASYNC_INSPECT_FOLDER)

    -   ### UUID\_OBJECT\_TEMPLATES\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_OBJECT\_TEMPLATES\_FOLDER

        IX sub folder containing object templates ix documents.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_OBJECT_TEMPLATES_FOLDER)

    -   ### UUID\_PACKAGES\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PACKAGES\_FOLDER

        Folder containing the database scripts, plugins and other documents belonging to packages.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PACKAGES_FOLDER)

    -   ### UUID\_USER\_COVER\_PHOTOS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_USER\_COVER\_PHOTOS\_FOLDER

        Folder containing use cover photos.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_USER_COVER_PHOTOS_FOLDER)

    -   ### UUID\_SYSTEM\_RECORD\_TYPES\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_RECORD\_TYPES\_FOLDER

        Folder containing system record types.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_RECORD_TYPES_FOLDER)

    -   ### UUID\_PRIORITY\_ICONS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PRIORITY\_ICONS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PRIORITY_ICONS_FOLDER)

    -   ### UUID\_LEADER\_MESSAGE\_PICTURES\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_LEADER\_MESSAGE\_PICTURES\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_LEADER_MESSAGE_PICTURES_FOLDER)

    -   ### UUID\_EMAIL\_FOOTER\_TEMPLATE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_EMAIL\_FOOTER\_TEMPLATE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_EMAIL_FOOTER_TEMPLATE)

    -   ### UUID\_EMAIL\_HEADER\_TEMPLATE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_EMAIL\_HEADER\_TEMPLATE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_EMAIL_HEADER_TEMPLATE)

    -   ### UUID\_EMAIL\_TEMPLATE\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_EMAIL\_TEMPLATE\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_EMAIL_TEMPLATE_FOLDER)

    -   ### UUID\_SYSTEM\_DOC\_PRIORITY\_HIGH

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_DOC\_PRIORITY\_HIGH

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_DOC_PRIORITY_HIGH)

    -   ### UUID\_SYSTEM\_DOC\_PRIORITY\_NORMAL

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_DOC\_PRIORITY\_NORMAL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_DOC_PRIORITY_NORMAL)

    -   ### UUID\_SYSTEM\_DOC\_PRIORITY\_LOW

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_DOC\_PRIORITY\_LOW

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_DOC_PRIORITY_LOW)

    -   ### UUID\_APPLICATIONS\_ROOT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_APPLICATIONS\_ROOT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_APPLICATIONS_ROOT)

    -   ### UUID\_APPLICATIONS\_HOME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_APPLICATIONS\_HOME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_APPLICATIONS_HOME)

    -   ### UUID\_DATA\_STORE\_CONFIGS\_ROOT\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_DATA\_STORE\_CONFIGS\_ROOT\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_DATA_STORE_CONFIGS_ROOT_FOLDER)

    -   ### UUID\_PERFORMANCE\_INDICATOR\_GREEN

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PERFORMANCE\_INDICATOR\_GREEN

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PERFORMANCE_INDICATOR_GREEN)

    -   ### UUID\_PERFORMANCE\_INDICATOR\_YELLOW

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PERFORMANCE\_INDICATOR\_YELLOW

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PERFORMANCE_INDICATOR_YELLOW)

    -   ### UUID\_PERFORMANCE\_INDICATOR\_RED

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PERFORMANCE\_INDICATOR\_RED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PERFORMANCE_INDICATOR_RED)

    -   ### UUID\_NAVIGATION\_CONFIG

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_NAVIGATION\_CONFIG

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_NAVIGATION_CONFIG)

    -   ### UUID\_SYSTEM\_SYSRULES\_DESIGNER\_ROOT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_SYSRULES\_DESIGNER\_ROOT

        Root of all visible system rules.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_SYSRULES_DESIGNER_ROOT)

    -   ### UUID\_SYSTEM\_SYSRULES\_FOLDER\_DESIGNER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_SYSRULES\_FOLDER\_DESIGNER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER)

    -   ### UUID\_SYSTEM\_SYSRULES\_FOLDER\_ENGINEERING

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_SYSRULES\_FOLDER\_ENGINEERING

        Folder containing system rules for engineering use

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING)

    -   ### UUID\_SYSTEM\_SYSRULES\_FOLDER\_HOME

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_SYSRULES\_FOLDER\_HOME

        Folder containing system rules for home and engineering use

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_SYSRULES_FOLDER_HOME)

    -   ### UUID\_SYSTEM\_SYSRULES\_FOLDER\_EVOLVED\_PREVIOUS\_VERSIONS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_SYSRULES\_FOLDER\_EVOLVED\_PREVIOUS\_VERSIONS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS)

    -   ### UUID\_SYSTEM\_SYSRULES\_INTERNAL\_ROOT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_SYSRULES\_INTERNAL\_ROOT

        Root of all hidden system rules.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_SYSRULES_INTERNAL_ROOT)

    -   ### UUID\_PROCESS\_MODEL\_REPORT\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PROCESS\_MODEL\_REPORT\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PROCESS_MODEL_REPORT_FOLDER)

    -   ### UUID\_ALL\_PROCESS\_MODELS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ALL\_PROCESS\_MODELS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ALL_PROCESS_MODELS_REPORT)

    -   ### UUID\_PROCESS\_DETAILS\_PER\_PROCESS\_MODEL\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PROCESS\_DETAILS\_PER\_PROCESS\_MODEL\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT)

    -   ### UUID\_RUNNING\_PROCESSES\_PER\_MODEL\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_RUNNING\_PROCESSES\_PER\_MODEL\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_RUNNING_PROCESSES_PER_MODEL_REPORT)

    -   ### UUID\_PROCESS\_INSTANCES\_PER\_MODEL\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PROCESS\_INSTANCES\_PER\_MODEL\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PROCESS_INSTANCES_PER_MODEL_REPORT)

    -   ### UUID\_VERSIONS\_PER\_PROCESS\_MODEL\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_VERSIONS\_PER\_PROCESS\_MODEL\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_VERSIONS_PER_PROCESS_MODEL_REPORT)

    -   ### UUID\_PROCESS\_OPTIMIZATION\_REPORTS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PROCESS\_OPTIMIZATION\_REPORTS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER)

    -   ### UUID\_NODE\_STATS\_PER\_PROCESS\_MODEL\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_NODE\_STATS\_PER\_PROCESS\_MODEL\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT)

    -   ### UUID\_NODE\_STATS\_PER\_PROCESS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_NODE\_STATS\_PER\_PROCESS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_NODE_STATS_PER_PROCESS_REPORT)

    -   ### UUID\_PROCESS\_REPORTS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PROCESS\_REPORTS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PROCESS_REPORTS_FOLDER)

    -   ### UUID\_ACTIVE\_PROCESSES\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ACTIVE\_PROCESSES\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ACTIVE_PROCESSES_REPORT)

    -   ### UUID\_ALL\_PROCESSES\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ALL\_PROCESSES\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ALL_PROCESSES_REPORT)

    -   ### UUID\_CANCELED\_PROCESSES\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_CANCELED\_PROCESSES\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_CANCELED_PROCESSES_REPORT)

    -   ### UUID\_COMPLETED\_PROCESSES\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_COMPLETED\_PROCESSES\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_COMPLETED_PROCESSES_REPORT)

    -   ### UUID\_FAVORITE\_PROCESSES\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_FAVORITE\_PROCESSES\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_FAVORITE_PROCESSES_REPORT)

    -   ### UUID\_PROCESSES\_WITH\_PROBLEMS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PROCESSES\_WITH\_PROBLEMS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PROCESSES_WITH_PROBLEMS_REPORT)

    -   ### UUID\_PAUSED\_PROCESSES\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PAUSED\_PROCESSES\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PAUSED_PROCESSES_REPORT)

    -   ### UUID\_PROCESSES\_STARTED\_BY\_ME\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_PROCESSES\_STARTED\_BY\_ME\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_PROCESSES_STARTED_BY_ME_REPORT)

    -   ### UUID\_SUBPROCESSES\_PER\_PROCESS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SUBPROCESSES\_PER\_PROCESS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SUBPROCESSES_PER_PROCESS_REPORT)

    -   ### UUID\_SUMMARY\_REPORTS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SUMMARY\_REPORTS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SUMMARY_REPORTS_FOLDER)

    -   ### UUID\_FAVORITE\_PROCESS\_MODELS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_FAVORITE\_PROCESS\_MODELS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_FAVORITE_PROCESS_MODELS_REPORT)

    -   ### UUID\_MOST\_ACTIVE\_PROCESS\_MODELS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_MOST\_ACTIVE\_PROCESS\_MODELS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT)

    -   ### UUID\_STATISTICS\_ACROSS\_PROCESSES\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_STATISTICS\_ACROSS\_PROCESSES\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_STATISTICS_ACROSS_PROCESSES_REPORT)

    -   ### UUID\_TASK\_REPORTS\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_TASK\_REPORTS\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_TASK_REPORTS_FOLDER)

    -   ### UUID\_ACTIVE\_TASKS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ACTIVE\_TASKS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ACTIVE_TASKS_REPORT)

    -   ### UUID\_ACTIVE\_TASKS\_GROUP\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ACTIVE\_TASKS\_GROUP\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ACTIVE_TASKS_GROUP_REPORT)

    -   ### UUID\_ACTIVE\_TASKS\_GROUP\_MEMBERS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ACTIVE\_TASKS\_GROUP\_MEMBERS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT)

    -   ### UUID\_ALL\_TASKS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_ALL\_TASKS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_ALL_TASKS_REPORT)

    -   ### UUID\_COMPLETED\_TASKS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_COMPLETED\_TASKS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_COMPLETED_TASKS_REPORT)

    -   ### UUID\_CURRENT\_TASKS\_PER\_PROCESS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_CURRENT\_TASKS\_PER\_PROCESS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_CURRENT_TASKS_PER_PROCESS_REPORT)

    -   ### UUID\_FAVORITE\_TASKS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_FAVORITE\_TASKS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_FAVORITE_TASKS_REPORT)

    -   ### UUID\_HIGH\_PRIORITY\_TASKS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_HIGH\_PRIORITY\_TASKS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_HIGH_PRIORITY_TASKS_REPORT)

    -   ### UUID\_OVERDUE\_TASKS\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_OVERDUE\_TASKS\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_OVERDUE_TASKS_REPORT)

    -   ### UUID\_TASKS\_DUE\_TODAY\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_TASKS\_DUE\_TODAY\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_TASKS_DUE_TODAY_REPORT)

    -   ### UUID\_TASKS\_FOR\_USER\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_TASKS\_FOR\_USER\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_TASKS_FOR_USER_REPORT)

    -   ### UUID\_TASKS\_PER\_PROCESS\_MODEL\_REPORT

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_TASKS\_PER\_PROCESS\_MODEL\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_TASKS_PER_PROCESS_MODEL_REPORT)

    -   ### UUID\_MIGRATION\_FLAGS\_ROOT\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_MIGRATION\_FLAGS\_ROOT\_FOLDER

        UUID for root folder of migration flag objects

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_MIGRATION_FLAGS_ROOT_FOLDER)

    -   ### UUID\_SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS

        UUID for root folder of tempo attachments

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS)

    -   ### UUID\_OPENAPI\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_OPENAPI\_FOLDER

        Folder containing export OpenAPI documents.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_OPENAPI_FOLDER)

    -   ### UUID\_OFFLINE\_RULE\_BUNDLES\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_OFFLINE\_RULE\_BUNDLES\_FOLDER

        UUID of the System Rule Bundles folder

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_OFFLINE_RULE_BUNDLES_FOLDER)

    -   ### UUID\_COPILOT\_FOLDER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_COPILOT\_FOLDER

        Folder containing user-uploaded pdfs converted to SAIL using Co-pilot.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_COPILOT_FOLDER)

    -   ### UUID\_RECORD\_DOCUMENTS\_KNOWLEDGE\_CENTER

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") UUID\_RECORD\_DOCUMENTS\_KNOWLEDGE\_CENTER

        Knowledge Center for record documents

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentConstants.UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER)