---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/knowledge/Document.html
original_path: api/com/appiancorp/suiteapi/knowledge/Document.html
version: "25.3"
title: "Class Document"
page_id: "api/com/appiancorp/suiteapi/knowledge/Document"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.knowledge](package-summary.html)

# Class Document

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.content.Content](../content/Content.html "class in com.appiancorp.suiteapi.content")

com.appiancorp.suiteapi.knowledge.Document

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[ContentConstants](../content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")`, `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@DocumentDataType](DocumentDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge") public class Document extends [Content](../content/Content.html "class in com.appiancorp.suiteapi.content")

Represents a document in the Knowledge application. Corresponds with [`Document`](../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration") in the old collaboration API.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.knowledge.Document)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[sizeInKB$TRANSIENT](#sizeInKB$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.content.[ContentConstants](../content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

    `[ACT_CREATE](../content/ContentConstants.html#ACT_CREATE), [ACT_DEACTIVATE](../content/ContentConstants.html#ACT_DEACTIVATE), [ACT_DELETE](../content/ContentConstants.html#ACT_DELETE), [AL_ADMIN](../content/ContentConstants.html#AL_ADMIN), [AL_EDITOR](../content/ContentConstants.html#AL_EDITOR), [AL_INVALID_ID](../content/ContentConstants.html#AL_INVALID_ID), [AL_NONE](../content/ContentConstants.html#AL_NONE), [AL_VIEWER](../content/ContentConstants.html#AL_VIEWER), [ALLOCATE_FSID](../content/ContentConstants.html#ALLOCATE_FSID), [ALLOCATE_GLOBAL_PART](../content/ContentConstants.html#ALLOCATE_GLOBAL_PART), [ALLOCATE_PART](../content/ContentConstants.html#ALLOCATE_PART), [APPLICATIONS_ROOT_DESCRIPTION](../content/ContentConstants.html#APPLICATIONS_ROOT_DESCRIPTION), [APPLICATIONS_ROOT_NAME](../content/ContentConstants.html#APPLICATIONS_ROOT_NAME), [CHILDREN](../content/ContentConstants.html#CHILDREN), [COLUMN_ACTION_REQUESTED](../content/ContentConstants.html#COLUMN_ACTION_REQUESTED), [COLUMN_ACTION_REQUESTER](../content/ContentConstants.html#COLUMN_ACTION_REQUESTER), [COLUMN_ATTRIBUTES](../content/ContentConstants.html#COLUMN_ATTRIBUTES), [COLUMN_CHANGES_REQUIRE_APPROVAL](../content/ContentConstants.html#COLUMN_CHANGES_REQUIRE_APPROVAL), [COLUMN_CREATED_TIMESTAMP](../content/ContentConstants.html#COLUMN_CREATED_TIMESTAMP), [COLUMN_CREATOR](../content/ContentConstants.html#COLUMN_CREATOR), [COLUMN_DESCRIPTION](../content/ContentConstants.html#COLUMN_DESCRIPTION), [COLUMN_EXPIRATION_DAYS](../content/ContentConstants.html#COLUMN_EXPIRATION_DAYS), [COLUMN_EXPIRATION_TIMESTAMP](../content/ContentConstants.html#COLUMN_EXPIRATION_TIMESTAMP), [COLUMN_EXTENSION](../content/ContentConstants.html#COLUMN_EXTENSION), [COLUMN_FORUM](../content/ContentConstants.html#COLUMN_FORUM), [COLUMN_FSID](../content/ContentConstants.html#COLUMN_FSID), [COLUMN_FSID_COUNT](../content/ContentConstants.html#COLUMN_FSID_COUNT), [COLUMN_ID](../content/ContentConstants.html#COLUMN_ID), [COLUMN_LOCKED_BY](../content/ContentConstants.html#COLUMN_LOCKED_BY), [COLUMN_LOG](../content/ContentConstants.html#COLUMN_LOG), [COLUMN_LOG_NAME](../content/ContentConstants.html#COLUMN_LOG_NAME), [COLUMN_METADATA_IDS](../content/ContentConstants.html#COLUMN_METADATA_IDS), [COLUMN_NAME](../content/ContentConstants.html#COLUMN_NAME), [COLUMN_NONE](../content/ContentConstants.html#COLUMN_NONE), [COLUMN_NUMBER_OF_VERSIONS](../content/ContentConstants.html#COLUMN_NUMBER_OF_VERSIONS), [COLUMN_PARENT_ID](../content/ContentConstants.html#COLUMN_PARENT_ID), [COLUMN_PARENT_NAME](../content/ContentConstants.html#COLUMN_PARENT_NAME), [COLUMN_PARENT_TYPE](../content/ContentConstants.html#COLUMN_PARENT_TYPE), [COLUMN_PARTITION](../content/ContentConstants.html#COLUMN_PARTITION), [COLUMN_PARTITION_NAME](../content/ContentConstants.html#COLUMN_PARTITION_NAME), [COLUMN_SECURITY](../content/ContentConstants.html#COLUMN_SECURITY), [COLUMN_SIZE](../content/ContentConstants.html#COLUMN_SIZE), [COLUMN_STATE](../content/ContentConstants.html#COLUMN_STATE), [COLUMN_SUBTYPE](../content/ContentConstants.html#COLUMN_SUBTYPE), [COLUMN_TYPE](../content/ContentConstants.html#COLUMN_TYPE), [COLUMN_UPDATED_TIMESTAMP](../content/ContentConstants.html#COLUMN_UPDATED_TIMESTAMP), [COLUMN_UUID](../content/ContentConstants.html#COLUMN_UUID), [COLUMN_VERSION_ID](../content/ContentConstants.html#COLUMN_VERSION_ID), [COLUMN_VERSIONS](../content/ContentConstants.html#COLUMN_VERSIONS), [COLUMN_VISIBILITY](../content/ContentConstants.html#COLUMN_VISIBILITY), [COMMUNITY_ROOT](../content/ContentConstants.html#COMMUNITY_ROOT), [CONTENT_SECURITY_TYPE](../content/ContentConstants.html#CONTENT_SECURITY_TYPE), [CREATION_SECURITY_TYPE](../content/ContentConstants.html#CREATION_SECURITY_TYPE), [FILTER_TYPE_ALL](../content/ContentConstants.html#FILTER_TYPE_ALL), [GC_MOD_DRAFT](../content/ContentConstants.html#GC_MOD_DRAFT), [GC_MOD_LINKS](../content/ContentConstants.html#GC_MOD_LINKS), [GC_MOD_NORMAL](../content/ContentConstants.html#GC_MOD_NORMAL), [GC_MOD_POPULATE_TYPES_OF_CHILDREN](../content/ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN), [GC_VERSIONS_AS_FOLDERS](../content/ContentConstants.html#GC_VERSIONS_AS_FOLDERS), [I18N_PREFIX](../content/ContentConstants.html#I18N_PREFIX), [IMPORT_INVALID_PRIVILEGE](../content/ContentConstants.html#IMPORT_INVALID_PRIVILEGE), [IMPORT_NAME_EXISTS_WITHIN_PARENT](../content/ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_PARENT), [IMPORT_NAME_EXISTS_WITHIN_TYPE](../content/ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_TYPE), [IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT](../content/ContentConstants.html#IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT), [IMPORT_UUID_EXISTS_ELSEWHERE](../content/ContentConstants.html#IMPORT_UUID_EXISTS_ELSEWHERE), [IMPORT_VALID](../content/ContentConstants.html#IMPORT_VALID), [INFINITY](../content/ContentConstants.html#INFINITY), [KM_EXPIRATION_DURATION_CHECK](../content/ContentConstants.html#KM_EXPIRATION_DURATION_CHECK), [KM_SECURITY_COMMUNITY](../content/ContentConstants.html#KM_SECURITY_COMMUNITY), [KM_SECURITY_CONTENT_COMMUNITY](../content/ContentConstants.html#KM_SECURITY_CONTENT_COMMUNITY), [KM_SECURITY_CONTENT_FOLDER](../content/ContentConstants.html#KM_SECURITY_CONTENT_FOLDER), [KM_SECURITY_CONTENT_KC](../content/ContentConstants.html#KM_SECURITY_CONTENT_KC), [KM_SECURITY_FOLDER](../content/ContentConstants.html#KM_SECURITY_FOLDER), [KM_SECURITY_KNOWLEDGE_CENTER](../content/ContentConstants.html#KM_SECURITY_KNOWLEDGE_CENTER), [KNOWLEDGE_ROOT](../content/ContentConstants.html#KNOWLEDGE_ROOT), [KNOWLEDGE_ROOT_SYSTEM_ID](../content/ContentConstants.html#KNOWLEDGE_ROOT_SYSTEM_ID), [MIGRATION_FLAG](../content/ContentConstants.html#MIGRATION_FLAG), [NEGATIVE_INFINITY](../content/ContentConstants.html#NEGATIVE_INFINITY), [NO_CHILDREN](../content/ContentConstants.html#NO_CHILDREN), [NO_EXPIRATION_TIMESTAMP](../content/ContentConstants.html#NO_EXPIRATION_TIMESTAMP), [NO_FORUM](../content/ContentConstants.html#NO_FORUM), [NO_REVIEW](../content/ContentConstants.html#NO_REVIEW), [QUERY_KEYWORDS](../content/ContentConstants.html#QUERY_KEYWORDS), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC](../content/ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME](../content/ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME), [RESTRICTION_ROLE_MAP_ROLES](../content/ContentConstants.html#RESTRICTION_ROLE_MAP_ROLES), [RM_AGGREGATE](../content/ContentConstants.html#RM_AGGREGATE), [RM_EXPLICIT](../content/ContentConstants.html#RM_EXPLICIT), [ROLE_ADMINISTRATORS](../content/ContentConstants.html#ROLE_ADMINISTRATORS), [ROLE_AUTHORS](../content/ContentConstants.html#ROLE_AUTHORS), [ROLE_DENY_ADMINISTRATORS](../content/ContentConstants.html#ROLE_DENY_ADMINISTRATORS), [ROLE_DENY_AUTHORS](../content/ContentConstants.html#ROLE_DENY_AUTHORS), [ROLE_DENY_READERS](../content/ContentConstants.html#ROLE_DENY_READERS), [ROLE_MAP_ROLES](../content/ContentConstants.html#ROLE_MAP_ROLES), [ROLE_READERS](../content/ContentConstants.html#ROLE_READERS), [RULE_ENCODING](../content/ContentConstants.html#RULE_ENCODING), [RULES_ROOT_DESCRIPTION](../content/ContentConstants.html#RULES_ROOT_DESCRIPTION), [RULES_ROOT_NAME](../content/ContentConstants.html#RULES_ROOT_NAME), [RULES_ROOT_SYSTEM_ID](../content/ContentConstants.html#RULES_ROOT_SYSTEM_ID), [SEC_ALL_ADMIN](../content/ContentConstants.html#SEC_ALL_ADMIN), [SEC_ALL_EDITOR](../content/ContentConstants.html#SEC_ALL_EDITOR), [SEC_ALL_VIEWER](../content/ContentConstants.html#SEC_ALL_VIEWER), [SEC_CREATOR_ADMIN](../content/ContentConstants.html#SEC_CREATOR_ADMIN), [SEC_INH_ADMIN](../content/ContentConstants.html#SEC_INH_ADMIN), [SEC_INH_ADMIN_MASK](../content/ContentConstants.html#SEC_INH_ADMIN_MASK), [SEC_INH_ALL](../content/ContentConstants.html#SEC_INH_ALL), [SEC_INH_EDITOR](../content/ContentConstants.html#SEC_INH_EDITOR), [SEC_INH_VIEWER](../content/ContentConstants.html#SEC_INH_VIEWER), [SEC_PUBLIC](../content/ContentConstants.html#SEC_PUBLIC), [SECURITY_MANAGER_CONFIG](../content/ContentConstants.html#SECURITY_MANAGER_CONFIG), [STATE_ACTIVE](../content/ContentConstants.html#STATE_ACTIVE), [STATE_ACTIVE_PENDING_APPROVAL](../content/ContentConstants.html#STATE_ACTIVE_PENDING_APPROVAL), [STATE_ACTIVE_PUBLISHED](../content/ContentConstants.html#STATE_ACTIVE_PUBLISHED), [STATE_ACTIVE_REJECTED](../content/ContentConstants.html#STATE_ACTIVE_REJECTED), [STATE_PENDING_APPROVAL](../content/ContentConstants.html#STATE_PENDING_APPROVAL), [STATE_PUBLISHED](../content/ContentConstants.html#STATE_PUBLISHED), [STATE_REJECTED](../content/ContentConstants.html#STATE_REJECTED), [SUBTYPE_CONNECTED_SYSTEM](../content/ContentConstants.html#SUBTYPE_CONNECTED_SYSTEM), [SUBTYPE_DATA_STORE_CONFIG](../content/ContentConstants.html#SUBTYPE_DATA_STORE_CONFIG), [SUBTYPE_FOLDER_APPLICATIONS](../content/ContentConstants.html#SUBTYPE_FOLDER_APPLICATIONS), [SUBTYPE_FOLDER_CONNECTED_SYSTEMS](../content/ContentConstants.html#SUBTYPE_FOLDER_CONNECTED_SYSTEMS), [SUBTYPE_FOLDER_DATA_STORE_CONFIGS](../content/ContentConstants.html#SUBTYPE_FOLDER_DATA_STORE_CONFIGS), [SUBTYPE_FOLDER_KNOWLEDGE](../content/ContentConstants.html#SUBTYPE_FOLDER_KNOWLEDGE), [SUBTYPE_FOLDER_MIGRATION_FLAGS](../content/ContentConstants.html#SUBTYPE_FOLDER_MIGRATION_FLAGS), [SUBTYPE_FOLDER_RULES](../content/ContentConstants.html#SUBTYPE_FOLDER_RULES), [SUBTYPE_MIGRATION_FLAG](../content/ContentConstants.html#SUBTYPE_MIGRATION_FLAG), [SUBTYPE_RULE_CONSTANT](../content/ContentConstants.html#SUBTYPE_RULE_CONSTANT), [SUBTYPE_RULE_DECISION](../content/ContentConstants.html#SUBTYPE_RULE_DECISION), [SUBTYPE_RULE_DECISION_TABLE](../content/ContentConstants.html#SUBTYPE_RULE_DECISION_TABLE), [SUBTYPE_RULE_FREEFORM](../content/ContentConstants.html#SUBTYPE_RULE_FREEFORM), [SUBTYPE_RULE_INTERFACE](../content/ContentConstants.html#SUBTYPE_RULE_INTERFACE), [SUBTYPE_RULE_OUTBOUND_INTEGRATION](../content/ContentConstants.html#SUBTYPE_RULE_OUTBOUND_INTEGRATION), [SUBTYPE_RULE_QUERY](../content/ContentConstants.html#SUBTYPE_RULE_QUERY), [SYSADMIN_GRP](../content/ContentConstants.html#SYSADMIN_GRP), [SYSADMIN_UTYPE](../content/ContentConstants.html#SYSADMIN_UTYPE), [SYSTEM_ASYNC_INSPECT_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_ASYNC_INSPECT_FOLDER_NAME), [SYSTEM_COPILOT_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_COPILOT_FOLDER_NAME), [SYSTEM_FOLDER_COVER_PHOTOS_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_COVER_PHOTOS_NAME), [SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME), [SYSTEM_FOLDER_RECORD_TYPES_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_RECORD_TYPES_NAME), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION](../content/ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME), [SYSTEM_IX_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_IX_FOLDER_NAME), [SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME), [SYSTEM_OPENAPI_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_OPENAPI_FOLDER_NAME), [SYSTEM_PACKAGES_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_PACKAGES_FOLDER_NAME), [SYSTEM_RECORD_TYPE_NAME_PREFIX](../content/ContentConstants.html#SYSTEM_RECORD_TYPE_NAME_PREFIX), [SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION](../content/ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_DESIGNER_ROOT_NAME](../content/ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_NAME), [SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION](../content/ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_INTERNAL_ROOT_NAME](../content/ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_NAME), [TYPE_ALL](../content/ContentConstants.html#TYPE_ALL), [TYPE_ANY_KC](../content/ContentConstants.html#TYPE_ANY_KC), [TYPE_APPLICATION](../content/ContentConstants.html#TYPE_APPLICATION), [TYPE_COMMUNITY](../content/ContentConstants.html#TYPE_COMMUNITY), [TYPE_COMMUNITY_KC](../content/ContentConstants.html#TYPE_COMMUNITY_KC), [TYPE_CONTAINER](../content/ContentConstants.html#TYPE_CONTAINER), [TYPE_CONTENT](../content/ContentConstants.html#TYPE_CONTENT), [TYPE_CUSTOM](../content/ContentConstants.html#TYPE_CUSTOM), [TYPE_DOCUMENT](../content/ContentConstants.html#TYPE_DOCUMENT), [TYPE_FOLDER](../content/ContentConstants.html#TYPE_FOLDER), [TYPE_IGNORE](../content/ContentConstants.html#TYPE_IGNORE), [TYPE_NON_CONTAINER](../content/ContentConstants.html#TYPE_NON_CONTAINER), [TYPE_NON_DOCUMENT](../content/ContentConstants.html#TYPE_NON_DOCUMENT), [TYPE_PERSONAL_KC](../content/ContentConstants.html#TYPE_PERSONAL_KC), [TYPE_RULE](../content/ContentConstants.html#TYPE_RULE), [UNIQUE_FOR_ALL](../content/ContentConstants.html#UNIQUE_FOR_ALL), [UNIQUE_FOR_PARENT](../content/ContentConstants.html#UNIQUE_FOR_PARENT), [UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION](../content/ContentConstants.html#UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION), [UNIQUE_FOR_TYPE](../content/ContentConstants.html#UNIQUE_FOR_TYPE), [UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION](../content/ContentConstants.html#UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION), [UNIQUE_FOR_TYPE_LATEST_VERSION](../content/ContentConstants.html#UNIQUE_FOR_TYPE_LATEST_VERSION), [UNIQUE_NONE](../content/ContentConstants.html#UNIQUE_NONE), [UUID_ACTIVE_PROCESSES_REPORT](../content/ContentConstants.html#UUID_ACTIVE_PROCESSES_REPORT), [UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT](../content/ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT), [UUID_ACTIVE_TASKS_GROUP_REPORT](../content/ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_REPORT), [UUID_ACTIVE_TASKS_REPORT](../content/ContentConstants.html#UUID_ACTIVE_TASKS_REPORT), [UUID_ALL_PROCESS_MODELS_REPORT](../content/ContentConstants.html#UUID_ALL_PROCESS_MODELS_REPORT), [UUID_ALL_PROCESSES_REPORT](../content/ContentConstants.html#UUID_ALL_PROCESSES_REPORT), [UUID_ALL_TASKS_REPORT](../content/ContentConstants.html#UUID_ALL_TASKS_REPORT), [UUID_APPLICATIONS_HOME](../content/ContentConstants.html#UUID_APPLICATIONS_HOME), [UUID_APPLICATIONS_ROOT](../content/ContentConstants.html#UUID_APPLICATIONS_ROOT), [UUID_ASYNC_INSPECT_FOLDER](../content/ContentConstants.html#UUID_ASYNC_INSPECT_FOLDER), [UUID_CANCELED_PROCESSES_REPORT](../content/ContentConstants.html#UUID_CANCELED_PROCESSES_REPORT), [UUID_COMMUNITY_ROOT](../content/ContentConstants.html#UUID_COMMUNITY_ROOT), [UUID_COMPLETED_PROCESSES_REPORT](../content/ContentConstants.html#UUID_COMPLETED_PROCESSES_REPORT), [UUID_COMPLETED_TASKS_REPORT](../content/ContentConstants.html#UUID_COMPLETED_TASKS_REPORT), [UUID_COPILOT_FOLDER](../content/ContentConstants.html#UUID_COPILOT_FOLDER), [UUID_CURRENT_TASKS_PER_PROCESS_REPORT](../content/ContentConstants.html#UUID_CURRENT_TASKS_PER_PROCESS_REPORT), [UUID_DATA_STORE_CONFIGS_ROOT_FOLDER](../content/ContentConstants.html#UUID_DATA_STORE_CONFIGS_ROOT_FOLDER), [UUID_DEFAULT_COMMUNITY](../content/ContentConstants.html#UUID_DEFAULT_COMMUNITY), [UUID_EMAIL_FOOTER_TEMPLATE](../content/ContentConstants.html#UUID_EMAIL_FOOTER_TEMPLATE), [UUID_EMAIL_HEADER_TEMPLATE](../content/ContentConstants.html#UUID_EMAIL_HEADER_TEMPLATE), [UUID_EMAIL_TEMPLATE_FOLDER](../content/ContentConstants.html#UUID_EMAIL_TEMPLATE_FOLDER), [UUID_FAVORITE_PROCESS_MODELS_REPORT](../content/ContentConstants.html#UUID_FAVORITE_PROCESS_MODELS_REPORT), [UUID_FAVORITE_PROCESSES_REPORT](../content/ContentConstants.html#UUID_FAVORITE_PROCESSES_REPORT), [UUID_FAVORITE_TASKS_REPORT](../content/ContentConstants.html#UUID_FAVORITE_TASKS_REPORT), [UUID_HIGH_PRIORITY_TASKS_REPORT](../content/ContentConstants.html#UUID_HIGH_PRIORITY_TASKS_REPORT), [UUID_IX_FOLDER](../content/ContentConstants.html#UUID_IX_FOLDER), [UUID_LEADER_MESSAGE_PICTURES_FOLDER](../content/ContentConstants.html#UUID_LEADER_MESSAGE_PICTURES_FOLDER), [UUID_MIGRATION_FLAGS_ROOT_FOLDER](../content/ContentConstants.html#UUID_MIGRATION_FLAGS_ROOT_FOLDER), [UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT](../content/ContentConstants.html#UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT), [UUID_NAVIGATION_CONFIG](../content/ContentConstants.html#UUID_NAVIGATION_CONFIG), [UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT), [UUID_NODE_STATS_PER_PROCESS_REPORT](../content/ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_REPORT), [UUID_OBJECT_TEMPLATES_FOLDER](../content/ContentConstants.html#UUID_OBJECT_TEMPLATES_FOLDER), [UUID_OFFLINE_RULE_BUNDLES_FOLDER](../content/ContentConstants.html#UUID_OFFLINE_RULE_BUNDLES_FOLDER), [UUID_OPENAPI_FOLDER](../content/ContentConstants.html#UUID_OPENAPI_FOLDER), [UUID_OVERDUE_TASKS_REPORT](../content/ContentConstants.html#UUID_OVERDUE_TASKS_REPORT), [UUID_PACKAGES_FOLDER](../content/ContentConstants.html#UUID_PACKAGES_FOLDER), [UUID_PAUSED_PROCESSES_REPORT](../content/ContentConstants.html#UUID_PAUSED_PROCESSES_REPORT), [UUID_PERFORMANCE_INDICATOR_GREEN](../content/ContentConstants.html#UUID_PERFORMANCE_INDICATOR_GREEN), [UUID_PERFORMANCE_INDICATOR_RED](../content/ContentConstants.html#UUID_PERFORMANCE_INDICATOR_RED), [UUID_PERFORMANCE_INDICATOR_YELLOW](../content/ContentConstants.html#UUID_PERFORMANCE_INDICATOR_YELLOW), [UUID_PRIORITY_ICONS_FOLDER](../content/ContentConstants.html#UUID_PRIORITY_ICONS_FOLDER), [UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT), [UUID_PROCESS_INSTANCES_PER_MODEL_REPORT](../content/ContentConstants.html#UUID_PROCESS_INSTANCES_PER_MODEL_REPORT), [UUID_PROCESS_MODEL_REPORT_FOLDER](../content/ContentConstants.html#UUID_PROCESS_MODEL_REPORT_FOLDER), [UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER](../content/ContentConstants.html#UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER), [UUID_PROCESS_REPORTS_FOLDER](../content/ContentConstants.html#UUID_PROCESS_REPORTS_FOLDER), [UUID_PROCESSES_STARTED_BY_ME_REPORT](../content/ContentConstants.html#UUID_PROCESSES_STARTED_BY_ME_REPORT), [UUID_PROCESSES_WITH_PROBLEMS_REPORT](../content/ContentConstants.html#UUID_PROCESSES_WITH_PROBLEMS_REPORT), [UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER](../content/ContentConstants.html#UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER), [UUID_RULES_ROOT_FOLDER](../content/ContentConstants.html#UUID_RULES_ROOT_FOLDER), [UUID_RUNNING_PROCESSES_PER_MODEL_REPORT](../content/ContentConstants.html#UUID_RUNNING_PROCESSES_PER_MODEL_REPORT), [UUID_STATISTICS_ACROSS_PROCESSES_REPORT](../content/ContentConstants.html#UUID_STATISTICS_ACROSS_PROCESSES_REPORT), [UUID_SUBPROCESSES_PER_PROCESS_REPORT](../content/ContentConstants.html#UUID_SUBPROCESSES_PER_PROCESS_REPORT), [UUID_SUMMARY_REPORTS_FOLDER](../content/ContentConstants.html#UUID_SUMMARY_REPORTS_FOLDER), [UUID_SYSTEM_DOC_PRIORITY_HIGH](../content/ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_HIGH), [UUID_SYSTEM_DOC_PRIORITY_LOW](../content/ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_LOW), [UUID_SYSTEM_DOC_PRIORITY_NORMAL](../content/ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_NORMAL), [UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS](../content/ContentConstants.html#UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS), [UUID_SYSTEM_KNOWLEDGE_CENTER](../content/ContentConstants.html#UUID_SYSTEM_KNOWLEDGE_CENTER), [UUID_SYSTEM_RECORD_TYPES_FOLDER](../content/ContentConstants.html#UUID_SYSTEM_RECORD_TYPES_FOLDER), [UUID_SYSTEM_REPORTS_FOLDER](../content/ContentConstants.html#UUID_SYSTEM_REPORTS_FOLDER), [UUID_SYSTEM_SYSRULES_DESIGNER_ROOT](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_DESIGNER_ROOT), [UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER), [UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING), [UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS), [UUID_SYSTEM_SYSRULES_FOLDER_HOME](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_HOME), [UUID_SYSTEM_SYSRULES_INTERNAL_ROOT](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_INTERNAL_ROOT), [UUID_TASK_REPORTS_FOLDER](../content/ContentConstants.html#UUID_TASK_REPORTS_FOLDER), [UUID_TASKS_DUE_TODAY_REPORT](../content/ContentConstants.html#UUID_TASKS_DUE_TODAY_REPORT), [UUID_TASKS_FOR_USER_REPORT](../content/ContentConstants.html#UUID_TASKS_FOR_USER_REPORT), [UUID_TASKS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_TASKS_PER_PROCESS_MODEL_REPORT), [UUID_TEMPORARY_DOCS_FOLDER](../content/ContentConstants.html#UUID_TEMPORARY_DOCS_FOLDER), [UUID_TEMPORARY_DOCS_KC](../content/ContentConstants.html#UUID_TEMPORARY_DOCS_KC), [UUID_USER_COVER_PHOTOS_FOLDER](../content/ContentConstants.html#UUID_USER_COVER_PHOTOS_FOLDER), [UUID_USER_PICTURES_FOLDER](../content/ContentConstants.html#UUID_USER_PICTURES_FOLDER), [UUID_USER_THUMBNAILS_FOLDER](../content/ContentConstants.html#UUID_USER_THUMBNAILS_FOLDER), [UUID_VERSIONS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_VERSIONS_PER_PROCESS_MODEL_REPORT), [VERSION_CURRENT](../content/ContentConstants.html#VERSION_CURRENT), [VERSION_ORIGINAL](../content/ContentConstants.html#VERSION_ORIGINAL), [VIS_ADVERTISE](../content/ContentConstants.html#VIS_ADVERTISE), [VIS_DEFAULT](../content/ContentConstants.html#VIS_DEFAULT), [VIS_HIERARCHY](../content/ContentConstants.html#VIS_HIERARCHY), [VIS_INDEXABLE](../content/ContentConstants.html#VIS_INDEXABLE), [VIS_QUOTA](../content/ContentConstants.html#VIS_QUOTA), [VIS_SEARCHABLE](../content/ContentConstants.html#VIS_SEARCHABLE), [VIS_SYSTEM](../content/ContentConstants.html#VIS_SYSTEM), [VIS_UNLOGGED](../content/ContentConstants.html#VIS_UNLOGGED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Document](#%3Cinit%3E\(\))()`

    /\*\* Default constructor (necessary for return converters).

    `[Document](#%3Cinit%3E\(java.lang.Long,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extension)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[File](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io")`

    `[accessAsReadOnlyFile](#accessAsReadOnlyFile\(\))()`

    A function that returns a [`File`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io") object that represents the document.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getBytes](#getBytes\(\))()`

    Gets the number of bytes in the file.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(\))()`

    Gets the display name, which should be used when the document's name is displayed as one piece (name and extension combined).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExtension](#getExtension\(\))()`

    Gets the extension.

    `com.appiancorp.content.ExtensionMap.ExtensionInfo`

    `[getExtensionInfo](#getExtensionInfo\(\))()`

    Gets the extension info.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExternalFilename](#getExternalFilename\(\))()`

    Gets the filename that will be displayed to the user and that the user will save the file as.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getFileSystemId](#getFileSystemId\(\))()`

    Gets the file system ID.

    `[DocumentInputStream](../content/DocumentInputStream.html "class in com.appiancorp.suiteapi.content")`

    `[getInputStream](#getInputStream\(\))()`

    Opens a stream to a Document allowing for the caller to read its contents if this Document object was retrieved using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getInternalFilename](#getInternalFilename\(\))()`

    Deprecated.

    since 23.2.

    `[DocumentOutputStream](../content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content")`

    `[getOutputStream](#getOutputStream\(\))()`

    Opens a stream to a Document allowing for the caller to write its content if this Document object was retrieved using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

    `double`

    `[getSizeInKB](#getSizeInKB\(\))()`

    Gets the number of KBytes in the file.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getSymbolicLink](#getSymbolicLink\(\))()`

    Gets whether this document is a symbolic link.

    `void`

    `[setExtension](#setExtension\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extension_)`

    Sets the extension.

    `void`

    `[setExtensionInfo](#setExtensionInfo\(com.appiancorp.content.ExtensionMap.ExtensionInfo\))(com.appiancorp.content.ExtensionMap.ExtensionInfo extensionInfo_)`

    Sets the extension info.

    `void`

    `[setExternalFilename](#setExternalFilename\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalFilename_)`

    Sets the filename that will be displayed to the user and that the user will save the file as.

    `void`

    `[setFileSystemId](#setFileSystemId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") fileSystemId_)`

    Sets the file system ID.

    `void`

    `[setInternalFilename](#setInternalFilename\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") internalFilename_)`

    Deprecated.

    since 23.2.

    `void`

    `[setSymbolicLink](#setSymbolicLink\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") symbolicLink_)`

    Sets whether this document is a symbolic link.

    `void`

    `[write](#write\(java.io.InputStream\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") inputStream)`

    Write the contents of the inputStream to the Document if this Document object was generated using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

    ### Methods inherited from class com.appiancorp.suiteapi.content.[Content](../content/Content.html "class in com.appiancorp.suiteapi.content")

    `[addSecurity](../content/Content.html#addSecurity\(int\)), [addSecurity](../content/Content.html#addSecurity\(java.lang.Integer\)), [addVisibility](../content/Content.html#addVisibility\(int\)), [addVisibility](../content/Content.html#addVisibility\(java.lang.Integer\)), [fillInAppianTypes](../content/Content.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [getActionRequested](../content/Content.html#getActionRequested\(\)), [getActionRequester](../content/Content.html#getActionRequester\(\)), [getAttributes](../content/Content.html#getAttributes\(\)), [getChangesRequireApproval](../content/Content.html#getChangesRequireApproval\(\)), [getCreatedTimestamp](../content/Content.html#getCreatedTimestamp\(\)), [getCreator](../content/Content.html#getCreator\(\)), [getCurrentContentId](../content/Content.html#getCurrentContentId\(\)), [getDepth](../content/Content.html#getDepth\(\)), [getDescription](../content/Content.html#getDescription\(\)), [getExpirationTimestamp](../content/Content.html#getExpirationTimestamp\(\)), [getFavorite](../content/Content.html#getFavorite\(\)), [getForum](../content/Content.html#getForum\(\)), [getLatestVersionId](../content/Content.html#getLatestVersionId\(\)), [getLockedAt](../content/Content.html#getLockedAt\(\)), [getLockedBy](../content/Content.html#getLockedBy\(\)), [getLockedByUsername](../content/Content.html#getLockedByUsername\(\)), [getLog](../content/Content.html#getLog\(\)), [getLogName](../content/Content.html#getLogName\(\)), [getNumberOfVersions](../content/Content.html#getNumberOfVersions\(\)), [getOriginalContentId](../content/Content.html#getOriginalContentId\(\)), [getParent](../content/Content.html#getParent\(\)), [getParentName](../content/Content.html#getParentName\(\)), [getParentType](../content/Content.html#getParentType\(\)), [getPartition](../content/Content.html#getPartition\(\)), [getPartitionName](../content/Content.html#getPartitionName\(\)), [getPendingApprovalCount](../content/Content.html#getPendingApprovalCount\(\)), [getRoleSet](../content/Content.html#getRoleSet\(\)), [getSecurity](../content/Content.html#getSecurity\(\)), [getSize](../content/Content.html#getSize\(\)), [getState](../content/Content.html#getState\(\)), [getSubtype](../content/Content.html#getSubtype\(\)), [getType](../content/Content.html#getType\(\)), [getTypesOfChildren](../content/Content.html#getTypesOfChildren\(\)), [getUpdatedTimestamp](../content/Content.html#getUpdatedTimestamp\(\)), [getUsersPendingAccess](../content/Content.html#getUsersPendingAccess\(\)), [getUuid](../content/Content.html#getUuid\(\)), [getVersionId](../content/Content.html#getVersionId\(\)), [getVersions](../content/Content.html#getVersions\(\)), [getVisibility](../content/Content.html#getVisibility\(\)), [hasChildrenOfType](../content/Content.html#hasChildrenOfType\(int\)), [removeSecurity](../content/Content.html#removeSecurity\(int\)), [removeSecurity](../content/Content.html#removeSecurity\(java.lang.Integer\)), [removeVisibility](../content/Content.html#removeVisibility\(int\)), [removeVisibility](../content/Content.html#removeVisibility\(java.lang.Integer\)), [securityContains](../content/Content.html#securityContains\(int\)), [securityContains](../content/Content.html#securityContains\(java.lang.Integer\)), [setActionRequested](../content/Content.html#setActionRequested\(java.lang.Integer\)), [setActionRequester](../content/Content.html#setActionRequester\(java.lang.String\)), [setAttributes](../content/Content.html#setAttributes\(java.util.Map\)), [setChangesRequireApproval](../content/Content.html#setChangesRequireApproval\(java.lang.Boolean\)), [setCreatedTimestamp](../content/Content.html#setCreatedTimestamp\(java.sql.Timestamp\)), [setCreator](../content/Content.html#setCreator\(java.lang.String\)), [setCurrentContentId](../content/Content.html#setCurrentContentId\(java.lang.Long\)), [setDepth](../content/Content.html#setDepth\(java.lang.Integer\)), [setDescription](../content/Content.html#setDescription\(java.lang.String\)), [setExpirationTimestamp](../content/Content.html#setExpirationTimestamp\(java.sql.Timestamp\)), [setFavorite](../content/Content.html#setFavorite\(java.lang.Boolean\)), [setForum](../content/Content.html#setForum\(java.lang.Long\)), [setLatestVersionId](../content/Content.html#setLatestVersionId\(java.lang.Integer\)), [setLockedAt](../content/Content.html#setLockedAt\(java.sql.Timestamp\)), [setLockedBy](../content/Content.html#setLockedBy\(java.lang.String\)), [setLockedByUsername](../content/Content.html#setLockedByUsername\(java.lang.String\)), [setLog](../content/Content.html#setLog\(java.lang.Long\)), [setLogName](../content/Content.html#setLogName\(java.lang.String\)), [setNumberOfVersions](../content/Content.html#setNumberOfVersions\(java.lang.Long\)), [setOriginalContentId](../content/Content.html#setOriginalContentId\(java.lang.Long\)), [setParent](../content/Content.html#setParent\(java.lang.Long\)), [setParentName](../content/Content.html#setParentName\(java.lang.String\)), [setParentType](../content/Content.html#setParentType\(java.lang.Integer\)), [setPartition](../content/Content.html#setPartition\(java.lang.Integer\)), [setPartitionName](../content/Content.html#setPartitionName\(java.lang.String\)), [setPendingApprovalCount](../content/Content.html#setPendingApprovalCount\(java.lang.Integer\)), [setRoleSet](../content/Content.html#setRoleSet\(com.appiancorp.suiteapi.content.ContentRoleSet\)), [setSecurity](../content/Content.html#setSecurity\(int\)), [setSecurity](../content/Content.html#setSecurity\(java.lang.Integer\)), [setSize](../content/Content.html#setSize\(java.lang.Integer\)), [setState](../content/Content.html#setState\(java.lang.Integer\)), [setSubtype](../content/Content.html#setSubtype\(int\)), [setSubtype](../content/Content.html#setSubtype\(java.lang.Integer\)), [setType](../content/Content.html#setType\(java.lang.Integer\)), [setTypesOfChildren](../content/Content.html#setTypesOfChildren\(java.lang.Integer\)), [setUpdatedTimestamp](../content/Content.html#setUpdatedTimestamp\(java.sql.Timestamp\)), [setUsersPendingAccess](../content/Content.html#setUsersPendingAccess\(java.lang.String%5B%5D\)), [setUuid](../content/Content.html#setUuid\(java.lang.String\)), [setVersionId](../content/Content.html#setVersionId\(java.lang.Integer\)), [setVersions](../content/Content.html#setVersions\(java.lang.Long%5B%5D\)), [setVisibility](../content/Content.html#setVisibility\(int\)), [setVisibility](../content/Content.html#setVisibility\(java.lang.Integer\)), [toString](../content/Content.html#toString\(\)), [visibilityContains](../content/Content.html#visibilityContains\(int\)), [visibilityContains](../content/Content.html#visibilityContains\(java.lang.Integer\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### sizeInKB$TRANSIENT

        public static final boolean sizeInKB$TRANSIENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.knowledge.Document.sizeInKB$TRANSIENT)

-   ## Constructor Details

    -   ### Document

        public Document()

        /\*\* Default constructor (necessary for return converters). Adds [`ContentConstants.SEC_INH_ALL`](../content/ContentConstants.html#SEC_INH_ALL), [`ContentConstants.SEC_CREATOR_ADMIN`](../content/ContentConstants.html#SEC_CREATOR_ADMIN), and [`ContentConstants.SEC_PUBLIC`](../content/ContentConstants.html#SEC_PUBLIC) to security. Sets the file system ID to [`ContentConstants.ALLOCATE_FSID`](../content/ContentConstants.html#ALLOCATE_FSID). Sets the partition to [`ContentConstants.ALLOCATE_PART`](../content/ContentConstants.html#ALLOCATE_PART).

    -   ### Document

        public Document([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extension)

-   ## Method Details

    -   ### getExtension

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExtension()

        Gets the extension.

        Returns:

        the extension

        See Also:

        -   [`setExtension(String)`](#setExtension\(java.lang.String\))

    -   ### setExtension

        public void setExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extension\_)

        Sets the extension. If the document will be saved as a new version, it must have the same extension as the previous version.

        Parameters:

        `extension_` - the extension

        See Also:

        -   [`getExtension()`](#getExtension\(\))

    -   ### getFileSystemId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getFileSystemId()

        Gets the file system ID.

        Returns:

        the file system ID

        See Also:

        -   [`setFileSystemId(Integer)`](#setFileSystemId\(java.lang.Integer\))

    -   ### setFileSystemId

        public void setFileSystemId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") fileSystemId\_)

        Sets the file system ID.

        Parameters:

        `fileSystemId_` - the file system ID

        See Also:

        -   [`getFileSystemId()`](#getFileSystemId\(\))

    -   ### getExternalFilename

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExternalFilename()

        Gets the filename that will be displayed to the user and that the user will save the file as.

        Returns:

        the external filename

        See Also:

        -   [`setExternalFilename(String)`](#setExternalFilename\(java.lang.String\))

    -   ### setExternalFilename

        public void setExternalFilename([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalFilename\_)

        Sets the filename that will be displayed to the user and that the user will save the file as. This field cannot be updated in the database. It is automatically generated by the database.

        Parameters:

        `externalFilename_` - the external filename

        See Also:

        -   [`getExternalFilename()`](#getExternalFilename\(\))

    -   ### getInternalFilename

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getInternalFilename()

        Deprecated.

        since 23.2. See [`getInputStream()`](#getInputStream\(\)) or [`accessAsReadOnlyFile()`](#accessAsReadOnlyFile\(\)) to read and [`getOutputStream()`](#getOutputStream\(\)) or [`write(InputStream)`](#write\(java.io.InputStream\)) to write

        Returns the full path to the file on the file system if this Document object was retrieved using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)). However, if this Document was retrieved using one of the getContent\* methods in [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content"), the internal filename property will be empty and this method will return null.

        Returns:

        the full path to the file on the file system

    -   ### setInternalFilename

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setInternalFilename([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") internalFilename\_)

        Deprecated.

        since 23.2. See [`getInputStream()`](#getInputStream\(\)) or [`accessAsReadOnlyFile()`](#accessAsReadOnlyFile\(\)) to read and [`getOutputStream()`](#getOutputStream\(\)) or [`write(InputStream)`](#write\(java.io.InputStream\)) to write

        Sets the location of the file on disk. This field cannot be updated in the database. It is automatically generated by the database.

        Parameters:

        `internalFilename_` - the internal filename

    -   ### getBytes

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getBytes()

        Gets the number of bytes in the file. This method calls [`Content.getSize()`](../content/Content.html#getSize\(\)).

        Returns:

        the size in bytes

    -   ### getSizeInKB

        public double getSizeInKB()

        Gets the number of KBytes in the file. This method calls [`Content.getSize()`](../content/Content.html#getSize\(\)).

        Returns:

        the size in KBytes rounded to 2 decimals

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName()

        Gets the display name, which should be used when the document's name is displayed as one piece (name and extension combined).

        Overrides:

        `[getDisplayName](../content/Content.html#getDisplayName\(\))` in class `[Content](../content/Content.html "class in com.appiancorp.suiteapi.content")`

        Returns:

        the display name

    -   ### getExtensionInfo

        public com.appiancorp.content.ExtensionMap.ExtensionInfo getExtensionInfo()

        Gets the extension info. This is not automatically populated when you get document from the [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content"). However, you can have the content service populate this field by calling [`ContentService.populateExtensionInfo(Content[])`](../content/ContentService.html#populateExtensionInfo\(com.appiancorp.suiteapi.content.Content%5B%5D\)).

        Returns:

        the extension info

        See Also:

        -   [`setExtensionInfo(com.appiancorp.content.ExtensionMap.ExtensionInfo)`](#setExtensionInfo\(com.appiancorp.content.ExtensionMap.ExtensionInfo\))

    -   ### setExtensionInfo

        public void setExtensionInfo(com.appiancorp.content.ExtensionMap.ExtensionInfo extensionInfo\_)

        Sets the extension info.

        Parameters:

        `extensionInfo_` - the extension info

        See Also:

        -   [`getExtensionInfo()`](#getExtensionInfo\(\))

    -   ### getSymbolicLink

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getSymbolicLink()

        Gets whether this document is a symbolic link.

        Returns:

        whether this is a symbolic link

    -   ### setSymbolicLink

        public void setSymbolicLink([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") symbolicLink\_)

        Sets whether this document is a symbolic link.

        Parameters:

        `symbolicLink_` - whether this is a symbolic link

    -   ### getInputStream

        @Transient public [DocumentInputStream](../content/DocumentInputStream.html "class in com.appiancorp.suiteapi.content") getInputStream() throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Opens a stream to a Document allowing for the caller to read its contents if this Document object was retrieved using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

        Returns:

        DocumentInputStream containing the contents of the Document

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while opening the input stream for the file

        See Also:

        -   [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))

    -   ### getOutputStream

        @Transient public [DocumentOutputStream](../content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content") getOutputStream() throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Opens a stream to a Document allowing for the caller to write its content if this Document object was retrieved using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

        This write is NOT appending.

        Returns:

        DocumentOutputStream containing the contents of the Document see [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while opening the output stream for the file

        See Also:

        -   [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))

    -   ### write

        public void write([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") inputStream) throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Write the contents of the inputStream to the Document if this Document object was generated using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

        This write is NOT appending.

        Parameters:

        `inputStream` - the input stream to copy to the Document

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while writing the input stream contents to the file

        See Also:

        -   [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))

    -   ### accessAsReadOnlyFile

        public [File](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io") accessAsReadOnlyFile() throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        A function that returns a [`File`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io") object that represents the document. Use ONLY if you need to access the file using a file on disk if this Document was retrieved using [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)).

        Ensures the file is available on disk for the given application server. Updates to file are not supported; please create a new version/Document using [`ContentService.uploadDocument(com.appiancorp.suiteapi.knowledge.Document, java.lang.Integer)`](../content/ContentService.html#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\)), or override existing contents with [`getOutputStream()`](#getOutputStream\(\)) or [`write(java.io.InputStream)`](#write\(java.io.InputStream\)).

        Returns:

        File containing the contents of the Document

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while accessing the file

        See Also:

        -   [`ContentService.download(Long, Integer, Boolean)`](../content/ContentService.html#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))
        -   [`ContentService.uploadDocument(Document, Integer)`](../content/ContentService.html#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\))
        -   [`getOutputStream()`](#getOutputStream\(\))
        -   [`write(InputStream)`](#write\(java.io.InputStream\))