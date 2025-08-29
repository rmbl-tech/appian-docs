---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/Content.html
original_path: api/com/appiancorp/suiteapi/content/Content.html
version: "25.3"
title: "Class Content"
page_id: "api/com/appiancorp/suiteapi/content/Content"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class Content

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.content.Content

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[ContentConstants](ContentConstants.html "interface in com.appiancorp.suiteapi.content")`, `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Application](../applications/Application.html "class in com.appiancorp.suiteapi.applications")`, `[Container](Container.html "class in com.appiancorp.suiteapi.content")`, `[CustomContent](CustomContent.html "class in com.appiancorp.suiteapi.content")`, `[Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")`, `[Rule](../rules/Rule.html "class in com.appiancorp.suiteapi.rules")`

* * *

public abstract class Content extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [ContentConstants](ContentConstants.html "interface in com.appiancorp.suiteapi.content"), [AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

Represents an item of content. This can be manipulated in the database using [`ContentService`](ContentService.html "interface in com.appiancorp.suiteapi.content"). Content is a generic bean that can represent almost any structure that has to be stored in the database. Currently, it is used to represent knowledge and rule objects. The specific type of content is represented in the type and subtype fields. Note that this class is abstract. You must instantiate it by instantiating a sub-class.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.content.Content)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.content.[ContentConstants](ContentConstants.html "interface in com.appiancorp.suiteapi.content")

    `[ACT_CREATE](ContentConstants.html#ACT_CREATE), [ACT_DEACTIVATE](ContentConstants.html#ACT_DEACTIVATE), [ACT_DELETE](ContentConstants.html#ACT_DELETE), [AL_ADMIN](ContentConstants.html#AL_ADMIN), [AL_EDITOR](ContentConstants.html#AL_EDITOR), [AL_INVALID_ID](ContentConstants.html#AL_INVALID_ID), [AL_NONE](ContentConstants.html#AL_NONE), [AL_VIEWER](ContentConstants.html#AL_VIEWER), [ALLOCATE_FSID](ContentConstants.html#ALLOCATE_FSID), [ALLOCATE_GLOBAL_PART](ContentConstants.html#ALLOCATE_GLOBAL_PART), [ALLOCATE_PART](ContentConstants.html#ALLOCATE_PART), [APPLICATIONS_ROOT_DESCRIPTION](ContentConstants.html#APPLICATIONS_ROOT_DESCRIPTION), [APPLICATIONS_ROOT_NAME](ContentConstants.html#APPLICATIONS_ROOT_NAME), [CHILDREN](ContentConstants.html#CHILDREN), [COLUMN_ACTION_REQUESTED](ContentConstants.html#COLUMN_ACTION_REQUESTED), [COLUMN_ACTION_REQUESTER](ContentConstants.html#COLUMN_ACTION_REQUESTER), [COLUMN_ATTRIBUTES](ContentConstants.html#COLUMN_ATTRIBUTES), [COLUMN_CHANGES_REQUIRE_APPROVAL](ContentConstants.html#COLUMN_CHANGES_REQUIRE_APPROVAL), [COLUMN_CREATED_TIMESTAMP](ContentConstants.html#COLUMN_CREATED_TIMESTAMP), [COLUMN_CREATOR](ContentConstants.html#COLUMN_CREATOR), [COLUMN_DESCRIPTION](ContentConstants.html#COLUMN_DESCRIPTION), [COLUMN_EXPIRATION_DAYS](ContentConstants.html#COLUMN_EXPIRATION_DAYS), [COLUMN_EXPIRATION_TIMESTAMP](ContentConstants.html#COLUMN_EXPIRATION_TIMESTAMP), [COLUMN_EXTENSION](ContentConstants.html#COLUMN_EXTENSION), [COLUMN_FORUM](ContentConstants.html#COLUMN_FORUM), [COLUMN_FSID](ContentConstants.html#COLUMN_FSID), [COLUMN_FSID_COUNT](ContentConstants.html#COLUMN_FSID_COUNT), [COLUMN_ID](ContentConstants.html#COLUMN_ID), [COLUMN_LOCKED_BY](ContentConstants.html#COLUMN_LOCKED_BY), [COLUMN_LOG](ContentConstants.html#COLUMN_LOG), [COLUMN_LOG_NAME](ContentConstants.html#COLUMN_LOG_NAME), [COLUMN_METADATA_IDS](ContentConstants.html#COLUMN_METADATA_IDS), [COLUMN_NAME](ContentConstants.html#COLUMN_NAME), [COLUMN_NONE](ContentConstants.html#COLUMN_NONE), [COLUMN_NUMBER_OF_VERSIONS](ContentConstants.html#COLUMN_NUMBER_OF_VERSIONS), [COLUMN_PARENT_ID](ContentConstants.html#COLUMN_PARENT_ID), [COLUMN_PARENT_NAME](ContentConstants.html#COLUMN_PARENT_NAME), [COLUMN_PARENT_TYPE](ContentConstants.html#COLUMN_PARENT_TYPE), [COLUMN_PARTITION](ContentConstants.html#COLUMN_PARTITION), [COLUMN_PARTITION_NAME](ContentConstants.html#COLUMN_PARTITION_NAME), [COLUMN_SECURITY](ContentConstants.html#COLUMN_SECURITY), [COLUMN_SIZE](ContentConstants.html#COLUMN_SIZE), [COLUMN_STATE](ContentConstants.html#COLUMN_STATE), [COLUMN_SUBTYPE](ContentConstants.html#COLUMN_SUBTYPE), [COLUMN_TYPE](ContentConstants.html#COLUMN_TYPE), [COLUMN_UPDATED_TIMESTAMP](ContentConstants.html#COLUMN_UPDATED_TIMESTAMP), [COLUMN_UUID](ContentConstants.html#COLUMN_UUID), [COLUMN_VERSION_ID](ContentConstants.html#COLUMN_VERSION_ID), [COLUMN_VERSIONS](ContentConstants.html#COLUMN_VERSIONS), [COLUMN_VISIBILITY](ContentConstants.html#COLUMN_VISIBILITY), [COMMUNITY_ROOT](ContentConstants.html#COMMUNITY_ROOT), [CONTENT_SECURITY_TYPE](ContentConstants.html#CONTENT_SECURITY_TYPE), [CREATION_SECURITY_TYPE](ContentConstants.html#CREATION_SECURITY_TYPE), [FILTER_TYPE_ALL](ContentConstants.html#FILTER_TYPE_ALL), [GC_MOD_DRAFT](ContentConstants.html#GC_MOD_DRAFT), [GC_MOD_LINKS](ContentConstants.html#GC_MOD_LINKS), [GC_MOD_NORMAL](ContentConstants.html#GC_MOD_NORMAL), [GC_MOD_POPULATE_TYPES_OF_CHILDREN](ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN), [GC_VERSIONS_AS_FOLDERS](ContentConstants.html#GC_VERSIONS_AS_FOLDERS), [I18N_PREFIX](ContentConstants.html#I18N_PREFIX), [IMPORT_INVALID_PRIVILEGE](ContentConstants.html#IMPORT_INVALID_PRIVILEGE), [IMPORT_NAME_EXISTS_WITHIN_PARENT](ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_PARENT), [IMPORT_NAME_EXISTS_WITHIN_TYPE](ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_TYPE), [IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT](ContentConstants.html#IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT), [IMPORT_UUID_EXISTS_ELSEWHERE](ContentConstants.html#IMPORT_UUID_EXISTS_ELSEWHERE), [IMPORT_VALID](ContentConstants.html#IMPORT_VALID), [INFINITY](ContentConstants.html#INFINITY), [KM_EXPIRATION_DURATION_CHECK](ContentConstants.html#KM_EXPIRATION_DURATION_CHECK), [KM_SECURITY_COMMUNITY](ContentConstants.html#KM_SECURITY_COMMUNITY), [KM_SECURITY_CONTENT_COMMUNITY](ContentConstants.html#KM_SECURITY_CONTENT_COMMUNITY), [KM_SECURITY_CONTENT_FOLDER](ContentConstants.html#KM_SECURITY_CONTENT_FOLDER), [KM_SECURITY_CONTENT_KC](ContentConstants.html#KM_SECURITY_CONTENT_KC), [KM_SECURITY_FOLDER](ContentConstants.html#KM_SECURITY_FOLDER), [KM_SECURITY_KNOWLEDGE_CENTER](ContentConstants.html#KM_SECURITY_KNOWLEDGE_CENTER), [KNOWLEDGE_ROOT](ContentConstants.html#KNOWLEDGE_ROOT), [KNOWLEDGE_ROOT_SYSTEM_ID](ContentConstants.html#KNOWLEDGE_ROOT_SYSTEM_ID), [MIGRATION_FLAG](ContentConstants.html#MIGRATION_FLAG), [NEGATIVE_INFINITY](ContentConstants.html#NEGATIVE_INFINITY), [NO_CHILDREN](ContentConstants.html#NO_CHILDREN), [NO_EXPIRATION_TIMESTAMP](ContentConstants.html#NO_EXPIRATION_TIMESTAMP), [NO_FORUM](ContentConstants.html#NO_FORUM), [NO_REVIEW](ContentConstants.html#NO_REVIEW), [QUERY_KEYWORDS](ContentConstants.html#QUERY_KEYWORDS), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC](ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME](ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME), [RESTRICTION_ROLE_MAP_ROLES](ContentConstants.html#RESTRICTION_ROLE_MAP_ROLES), [RM_AGGREGATE](ContentConstants.html#RM_AGGREGATE), [RM_EXPLICIT](ContentConstants.html#RM_EXPLICIT), [ROLE_ADMINISTRATORS](ContentConstants.html#ROLE_ADMINISTRATORS), [ROLE_AUTHORS](ContentConstants.html#ROLE_AUTHORS), [ROLE_DENY_ADMINISTRATORS](ContentConstants.html#ROLE_DENY_ADMINISTRATORS), [ROLE_DENY_AUTHORS](ContentConstants.html#ROLE_DENY_AUTHORS), [ROLE_DENY_READERS](ContentConstants.html#ROLE_DENY_READERS), [ROLE_MAP_ROLES](ContentConstants.html#ROLE_MAP_ROLES), [ROLE_READERS](ContentConstants.html#ROLE_READERS), [RULE_ENCODING](ContentConstants.html#RULE_ENCODING), [RULES_ROOT_DESCRIPTION](ContentConstants.html#RULES_ROOT_DESCRIPTION), [RULES_ROOT_NAME](ContentConstants.html#RULES_ROOT_NAME), [RULES_ROOT_SYSTEM_ID](ContentConstants.html#RULES_ROOT_SYSTEM_ID), [SEC_ALL_ADMIN](ContentConstants.html#SEC_ALL_ADMIN), [SEC_ALL_EDITOR](ContentConstants.html#SEC_ALL_EDITOR), [SEC_ALL_VIEWER](ContentConstants.html#SEC_ALL_VIEWER), [SEC_CREATOR_ADMIN](ContentConstants.html#SEC_CREATOR_ADMIN), [SEC_INH_ADMIN](ContentConstants.html#SEC_INH_ADMIN), [SEC_INH_ADMIN_MASK](ContentConstants.html#SEC_INH_ADMIN_MASK), [SEC_INH_ALL](ContentConstants.html#SEC_INH_ALL), [SEC_INH_EDITOR](ContentConstants.html#SEC_INH_EDITOR), [SEC_INH_VIEWER](ContentConstants.html#SEC_INH_VIEWER), [SEC_PUBLIC](ContentConstants.html#SEC_PUBLIC), [SECURITY_MANAGER_CONFIG](ContentConstants.html#SECURITY_MANAGER_CONFIG), [STATE_ACTIVE](ContentConstants.html#STATE_ACTIVE), [STATE_ACTIVE_PENDING_APPROVAL](ContentConstants.html#STATE_ACTIVE_PENDING_APPROVAL), [STATE_ACTIVE_PUBLISHED](ContentConstants.html#STATE_ACTIVE_PUBLISHED), [STATE_ACTIVE_REJECTED](ContentConstants.html#STATE_ACTIVE_REJECTED), [STATE_PENDING_APPROVAL](ContentConstants.html#STATE_PENDING_APPROVAL), [STATE_PUBLISHED](ContentConstants.html#STATE_PUBLISHED), [STATE_REJECTED](ContentConstants.html#STATE_REJECTED), [SUBTYPE_CONNECTED_SYSTEM](ContentConstants.html#SUBTYPE_CONNECTED_SYSTEM), [SUBTYPE_DATA_STORE_CONFIG](ContentConstants.html#SUBTYPE_DATA_STORE_CONFIG), [SUBTYPE_FOLDER_APPLICATIONS](ContentConstants.html#SUBTYPE_FOLDER_APPLICATIONS), [SUBTYPE_FOLDER_CONNECTED_SYSTEMS](ContentConstants.html#SUBTYPE_FOLDER_CONNECTED_SYSTEMS), [SUBTYPE_FOLDER_DATA_STORE_CONFIGS](ContentConstants.html#SUBTYPE_FOLDER_DATA_STORE_CONFIGS), [SUBTYPE_FOLDER_KNOWLEDGE](ContentConstants.html#SUBTYPE_FOLDER_KNOWLEDGE), [SUBTYPE_FOLDER_MIGRATION_FLAGS](ContentConstants.html#SUBTYPE_FOLDER_MIGRATION_FLAGS), [SUBTYPE_FOLDER_RULES](ContentConstants.html#SUBTYPE_FOLDER_RULES), [SUBTYPE_MIGRATION_FLAG](ContentConstants.html#SUBTYPE_MIGRATION_FLAG), [SUBTYPE_RULE_CONSTANT](ContentConstants.html#SUBTYPE_RULE_CONSTANT), [SUBTYPE_RULE_DECISION](ContentConstants.html#SUBTYPE_RULE_DECISION), [SUBTYPE_RULE_DECISION_TABLE](ContentConstants.html#SUBTYPE_RULE_DECISION_TABLE), [SUBTYPE_RULE_FREEFORM](ContentConstants.html#SUBTYPE_RULE_FREEFORM), [SUBTYPE_RULE_INTERFACE](ContentConstants.html#SUBTYPE_RULE_INTERFACE), [SUBTYPE_RULE_OUTBOUND_INTEGRATION](ContentConstants.html#SUBTYPE_RULE_OUTBOUND_INTEGRATION), [SUBTYPE_RULE_QUERY](ContentConstants.html#SUBTYPE_RULE_QUERY), [SYSADMIN_GRP](ContentConstants.html#SYSADMIN_GRP), [SYSADMIN_UTYPE](ContentConstants.html#SYSADMIN_UTYPE), [SYSTEM_ASYNC_INSPECT_FOLDER_NAME](ContentConstants.html#SYSTEM_ASYNC_INSPECT_FOLDER_NAME), [SYSTEM_COPILOT_FOLDER_NAME](ContentConstants.html#SYSTEM_COPILOT_FOLDER_NAME), [SYSTEM_FOLDER_COVER_PHOTOS_NAME](ContentConstants.html#SYSTEM_FOLDER_COVER_PHOTOS_NAME), [SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME](ContentConstants.html#SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME), [SYSTEM_FOLDER_RECORD_TYPES_NAME](ContentConstants.html#SYSTEM_FOLDER_RECORD_TYPES_NAME), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION](ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME](ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME), [SYSTEM_IX_FOLDER_NAME](ContentConstants.html#SYSTEM_IX_FOLDER_NAME), [SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME](ContentConstants.html#SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME), [SYSTEM_OPENAPI_FOLDER_NAME](ContentConstants.html#SYSTEM_OPENAPI_FOLDER_NAME), [SYSTEM_PACKAGES_FOLDER_NAME](ContentConstants.html#SYSTEM_PACKAGES_FOLDER_NAME), [SYSTEM_RECORD_TYPE_NAME_PREFIX](ContentConstants.html#SYSTEM_RECORD_TYPE_NAME_PREFIX), [SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION](ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_DESIGNER_ROOT_NAME](ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_NAME), [SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION](ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_INTERNAL_ROOT_NAME](ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_NAME), [TYPE_ALL](ContentConstants.html#TYPE_ALL), [TYPE_ANY_KC](ContentConstants.html#TYPE_ANY_KC), [TYPE_APPLICATION](ContentConstants.html#TYPE_APPLICATION), [TYPE_COMMUNITY](ContentConstants.html#TYPE_COMMUNITY), [TYPE_COMMUNITY_KC](ContentConstants.html#TYPE_COMMUNITY_KC), [TYPE_CONTAINER](ContentConstants.html#TYPE_CONTAINER), [TYPE_CONTENT](ContentConstants.html#TYPE_CONTENT), [TYPE_CUSTOM](ContentConstants.html#TYPE_CUSTOM), [TYPE_DOCUMENT](ContentConstants.html#TYPE_DOCUMENT), [TYPE_FOLDER](ContentConstants.html#TYPE_FOLDER), [TYPE_IGNORE](ContentConstants.html#TYPE_IGNORE), [TYPE_NON_CONTAINER](ContentConstants.html#TYPE_NON_CONTAINER), [TYPE_NON_DOCUMENT](ContentConstants.html#TYPE_NON_DOCUMENT), [TYPE_PERSONAL_KC](ContentConstants.html#TYPE_PERSONAL_KC), [TYPE_RULE](ContentConstants.html#TYPE_RULE), [UNIQUE_FOR_ALL](ContentConstants.html#UNIQUE_FOR_ALL), [UNIQUE_FOR_PARENT](ContentConstants.html#UNIQUE_FOR_PARENT), [UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION](ContentConstants.html#UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION), [UNIQUE_FOR_TYPE](ContentConstants.html#UNIQUE_FOR_TYPE), [UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION](ContentConstants.html#UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION), [UNIQUE_FOR_TYPE_LATEST_VERSION](ContentConstants.html#UNIQUE_FOR_TYPE_LATEST_VERSION), [UNIQUE_NONE](ContentConstants.html#UNIQUE_NONE), [UUID_ACTIVE_PROCESSES_REPORT](ContentConstants.html#UUID_ACTIVE_PROCESSES_REPORT), [UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT](ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT), [UUID_ACTIVE_TASKS_GROUP_REPORT](ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_REPORT), [UUID_ACTIVE_TASKS_REPORT](ContentConstants.html#UUID_ACTIVE_TASKS_REPORT), [UUID_ALL_PROCESS_MODELS_REPORT](ContentConstants.html#UUID_ALL_PROCESS_MODELS_REPORT), [UUID_ALL_PROCESSES_REPORT](ContentConstants.html#UUID_ALL_PROCESSES_REPORT), [UUID_ALL_TASKS_REPORT](ContentConstants.html#UUID_ALL_TASKS_REPORT), [UUID_APPLICATIONS_HOME](ContentConstants.html#UUID_APPLICATIONS_HOME), [UUID_APPLICATIONS_ROOT](ContentConstants.html#UUID_APPLICATIONS_ROOT), [UUID_ASYNC_INSPECT_FOLDER](ContentConstants.html#UUID_ASYNC_INSPECT_FOLDER), [UUID_CANCELED_PROCESSES_REPORT](ContentConstants.html#UUID_CANCELED_PROCESSES_REPORT), [UUID_COMMUNITY_ROOT](ContentConstants.html#UUID_COMMUNITY_ROOT), [UUID_COMPLETED_PROCESSES_REPORT](ContentConstants.html#UUID_COMPLETED_PROCESSES_REPORT), [UUID_COMPLETED_TASKS_REPORT](ContentConstants.html#UUID_COMPLETED_TASKS_REPORT), [UUID_COPILOT_FOLDER](ContentConstants.html#UUID_COPILOT_FOLDER), [UUID_CURRENT_TASKS_PER_PROCESS_REPORT](ContentConstants.html#UUID_CURRENT_TASKS_PER_PROCESS_REPORT), [UUID_DATA_STORE_CONFIGS_ROOT_FOLDER](ContentConstants.html#UUID_DATA_STORE_CONFIGS_ROOT_FOLDER), [UUID_DEFAULT_COMMUNITY](ContentConstants.html#UUID_DEFAULT_COMMUNITY), [UUID_EMAIL_FOOTER_TEMPLATE](ContentConstants.html#UUID_EMAIL_FOOTER_TEMPLATE), [UUID_EMAIL_HEADER_TEMPLATE](ContentConstants.html#UUID_EMAIL_HEADER_TEMPLATE), [UUID_EMAIL_TEMPLATE_FOLDER](ContentConstants.html#UUID_EMAIL_TEMPLATE_FOLDER), [UUID_FAVORITE_PROCESS_MODELS_REPORT](ContentConstants.html#UUID_FAVORITE_PROCESS_MODELS_REPORT), [UUID_FAVORITE_PROCESSES_REPORT](ContentConstants.html#UUID_FAVORITE_PROCESSES_REPORT), [UUID_FAVORITE_TASKS_REPORT](ContentConstants.html#UUID_FAVORITE_TASKS_REPORT), [UUID_HIGH_PRIORITY_TASKS_REPORT](ContentConstants.html#UUID_HIGH_PRIORITY_TASKS_REPORT), [UUID_IX_FOLDER](ContentConstants.html#UUID_IX_FOLDER), [UUID_LEADER_MESSAGE_PICTURES_FOLDER](ContentConstants.html#UUID_LEADER_MESSAGE_PICTURES_FOLDER), [UUID_MIGRATION_FLAGS_ROOT_FOLDER](ContentConstants.html#UUID_MIGRATION_FLAGS_ROOT_FOLDER), [UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT](ContentConstants.html#UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT), [UUID_NAVIGATION_CONFIG](ContentConstants.html#UUID_NAVIGATION_CONFIG), [UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT), [UUID_NODE_STATS_PER_PROCESS_REPORT](ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_REPORT), [UUID_OBJECT_TEMPLATES_FOLDER](ContentConstants.html#UUID_OBJECT_TEMPLATES_FOLDER), [UUID_OFFLINE_RULE_BUNDLES_FOLDER](ContentConstants.html#UUID_OFFLINE_RULE_BUNDLES_FOLDER), [UUID_OPENAPI_FOLDER](ContentConstants.html#UUID_OPENAPI_FOLDER), [UUID_OVERDUE_TASKS_REPORT](ContentConstants.html#UUID_OVERDUE_TASKS_REPORT), [UUID_PACKAGES_FOLDER](ContentConstants.html#UUID_PACKAGES_FOLDER), [UUID_PAUSED_PROCESSES_REPORT](ContentConstants.html#UUID_PAUSED_PROCESSES_REPORT), [UUID_PERFORMANCE_INDICATOR_GREEN](ContentConstants.html#UUID_PERFORMANCE_INDICATOR_GREEN), [UUID_PERFORMANCE_INDICATOR_RED](ContentConstants.html#UUID_PERFORMANCE_INDICATOR_RED), [UUID_PERFORMANCE_INDICATOR_YELLOW](ContentConstants.html#UUID_PERFORMANCE_INDICATOR_YELLOW), [UUID_PRIORITY_ICONS_FOLDER](ContentConstants.html#UUID_PRIORITY_ICONS_FOLDER), [UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT), [UUID_PROCESS_INSTANCES_PER_MODEL_REPORT](ContentConstants.html#UUID_PROCESS_INSTANCES_PER_MODEL_REPORT), [UUID_PROCESS_MODEL_REPORT_FOLDER](ContentConstants.html#UUID_PROCESS_MODEL_REPORT_FOLDER), [UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER](ContentConstants.html#UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER), [UUID_PROCESS_REPORTS_FOLDER](ContentConstants.html#UUID_PROCESS_REPORTS_FOLDER), [UUID_PROCESSES_STARTED_BY_ME_REPORT](ContentConstants.html#UUID_PROCESSES_STARTED_BY_ME_REPORT), [UUID_PROCESSES_WITH_PROBLEMS_REPORT](ContentConstants.html#UUID_PROCESSES_WITH_PROBLEMS_REPORT), [UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER](ContentConstants.html#UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER), [UUID_RULES_ROOT_FOLDER](ContentConstants.html#UUID_RULES_ROOT_FOLDER), [UUID_RUNNING_PROCESSES_PER_MODEL_REPORT](ContentConstants.html#UUID_RUNNING_PROCESSES_PER_MODEL_REPORT), [UUID_STATISTICS_ACROSS_PROCESSES_REPORT](ContentConstants.html#UUID_STATISTICS_ACROSS_PROCESSES_REPORT), [UUID_SUBPROCESSES_PER_PROCESS_REPORT](ContentConstants.html#UUID_SUBPROCESSES_PER_PROCESS_REPORT), [UUID_SUMMARY_REPORTS_FOLDER](ContentConstants.html#UUID_SUMMARY_REPORTS_FOLDER), [UUID_SYSTEM_DOC_PRIORITY_HIGH](ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_HIGH), [UUID_SYSTEM_DOC_PRIORITY_LOW](ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_LOW), [UUID_SYSTEM_DOC_PRIORITY_NORMAL](ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_NORMAL), [UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS](ContentConstants.html#UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS), [UUID_SYSTEM_KNOWLEDGE_CENTER](ContentConstants.html#UUID_SYSTEM_KNOWLEDGE_CENTER), [UUID_SYSTEM_RECORD_TYPES_FOLDER](ContentConstants.html#UUID_SYSTEM_RECORD_TYPES_FOLDER), [UUID_SYSTEM_REPORTS_FOLDER](ContentConstants.html#UUID_SYSTEM_REPORTS_FOLDER), [UUID_SYSTEM_SYSRULES_DESIGNER_ROOT](ContentConstants.html#UUID_SYSTEM_SYSRULES_DESIGNER_ROOT), [UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER), [UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING), [UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS), [UUID_SYSTEM_SYSRULES_FOLDER_HOME](ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_HOME), [UUID_SYSTEM_SYSRULES_INTERNAL_ROOT](ContentConstants.html#UUID_SYSTEM_SYSRULES_INTERNAL_ROOT), [UUID_TASK_REPORTS_FOLDER](ContentConstants.html#UUID_TASK_REPORTS_FOLDER), [UUID_TASKS_DUE_TODAY_REPORT](ContentConstants.html#UUID_TASKS_DUE_TODAY_REPORT), [UUID_TASKS_FOR_USER_REPORT](ContentConstants.html#UUID_TASKS_FOR_USER_REPORT), [UUID_TASKS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_TASKS_PER_PROCESS_MODEL_REPORT), [UUID_TEMPORARY_DOCS_FOLDER](ContentConstants.html#UUID_TEMPORARY_DOCS_FOLDER), [UUID_TEMPORARY_DOCS_KC](ContentConstants.html#UUID_TEMPORARY_DOCS_KC), [UUID_USER_COVER_PHOTOS_FOLDER](ContentConstants.html#UUID_USER_COVER_PHOTOS_FOLDER), [UUID_USER_PICTURES_FOLDER](ContentConstants.html#UUID_USER_PICTURES_FOLDER), [UUID_USER_THUMBNAILS_FOLDER](ContentConstants.html#UUID_USER_THUMBNAILS_FOLDER), [UUID_VERSIONS_PER_PROCESS_MODEL_REPORT](ContentConstants.html#UUID_VERSIONS_PER_PROCESS_MODEL_REPORT), [VERSION_CURRENT](ContentConstants.html#VERSION_CURRENT), [VERSION_ORIGINAL](ContentConstants.html#VERSION_ORIGINAL), [VIS_ADVERTISE](ContentConstants.html#VIS_ADVERTISE), [VIS_DEFAULT](ContentConstants.html#VIS_DEFAULT), [VIS_HIERARCHY](ContentConstants.html#VIS_HIERARCHY), [VIS_INDEXABLE](ContentConstants.html#VIS_INDEXABLE), [VIS_QUOTA](ContentConstants.html#VIS_QUOTA), [VIS_SEARCHABLE](ContentConstants.html#VIS_SEARCHABLE), [VIS_SYSTEM](ContentConstants.html#VIS_SYSTEM), [VIS_UNLOGGED](ContentConstants.html#VIS_UNLOGGED)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[Content](#%3Cinit%3E\(\))()`

    Default constructor (necessary for return converters).

    `protected`

    `[Content](#%3Cinit%3E\(int\))(int type_)`

    Constructs a new `Content` bean with the given type.

    `protected`

    `[Content](#%3Cinit%3E\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    Constructs a new `Content` bean with the given type.

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addSecurity](#addSecurity\(int\))(int security_)`

    Adds security by bitwise orring it with the current security.

    `void`

    `[addSecurity](#addSecurity\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security_)`

    Adds security.

    `void`

    `[addVisibility](#addVisibility\(int\))(int visibility_)`

    Adds visibility by bitwise orring it with the current visibility.

    `void`

    `[addVisibility](#addVisibility\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility_)`

    Adds visibility.

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Adds the primary keys of any Appian-typed objects that are used by the mapping of this node to the given cache.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getActionRequested](#getActionRequested\(\))()`

    Gets the action that was requested and is currently pending approval.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getActionRequester](#getActionRequester\(\))()`

    Gets the username of the user that requested the action currently pending approval.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[getAttributes](#getAttributes\(\))()`

    Gets the attribute map, which can be used to store arbitary properties on content objects.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getChangesRequireApproval](#getChangesRequireApproval\(\))()`

    Gets whether changes require approval.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getCreatedTimestamp](#getCreatedTimestamp\(\))()`

    Gets the date and time the content was created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Gets the username of the user that created the content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCurrentContentId](#getCurrentContentId\(\))()`

    Gets the content ID of the current (aka latest) version of this content.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDepth](#getDepth\(\))()`

    Gets the depth (if the content was returned by a service method that populates the depth).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Gets the description.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(\))()`

    Gets the display name of the object.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getExpirationTimestamp](#getExpirationTimestamp\(\))()`

    Gets the date and time that the content will expire.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getFavorite](#getFavorite\(\))()`

    Gets whether this is favorite.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getForum](#getForum\(\))()`

    Deprecated.

    The Discussion Forums functionality will be removed in a future release.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getLatestVersionId](#getLatestVersionId\(\))()`

    Snapshot of the Content's latest version ID.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLockedAt](#getLockedAt\(\))()`

    Gets the date and time that the content was locked, or `null` if the content is not locked.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedBy](#getLockedBy\(\))()`

    Deprecated.

    use [`getLockedByUsername()`](#getLockedByUsername\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedByUsername](#getLockedByUsername\(\))()`

    Gets the username of the user that has locked the content, or blank if the content is not locked.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getLog](#getLog\(\))()`

    Gets the log ID sent to the collaboration statistics server.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLogName](#getLogName\(\))()`

    Gets the name of the log kept by the collaboration statistics server.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfVersions](#getNumberOfVersions\(\))()`

    Gets the number of versions of the content that currently exist, excluding the current version.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getOriginalContentId](#getOriginalContentId\(\))()`

    Gets the content ID of the original version of this content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParent](#getParent\(\))()`

    Gets the ID of the parent (the container that contains this content).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getParentName](#getParentName\(\))()`

    Gets the name of the parent (the container that contains this content).

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getParentType](#getParentType\(\))()`

    Gets the type of the parent (the container that contains this content).

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getPartition](#getPartition\(\))()`

    Gets the ID of the partition.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPartitionName](#getPartitionName\(\))()`

    Gets the name of the partition.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getPendingApprovalCount](#getPendingApprovalCount\(\))()`

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")`

    `[getRoleSet](#getRoleSet\(\))()`

    Gets the role set.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSecurity](#getSecurity\(\))()`

    Gets the security, which indicates that the role map should be modified in some way.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSize](#getSize\(\))()`

    Gets the size of the content object.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getState](#getState\(\))()`

    Gets the current state of the content.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSubtype](#getSubtype\(\))()`

    Gets the subtype of the object.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Gets the type of the content.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getTypesOfChildren](#getTypesOfChildren\(\))()`

    Gets the typemask for the types of children that exist for this content (note: this only applies to containers).

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getUpdatedTimestamp](#getUpdatedTimestamp\(\))()`

    Gets the date and time that the content was last updated.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUsersPendingAccess](#getUsersPendingAccess\(\))()`

    Gets the list of usernames of users that are pending access (used for non-public content).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Returns the UUID of the object.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getVersionId](#getVersionId\(\))()`

    Gets the ID of the content version.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getVersions](#getVersions\(\))()`

    Deprecated. 

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getVisibility](#getVisibility\(\))()`

    Gets the visibility, which indicates which parts of the application can see the content.

    `boolean`

    `[hasChildrenOfType](#hasChildrenOfType\(int\))(int typeMask_)`

    Checks whether this content has children of a particular type or any of the types in the given type mask.

    `void`

    `[removeSecurity](#removeSecurity\(int\))(int security_)`

    Removes security by unsetting in the security any bits in the security parameter that were previously set.

    `void`

    `[removeSecurity](#removeSecurity\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security_)`

    Removes security.

    `void`

    `[removeVisibility](#removeVisibility\(int\))(int visibility_)`

    Removes visibility by unsetting in the security any bits in the security parameter that were previously set.

    `void`

    `[removeVisibility](#removeVisibility\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility_)`

    Removes visibility.

    `boolean`

    `[securityContains](#securityContains\(int\))(int security_)`

    Check whether the current security contains the security passed in.

    `boolean`

    `[securityContains](#securityContains\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security_)`

    Check whether the current security contains the security passed in.

    `void`

    `[setActionRequested](#setActionRequested\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") actionRequested_)`

    Sets the action that was requested and is currently pending approval.

    `void`

    `[setActionRequester](#setActionRequester\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionRequester_)`

    Sets the username of the user that requested the action currently pending approval.

    `void`

    `[setAttributes](#setAttributes\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> attributes_)`

    Sets the attribute map, which can be used to store arbitary properties on content objects.

    `void`

    `[setChangesRequireApproval](#setChangesRequireApproval\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") changesRequireApproval_)`

    Sets whether changes require approval.

    `void`

    `[setCreatedTimestamp](#setCreatedTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") createdTimestamp_)`

    Sets the date and time the content was created.

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator_)`

    Sets the username of the user that created the content.

    `void`

    `[setCurrentContentId](#setCurrentContentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Sets the content ID of the current (aka latest) version of this content.

    `void`

    `[setDepth](#setDepth\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") depth_)`

    Sets the depth.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Sets the description.

    `void`

    `[setExpirationTimestamp](#setExpirationTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") expirationTimestamp_)`

    Sets the date and time that the content will expire.

    `void`

    `[setFavorite](#setFavorite\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") favorite_)`

    Sets whether this is a favorite.

    `void`

    `[setForum](#setForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forum_)`

    Deprecated.

    The Discussion Forums functionality will be removed in a future release.

    `void`

    `[setLatestVersionId](#setLatestVersionId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") latestVersionId_)`

    Sets the latest version ID of the Content.

    `void`

    `[setLockedAt](#setLockedAt\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lockedAt_)`

    This field cannot be updated in the database.

    `void`

    `[setLockedBy](#setLockedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy_)`

    Deprecated.

    use {@link #setLockedByUsername(String))}

    `void`

    `[setLockedByUsername](#setLockedByUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedByUsername)`

    Sets the username of the user that has locked the content.

    `void`

    `[setLog](#setLog\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") log_)`

    Sets the log ID sent to the collaboration statistics server.

    `void`

    `[setLogName](#setLogName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") logName_)`

    Sets the name of the log kept by the collaboration statistics server.

    `void`

    `[setNumberOfVersions](#setNumberOfVersions\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfVersions_)`

    Gets the number of versions of the content that currently exist, excluding the current version.

    `void`

    `[setOriginalContentId](#setOriginalContentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Sets the content ID of the original version of this content.

    `void`

    `[setParent](#setParent\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parent_)`

    Sets the ID of the parent (the container that contains this content).

    `void`

    `[setParentName](#setParentName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName_)`

    Sets the name of the parent (the container that contains this content).

    `void`

    `[setParentType](#setParentType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") parentType_)`

    Sets the type of the parent (the container that contains this content).

    `void`

    `[setPartition](#setPartition\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") partition_)`

    Sets the ID of the partition.

    `void`

    `[setPartitionName](#setPartitionName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") partitionName_)`

    Sets the name of the partition.

    `void`

    `[setPendingApprovalCount](#setPendingApprovalCount\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") pendingApprovalCount)`

    This value will be ignored in create/update.

    `void`

    `[setRoleSet](#setRoleSet\(com.appiancorp.suiteapi.content.ContentRoleSet\))([ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content") roleSet_)`

    Sets the role set.

    `void`

    `[setSecurity](#setSecurity\(int\))(int security_)`

    Sets the security.

    `void`

    `[setSecurity](#setSecurity\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security_)`

    Sets the security, which indicates that the role map should be modified in some way.

    `void`

    `[setSize](#setSize\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") size_)`

    Sets the size of the content object.

    `void`

    `[setState](#setState\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state_)`

    Sets the current state of the content.

    `void`

    `[setSubtype](#setSubtype\(int\))(int subtype_)`

    Sets the subtype of the content.

    `void`

    `[setSubtype](#setSubtype\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") subtype_)`

    Sets the subtype of the content.

    `void`

    `[setType](#setType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_)`

    Gets the type of the content.

    `void`

    `[setTypesOfChildren](#setTypesOfChildren\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typesOfChildren_)`

    Sets the typemask for the types of children that exist for this content (note: this only applies to containers).

    `void`

    `[setUpdatedTimestamp](#setUpdatedTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") updatedTimestamp_)`

    Sets the date and time that the content was last updated.

    `void`

    `[setUsersPendingAccess](#setUsersPendingAccess\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usersPendingAccess_)`

    Sets the list of usernames of users that are pending access (used for non-public content).

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    Sets the UUID of the object.

    `void`

    `[setVersionId](#setVersionId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId_)`

    Sets the ID of the content version.

    `void`

    `[setVersions](#setVersions\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] versions_)`

    Deprecated.

    this field cannot be updated in the database.

    `void`

    `[setVisibility](#setVisibility\(int\))(int visibility_)`

    Sets the visibility.

    `void`

    `[setVisibility](#setVisibility\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility_)`

    Sets the visibility, which indicates which parts of the application can see the content.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Creates a string representation of the content (does not contain all fields).

    `boolean`

    `[visibilityContains](#visibilityContains\(int\))(int visibility_)`

    Check whether the current visibility contains the visibility passed in.

    `boolean`

    `[visibilityContains](#visibilityContains\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility_)`

    Check whether the current visibility contains the visibility passed in.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Content

        public Content()

        Default constructor (necessary for return converters). Sets visibility to [`ContentConstants.VIS_DEFAULT`](ContentConstants.html#VIS_DEFAULT). Sets security to none.

    -   ### Content

        protected Content(int type\_)

        Constructs a new `Content` bean with the given type. Sets visibility to [`ContentConstants.VIS_DEFAULT`](ContentConstants.html#VIS_DEFAULT). Sets security to none.

        Parameters:

        `type_` - the content type

        See Also:

        -   [`Content(Integer)`](#%3Cinit%3E\(java.lang.Integer\))

    -   ### Content

        protected Content([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

        Constructs a new `Content` bean with the given type.

        Parameters:

        `type_` - the content type

-   ## Method Details

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Description copied from class: `[Identity](../common/Identity.html#getUuid\(\))`

        Returns the UUID of the object.

        Overrides:

        `[getUuid](../common/Identity.html#getUuid\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        UUID of object

        See Also:

        -   [`Identity.setUuid(String)`](../common/Identity.html#setUuid\(java.lang.String\))

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_)

        Description copied from class: `[Identity](../common/Identity.html#setUuid\(java.lang.String\))`

        Sets the UUID of the object.

        Overrides:

        `[setUuid](../common/Identity.html#setUuid\(java.lang.String\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Parameters:

        `uuid_` - UUID to set

        See Also:

        -   [`Identity.getUuid()`](../common/Identity.html#getUuid\(\))

    -   ### getPendingApprovalCount

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getPendingApprovalCount()

        Returns:

        count of content items with pending approvals, including this content item and its children

    -   ### setPendingApprovalCount

        public void setPendingApprovalCount([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") pendingApprovalCount)

        This value will be ignored in create/update.

    -   ### getAttributes

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> getAttributes()

        Gets the attribute map, which can be used to store arbitary properties on content objects. The attribute map is also used to store certain fields for rules and constants, however do not call this method to directly retrieve attributes for rules or constants. Instead, call the getters on [`Constant`](../rules/Constant.html "class in com.appiancorp.suiteapi.rules") or [`FreeformRule`](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") so that the class-specific handling is applied to the retrieved value.

        Returns:

        the attribute map

        See Also:

        -   [`setAttributes(Map)`](#setAttributes\(java.util.Map\))

    -   ### setAttributes

        public void setAttributes([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> attributes\_)

        Sets the attribute map, which can be used to store arbitary properties on content objects. The attribute map is also used to store certain fields for rules and constants, however do not call this method to directly modify attributes for rules or constants. Instead, call the setters on [`Constant`](../rules/Constant.html "class in com.appiancorp.suiteapi.rules") or [`FreeformRule`](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules") so that the class-specific handling is applied to the stored value. This field can be updated in the database.

        Parameters:

        `attributes_` - the attribute map

        See Also:

        -   [`getAttributes()`](#getAttributes\(\))

    -   ### getSize

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSize()

        Gets the size of the content object. The meaning of "size" can vary depending on the type. Specifically for a [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge"), the size is the size of the file stored in bytes. This size counts against the user's quota.

        Returns:

        the size

        See Also:

        -   [`setSize(Integer)`](#setSize\(java.lang.Integer\))

    -   ### setSize

        public void setSize([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") size\_)

        Sets the size of the content object. The meaning of "size" can vary depending on the type. Specifically for a [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge"), the size is the size of the file stored in bytes. This size counts against the user's quota. This field can be updated in the database.

        Parameters:

        `size_` - the size of the content

        See Also:

        -   [`getSize()`](#getSize\(\))

    -   ### getChangesRequireApproval

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getChangesRequireApproval()

        Gets whether changes require approval.

        Returns:

        `Boolean.TRUE` if changes require approval, `Boolean.FALSE` otherwise

        See Also:

        -   [`setChangesRequireApproval(Boolean)`](#setChangesRequireApproval\(java.lang.Boolean\))

    -   ### setChangesRequireApproval

        public void setChangesRequireApproval([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") changesRequireApproval\_)

        Sets whether changes require approval.

        Parameters:

        `changesRequireApproval` - `Boolean.TRUE` if changes require approval, `Boolean.FALSE` otherwise

        See Also:

        -   [`getChangesRequireApproval()`](#getChangesRequireApproval\(\))

    -   ### getCreatedTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getCreatedTimestamp()

        Gets the date and time the content was created. This field can be updated in the database.

        Returns:

        the date and time the content was created

        See Also:

        -   [`setCreatedTimestamp(Timestamp)`](#setCreatedTimestamp\(java.sql.Timestamp\))

    -   ### setCreatedTimestamp

        public void setCreatedTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") createdTimestamp\_)

        Sets the date and time the content was created.

        Parameters:

        `createdTimestamp_` - the date and time the content was created

        See Also:

        -   [`getCreatedTimestamp()`](#getCreatedTimestamp\(\))

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Gets the username of the user that created the content. For non-container content, the creator is the user who created the last version of the content.

        Returns:

        the username

        See Also:

        -   [`setCreator(String)`](#setCreator\(java.lang.String\))

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator\_)

        Sets the username of the user that created the content. This field can be updated in the database.

        Parameters:

        `creator_` - the username

        See Also:

        -   [`getCreator()`](#getCreator\(\))

    -   ### getDepth

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDepth()

        Gets the depth (if the content was returned by a service method that populates the depth).

        Returns:

        the depth

        See Also:

        -   [`ContentService.getContentTree(Long, Integer, Integer, Integer)`](ContentService.html#getContentTree\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer\))
        -   [`setDepth(Integer)`](#setDepth\(java.lang.Integer\))

    -   ### setDepth

        public void setDepth([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") depth\_)

        Sets the depth. This field cannot be updated in the database.

        Parameters:

        `depth_` - the depth

        See Also:

        -   [`ContentService.getContentTree(Long, Integer, Integer, Integer)`](ContentService.html#getContentTree\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer\))
        -   [`getDepth()`](#getDepth\(\))

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Gets the description. If the description starts with "##!", then it is internationalized and the internationalization value should be looked up in Java.

        Returns:

        the description

        See Also:

        -   [`setDescription(String)`](#setDescription\(java.lang.String\))

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Sets the description. This field can be updated in the database.

        Parameters:

        `description_` - the description

        See Also:

        -   [`getDescription()`](#getDescription\(\))

    -   ### getExpirationTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getExpirationTimestamp()

        Gets the date and time that the content will expire. If this is `null`, the content will never expire.

        Returns:

        the date and time that the content will expire

        See Also:

        -   [`setExpirationTimestamp(Timestamp)`](#setExpirationTimestamp\(java.sql.Timestamp\))

    -   ### setExpirationTimestamp

        public void setExpirationTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") expirationTimestamp\_)

        Sets the date and time that the content will expire. If this is `null`, the content will never expire. This field can be updated in the database.

        Parameters:

        `expirationTimestamp_` - the date and time that the content will expire

        See Also:

        -   [`getExpirationTimestamp()`](#getExpirationTimestamp\(\))

    -   ### getForum

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getForum()

        Deprecated.

        The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

        Gets the ID of the forum used to discuss this content, or `null` if no such forum has yet been created. Use [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") and [`DiscussionMetadataConvenienceService`](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") to manipulate the forums. When this is set to a forum ID, [`Forum.getRelateds()`](../forums/Forum.html#getRelateds\(\)) should include this content.

        Returns:

        the ID of the forum

        See Also:

        -   [`setForum(Long)`](#setForum\(java.lang.Long\))

    -   ### setForum

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forum\_)

        Deprecated.

        The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

        Sets the ID of the forum used to discuss this content. Use [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums") and [`DiscussionMetadataConvenienceService`](../forums/DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums") to manipulate the forums. When this is set to a forum ID, [`Forum.getRelateds()`](../forums/Forum.html#getRelateds\(\)) should include this content. This field can be updated in the database. You must have admin privileges to change this field if it has already been set to a forum (a non-zero value).

        Parameters:

        `forum_` - the ID of the forum

        See Also:

        -   [`getForum()`](#getForum\(\))

    -   ### getLockedBy

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedBy()

        Deprecated.

        use [`getLockedByUsername()`](#getLockedByUsername\(\))

        Gets the username of the user that has locked the content, or `null` if the content is not locked.

        Returns:

        the username

        See Also:

        -   [`setLockedBy(String)`](#setLockedBy\(java.lang.String\))

    -   ### setLockedBy

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setLockedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy\_)

        Deprecated.

        use {@link #setLockedByUsername(String))}

        Sets the username of the user that has locked the content, or `null` if the content is not locked. This field cannot be updated in the database. Set by [`ContentService.lock(Long[])`](ContentService.html#lock\(java.lang.Long%5B%5D\)), [`ContentService.unlock(Long[])`](ContentService.html#unlock\(java.lang.Long%5B%5D\)), and [`ContentService.breakLock(Long[])`](ContentService.html#breakLock\(java.lang.Long%5B%5D\)). If the content is not locked, this is set to ANONYMOUS or blank.

        Parameters:

        `lockedBy_` - the username

        See Also:

        -   [`getLockedBy()`](#getLockedBy\(\))

    -   ### getLockedAt

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLockedAt()

        Gets the date and time that the content was locked, or `null` if the content is not locked.

        Returns:

        the date and time that the content was locked

        See Also:

        -   [`setLockedBy(String)`](#setLockedBy\(java.lang.String\))

    -   ### setLockedAt

        public void setLockedAt([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lockedAt\_)

        This field cannot be updated in the database.

        Parameters:

        `lockedAt_` - the date and time that the content was locked.

        See Also:

        -   [`setLockedBy(String)`](#setLockedBy\(java.lang.String\))

    -   ### getLog

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getLog()

        Gets the log ID sent to the collaboration statistics server. It is guaranteed to be unique for versions of content objects, and a value is never reused.

        Returns:

        the log ID

        See Also:

        -   [`setLog(Long)`](#setLog\(java.lang.Long\))

    -   ### setLog

        public void setLog([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") log\_)

        Sets the log ID sent to the collaboration statistics server. This field can be updated in the database.

        Parameters:

        `log_` - the log ID

        See Also:

        -   [`getLog()`](#getLog\(\))

    -   ### getLogName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLogName()

        Gets the name of the log kept by the collaboration statistics server.

        Returns:

        the name of the log

        See Also:

        -   [`setLogName(String)`](#setLogName\(java.lang.String\))

    -   ### setLogName

        public void setLogName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") logName\_)

        Sets the name of the log kept by the collaboration statistics server. This field cannot be updated in the database.

        Parameters:

        `logName_` - the name of the log

        See Also:

        -   [`getLogName()`](#getLogName\(\))

    -   ### getParent

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParent()

        Gets the ID of the parent (the container that contains this content).

        Returns:

        the ID of the parent

        See Also:

        -   [`setParent(Long)`](#setParent\(java.lang.Long\))

    -   ### setParent

        public void setParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parent\_)

        Sets the ID of the parent (the container that contains this content). The parent cannot be set to the piece of content itself. This field can be updated in the database.

        Parameters:

        `parent_` - the ID of the parent

        See Also:

        -   [`getParent()`](#getParent\(\))

    -   ### getParentName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getParentName()

        Gets the name of the parent (the container that contains this content).

        Returns:

        the name of the parent

        See Also:

        -   [`setParentName(String)`](#setParentName\(java.lang.String\))

    -   ### setParentName

        public void setParentName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName\_)

        Sets the name of the parent (the container that contains this content). This field cannot be updated in the database.

        Parameters:

        `parentName_` - the name of the parent

        See Also:

        -   [`getParentName()`](#getParentName\(\))

    -   ### getParentType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getParentType()

        Gets the type of the parent (the container that contains this content).

        Returns:

        the type of the parent

        See Also:

        -   [`setParentType(Integer)`](#setParentType\(java.lang.Integer\))

    -   ### setParentType

        public void setParentType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") parentType\_)

        Sets the type of the parent (the container that contains this content). This field cannot be updated in the database.

        Parameters:

        `parentType_` - the type of the parent

        See Also:

        -   [`getParentType()`](#getParentType\(\))

    -   ### getActionRequested

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getActionRequested()

        Gets the action that was requested and is currently pending approval. One of [`ContentConstants.ACT_DELETE`](ContentConstants.html#ACT_DELETE), [`ContentConstants.ACT_DEACTIVATE`](ContentConstants.html#ACT_DEACTIVATE), or [`ContentConstants.ACT_CREATE`](ContentConstants.html#ACT_CREATE). This is `null` if no action is pending approval. This is only populated from [`ContentService.getRequests()`](ContentService.html#getRequests\(\)).

        Returns:

        the action that was requested

        See Also:

        -   [`setActionRequested(Integer)`](#setActionRequested\(java.lang.Integer\))

    -   ### setActionRequested

        public void setActionRequested([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") actionRequested\_)

        Sets the action that was requested and is currently pending approval. This field cannot be updated in the database.

        Parameters:

        `actionRequested_` - the action that was requested

        See Also:

        -   [`getActionRequested()`](#getActionRequested\(\))

    -   ### getActionRequester

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getActionRequester()

        Gets the username of the user that requested the action currently pending approval. This is `null` if no action is pending approval. This is only populated from [`ContentService.getRequests()`](ContentService.html#getRequests\(\)).

        Returns:

        the username

        See Also:

        -   [`setActionRequester(String)`](#setActionRequester\(java.lang.String\))

    -   ### setActionRequester

        public void setActionRequester([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionRequester\_)

        Sets the username of the user that requested the action currently pending approval. This field cannot be updated in the database.

        Parameters:

        `actionRequester_` - the username

        See Also:

        -   [`getActionRequester()`](#getActionRequester\(\))

    -   ### getSecurity

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSecurity()

        Gets the security, which indicates that the role map should be modified in some way. Different security modifiers can be combined by using the bitwise or operator. For instance, a security of `ContentConstants.SEC_INH_VIEWER | ContentConstants.SEC_PUBLIC` would indicate that the content should both inherit viewers and be considered public.

        Returns:

        the security modifiers

        See Also:

        -   [`setSecurity(Integer)`](#setSecurity\(java.lang.Integer\))
        -   [`securityContains(int)`](#securityContains\(int\))

    -   ### setSecurity

        public void setSecurity([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security\_)

        Sets the security, which indicates that the role map should be modified in some way. Different security modifiers can be combined by using the bitwise or operator. For instance, a security of `ContentConstants.SEC_INH_VIEWER | ContentConstants.SEC_PUBLIC` would indicate that the content should both inherit viewers and be considered public. This field can be updated in the database. if visibility does not have [`ContentConstants.VIS_SYSTEM`](ContentConstants.html#VIS_SYSTEM) set

        Parameters:

        `security_` - the security modifiers

        See Also:

        -   [`getSecurity()`](#getSecurity\(\))
        -   [`addSecurity(int)`](#addSecurity\(int\))
        -   [`removeSecurity(int)`](#removeSecurity\(int\))

    -   ### setSecurity

        public void setSecurity(int security\_)

        Sets the security. This method calls [`setSecurity(Integer)`](#setSecurity\(java.lang.Integer\)).

        Parameters:

        `security_` - the security

        See Also:

        -   [`getSecurity()`](#getSecurity\(\))

    -   ### addSecurity

        public void addSecurity([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security\_)

        Adds security. This method calls [`addSecurity(int)`](#addSecurity\(int\)).

        Parameters:

        `security_` - the security to add

        See Also:

        -   [`setSecurity(Integer)`](#setSecurity\(java.lang.Integer\))

    -   ### addSecurity

        public void addSecurity(int security\_)

        Adds security by bitwise orring it with the current security.

        Parameters:

        `security_` - the security to add

        See Also:

        -   [`setSecurity(Integer)`](#setSecurity\(java.lang.Integer\))

    -   ### removeSecurity

        public void removeSecurity([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security\_)

        Removes security. This method calls [`removeSecurity(int)`](#removeSecurity\(int\)).

        Parameters:

        `security_` - the security to remove

        See Also:

        -   [`getSecurity()`](#getSecurity\(\))
        -   [`setSecurity(Integer)`](#setSecurity\(java.lang.Integer\))

    -   ### removeSecurity

        public void removeSecurity(int security\_)

        Removes security by unsetting in the security any bits in the security parameter that were previously set.

        Parameters:

        `security_` - the security to remove

        See Also:

        -   [`getSecurity()`](#getSecurity\(\))
        -   [`setSecurity(Integer)`](#setSecurity\(java.lang.Integer\))

    -   ### securityContains

        public boolean securityContains([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security\_)

        Check whether the current security contains the security passed in. This method calls [`securityContains(int)`](#securityContains\(int\)).

        Parameters:

        `security_` - the security to check for

        Returns:

        true if the current security contains the parameter, false otherwise

    -   ### securityContains

        public boolean securityContains(int security\_)

        Check whether the current security contains the security passed in. This returns true if there is ANY bit overlap, i.e., if any of the security modifiers in the current security match up with any of the modifiers in the security passed in. For instance, if the current security is [`ContentConstants.SEC_INH_ADMIN`](ContentConstants.html#SEC_INH_ADMIN) and [`ContentConstants.SEC_PUBLIC`](ContentConstants.html#SEC_PUBLIC), and the security to check for is [`ContentConstants.SEC_PUBLIC`](ContentConstants.html#SEC_PUBLIC) and [`ContentConstants.SEC_CREATOR_ADMIN`](ContentConstants.html#SEC_CREATOR_ADMIN), this method returns true.

        Parameters:

        `security_` - the security to check for

        Returns:

        true if the current security contains the parameter, false otherwise

    -   ### getState

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getState()

        Gets the current state of the content. One of the [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").STATE\_XXX constants.

        Returns:

        the state

        See Also:

        -   [`setState(Integer)`](#setState\(java.lang.Integer\))

    -   ### setState

        public void setState([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state\_)

        Sets the current state of the content. This field can only be updated in the database when specified explicitly in the list of fields to update when using the API [`ContentService.updateFields(com.appiancorp.suiteapi.content.Content, java.lang.Integer[], java.lang.Integer)`](ContentService.html#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)) API. All other create/update APIs ignore the set value.

        Parameters:

        `state_` - the state

        See Also:

        -   [`getState()`](#getState\(\))

    -   ### getSubtype

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSubtype()

        Gets the subtype of the object. Currently, the subtype is only applicable to [`Folder`](Folder.html "class in com.appiancorp.suiteapi.content") and [`Rule`](../rules/Rule.html "class in com.appiancorp.suiteapi.rules") objects.

        Returns:

        the subtype

        See Also:

        -   [`setSubtype(Integer)`](#setSubtype\(java.lang.Integer\))

    -   ### setSubtype

        public void setSubtype([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") subtype\_)

        Sets the subtype of the content. Currently, the subtype is only applicable to [`Folder`](Folder.html "class in com.appiancorp.suiteapi.content") and [`Rule`](../rules/Rule.html "class in com.appiancorp.suiteapi.rules") objects. This field can be updated in the database.

        Parameters:

        `subtype_` - the subtype

        See Also:

        -   [`getSubtype()`](#getSubtype\(\))

    -   ### setSubtype

        public void setSubtype(int subtype\_)

        Sets the subtype of the content. This method simply calls [`setSubtype(Integer)`](#setSubtype\(java.lang.Integer\)).

        Parameters:

        `subtype_` - the subtype

        See Also:

        -   [`getSubtype()`](#getSubtype\(\))

    -   ### getType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getType()

        Gets the type of the content. One of [`ContentConstants.TYPE_DOCUMENT`](ContentConstants.html#TYPE_DOCUMENT), [`ContentConstants.TYPE_FOLDER`](ContentConstants.html#TYPE_FOLDER), [`ContentConstants.TYPE_PERSONAL_KC`](ContentConstants.html#TYPE_PERSONAL_KC), [`ContentConstants.TYPE_COMMUNITY_KC`](ContentConstants.html#TYPE_COMMUNITY_KC), [`ContentConstants.TYPE_COMMUNITY`](ContentConstants.html#TYPE_COMMUNITY), [`ContentConstants.TYPE_RULE`](ContentConstants.html#TYPE_RULE), [`ContentConstants.TYPE_APPLICATION`](ContentConstants.html#TYPE_APPLICATION), or [`ContentConstants.TYPE_CUSTOM`](ContentConstants.html#TYPE_CUSTOM).

        Returns:

        the type

        See Also:

        -   [`setType(Integer)`](#setType\(java.lang.Integer\))

    -   ### setType

        public void setType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_)

        Gets the type of the content. One of [`ContentConstants.TYPE_DOCUMENT`](ContentConstants.html#TYPE_DOCUMENT), [`ContentConstants.TYPE_FOLDER`](ContentConstants.html#TYPE_FOLDER), [`ContentConstants.TYPE_PERSONAL_KC`](ContentConstants.html#TYPE_PERSONAL_KC), [`ContentConstants.TYPE_COMMUNITY_KC`](ContentConstants.html#TYPE_COMMUNITY_KC), [`ContentConstants.TYPE_COMMUNITY`](ContentConstants.html#TYPE_COMMUNITY), [`ContentConstants.TYPE_RULE`](ContentConstants.html#TYPE_RULE), [`ContentConstants.TYPE_APPLICATION`](ContentConstants.html#TYPE_APPLICATION), or [`ContentConstants.TYPE_CUSTOM`](ContentConstants.html#TYPE_CUSTOM). When you create one of the sub-classes of `Content`, the type is automatically set. This field can be updated in the database.

        Parameters:

        `type_` - the type

        See Also:

        -   [`getType()`](#getType\(\))

    -   ### getUpdatedTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getUpdatedTimestamp()

        Gets the date and time that the content was last updated.

        Returns:

        the date and time that the content was last updated

        See Also:

        -   [`setUpdatedTimestamp(Timestamp)`](#setUpdatedTimestamp\(java.sql.Timestamp\))

    -   ### setUpdatedTimestamp

        public void setUpdatedTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") updatedTimestamp\_)

        Sets the date and time that the content was last updated. This field can be updated in the database. It will be automatically updated to current time in an update if not set or not modified manually.

        Parameters:

        `updatedTimestamp_` - the date and time that the content was last updated.

        See Also:

        -   [`getUpdatedTimestamp()`](#getUpdatedTimestamp\(\))

    -   ### getUsersPendingAccess

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUsersPendingAccess()

        Gets the list of usernames of users that are pending access (used for non-public content). This is only populated from [`ContentService.getRequests()`](ContentService.html#getRequests\(\)).

        Returns:

        the array of usernames

        See Also:

        -   [`setUsersPendingAccess(String[])`](#setUsersPendingAccess\(java.lang.String%5B%5D\))

    -   ### setUsersPendingAccess

        public void setUsersPendingAccess([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usersPendingAccess\_)

        Sets the list of usernames of users that are pending access (used for non-public content). This field cannot be updated in the database.

        Parameters:

        `usersPendingAccess_` - the array of usernames

        See Also:

        -   [`getUsersPendingAccess()`](#getUsersPendingAccess\(\))

    -   ### getVersionId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getVersionId()

        Gets the ID of the content version. The current version of content has an ID of -1. Previous versions of content have IDs starting with 1 for the oldest and incrementing by 1. Non-versioned content will have a `null` version ID.

        Returns:

        the ID of the content version

        See Also:

        -   [`setVersionId(Integer)`](#setVersionId\(java.lang.Integer\))

    -   ### setVersionId

        public void setVersionId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId\_)

        Sets the ID of the content version. This field cannot be updated in the database.

        Parameters:

        `versionId_` - the ID of the content version

        See Also:

        -   [`getVersionId()`](#getVersionId\(\))

    -   ### getLatestVersionId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getLatestVersionId()

        Snapshot of the Content's latest version ID.

        Returns:

        the latest version ID of the Content

        See Also:

        -   [`setLatestVersionId(Integer)`](#setLatestVersionId\(java.lang.Integer\))

    -   ### setLatestVersionId

        public void setLatestVersionId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") latestVersionId\_)

        Sets the latest version ID of the Content. This field cannot be updated in the database.

        Parameters:

        `lastestVersionId_` - the latest version ID of the Content

        See Also:

        -   [`getLatestVersionId()`](#getLatestVersionId\(\))

    -   ### getVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getVersions()

        Deprecated.

        Returns null. Before deprecation, got the content IDs of all of the versions of this content. The full `Content` beans for the versions can be obtained by calling [`ContentService.getContentList(Long[], Integer)`](ContentService.html#getContentList\(java.lang.Long%5B%5D,java.lang.Integer\)). **However, if there exists only 1 version of the document then the only entry that exists in the returned versions list is -1L.**

        Returns:

        the version IDs

        See Also:

        -   [`setVersions(Long[])`](#setVersions\(java.lang.Long%5B%5D\))

    -   ### setVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] versions\_)

        Deprecated.

        this field cannot be updated in the database.

        This field cannot be updated in the database. Set by [`ContentService.createVersion(Content[], Integer)`](ContentService.html#createVersion\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)).

        Parameters:

        `versions_` - the version IDs

        See Also:

        -   [`getVersions()`](#getVersions\(\))

    -   ### getOriginalContentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getOriginalContentId()

        Gets the content ID of the original version of this content.

        -   If there is no version or only 1 version of the content, the [`ID of the content`](../common/Identity.html#getId\(\)) is returned.
        -   If more than 1 version of the content exists, the ID corresponding to the last element (i.e. the first/original version) from the [`list of versions`](#getVersions\(\)) is returned.

        Returns:

        The content ID corresponding to the original version.

        See Also:

        -   [`setOriginalContentId(Long)`](#setOriginalContentId\(java.lang.Long\))

    -   ### setOriginalContentId

        public void setOriginalContentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Sets the content ID of the original version of this content. This method is called by the system when retrieving a Content object.

        Parameters:

        `id` -

        See Also:

        -   [`getOriginalContentId()`](#getOriginalContentId\(\))

    -   ### getCurrentContentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCurrentContentId()

        Gets the content ID of the current (aka latest) version of this content.

        -   If there is no version or only 1 version of the content, the [`ID of the content`](../common/Identity.html#getId\(\)) is returned.
        -   If more than 1 version of the content exists, the ID corresponding to the first element (i.e. the current/latest version) from the [`list of versions`](#getVersions\(\)) is returned.

        Returns:

        The content ID corresponding to the current version.

        See Also:

        -   [`setCurrentContentId(Long)`](#setCurrentContentId\(java.lang.Long\))

    -   ### setCurrentContentId

        public void setCurrentContentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Sets the content ID of the current (aka latest) version of this content. This method is called by the system when retrieving a Content object.

        Parameters:

        `id` -

        See Also:

        -   [`getCurrentContentId()`](#getCurrentContentId\(\))

    -   ### getVisibility

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getVisibility()

        Gets the visibility, which indicates which parts of the application can see the content. Different visibility modifiers can be combined by using the bitwise or operator. For instance, a visibility of `ContentConstants.VIS_HIERARCHY | ContentConstants.VIS_SEARCHABLE` would indicate that the content would appear in the hierarchy and would be searchable.

        Returns:

        the visibility modifiers

        See Also:

        -   [`setVisibility(Integer)`](#setVisibility\(java.lang.Integer\))
        -   [`visibilityContains(int)`](#visibilityContains\(int\))

    -   ### setVisibility

        public void setVisibility([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility\_)

        Sets the visibility, which indicates which parts of the application can see the content. Different visibility indicators can be combined by using the bitwise or operator. For instance, a visibility of `ContentConstants.VIS_HIERARCHY | ContentConstants.VIS_SEARCHABLE` would indicate that the content would appear in the hierarchy and would be searchable. This field can be updated in the database.

        Parameters:

        `visibility_` - the visibility modifiers

        See Also:

        -   [`getVisibility()`](#getVisibility\(\))
        -   [`addVisibility(int)`](#addVisibility\(int\))
        -   [`removeVisibility(int)`](#removeVisibility\(int\))

    -   ### setVisibility

        public void setVisibility(int visibility\_)

        Sets the visibility. This method calls [`setVisibility(Integer)`](#setVisibility\(java.lang.Integer\)).

        Parameters:

        `visibility_` - the visibility

        See Also:

        -   [`getVisibility()`](#getVisibility\(\))

    -   ### addVisibility

        public void addVisibility([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility\_)

        Adds visibility. This method calls [`addVisibility(int)`](#addVisibility\(int\)).

        Parameters:

        `visibility_` - the visibility to add

    -   ### addVisibility

        public void addVisibility(int visibility\_)

        Adds visibility by bitwise orring it with the current visibility.

        Parameters:

        `visibility_` - the visibility to add

    -   ### removeVisibility

        public void removeVisibility([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility\_)

        Removes visibility. This method calls [`removeVisibility(int)`](#removeVisibility\(int\)).

        Parameters:

        `visibility_` - the visibility to remove

    -   ### removeVisibility

        public void removeVisibility(int visibility\_)

        Removes visibility by unsetting in the security any bits in the security parameter that were previously set.

        Parameters:

        `visibility_` - the visibility to remove

        See Also:

        -   [`getVisibility()`](#getVisibility\(\))
        -   [`setVisibility(Integer)`](#setVisibility\(java.lang.Integer\))

    -   ### visibilityContains

        public boolean visibilityContains([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") visibility\_)

        Check whether the current visibility contains the visibility passed in. This method calls [`visibilityContains(int)`](#visibilityContains\(int\)).

        Parameters:

        `visibility_` - the visibility to check for

        Returns:

        true if the current visibility contains the parameter, false otherwise

    -   ### visibilityContains

        public boolean visibilityContains(int visibility\_)

        Check whether the current visibility contains the visibility passed in. This returns true if there is ANY bit overlap, i.e., if any of the visibility modifiers in the current visibility match up with any of the modifiers in the visibility passed in. For instance, if the current visibility is [`ContentConstants.VIS_HIERARCHY`](ContentConstants.html#VIS_HIERARCHY) and [`ContentConstants.VIS_SEARCHABLE`](ContentConstants.html#VIS_SEARCHABLE), and the visibility to check for is [`ContentConstants.VIS_SEARCHABLE`](ContentConstants.html#VIS_SEARCHABLE) and [`ContentConstants.VIS_QUOTA`](ContentConstants.html#VIS_QUOTA), this method returns true.

        Parameters:

        `visibility_` - the visibility to check for

        Returns:

        true if the current visibility contains the parameter, false otherwise

    -   ### getPartition

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getPartition()

        Gets the ID of the partition. A partition allows distribution of resources so they need not all occupy the same system resources. In particular, this is available so files on the filesystem may be distributed among multiple OS partitions or directories. This value cannot be negative. This API is not supported for Appian Cloud environments

        Returns:

        the partition ID

        See Also:

        -   [`setPartition(Integer)`](#setPartition\(java.lang.Integer\))

    -   ### setPartition

        public void setPartition([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") partition\_)

        Sets the ID of the partition. A partition allows distribution of resources so they need not all occupy the same system resources. In particular, this is available so files on the filesystem may be distributed among multiple OS partitions or directories. This value cannot be negative. This field can be updated in the database. This API is not supported for Appian Cloud environments

        Parameters:

        `partition_` - the partition ID

        See Also:

        -   [`getPartition()`](#getPartition\(\))

    -   ### getPartitionName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPartitionName()

        Gets the name of the partition. A partition allows distribution of resources so they need not all occupy the same system resources. In particular, this is available so files on the filesystem may be distributed among multiple OS partitions or directories. This API is not supported for Appian Cloud environments

        Returns:

        the name of the partition

        See Also:

        -   [`setPartitionName(String)`](#setPartitionName\(java.lang.String\))

    -   ### setPartitionName

        public void setPartitionName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") partitionName\_)

        Sets the name of the partition. A partition allows distribution of resources so they need not all occupy the same system resources. In particular, this is available so files on the filesystem may be distributed among multiple OS partitions or directories. This field cannot be updated in the database. This API is not supported for Appian Cloud environments

        Parameters:

        `partitionName_` - the name of the partition

        See Also:

        -   [`getPartitionName()`](#getPartitionName\(\))

    -   ### getRoleSet

        public [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content") getRoleSet()

        Gets the role set. This is not automatically populated when you get content from the [`ContentService`](ContentService.html "interface in com.appiancorp.suiteapi.content"). However, you can have the content service populate this field by calling [`ContentService.populateRoleSets(Content[])`](ContentService.html#populateRoleSets\(com.appiancorp.suiteapi.content.Content%5B%5D\)).

        Returns:

        the role set

        See Also:

        -   [`setRoleSet(ContentRoleSet)`](#setRoleSet\(com.appiancorp.suiteapi.content.ContentRoleSet\))

    -   ### setRoleSet

        public void setRoleSet([ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content") roleSet\_)

        Sets the role set.

        Parameters:

        `roleSet_` - the role set

        See Also:

        -   [`getRoleSet()`](#getRoleSet\(\))

    -   ### getTypesOfChildren

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getTypesOfChildren()

        Gets the typemask for the types of children that exist for this content (note: this only applies to containers). This is not automatically populated when you get content from the [`ContentService`](ContentService.html "interface in com.appiancorp.suiteapi.content"). However, you can have the content service populate this field by calling [`ContentService.populateTypesOfChildren(Content[])`](ContentService.html#populateTypesOfChildren\(com.appiancorp.suiteapi.content.Content%5B%5D\)).

        Returns:

        a typemask for the types of children

        See Also:

        -   [`setTypesOfChildren(Integer)`](#setTypesOfChildren\(java.lang.Integer\))

    -   ### setTypesOfChildren

        public void setTypesOfChildren([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typesOfChildren\_)

        Sets the typemask for the types of children that exist for this content (note: this only applies to containers).

        Parameters:

        `typesOfChildren_` - the typemask for the types of children

        See Also:

        -   [`getTypesOfChildren()`](#getTypesOfChildren\(\))

    -   ### getFavorite

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getFavorite()

        Gets whether this is favorite. This is not automatically populated when you get content from the [`ContentService`](ContentService.html "interface in com.appiancorp.suiteapi.content"). However, you can have the content service populate this field by calling [`ContentService.populateFavorites(Content[])`](ContentService.html#populateFavorites\(com.appiancorp.suiteapi.content.Content%5B%5D\)).

        Returns:

        whether this is a favorite

        See Also:

        -   [`setFavorite(Boolean)`](#setFavorite\(java.lang.Boolean\))

    -   ### setFavorite

        public void setFavorite([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") favorite\_)

        Sets whether this is a favorite.

        Parameters:

        `favorite_` - whether this is a favorite

        See Also:

        -   [`getFavorite()`](#getFavorite\(\))

    -   ### hasChildrenOfType

        public boolean hasChildrenOfType(int typeMask\_)

        Checks whether this content has children of a particular type or any of the types in the given type mask. You must populate the types of children first by calling [`ContentService.populateTypesOfChildren(Content[])`](ContentService.html#populateTypesOfChildren\(com.appiancorp.suiteapi.content.Content%5B%5D\)).

        Parameters:

        `typeMask_` - the type mask to check

        Returns:

        whether the content has the children

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Creates a string representation of the content (does not contain all fields).

        Overrides:

        `[toString](../common/Identity.html#toString\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        the string

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName()

        Gets the display name of the object. This value is used in the interfaces that display the content. This should be overridden if you want the display name to be different from the name. It has already been overridden for [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge").

        Returns:

        the display name

    -   ### getNumberOfVersions

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfVersions()

        Gets the number of versions of the content that currently exist, excluding the current version. For instance, if there are two previous versions in addition to the current version, this will return 2.

        Returns:

        the number of versions

        See Also:

        -   [`setNumberOfVersions(Long)`](#setNumberOfVersions\(java.lang.Long\))

    -   ### setNumberOfVersions

        public void setNumberOfVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfVersions\_)

        Gets the number of versions of the content that currently exist, excluding the current version. For instance, if there are two previous versions in addition to the current version, this will return 2. This field cannot be updated in the database. Set by [`ContentService.createVersion(Content[], Integer)`](ContentService.html#createVersion\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)).

        Parameters:

        `numberOfVersions_` - the number of versions

        See Also:

        -   [`getNumberOfVersions()`](#getNumberOfVersions\(\))

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Adds the primary keys of any Appian-typed objects that are used by the mapping of this node to the given cache.

        Specified by:

        `[fillInAppianTypes](../process/AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - the cache that will hold the values

    -   ### getLockedByUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedByUsername()

        Gets the username of the user that has locked the content, or blank if the content is not locked.

        Returns:

        the username

    -   ### setLockedByUsername

        public void setLockedByUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedByUsername)

        Sets the username of the user that has locked the content. This field cannot be updated in the database. Set by [`ContentService.lock(Long[])`](ContentService.html#lock\(java.lang.Long%5B%5D\)), [`ContentService.unlock(Long[])`](ContentService.html#unlock\(java.lang.Long%5B%5D\)), and [`ContentService.breakLock(Long[])`](ContentService.html#breakLock\(java.lang.Long%5B%5D\)). If the content is not locked, this is set to blank.

        Parameters:

        `lockedByUsername` - the username