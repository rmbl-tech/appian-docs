---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/Container.html
original_path: api/com/appiancorp/suiteapi/content/Container.html
version: "25.3"
title: "Class Container"
page_id: "api/com/appiancorp/suiteapi/content/Container"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class Container

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.content.Content](Content.html "class in com.appiancorp.suiteapi.content")

com.appiancorp.suiteapi.content.Container

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[ContentConstants](ContentConstants.html "interface in com.appiancorp.suiteapi.content")`, `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Community](../knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge")`, `[Folder](Folder.html "class in com.appiancorp.suiteapi.content")`, `[KnowledgeCenter](../knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`

* * *

public abstract class Container extends [Content](Content.html "class in com.appiancorp.suiteapi.content")

This is the abstract class used to represent Content objects that may contain other Content objects.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.content.Container)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.content.[ContentConstants](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

    `[ACT_CREATE](ContentConstants.html#ACT_CREATE), [ACT_DEACTIVATE](ContentConstants.html#ACT_DEACTIVATE), [ACT_DELETE](ContentConstants.html#ACT_DELETE), [AL_ADMIN](ContentConstants.html#AL_ADMIN), [AL_EDITOR](ContentConstants.html#AL_EDITOR), [AL_INVALID_ID](ContentConstants.html#AL_INVALID_ID), [AL_NONE](ContentConstants.html#AL_NONE), [AL_VIEWER](ContentConstants.html#AL_VIEWER), [ALLOCATE_FSID](ContentConstants.html#ALLOCATE_FSID), [ALLOCATE_GLOBAL_PART](ContentConstants.html#ALLOCATE_GLOBAL_PART), [ALLOCATE_PART](ContentConstants.html#ALLOCATE_PART), [APPLICATIONS_ROOT_DESCRIPTION](ContentConstants.html#APPLICATIONS_ROOT_DESCRIPTION), [APPLICATIONS_ROOT_NAME](ContentConstants.html#APPLICATIONS_ROOT_NAME), [CHILDREN](ContentConstants.html#CHILDREN), [COLUMN_ACTION_REQUESTED](ContentConstants.html#COLUMN_ACTION_REQUESTED), [COLUMN_ACTION_REQUESTER](ContentConstants.html#COLUMN_ACTION_REQUESTER), [COLUMN_ATTRIBUTES](ContentConstants.html#COLUMN_ATTRIBUTES), [COLUMN_CHANGES_REQUIRE_APPROVAL](ContentConstants.html#COLUMN_CHANGES_REQUIRE_APPROVAL), [COLUMN_CREATED_TIMESTAMP](ContentConstants.html#COLUMN_CREATED_TIMESTAMP), [COLUMN_CREATOR](ContentConstants.html#COLUMN_CREATOR), [COLUMN_DESCRIPTION](ContentConstants.html#COLUMN_DESCRIPTION), [COLUMN_EXPIRATION_DAYS](ContentConstants.html#COLUMN_EXPIRATION_DAYS), [COLUMN_EXPIRATION_TIMESTAMP](ContentConstants.html#COLUMN_EXPIRATION_TIMESTAMP), [COLUMN_EXTENSION](ContentConstants.html#COLUMN_EXTENSION), [COLUMN_FORUM](ContentConstants.html#COLUMN_FORUM), [COLUMN_FSID](ContentConstants.html#COLUMN_FSID), [COLUMN_FSID_COUNT](ContentConstants.html#COLUMN_FSID_COUNT), [COLUMN_ID](ContentConstants.html#COLUMN_ID), [COLUMN_LOCKED_BY](ContentConstants.html#COLUMN_LOCKED_BY), [COLUMN_LOG](ContentConstants.html#COLUMN_LOG), [COLUMN_LOG_NAME](ContentConstants.html#COLUMN_LOG_NAME), [COLUMN_METADATA_IDS](ContentConstants.html#COLUMN_METADATA_IDS), [COLUMN_NAME](ContentConstants.html#COLUMN_NAME), [COLUMN_NONE](ContentConstants.html#COLUMN_NONE), [COLUMN_NUMBER_OF_VERSIONS](ContentConstants.html#COLUMN_NUMBER_OF_VERSIONS), [COLUMN_PARENT_ID](ContentConstants.html#COLUMN_PARENT_ID), [COLUMN_PARENT_NAME](ContentConstants.html#COLUMN_PARENT_NAME), [COLUMN_PARENT_TYPE](ContentConstants.html#COLUMN_PARENT_TYPE), [COLUMN_PARTITION](ContentConstants.html#COLUMN_PARTITION), [COLUMN_PARTITION_NAME](ContentConstants.html#COLUMN_PARTITION_NAME), [COLUMN_SECURITY](ContentConstants.html#COLUMN_SECURITY), [COLUMN_SIZE](ContentConstants.html#COLUMN_SIZE), [COLUMN_STATE](ContentConstants.html#COLUMN_STATE), [COLUMN_SUBTYPE](ContentConstants.html#COLUMN_SUBTYPE), [COLUMN_TYPE](ContentConstants.html#COLUMN_TYPE), [COLUMN_UPDATED_TIMESTAMP](ContentConstants.html#COLUMN_UPDATED_TIMESTAMP), [COLUMN_UUID](ContentConstants.html#COLUMN_UUID), [COLUMN_VERSION_ID](ContentConstants.html#COLUMN_VERSION_ID), [COLUMN_VERSIONS](ContentConstants.html#COLUMN_VERSIONS), [COLUMN_VISIBILITY](ContentConstants.html#COLUMN_VISIBILITY), [COMMUNITY_ROOT](ContentConstants.html#COMMUNITY_ROOT), [CONTENT_SECURITY_TYPE](ContentConstants.html#CONTENT_SECURITY_TYPE), [CREATION_SECURITY_TYPE](ContentConstants.html#CREATION_SECURITY_TYPE), [FILTER_TYPE_ALL](ContentConstants.html#FILTER_TYPE_ALL), [GC_MOD_DRAFT](ContentConstants.html#GC_MOD_DRAFT), [GC_MOD_LINKS](ContentConstants.html#GC_MOD_LINKS), [GC_MOD_NORMAL](ContentConstants.html#GC_MOD_NORMAL), [GC_MOD_POPULATE_TYPES_OF_CHILDREN](ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN), [GC_VERSIONS_AS_FOLDERS](ContentConstants.html#GC_VERSIONS_AS_FOLDERS), [I18N_PREFIX](ContentConstants.html#I18N_PREFIX), [IMPORT_INVALID_PRIVILEGE](ContentConstants.html#IMPORT_INVALID_PRIVILEGE), [IMPORT_NAME_EXISTS_WITHIN_PARENT](ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_PARENT), [IMPORT_NAME_EXISTS_WITHIN_TYPE](ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_TYPE), [IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT](ContentConstants.html#IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT), [IMPORT_UUID_EXISTS_ELSEWHERE](ContentConstants.html#IMPORT_UUID_EXISTS_ELSEWHERE), [IMPORT_VALID](ContentConstants.html#IMPORT_VALID), [INFINITY](ContentConstants.html#INFINITY), [KM_EXPIRATION_DURATION_CHECK](ContentConstants.html#KM_EXPIRATION_DURATION_CHECK), [KM_SECURITY_COMMUNITY](ContentConstants.html#KM_SECURITY_COMMUNITY), [KM_SECURITY_CONTENT_COMMUNITY](ContentConstants.html#KM_SECURITY_CONTENT_COMMUNITY), [KM_SECURITY_CONTENT_FOLDER](ContentConstants.html#KM_SECURITY_CONTENT_FOLDER), [KM_SECURITY_CONTENT_KC](ContentConstants.html#KM_SECURITY_CONTENT_KC), [KM_SECURITY_FOLDER](ContentConstants.html#KM_SECURITY_FOLDER), [KM_SECURITY_KNOWLEDGE_CENTER](ContentConstants.html#KM_SECURITY_KNOWLEDGE_CENTER), [KNOWLEDGE_ROOT](ContentConstants.html#KNOWLEDGE_ROOT), [KNOWLEDGE_ROOT_SYSTEM_ID](ContentConstants.html#KNOWLEDGE_ROOT_SYSTEM_ID), [MIGRATION_FLAG](ContentConstants.html#MIGRATION_FLAG), [NEGATIVE_INFINITY](ContentConstants.html#NEGATIVE_INFINITY), [NO_CHILDREN](ContentConstants.html#NO_CHILDREN), [NO_EXPIRATION_TIMESTAMP](ContentConstants.html#NO_EXPIRATION_TIMESTAMP), [NO_FORUM](ContentConstants.html#NO_FORUM), [NO_REVIEW](ContentConstants.html#NO_REVIEW), [QUERY_KEYWORDS](ContentConstants.html#QUERY_KEYWORDS), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC](ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME](ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME), [RESTRICTION_ROLE_MAP_ROLES](ContentConstants.html#RESTRICTION_ROLE_MAP_ROLES), [RM_AGGREGATE](ContentConstants.html#RM_AGGREGATE), [RM_EXPLICIT](ContentConstants.html#RM_EXPLICIT), [ROLE_ADMINISTRATORS](ContentConstants.html#ROLE_ADMINISTRATORS), [ROLE_AUTHORS](ContentConstants.html#ROLE_AUTHORS), [ROLE_DENY_ADMINISTRATORS](ContentConstants.html#ROLE_DENY_ADMINISTRATORS), [ROLE_DENY_AUTHORS](ContentConstants.html#ROLE_DENY_AUTHORS), [ROLE_DENY_READERS](ContentConstants.html#ROLE_DENY_READERS), [ROLE_MAP_ROLES](ContentConstants.html#ROLE_MAP_ROLES), [ROLE_READERS](ContentConstants.html#ROLE_READERS), [RULE_ENCODING](ContentConstants.html#RULE_ENCODING), [RULES_ROOT_DESCRIPTION](ContentConstants.html#RULES_ROOT_DESCRIPTION), [RULES_ROOT_NAME](ContentConstants.html#RULES_ROOT_NAME), [RULES_ROOT_SYSTEM_ID](ContentConstants.html#RULES_ROOT_SYSTEM_ID), [SEC_ALL_ADMIN](ContentConstants.html#SEC_ALL_ADMIN), [SEC_ALL_EDITOR](ContentConstants.html#SEC_ALL_EDITOR), [SEC_ALL_VIEWER](ContentConstants.html#SEC_ALL_VIEWER), [SEC_CREATOR_ADMIN](ContentConstants.html#SEC_CREATOR_ADMIN), [SEC_INH_ADMIN](ContentConstants.html#SEC_INH_ADMIN), [SEC_INH_ADMIN_MASK](ContentConstants.html#SEC_INH_ADMIN_MASK), [SEC_INH_ALL](ContentConstants.html#SEC_INH_ALL), [SEC_INH_EDITOR](ContentConstants.html#SEC_INH_EDITOR), [SEC_INH_VIEWER](ContentConstants.html#SEC_INH_VIEWER), [SEC_PUBLIC](ContentConstants.html#SEC_PUBLIC), [SECURITY_MANAGER_CONFIG](ContentConstants.html#SECURITY_MANAGER_CONFIG), [STATE_ACTIVE](ContentConstants.html#STATE_ACTIVE), [STATE_ACTIVE_PENDING_APPROVAL](ContentConstants.html#STATE_ACTIVE_PENDING_APPROVAL), [STATE_ACTIVE_PUBLISHED](ContentConstants.html#STATE_ACTIVE_PUBLISHED), [STATE_ACTIVE_REJECTED](ContentConstants.html#STATE_ACTIVE_REJECTED), [STATE_PENDING_APPROVAL](ContentConstants.html#STATE_PENDING_APPROVAL), [STATE_PUBLISHED](ContentConstants.html#STATE_PUBLISHED), [STATE_REJECTED](ContentConstants.html#STATE_REJECTED), [SUBTYPE_CONNECTED_SYSTEM](ContentConstants.html#SUBTYPE_CONNECTED_SYSTEM), [SUBTYPE_DATA_STORE_CONFIG](ContentConstants.html#SUBTYPE_DATA_STORE_CONFIG), [SUBTYPE_FOLDER_APPLICATIONS](ContentConstants.html#SUBTYPE_FOLDER_APPLICATIONS), [SUBTYPE_FOLDER_CONNECTED_SYSTEMS](ContentConstants.html#SUBTYPE_FOLDER_CONNECTED_SYSTEMS), [SUBTYPE_FOLDER_DATA_STORE_CONFIGS](ContentConstants.html#SUBTYPE_FOLDER_DATA_STORE_CONFIGS), [SUBTYPE_FOLDER_KNOWLEDGE](ContentConstants.html#SUBTYPE_FOLDER_KNOWLEDGE), [SUBTYPE_FOLDER_MIGRATION_FLAGS](ContentConstants.html#SUBTYPE_FOLDER_MIGRATION_FLAGS), [SUBTYPE_FOLDER_RULES](ContentConstants.html#SUBTYPE_FOLDER_RULES), [SUBTYPE_MIGRATION_FLAG](ContentConstants.html#SUBTYPE_MIGRATION_FLAG), [SUBTYPE_RULE_CONSTANT](ContentConstants.html#SUBTYPE_RULE_CONSTANT), [SUBTYPE_RULE_DECISION](ContentConstants.html#SUBTYPE_RULE_DECISION), [SUBTYPE_RULE_DECISION_TABLE](ContentConstants.html#SUBTYPE_RULE_DECISION_TABLE), [SUBTYPE_RULE_FREEFORM](ContentConstants.html#SUBTYPE_RULE_FREEFORM), [SUBTYPE_RULE_INTERFACE](ContentConstants.html#SUBTYPE_RULE_INTERFACE), [SUBTYPE_RULE_OUTBOUND_INTEGRATION](ContentConstants.html#SUBTYPE_RULE_OUTBOUND_INTEGRATION), [SUBTYPE_RULE_QUERY](ContentConstants.html#SUBTYPE_RULE_QUERY), [SYSADMIN_GRP](ContentConstants.html#SYSADMIN_GRP), [SYSADMIN_UTYPE](ContentConstants.html#SYSADMIN_UTYPE), [SYSTEM_ASYNC_INSPECT_FOLDER_NAME](ContentConstants.html#SYSTEM_ASYNC_INSPECT_FOLDER_NAME), [SYSTEM_COPILOT_FOLDER_NAME](ContentConstants.html#SYSTEM_COPILOT_FOLDER_NAME), [SYSTEM_FOLDER_COVER_PHOTOS_NAME](ContentConstants.html#SYSTEM_FOLDER_COVER_PHOTOS_NAME), [SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME](ContentConstants.html#SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME), [SYSTEM_FOLDER_RECORD_TYPES_NAME](ContentConstants.html#SYSTEM_FOLDER_RECORD_TYPES_NAME), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION](ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME](ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME), [SYSTEM_IX_FOLDER_NAME](ContentConstants.html#SYSTEM_IX_FOLDER_NAME), [SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME](ContentConstants.html#SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME), [SYSTEM_OPENAPI_FOLDER_NAME](ContentConstants.html#SYSTEM_OPENAPI_FOLDER_NAME), [SYSTEM_PACKAGES_FOLDER_NAME](ContentConstants.html#SYSTEM_PACKAGES_FOLDER_NAME), [SYSTEM_RECORD_TYPE_NAME_PREFIX](ContentConstants.html#SYSTEM_RECORD_TYPE_NAME_PREFIX), [SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION](ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_DESIGNER_ROOT_NAME](ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_NAME), [SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION](ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_INTERNAL_ROOT_NAME](ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_NAME), [TYPE_ALL](ContentConstants.html#TYPE_ALL), [TYPE_ANY_KC](ContentConstants.html#TYPE_ANY_KC), [TYPE_APPLICATION](ContentConstants.html#TYPE_APPLICATION), [TYPE_COMMUNITY](ContentConstants.html#TYPE_COMMUNITY), [TYPE_COMMUNITY_KC](ContentConstants.html#TYPE_COMMUNITY_KC), [TYPE_CONTAINER](ContentConstants.html#TYPE_CONTAINER), [TYPE_CONTENT](ContentConstants.html#TYPE_CONTENT), [TYPE_CUSTOM](ContentConstants.html#TYPE_CUSTOM), [TYPE_DOCUMENT](ContentConstants.html#TYPE_DOCUMENT), [TYPE_FOLDER](ContentConstants.html#TYPE_FOLDER), [TYPE_IGNORE](ContentConstants.html#TYPE_IGNORE), [TYPE_NON_CONTAINER](ContentConstants.html#TYPE_NON_CONTAINER), [TYPE_NON_DOCUMENT](ContentConstants.html#TYPE_NON_DOCUMENT), [TYPE_PERSONAL_KC](ContentConstants.html#TYPE_PERSONAL_KC), [TYPE_RULE](ContentConstants.html#TYPE_RULE), [UNIQUE_FOR_ALL](ContentConstants.html#UNIQUE_FOR_ALL), [UNIQUE_FOR_PARENT](ContentConstants.html#UNIQUE_FOR_PARENT), [UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION](ContentConstants.html#UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION), [UNIQUE_FOR_TYPE](ContentConstants.html#UNIQUE_FOR_TYPE), [UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION](ContentConstants.html#UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION), [UNIQUE_FOR_TYPE_LATEST_VERSION](ContentConstants.html#UNIQUE_FOR_TYPE_LATEST_VERSION), [UNIQUE_NONE](ContentConstants.html#UNIQUE_NONE), [UUID_ACTIVE_PROCESSES_REPORT](ContentConstants.html#UUID_ACTIVE_PROCESSES_REPORT), [UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT](ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT), [UUID_ACTIVE_TASKS_GROUP_REPORT](ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_REPORT), [UUID_ACTIVE_TASKS_REPORT](ContentConstants.html#UUID_ACTIVE_TASKS_REPORT), [UUID_ALL_PROCESS_MODELS_REPORT](ContentConstants.html#UUID_ALL_PROCESS_MODELS_REPORT), [UUID_ALL_PROCESSES_REPORT](ContentConstants.html#UUID_ALL_PROCESSES_REPORT), [UUID_ALL_TASKS_REPORT](ContentConstants.html#UUID_ALL_TASKS_REPORT), [UUID_APPLICATIONS_HOME](ContentConstants.html#UUID_APPLICATIONS_HOME), [UUID_APPLICATIONS_ROOT](ContentConstants.html#UUID_APPLICATIONS_ROOT), [UUID_ASYNC_INSPECT_FOLDER](ContentConstants.html#UUID_ASYNC_INSPECT_FOLDER), [UUID_CANCELED_PROCESSES_REPORT](ContentConstants.html#UUID_CANCELED_PROCESSES_REPORT), [UUID_COMMUNITY_ROOT](ContentConstants.html#UUID_COMMUNITY_ROOT), [UUID_COMPLETED_PROCESSES_REPORT](ContentConstants.html#UUID_COMPLETED_PROCESSES_REPORT), [UUID_COMPLETED_TASKS_REPORT](ContentConstants.html#UUID_COMPLETED_TASKS_REPORT), [UUID_COPILOT_FOLDER](ContentConstants.html#UUID_COPILOT_FOLDER), [UUID_CURRENT_TASKS_PER_PROCESS_REPORT](ContentConstants.html#UUID_CURRENT_TASKS_PER_PROCESS_REPORT), [UUID_DATA_STORE_CONFIGS_ROOT_FOLDER](ContentConstants.html#UUID_DATA_STORE_CONFIGS_ROOT_FOLDER), [UUID_DEFAULT_COMMUNITY](ContentConstants.html#UUID_DEFAULT_COMMUNITY), [UUID_EMAIL_FOOTER_TEMPLATE](ContentConstants.html#UUID_EMAIL_FOOTER_TEMPLATE), [UUID_EMAIL_HEADER_TEMPLATE](ContentConstants.html#UUID_EMAIL_HEADER_TEMPLATE), [UUID_EMAIL_TEMPLATE_FOLDER](ContentConstants.html#UUID_EMAIL_TEMPLATE_FOLDER), [UUID_FAVORITE_PROCESS_MODELS_REPORT](ContentConstants.html#UUID_FAVORITE_PROCESS_MODELS_REPORT), [UUID_FAVORITE_PROCESSES_REPORT](ContentConstants.html#UUID_FAVORITE_PROCESSES_REPORT), [UUID_FAVORITE_TASKS_REPORT](ContentConstants.html#UUID_FAVORITE_TASKS_REPORT), [UUID_HIGH_PRIORITY_TASKS_REPORT](ContentConstants.html#UUID_HIGH_PRIORITY_TASKS_REPORT), [UUID_IX_FOLDER](ContentConstants.html#UUID_IX_FOLDER), [UUID_LEADER_MESSAGE_PICTURES_FOLDER](ContentConstants.html#UUID_LEADER_MESSAGE_PICTURES_FOLDER), [UUID_MIGRATION_FLAGS_ROOT_FOLDER](ContentConstants.html#UUID_MIGRATION_FLAGS_ROOT_FOLDER), [UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT](ContentConstants.html#UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT), [UUID_NAVIGATION_CONFIG](ContentConstants.html#UUID_NAVIGATION_CONFIG), [UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT), [UUID_NODE_STATS_PER_PROCESS_REPORT](ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_REPORT), [UUID_OBJECT_TEMPLATES_FOLDER](ContentConstants.html#UUID_OBJECT_TEMPLATES_FOLDER), [UUID_OFFLINE_RULE_BUNDLES_FOLDER](ContentConstants.html#UUID_OFFLINE_RULE_BUNDLES_FOLDER), [UUID_OPENAPI_FOLDER](ContentConstants.html#UUID_OPENAPI_FOLDER), [UUID_OVERDUE_TASKS_REPORT](ContentConstants.html#UUID_OVERDUE_TASKS_REPORT), [UUID_PACKAGES_FOLDER](ContentConstants.html#UUID_PACKAGES_FOLDER), [UUID_PAUSED_PROCESSES_REPORT](ContentConstants.html#UUID_PAUSED_PROCESSES_REPORT), [UUID_PERFORMANCE_INDICATOR_GREEN](ContentConstants.html#UUID_PERFORMANCE_INDICATOR_GREEN), [UUID_PERFORMANCE_INDICATOR_RED](ContentConstants.html#UUID_PERFORMANCE_INDICATOR_RED), [UUID_PERFORMANCE_INDICATOR_YELLOW](ContentConstants.html#UUID_PERFORMANCE_INDICATOR_YELLOW), [UUID_PRIORITY_ICONS_FOLDER](ContentConstants.html#UUID_PRIORITY_ICONS_FOLDER), [UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT), [UUID_PROCESS_INSTANCES_PER_MODEL_REPORT](ContentConstants.html#UUID_PROCESS_INSTANCES_PER_MODEL_REPORT), [UUID_PROCESS_MODEL_REPORT_FOLDER](ContentConstants.html#UUID_PROCESS_MODEL_REPORT_FOLDER), [UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER](ContentConstants.html#UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER), [UUID_PROCESS_REPORTS_FOLDER](ContentConstants.html#UUID_PROCESS_REPORTS_FOLDER), [UUID_PROCESSES_STARTED_BY_ME_REPORT](ContentConstants.html#UUID_PROCESSES_STARTED_BY_ME_REPORT), [UUID_PROCESSES_WITH_PROBLEMS_REPORT](ContentConstants.html#UUID_PROCESSES_WITH_PROBLEMS_REPORT), [UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER](ContentConstants.html#UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER), [UUID_RULES_ROOT_FOLDER](ContentConstants.html#UUID_RULES_ROOT_FOLDER), [UUID_RUNNING_PROCESSES_PER_MODEL_REPORT](ContentConstants.html#UUID_RUNNING_PROCESSES_PER_MODEL_REPORT), [UUID_STATISTICS_ACROSS_PROCESSES_REPORT](ContentConstants.html#UUID_STATISTICS_ACROSS_PROCESSES_REPORT), [UUID_SUBPROCESSES_PER_PROCESS_REPORT](ContentConstants.html#UUID_SUBPROCESSES_PER_PROCESS_REPORT), [UUID_SUMMARY_REPORTS_FOLDER](ContentConstants.html#UUID_SUMMARY_REPORTS_FOLDER), [UUID_SYSTEM_DOC_PRIORITY_HIGH](ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_HIGH), [UUID_SYSTEM_DOC_PRIORITY_LOW](ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_LOW), [UUID_SYSTEM_DOC_PRIORITY_NORMAL](ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_NORMAL), [UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS](ContentConstants.html#UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS), [UUID_SYSTEM_KNOWLEDGE_CENTER](ContentConstants.html#UUID_SYSTEM_KNOWLEDGE_CENTER), [UUID_SYSTEM_RECORD_TYPES_FOLDER](ContentConstants.html#UUID_SYSTEM_RECORD_TYPES_FOLDER), [UUID_SYSTEM_REPORTS_FOLDER](ContentConstants.html#UUID_SYSTEM_REPORTS_FOLDER), [UUID_SYSTEM_SYSRULES_DESIGNER_ROOT](ContentConstants.html#UUID_SYSTEM_SYSRULES_DESIGNER_ROOT), [UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER), [UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING), [UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS), [UUID_SYSTEM_SYSRULES_FOLDER_HOME](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_HOME), [UUID_SYSTEM_SYSRULES_INTERNAL_ROOT](ContentConstants.html#UUID_SYSTEM_SYSRULES_INTERNAL_ROOT), [UUID_TASK_REPORTS_FOLDER](ContentConstants.html#UUID_TASK_REPORTS_FOLDER), [UUID_TASKS_DUE_TODAY_REPORT](ContentConstants.html#UUID_TASKS_DUE_TODAY_REPORT), [UUID_TASKS_FOR_USER_REPORT](ContentConstants.html#UUID_TASKS_FOR_USER_REPORT), [UUID_TASKS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_TASKS_PER_PROCESS_MODEL_REPORT), [UUID_TEMPORARY_DOCS_FOLDER](ContentConstants.html#UUID_TEMPORARY_DOCS_FOLDER), [UUID_TEMPORARY_DOCS_KC](ContentConstants.html#UUID_TEMPORARY_DOCS_KC), [UUID_USER_COVER_PHOTOS_FOLDER](ContentConstants.html#UUID_USER_COVER_PHOTOS_FOLDER), [UUID_USER_PICTURES_FOLDER](ContentConstants.html#UUID_USER_PICTURES_FOLDER), [UUID_USER_THUMBNAILS_FOLDER](ContentConstants.html#UUID_USER_THUMBNAILS_FOLDER), [UUID_VERSIONS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_VERSIONS_PER_PROCESS_MODEL_REPORT), [VERSION_CURRENT](ContentConstants.html#VERSION_CURRENT), [VERSION_ORIGINAL](ContentConstants.html#VERSION_ORIGINAL), [VIS_ADVERTISE](ContentConstants.html#VIS_ADVERTISE), [VIS_DEFAULT](ContentConstants.html#VIS_DEFAULT), [VIS_HIERARCHY](ContentConstants.html#VIS_HIERARCHY), [VIS_INDEXABLE](ContentConstants.html#VIS_INDEXABLE), [VIS_QUOTA](ContentConstants.html#VIS_QUOTA), [VIS_SEARCHABLE](ContentConstants.html#VIS_SEARCHABLE), [VIS_SYSTEM](ContentConstants.html#VIS_SYSTEM), [VIS_UNLOGGED](ContentConstants.html#VIS_UNLOGGED)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[Container](#%3Cinit%3E\(\))()`

    Default constructor.

    `protected`

    `[Container](#%3Cinit%3E\(int\))(int typeMask_)`

    Constructs a container of the given type.

    `protected`

    `[Container](#%3Cinit%3E\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typeMask_)`

    Constructs a container of the given type.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getFsidCount](#getFsidCount\(\))()`

    Get the file system id count.

    `void`

    `[setFsidCount](#setFsidCount\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") fsidCount_)`

    Set the file system id count.

    ### Methods inherited from class com.appiancorp.suiteapi.content.[Content](Content.html "class in com.appiancorp.suiteapi.content")

    `[addSecurity](Content.html#addSecurity\(int\)), [addSecurity](Content.html#addSecurity\(java.lang.Integer\)), [addVisibility](Content.html#addVisibility\(int\)), [addVisibility](Content.html#addVisibility\(java.lang.Integer\)), [fillInAppianTypes](Content.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [getActionRequested](Content.html#getActionRequested\(\)), [getActionRequester](Content.html#getActionRequester\(\)), [getAttributes](Content.html#getAttributes\(\)), [getChangesRequireApproval](Content.html#getChangesRequireApproval\(\)), [getCreatedTimestamp](Content.html#getCreatedTimestamp\(\)), [getCreator](Content.html#getCreator\(\)), [getCurrentContentId](Content.html#getCurrentContentId\(\)), [getDepth](Content.html#getDepth\(\)), [getDescription](Content.html#getDescription\(\)), [getDisplayName](Content.html#getDisplayName\(\)), [getExpirationTimestamp](Content.html#getExpirationTimestamp\(\)), [getFavorite](Content.html#getFavorite\(\)), [getForum](Content.html#getForum\(\)), [getLatestVersionId](Content.html#getLatestVersionId\(\)), [getLockedAt](Content.html#getLockedAt\(\)), [getLockedBy](Content.html#getLockedBy\(\)), [getLockedByUsername](Content.html#getLockedByUsername\(\)), [getLog](Content.html#getLog\(\)), [getLogName](Content.html#getLogName\(\)), [getNumberOfVersions](Content.html#getNumberOfVersions\(\)), [getOriginalContentId](Content.html#getOriginalContentId\(\)), [getParent](Content.html#getParent\(\)), [getParentName](Content.html#getParentName\(\)), [getParentType](Content.html#getParentType\(\)), [getPartition](Content.html#getPartition\(\)), [getPartitionName](Content.html#getPartitionName\(\)), [getPendingApprovalCount](Content.html#getPendingApprovalCount\(\)), [getRoleSet](Content.html#getRoleSet\(\)), [getSecurity](Content.html#getSecurity\(\)), [getSize](Content.html#getSize\(\)), [getState](Content.html#getState\(\)), [getSubtype](Content.html#getSubtype\(\)), [getType](Content.html#getType\(\)), [getTypesOfChildren](Content.html#getTypesOfChildren\(\)), [getUpdatedTimestamp](Content.html#getUpdatedTimestamp\(\)), [getUsersPendingAccess](Content.html#getUsersPendingAccess\(\)), [getUuid](Content.html#getUuid\(\)), [getVersionId](Content.html#getVersionId\(\)), [getVersions](Content.html#getVersions\(\)), [getVisibility](Content.html#getVisibility\(\)), [hasChildrenOfType](Content.html#hasChildrenOfType\(int\)), [removeSecurity](Content.html#removeSecurity\(int\)), [removeSecurity](Content.html#removeSecurity\(java.lang.Integer\)), [removeVisibility](Content.html#removeVisibility\(int\)), [removeVisibility](Content.html#removeVisibility\(java.lang.Integer\)), [securityContains](Content.html#securityContains\(int\)), [securityContains](Content.html#securityContains\(java.lang.Integer\)), [setActionRequested](Content.html#setActionRequested\(java.lang.Integer\)), [setActionRequester](Content.html#setActionRequester\(java.lang.String\)), [setAttributes](Content.html#setAttributes\(java.util.Map\)), [setChangesRequireApproval](Content.html#setChangesRequireApproval\(java.lang.Boolean\)), [setCreatedTimestamp](Content.html#setCreatedTimestamp\(java.sql.Timestamp\)), [setCreator](Content.html#setCreator\(java.lang.String\)), [setCurrentContentId](Content.html#setCurrentContentId\(java.lang.Long\)), [setDepth](Content.html#setDepth\(java.lang.Integer\)), [setDescription](Content.html#setDescription\(java.lang.String\)), [setExpirationTimestamp](Content.html#setExpirationTimestamp\(java.sql.Timestamp\)), [setFavorite](Content.html#setFavorite\(java.lang.Boolean\)), [setForum](Content.html#setForum\(java.lang.Long\)), [setLatestVersionId](Content.html#setLatestVersionId\(java.lang.Integer\)), [setLockedAt](Content.html#setLockedAt\(java.sql.Timestamp\)), [setLockedBy](Content.html#setLockedBy\(java.lang.String\)), [setLockedByUsername](Content.html#setLockedByUsername\(java.lang.String\)), [setLog](Content.html#setLog\(java.lang.Long\)), [setLogName](Content.html#setLogName\(java.lang.String\)), [setNumberOfVersions](Content.html#setNumberOfVersions\(java.lang.Long\)), [setOriginalContentId](Content.html#setOriginalContentId\(java.lang.Long\)), [setParent](Content.html#setParent\(java.lang.Long\)), [setParentName](Content.html#setParentName\(java.lang.String\)), [setParentType](Content.html#setParentType\(java.lang.Integer\)), [setPartition](Content.html#setPartition\(java.lang.Integer\)), [setPartitionName](Content.html#setPartitionName\(java.lang.String\)), [setPendingApprovalCount](Content.html#setPendingApprovalCount\(java.lang.Integer\)), [setRoleSet](Content.html#setRoleSet\(com.appiancorp.suiteapi.content.ContentRoleSet\)), [setSecurity](Content.html#setSecurity\(int\)), [setSecurity](Content.html#setSecurity\(java.lang.Integer\)), [setSize](Content.html#setSize\(java.lang.Integer\)), [setState](Content.html#setState\(java.lang.Integer\)), [setSubtype](Content.html#setSubtype\(int\)), [setSubtype](Content.html#setSubtype\(java.lang.Integer\)), [setType](Content.html#setType\(java.lang.Integer\)), [setTypesOfChildren](Content.html#setTypesOfChildren\(java.lang.Integer\)), [setUpdatedTimestamp](Content.html#setUpdatedTimestamp\(java.sql.Timestamp\)), [setUsersPendingAccess](Content.html#setUsersPendingAccess\(java.lang.String%5B%5D\)), [setUuid](Content.html#setUuid\(java.lang.String\)), [setVersionId](Content.html#setVersionId\(java.lang.Integer\)), [setVersions](Content.html#setVersions\(java.lang.Long%5B%5D\)), [setVisibility](Content.html#setVisibility\(int\)), [setVisibility](Content.html#setVisibility\(java.lang.Integer\)), [toString](Content.html#toString\(\)), [visibilityContains](Content.html#visibilityContains\(int\)), [visibilityContains](Content.html#visibilityContains\(java.lang.Integer\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Container

        public Container()

        Default constructor.

    -   ### Container

        protected Container(int typeMask\_)

        Constructs a container of the given type.

        Parameters:

        `typeMask_` - a content type

    -   ### Container

        protected Container([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typeMask\_)

        Constructs a container of the given type.

        Parameters:

        `typeMask_` - a content type

-   ## Method Details

    -   ### getFsidCount

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getFsidCount()

        Get the file system id count.

        Returns:

        the file system id count

        See Also:

        -   [`setFsidCount(Integer)`](#setFsidCount\(java.lang.Integer\))

    -   ### setFsidCount

        public void setFsidCount([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") fsidCount\_)

        Set the file system id count.

        Parameters:

        `fsidCount_` - the file system id count

        See Also:

        -   [`getFsidCount()`](#getFsidCount\(\))