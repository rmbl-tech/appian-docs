---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/Application.html
original_path: api/com/appiancorp/suiteapi/applications/Application.html
version: "25.3"
title: "Class Application"
page_id: "api/com/appiancorp/suiteapi/applications/Application"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class Application

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.content.Content](../content/Content.html "class in com.appiancorp.suiteapi.content")

com.appiancorp.suiteapi.applications.Application

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[ContentConstants](../content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")`, `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Application extends [Content](../content/Content.html "class in com.appiancorp.suiteapi.content")

Represents an Application object, which consists of metadata, a navigation definition, and references to associated objects. While the Application bean extends from `Content`, none of the methods inherited from Content into Application are supported other than the ones defined explicitly in this class. Example, if "Content" would expose a method called "doSomething", the use of "doSomething" in an Application bean is not supported and must not be used.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.applications.Application)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications")`

    Definition of the Application Actions: a collection of [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") associated to the application.

    `static class` 

    `[Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications")`

    The end-user navigation definition of the application.

    `static class` 

    `[Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")`

    Stores the references to the applications associated with the application.

    `static class` 

    `[Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications")`

    Stores the references to the objects associated with the application.

    `static enum` 

    `[Application.Metadata](Application.Metadata.html "enum class in com.appiancorp.suiteapi.applications")`

    `static enum` 

    `[Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")`

    An application is logically divided in four different sections: 1.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.content.[ContentConstants](../content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

    `[ACT_CREATE](../content/ContentConstants.html#ACT_CREATE), [ACT_DEACTIVATE](../content/ContentConstants.html#ACT_DEACTIVATE), [ACT_DELETE](../content/ContentConstants.html#ACT_DELETE), [AL_ADMIN](../content/ContentConstants.html#AL_ADMIN), [AL_EDITOR](../content/ContentConstants.html#AL_EDITOR), [AL_INVALID_ID](../content/ContentConstants.html#AL_INVALID_ID), [AL_NONE](../content/ContentConstants.html#AL_NONE), [AL_VIEWER](../content/ContentConstants.html#AL_VIEWER), [ALLOCATE_FSID](../content/ContentConstants.html#ALLOCATE_FSID), [ALLOCATE_GLOBAL_PART](../content/ContentConstants.html#ALLOCATE_GLOBAL_PART), [ALLOCATE_PART](../content/ContentConstants.html#ALLOCATE_PART), [APPLICATIONS_ROOT_DESCRIPTION](../content/ContentConstants.html#APPLICATIONS_ROOT_DESCRIPTION), [APPLICATIONS_ROOT_NAME](../content/ContentConstants.html#APPLICATIONS_ROOT_NAME), [CHILDREN](../content/ContentConstants.html#CHILDREN), [COLUMN_ACTION_REQUESTED](../content/ContentConstants.html#COLUMN_ACTION_REQUESTED), [COLUMN_ACTION_REQUESTER](../content/ContentConstants.html#COLUMN_ACTION_REQUESTER), [COLUMN_ATTRIBUTES](../content/ContentConstants.html#COLUMN_ATTRIBUTES), [COLUMN_CHANGES_REQUIRE_APPROVAL](../content/ContentConstants.html#COLUMN_CHANGES_REQUIRE_APPROVAL), [COLUMN_CREATED_TIMESTAMP](../content/ContentConstants.html#COLUMN_CREATED_TIMESTAMP), [COLUMN_CREATOR](../content/ContentConstants.html#COLUMN_CREATOR), [COLUMN_DESCRIPTION](../content/ContentConstants.html#COLUMN_DESCRIPTION), [COLUMN_EXPIRATION_DAYS](../content/ContentConstants.html#COLUMN_EXPIRATION_DAYS), [COLUMN_EXPIRATION_TIMESTAMP](../content/ContentConstants.html#COLUMN_EXPIRATION_TIMESTAMP), [COLUMN_EXTENSION](../content/ContentConstants.html#COLUMN_EXTENSION), [COLUMN_FORUM](../content/ContentConstants.html#COLUMN_FORUM), [COLUMN_FSID](../content/ContentConstants.html#COLUMN_FSID), [COLUMN_FSID_COUNT](../content/ContentConstants.html#COLUMN_FSID_COUNT), [COLUMN_ID](../content/ContentConstants.html#COLUMN_ID), [COLUMN_LOCKED_BY](../content/ContentConstants.html#COLUMN_LOCKED_BY), [COLUMN_LOG](../content/ContentConstants.html#COLUMN_LOG), [COLUMN_LOG_NAME](../content/ContentConstants.html#COLUMN_LOG_NAME), [COLUMN_METADATA_IDS](../content/ContentConstants.html#COLUMN_METADATA_IDS), [COLUMN_NAME](../content/ContentConstants.html#COLUMN_NAME), [COLUMN_NONE](../content/ContentConstants.html#COLUMN_NONE), [COLUMN_NUMBER_OF_VERSIONS](../content/ContentConstants.html#COLUMN_NUMBER_OF_VERSIONS), [COLUMN_PARENT_ID](../content/ContentConstants.html#COLUMN_PARENT_ID), [COLUMN_PARENT_NAME](../content/ContentConstants.html#COLUMN_PARENT_NAME), [COLUMN_PARENT_TYPE](../content/ContentConstants.html#COLUMN_PARENT_TYPE), [COLUMN_PARTITION](../content/ContentConstants.html#COLUMN_PARTITION), [COLUMN_PARTITION_NAME](../content/ContentConstants.html#COLUMN_PARTITION_NAME), [COLUMN_SECURITY](../content/ContentConstants.html#COLUMN_SECURITY), [COLUMN_SIZE](../content/ContentConstants.html#COLUMN_SIZE), [COLUMN_STATE](../content/ContentConstants.html#COLUMN_STATE), [COLUMN_SUBTYPE](../content/ContentConstants.html#COLUMN_SUBTYPE), [COLUMN_TYPE](../content/ContentConstants.html#COLUMN_TYPE), [COLUMN_UPDATED_TIMESTAMP](../content/ContentConstants.html#COLUMN_UPDATED_TIMESTAMP), [COLUMN_UUID](../content/ContentConstants.html#COLUMN_UUID), [COLUMN_VERSION_ID](../content/ContentConstants.html#COLUMN_VERSION_ID), [COLUMN_VERSIONS](../content/ContentConstants.html#COLUMN_VERSIONS), [COLUMN_VISIBILITY](../content/ContentConstants.html#COLUMN_VISIBILITY), [COMMUNITY_ROOT](../content/ContentConstants.html#COMMUNITY_ROOT), [CONTENT_SECURITY_TYPE](../content/ContentConstants.html#CONTENT_SECURITY_TYPE), [CREATION_SECURITY_TYPE](../content/ContentConstants.html#CREATION_SECURITY_TYPE), [FILTER_TYPE_ALL](../content/ContentConstants.html#FILTER_TYPE_ALL), [GC_MOD_DRAFT](../content/ContentConstants.html#GC_MOD_DRAFT), [GC_MOD_LINKS](../content/ContentConstants.html#GC_MOD_LINKS), [GC_MOD_NORMAL](../content/ContentConstants.html#GC_MOD_NORMAL), [GC_MOD_POPULATE_TYPES_OF_CHILDREN](../content/ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN), [GC_VERSIONS_AS_FOLDERS](../content/ContentConstants.html#GC_VERSIONS_AS_FOLDERS), [I18N_PREFIX](../content/ContentConstants.html#I18N_PREFIX), [IMPORT_INVALID_PRIVILEGE](../content/ContentConstants.html#IMPORT_INVALID_PRIVILEGE), [IMPORT_NAME_EXISTS_WITHIN_PARENT](../content/ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_PARENT), [IMPORT_NAME_EXISTS_WITHIN_TYPE](../content/ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_TYPE), [IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT](../content/ContentConstants.html#IMPORT_NAME_WITH_UUID_EXISTS_WITHIN_PARENT), [IMPORT_UUID_EXISTS_ELSEWHERE](../content/ContentConstants.html#IMPORT_UUID_EXISTS_ELSEWHERE), [IMPORT_VALID](../content/ContentConstants.html#IMPORT_VALID), [INFINITY](../content/ContentConstants.html#INFINITY), [KM_EXPIRATION_DURATION_CHECK](../content/ContentConstants.html#KM_EXPIRATION_DURATION_CHECK), [KM_SECURITY_COMMUNITY](../content/ContentConstants.html#KM_SECURITY_COMMUNITY), [KM_SECURITY_CONTENT_COMMUNITY](../content/ContentConstants.html#KM_SECURITY_CONTENT_COMMUNITY), [KM_SECURITY_CONTENT_FOLDER](../content/ContentConstants.html#KM_SECURITY_CONTENT_FOLDER), [KM_SECURITY_CONTENT_KC](../content/ContentConstants.html#KM_SECURITY_CONTENT_KC), [KM_SECURITY_FOLDER](../content/ContentConstants.html#KM_SECURITY_FOLDER), [KM_SECURITY_KNOWLEDGE_CENTER](../content/ContentConstants.html#KM_SECURITY_KNOWLEDGE_CENTER), [KNOWLEDGE_ROOT](../content/ContentConstants.html#KNOWLEDGE_ROOT), [KNOWLEDGE_ROOT_SYSTEM_ID](../content/ContentConstants.html#KNOWLEDGE_ROOT_SYSTEM_ID), [MIGRATION_FLAG](../content/ContentConstants.html#MIGRATION_FLAG), [NEGATIVE_INFINITY](../content/ContentConstants.html#NEGATIVE_INFINITY), [NO_CHILDREN](../content/ContentConstants.html#NO_CHILDREN), [NO_EXPIRATION_TIMESTAMP](../content/ContentConstants.html#NO_EXPIRATION_TIMESTAMP), [NO_FORUM](../content/ContentConstants.html#NO_FORUM), [NO_REVIEW](../content/ContentConstants.html#NO_REVIEW), [QUERY_KEYWORDS](../content/ContentConstants.html#QUERY_KEYWORDS), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC](../content/ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_DESC), [RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME](../content/ContentConstants.html#RECORD_DOCUMENTS_KNOWLEDGE_CENTER_NAME), [RESTRICTION_ROLE_MAP_ROLES](../content/ContentConstants.html#RESTRICTION_ROLE_MAP_ROLES), [RM_AGGREGATE](../content/ContentConstants.html#RM_AGGREGATE), [RM_EXPLICIT](../content/ContentConstants.html#RM_EXPLICIT), [ROLE_ADMINISTRATORS](../content/ContentConstants.html#ROLE_ADMINISTRATORS), [ROLE_AUTHORS](../content/ContentConstants.html#ROLE_AUTHORS), [ROLE_DENY_ADMINISTRATORS](../content/ContentConstants.html#ROLE_DENY_ADMINISTRATORS), [ROLE_DENY_AUTHORS](../content/ContentConstants.html#ROLE_DENY_AUTHORS), [ROLE_DENY_READERS](../content/ContentConstants.html#ROLE_DENY_READERS), [ROLE_MAP_ROLES](../content/ContentConstants.html#ROLE_MAP_ROLES), [ROLE_READERS](../content/ContentConstants.html#ROLE_READERS), [RULE_ENCODING](../content/ContentConstants.html#RULE_ENCODING), [RULES_ROOT_DESCRIPTION](../content/ContentConstants.html#RULES_ROOT_DESCRIPTION), [RULES_ROOT_NAME](../content/ContentConstants.html#RULES_ROOT_NAME), [RULES_ROOT_SYSTEM_ID](../content/ContentConstants.html#RULES_ROOT_SYSTEM_ID), [SEC_ALL_ADMIN](../content/ContentConstants.html#SEC_ALL_ADMIN), [SEC_ALL_EDITOR](../content/ContentConstants.html#SEC_ALL_EDITOR), [SEC_ALL_VIEWER](../content/ContentConstants.html#SEC_ALL_VIEWER), [SEC_CREATOR_ADMIN](../content/ContentConstants.html#SEC_CREATOR_ADMIN), [SEC_INH_ADMIN](../content/ContentConstants.html#SEC_INH_ADMIN), [SEC_INH_ADMIN_MASK](../content/ContentConstants.html#SEC_INH_ADMIN_MASK), [SEC_INH_ALL](../content/ContentConstants.html#SEC_INH_ALL), [SEC_INH_EDITOR](../content/ContentConstants.html#SEC_INH_EDITOR), [SEC_INH_VIEWER](../content/ContentConstants.html#SEC_INH_VIEWER), [SEC_PUBLIC](../content/ContentConstants.html#SEC_PUBLIC), [SECURITY_MANAGER_CONFIG](../content/ContentConstants.html#SECURITY_MANAGER_CONFIG), [STATE_ACTIVE](../content/ContentConstants.html#STATE_ACTIVE), [STATE_ACTIVE_PENDING_APPROVAL](../content/ContentConstants.html#STATE_ACTIVE_PENDING_APPROVAL), [STATE_ACTIVE_PUBLISHED](../content/ContentConstants.html#STATE_ACTIVE_PUBLISHED), [STATE_ACTIVE_REJECTED](../content/ContentConstants.html#STATE_ACTIVE_REJECTED), [STATE_PENDING_APPROVAL](../content/ContentConstants.html#STATE_PENDING_APPROVAL), [STATE_PUBLISHED](../content/ContentConstants.html#STATE_PUBLISHED), [STATE_REJECTED](../content/ContentConstants.html#STATE_REJECTED), [SUBTYPE_CONNECTED_SYSTEM](../content/ContentConstants.html#SUBTYPE_CONNECTED_SYSTEM), [SUBTYPE_DATA_STORE_CONFIG](../content/ContentConstants.html#SUBTYPE_DATA_STORE_CONFIG), [SUBTYPE_FOLDER_APPLICATIONS](../content/ContentConstants.html#SUBTYPE_FOLDER_APPLICATIONS), [SUBTYPE_FOLDER_CONNECTED_SYSTEMS](../content/ContentConstants.html#SUBTYPE_FOLDER_CONNECTED_SYSTEMS), [SUBTYPE_FOLDER_DATA_STORE_CONFIGS](../content/ContentConstants.html#SUBTYPE_FOLDER_DATA_STORE_CONFIGS), [SUBTYPE_FOLDER_KNOWLEDGE](../content/ContentConstants.html#SUBTYPE_FOLDER_KNOWLEDGE), [SUBTYPE_FOLDER_MIGRATION_FLAGS](../content/ContentConstants.html#SUBTYPE_FOLDER_MIGRATION_FLAGS), [SUBTYPE_FOLDER_RULES](../content/ContentConstants.html#SUBTYPE_FOLDER_RULES), [SUBTYPE_MIGRATION_FLAG](../content/ContentConstants.html#SUBTYPE_MIGRATION_FLAG), [SUBTYPE_RULE_CONSTANT](../content/ContentConstants.html#SUBTYPE_RULE_CONSTANT), [SUBTYPE_RULE_DECISION](../content/ContentConstants.html#SUBTYPE_RULE_DECISION), [SUBTYPE_RULE_DECISION_TABLE](../content/ContentConstants.html#SUBTYPE_RULE_DECISION_TABLE), [SUBTYPE_RULE_FREEFORM](../content/ContentConstants.html#SUBTYPE_RULE_FREEFORM), [SUBTYPE_RULE_INTERFACE](../content/ContentConstants.html#SUBTYPE_RULE_INTERFACE), [SUBTYPE_RULE_OUTBOUND_INTEGRATION](../content/ContentConstants.html#SUBTYPE_RULE_OUTBOUND_INTEGRATION), [SUBTYPE_RULE_QUERY](../content/ContentConstants.html#SUBTYPE_RULE_QUERY), [SYSADMIN_GRP](../content/ContentConstants.html#SYSADMIN_GRP), [SYSADMIN_UTYPE](../content/ContentConstants.html#SYSADMIN_UTYPE), [SYSTEM_ASYNC_INSPECT_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_ASYNC_INSPECT_FOLDER_NAME), [SYSTEM_COPILOT_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_COPILOT_FOLDER_NAME), [SYSTEM_FOLDER_COVER_PHOTOS_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_COVER_PHOTOS_NAME), [SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_OFFLINE_RULE_BUNDLES_NAME), [SYSTEM_FOLDER_RECORD_TYPES_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_RECORD_TYPES_NAME), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION](../content/ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_DESCRIPTION), [SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME](../content/ContentConstants.html#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_ROOT_NAME), [SYSTEM_IX_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_IX_FOLDER_NAME), [SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_OBJECT_TEMPLATES_FOLDER_NAME), [SYSTEM_OPENAPI_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_OPENAPI_FOLDER_NAME), [SYSTEM_PACKAGES_FOLDER_NAME](../content/ContentConstants.html#SYSTEM_PACKAGES_FOLDER_NAME), [SYSTEM_RECORD_TYPE_NAME_PREFIX](../content/ContentConstants.html#SYSTEM_RECORD_TYPE_NAME_PREFIX), [SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION](../content/ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_DESIGNER_ROOT_NAME](../content/ContentConstants.html#SYSTEM_SYSRULES_DESIGNER_ROOT_NAME), [SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION](../content/ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_DESCRIPTION), [SYSTEM_SYSRULES_INTERNAL_ROOT_NAME](../content/ContentConstants.html#SYSTEM_SYSRULES_INTERNAL_ROOT_NAME), [TYPE_ALL](../content/ContentConstants.html#TYPE_ALL), [TYPE_ANY_KC](../content/ContentConstants.html#TYPE_ANY_KC), [TYPE_APPLICATION](../content/ContentConstants.html#TYPE_APPLICATION), [TYPE_COMMUNITY](../content/ContentConstants.html#TYPE_COMMUNITY), [TYPE_COMMUNITY_KC](../content/ContentConstants.html#TYPE_COMMUNITY_KC), [TYPE_CONTAINER](../content/ContentConstants.html#TYPE_CONTAINER), [TYPE_CONTENT](../content/ContentConstants.html#TYPE_CONTENT), [TYPE_CUSTOM](../content/ContentConstants.html#TYPE_CUSTOM), [TYPE_DOCUMENT](../content/ContentConstants.html#TYPE_DOCUMENT), [TYPE_FOLDER](../content/ContentConstants.html#TYPE_FOLDER), [TYPE_IGNORE](../content/ContentConstants.html#TYPE_IGNORE), [TYPE_NON_CONTAINER](../content/ContentConstants.html#TYPE_NON_CONTAINER), [TYPE_NON_DOCUMENT](../content/ContentConstants.html#TYPE_NON_DOCUMENT), [TYPE_PERSONAL_KC](../content/ContentConstants.html#TYPE_PERSONAL_KC), [TYPE_RULE](../content/ContentConstants.html#TYPE_RULE), [UNIQUE_FOR_ALL](../content/ContentConstants.html#UNIQUE_FOR_ALL), [UNIQUE_FOR_PARENT](../content/ContentConstants.html#UNIQUE_FOR_PARENT), [UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION](../content/ContentConstants.html#UNIQUE_FOR_SYSTEM_RULES_LATEST_VERSION), [UNIQUE_FOR_TYPE](../content/ContentConstants.html#UNIQUE_FOR_TYPE), [UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION](../content/ContentConstants.html#UNIQUE_FOR_TYPE_AND_SUBTYPE_LATEST_VERSION), [UNIQUE_FOR_TYPE_LATEST_VERSION](../content/ContentConstants.html#UNIQUE_FOR_TYPE_LATEST_VERSION), [UNIQUE_NONE](../content/ContentConstants.html#UNIQUE_NONE), [UUID_ACTIVE_PROCESSES_REPORT](../content/ContentConstants.html#UUID_ACTIVE_PROCESSES_REPORT), [UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT](../content/ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_MEMBERS_REPORT), [UUID_ACTIVE_TASKS_GROUP_REPORT](../content/ContentConstants.html#UUID_ACTIVE_TASKS_GROUP_REPORT), [UUID_ACTIVE_TASKS_REPORT](../content/ContentConstants.html#UUID_ACTIVE_TASKS_REPORT), [UUID_ALL_PROCESS_MODELS_REPORT](../content/ContentConstants.html#UUID_ALL_PROCESS_MODELS_REPORT), [UUID_ALL_PROCESSES_REPORT](../content/ContentConstants.html#UUID_ALL_PROCESSES_REPORT), [UUID_ALL_TASKS_REPORT](../content/ContentConstants.html#UUID_ALL_TASKS_REPORT), [UUID_APPLICATIONS_HOME](../content/ContentConstants.html#UUID_APPLICATIONS_HOME), [UUID_APPLICATIONS_ROOT](../content/ContentConstants.html#UUID_APPLICATIONS_ROOT), [UUID_ASYNC_INSPECT_FOLDER](../content/ContentConstants.html#UUID_ASYNC_INSPECT_FOLDER), [UUID_CANCELED_PROCESSES_REPORT](../content/ContentConstants.html#UUID_CANCELED_PROCESSES_REPORT), [UUID_COMMUNITY_ROOT](../content/ContentConstants.html#UUID_COMMUNITY_ROOT), [UUID_COMPLETED_PROCESSES_REPORT](../content/ContentConstants.html#UUID_COMPLETED_PROCESSES_REPORT), [UUID_COMPLETED_TASKS_REPORT](../content/ContentConstants.html#UUID_COMPLETED_TASKS_REPORT), [UUID_COPILOT_FOLDER](../content/ContentConstants.html#UUID_COPILOT_FOLDER), [UUID_CURRENT_TASKS_PER_PROCESS_REPORT](../content/ContentConstants.html#UUID_CURRENT_TASKS_PER_PROCESS_REPORT), [UUID_DATA_STORE_CONFIGS_ROOT_FOLDER](../content/ContentConstants.html#UUID_DATA_STORE_CONFIGS_ROOT_FOLDER), [UUID_DEFAULT_COMMUNITY](../content/ContentConstants.html#UUID_DEFAULT_COMMUNITY), [UUID_EMAIL_FOOTER_TEMPLATE](../content/ContentConstants.html#UUID_EMAIL_FOOTER_TEMPLATE), [UUID_EMAIL_HEADER_TEMPLATE](../content/ContentConstants.html#UUID_EMAIL_HEADER_TEMPLATE), [UUID_EMAIL_TEMPLATE_FOLDER](../content/ContentConstants.html#UUID_EMAIL_TEMPLATE_FOLDER), [UUID_FAVORITE_PROCESS_MODELS_REPORT](../content/ContentConstants.html#UUID_FAVORITE_PROCESS_MODELS_REPORT), [UUID_FAVORITE_PROCESSES_REPORT](../content/ContentConstants.html#UUID_FAVORITE_PROCESSES_REPORT), [UUID_FAVORITE_TASKS_REPORT](../content/ContentConstants.html#UUID_FAVORITE_TASKS_REPORT), [UUID_HIGH_PRIORITY_TASKS_REPORT](../content/ContentConstants.html#UUID_HIGH_PRIORITY_TASKS_REPORT), [UUID_IX_FOLDER](../content/ContentConstants.html#UUID_IX_FOLDER), [UUID_LEADER_MESSAGE_PICTURES_FOLDER](../content/ContentConstants.html#UUID_LEADER_MESSAGE_PICTURES_FOLDER), [UUID_MIGRATION_FLAGS_ROOT_FOLDER](../content/ContentConstants.html#UUID_MIGRATION_FLAGS_ROOT_FOLDER), [UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT](../content/ContentConstants.html#UUID_MOST_ACTIVE_PROCESS_MODELS_REPORT), [UUID_NAVIGATION_CONFIG](../content/ContentConstants.html#UUID_NAVIGATION_CONFIG), [UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_MODEL_REPORT), [UUID_NODE_STATS_PER_PROCESS_REPORT](../content/ContentConstants.html#UUID_NODE_STATS_PER_PROCESS_REPORT), [UUID_OBJECT_TEMPLATES_FOLDER](../content/ContentConstants.html#UUID_OBJECT_TEMPLATES_FOLDER), [UUID_OFFLINE_RULE_BUNDLES_FOLDER](../content/ContentConstants.html#UUID_OFFLINE_RULE_BUNDLES_FOLDER), [UUID_OPENAPI_FOLDER](../content/ContentConstants.html#UUID_OPENAPI_FOLDER), [UUID_OVERDUE_TASKS_REPORT](../content/ContentConstants.html#UUID_OVERDUE_TASKS_REPORT), [UUID_PACKAGES_FOLDER](../content/ContentConstants.html#UUID_PACKAGES_FOLDER), [UUID_PAUSED_PROCESSES_REPORT](../content/ContentConstants.html#UUID_PAUSED_PROCESSES_REPORT), [UUID_PERFORMANCE_INDICATOR_GREEN](../content/ContentConstants.html#UUID_PERFORMANCE_INDICATOR_GREEN), [UUID_PERFORMANCE_INDICATOR_RED](../content/ContentConstants.html#UUID_PERFORMANCE_INDICATOR_RED), [UUID_PERFORMANCE_INDICATOR_YELLOW](../content/ContentConstants.html#UUID_PERFORMANCE_INDICATOR_YELLOW), [UUID_PRIORITY_ICONS_FOLDER](../content/ContentConstants.html#UUID_PRIORITY_ICONS_FOLDER), [UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_PROCESS_DETAILS_PER_PROCESS_MODEL_REPORT), [UUID_PROCESS_INSTANCES_PER_MODEL_REPORT](../content/ContentConstants.html#UUID_PROCESS_INSTANCES_PER_MODEL_REPORT), [UUID_PROCESS_MODEL_REPORT_FOLDER](../content/ContentConstants.html#UUID_PROCESS_MODEL_REPORT_FOLDER), [UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER](../content/ContentConstants.html#UUID_PROCESS_OPTIMIZATION_REPORTS_FOLDER), [UUID_PROCESS_REPORTS_FOLDER](../content/ContentConstants.html#UUID_PROCESS_REPORTS_FOLDER), [UUID_PROCESSES_STARTED_BY_ME_REPORT](../content/ContentConstants.html#UUID_PROCESSES_STARTED_BY_ME_REPORT), [UUID_PROCESSES_WITH_PROBLEMS_REPORT](../content/ContentConstants.html#UUID_PROCESSES_WITH_PROBLEMS_REPORT), [UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER](../content/ContentConstants.html#UUID_RECORD_DOCUMENTS_KNOWLEDGE_CENTER), [UUID_RULES_ROOT_FOLDER](../content/ContentConstants.html#UUID_RULES_ROOT_FOLDER), [UUID_RUNNING_PROCESSES_PER_MODEL_REPORT](../content/ContentConstants.html#UUID_RUNNING_PROCESSES_PER_MODEL_REPORT), [UUID_STATISTICS_ACROSS_PROCESSES_REPORT](../content/ContentConstants.html#UUID_STATISTICS_ACROSS_PROCESSES_REPORT), [UUID_SUBPROCESSES_PER_PROCESS_REPORT](../content/ContentConstants.html#UUID_SUBPROCESSES_PER_PROCESS_REPORT), [UUID_SUMMARY_REPORTS_FOLDER](../content/ContentConstants.html#UUID_SUMMARY_REPORTS_FOLDER), [UUID_SYSTEM_DOC_PRIORITY_HIGH](../content/ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_HIGH), [UUID_SYSTEM_DOC_PRIORITY_LOW](../content/ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_LOW), [UUID_SYSTEM_DOC_PRIORITY_NORMAL](../content/ContentConstants.html#UUID_SYSTEM_DOC_PRIORITY_NORMAL), [UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS](../content/ContentConstants.html#UUID_SYSTEM_FOLDER_TEMPO_ATTACHMENTS), [UUID_SYSTEM_KNOWLEDGE_CENTER](../content/ContentConstants.html#UUID_SYSTEM_KNOWLEDGE_CENTER), [UUID_SYSTEM_RECORD_TYPES_FOLDER](../content/ContentConstants.html#UUID_SYSTEM_RECORD_TYPES_FOLDER), [UUID_SYSTEM_REPORTS_FOLDER](../content/ContentConstants.html#UUID_SYSTEM_REPORTS_FOLDER), [UUID_SYSTEM_SYSRULES_DESIGNER_ROOT](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_DESIGNER_ROOT), [UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_DESIGNER), [UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_ENGINEERING), [UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_EVOLVED_PREVIOUS_VERSIONS), [UUID_SYSTEM_SYSRULES_FOLDER_HOME](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_FOLDER_HOME), [UUID_SYSTEM_SYSRULES_INTERNAL_ROOT](../content/ContentConstants.html#UUID_SYSTEM_SYSRULES_INTERNAL_ROOT), [UUID_TASK_REPORTS_FOLDER](../content/ContentConstants.html#UUID_TASK_REPORTS_FOLDER), [UUID_TASKS_DUE_TODAY_REPORT](../content/ContentConstants.html#UUID_TASKS_DUE_TODAY_REPORT), [UUID_TASKS_FOR_USER_REPORT](../content/ContentConstants.html#UUID_TASKS_FOR_USER_REPORT), [UUID_TASKS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_TASKS_PER_PROCESS_MODEL_REPORT), [UUID_TEMPORARY_DOCS_FOLDER](../content/ContentConstants.html#UUID_TEMPORARY_DOCS_FOLDER), [UUID_TEMPORARY_DOCS_KC](../content/ContentConstants.html#UUID_TEMPORARY_DOCS_KC), [UUID_USER_COVER_PHOTOS_FOLDER](../content/ContentConstants.html#UUID_USER_COVER_PHOTOS_FOLDER), [UUID_USER_PICTURES_FOLDER](../content/ContentConstants.html#UUID_USER_PICTURES_FOLDER), [UUID_USER_THUMBNAILS_FOLDER](../content/ContentConstants.html#UUID_USER_THUMBNAILS_FOLDER), [UUID_VERSIONS_PER_PROCESS_MODEL_REPORT](../content/ContentConstants.html#UUID_VERSIONS_PER_PROCESS_MODEL_REPORT), [VERSION_CURRENT](../content/ContentConstants.html#VERSION_CURRENT), [VERSION_ORIGINAL](../content/ContentConstants.html#VERSION_ORIGINAL), [VIS_ADVERTISE](../content/ContentConstants.html#VIS_ADVERTISE), [VIS_DEFAULT](../content/ContentConstants.html#VIS_DEFAULT), [VIS_HIERARCHY](../content/ContentConstants.html#VIS_HIERARCHY), [VIS_INDEXABLE](../content/ContentConstants.html#VIS_INDEXABLE), [VIS_QUOTA](../content/ContentConstants.html#VIS_QUOTA), [VIS_SEARCHABLE](../content/ContentConstants.html#VIS_SEARCHABLE), [VIS_SYSTEM](../content/ContentConstants.html#VIS_SYSTEM), [VIS_UNLOGGED](../content/ContentConstants.html#VIS_UNLOGGED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Application](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAction](#addAction\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Adds a new application action to the end of the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s actions list.

    `void`

    `[addAction](#addAction\(java.lang.String,java.lang.String,java.lang.String,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description, int index)`

    Adds a new application action to the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s actions list at the specified position.

    `void`

    `[addNavigationItem](#addNavigationItem\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)`

    Adds a new navigation item to the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s navigation definition to the end of the list.

    `void`

    `[addNavigationItem](#addNavigationItem\(java.lang.String,java.lang.String,java.lang.String,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier, int index)`

    Adds a new navigation item to the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s navigation definition at the specified index.

    `void`

    `[addObjects](#addObjects\(com.appiancorp.ix.Type,java.lang.String%5B%5D\))(com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uuids)`

    Deprecated.

    use [`addObjectsByType(Long, Object[])`](#addObjectsByType\(java.lang.Long,U%5B%5D\))

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   void`

    `[addObjectsByType](#addObjectsByType\(com.appiancorp.ix.Type,U%5B%5D\))(com.appiancorp.ix.Type<H,I,U> type, U[] uuids)`

    Deprecated.

    use [`addObjectsByType(Long, Object[])`](#addObjectsByType\(java.lang.Long,U%5B%5D\))

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   void`

    `[addObjectsByType](#addObjectsByType\(java.lang.Long,U%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianTypeLong, U[] uuids)`

    Associates objects of the specified type with the Application.

    `[ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")[]`

    `[getActions](#getActions\(\))()`

    Returns the list of actions defined for the Application.

    `[Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications")`

    `[getApplicationActions](#getApplicationActions\(\))()`

    `[Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications")`

    `[getApplicationNavigation](#getApplicationNavigation\(\))()`

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getApplicationObjects](#getApplicationObjects\(com.appiancorp.ix.Type\))(com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> type)`

    Deprecated.

    use [`getObjectsByType(Long)`](#getObjectsByType\(java.lang.Long\))

    `[Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")`

    `[getAssociatedApplications](#getAssociatedApplications\(\))()`

    Returns the associated applications.

    `[Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications")`

    `[getAssociatedObjects](#getAssociatedObjects\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCompanyName](#getCompanyName\(\))()`

    Gets the company name of the publisher of this application.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCompanyUrl](#getCompanyUrl\(\))()`

    Gets the company web site URL of the application publisher as a `String`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getIconRelativePath](#getIconRelativePath\(\))()`

    Gets this application's icon path if it is stored within the application server structure

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLastModifiedBy](#getLastModifiedBy\(\))()`

    Gets the name of the user who last modified this Application

    `[ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")[]`

    `[getNavigationItems](#getNavigationItems\(\))()`

    Returns the list of navigation items defined for the Application.

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<U>`

    `[getObjectsByType](#getObjectsByType\(com.appiancorp.ix.Type\))(com.appiancorp.ix.Type<H,I,U> type)`

    Deprecated.

    use [`getObjectsByType(Long)`](#getObjectsByType\(java.lang.Long\))

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<U>`

    `[getObjectsByType](#getObjectsByType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianTypeLong)`

    Gets an unmodifiable set of all of the UUIDs of a specified Type that have been associated with this Application.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPrefix](#getPrefix\(\))()`

    Gets the prefix of the application as a `String`.

    `boolean`

    `[getPublic](#getPublic\(\))()`

    A public application gives "viewer" privileges to all users of the system.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUrlIdentifier](#getUrlIdentifier\(\))()`

    Returns the URL identifier for this `Application`.

    `boolean`

    `[isDefault](#isDefault\(\))()`

    Tells if this application is marked as the default application.

    `boolean`

    `[isPublished](#isPublished\(\))()`

    Gets the published state of the application.

    `boolean`

    `[isSystem](#isSystem\(\))()`

    Whether or not this application is a system application.

    `[ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")`

    `[removeAction](#removeAction\(int\))(int index)`

    Removes the [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") at the specified index.

    `[ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")`

    `[removeNavigationItem](#removeNavigationItem\(int\))(int index)`

    Removes the navigation item at the specified index.

    `void`

    `[removeObjects](#removeObjects\(com.appiancorp.ix.Type,java.lang.String%5B%5D\))(com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uuids)`

    Deprecated.

    use [`removeObjectsByType(Long, Object[])`](#removeObjectsByType\(java.lang.Long,U%5B%5D\)) instead

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   void`

    `[removeObjectsByType](#removeObjectsByType\(com.appiancorp.ix.Type,U%5B%5D\))(com.appiancorp.ix.Type<H,I,U> type, U[] uuids)`

    Deprecated.

    use [`removeObjectsByType(Long, Object[])`](#removeObjectsByType\(java.lang.Long,U%5B%5D\)) instead

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   void`

    `[removeObjectsByType](#removeObjectsByType\(java.lang.Long,U%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianTypeLong, U[] uuids)`

    Dissociate specified objects from the Application.

    `[Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications")`

    `[setApplicationActions](#setApplicationActions\(com.appiancorp.suiteapi.applications.Application.ApplicationActions\))([Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") applicationActions)`

    Sets the {link ApplicationActions} containing the collection of actions.

    `[Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications")`

    `[setApplicationNavigation](#setApplicationNavigation\(com.appiancorp.suiteapi.applications.Application.ApplicationNavigation\))([Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications") applicationNavigation)`

    `[Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")`

    `[setAssociatedApplications](#setAssociatedApplications\(com.appiancorp.suiteapi.applications.Application.AssociatedApplications\))([Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications") AssociatedApplications)`

    Sets the associated applications See [`Application.AssociatedApplications`](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")

    `[Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications")`

    `[setAssociatedObjects](#setAssociatedObjects\(com.appiancorp.suiteapi.applications.Application.AssociatedObjects\))([Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications") associatedObjects)`

    `void`

    `[setCompanyName](#setCompanyName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") companyName)`

    Sets the company name for this application.

    `void`

    `[setCompanyUrl](#setCompanyUrl\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url)`

    Sets a the given URL as the company URL for the application publisher.

    `void`

    `[setDefault](#setDefault\(boolean\))(boolean isDefault)`

    Marks this application as the default application.

    `void`

    `[setIconRelativePath](#setIconRelativePath\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") iconRelPath)`

    Sets this application's icon path, if stored within the App server structure

    `void`

    `[setLastModifiedBy](#setLastModifiedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastModifiedBy)`

    Sets the name of the user who last modified this Application

    `void`

    `[setPrefix](#setPrefix\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prefix)`

    Sets the prefix of the application.

    `void`

    `[setPublic](#setPublic\(boolean\))(boolean isPublic)`

    A public application gives "viewer" privileges to all users of the system.

    `void`

    `[setPublished](#setPublished\(boolean\))(boolean isPublished)`

    Sets the published state of the application.

    `void`

    `[setSystem](#setSystem\(boolean\))(boolean isSystem)`

    Sets whether or not this application is a system application.

    `void`

    `[setUrlIdentifier](#setUrlIdentifier\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)`

    Sets the URL identifier for this `Application`.

    ### Methods inherited from class com.appiancorp.suiteapi.content.[Content](../content/Content.html "class in com.appiancorp.suiteapi.content")

    `[addSecurity](../content/Content.html#addSecurity\(int\)), [addSecurity](../content/Content.html#addSecurity\(java.lang.Integer\)), [addVisibility](../content/Content.html#addVisibility\(int\)), [addVisibility](../content/Content.html#addVisibility\(java.lang.Integer\)), [fillInAppianTypes](../content/Content.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [getActionRequested](../content/Content.html#getActionRequested\(\)), [getActionRequester](../content/Content.html#getActionRequester\(\)), [getAttributes](../content/Content.html#getAttributes\(\)), [getChangesRequireApproval](../content/Content.html#getChangesRequireApproval\(\)), [getCreatedTimestamp](../content/Content.html#getCreatedTimestamp\(\)), [getCreator](../content/Content.html#getCreator\(\)), [getCurrentContentId](../content/Content.html#getCurrentContentId\(\)), [getDepth](../content/Content.html#getDepth\(\)), [getDescription](../content/Content.html#getDescription\(\)), [getDisplayName](../content/Content.html#getDisplayName\(\)), [getExpirationTimestamp](../content/Content.html#getExpirationTimestamp\(\)), [getFavorite](../content/Content.html#getFavorite\(\)), [getForum](../content/Content.html#getForum\(\)), [getLatestVersionId](../content/Content.html#getLatestVersionId\(\)), [getLockedAt](../content/Content.html#getLockedAt\(\)), [getLockedBy](../content/Content.html#getLockedBy\(\)), [getLockedByUsername](../content/Content.html#getLockedByUsername\(\)), [getLog](../content/Content.html#getLog\(\)), [getLogName](../content/Content.html#getLogName\(\)), [getNumberOfVersions](../content/Content.html#getNumberOfVersions\(\)), [getOriginalContentId](../content/Content.html#getOriginalContentId\(\)), [getParent](../content/Content.html#getParent\(\)), [getParentName](../content/Content.html#getParentName\(\)), [getParentType](../content/Content.html#getParentType\(\)), [getPartition](../content/Content.html#getPartition\(\)), [getPartitionName](../content/Content.html#getPartitionName\(\)), [getPendingApprovalCount](../content/Content.html#getPendingApprovalCount\(\)), [getRoleSet](../content/Content.html#getRoleSet\(\)), [getSecurity](../content/Content.html#getSecurity\(\)), [getSize](../content/Content.html#getSize\(\)), [getState](../content/Content.html#getState\(\)), [getSubtype](../content/Content.html#getSubtype\(\)), [getType](../content/Content.html#getType\(\)), [getTypesOfChildren](../content/Content.html#getTypesOfChildren\(\)), [getUpdatedTimestamp](../content/Content.html#getUpdatedTimestamp\(\)), [getUsersPendingAccess](../content/Content.html#getUsersPendingAccess\(\)), [getUuid](../content/Content.html#getUuid\(\)), [getVersionId](../content/Content.html#getVersionId\(\)), [getVersions](../content/Content.html#getVersions\(\)), [getVisibility](../content/Content.html#getVisibility\(\)), [hasChildrenOfType](../content/Content.html#hasChildrenOfType\(int\)), [removeSecurity](../content/Content.html#removeSecurity\(int\)), [removeSecurity](../content/Content.html#removeSecurity\(java.lang.Integer\)), [removeVisibility](../content/Content.html#removeVisibility\(int\)), [removeVisibility](../content/Content.html#removeVisibility\(java.lang.Integer\)), [securityContains](../content/Content.html#securityContains\(int\)), [securityContains](../content/Content.html#securityContains\(java.lang.Integer\)), [setActionRequested](../content/Content.html#setActionRequested\(java.lang.Integer\)), [setActionRequester](../content/Content.html#setActionRequester\(java.lang.String\)), [setAttributes](../content/Content.html#setAttributes\(java.util.Map\)), [setChangesRequireApproval](../content/Content.html#setChangesRequireApproval\(java.lang.Boolean\)), [setCreatedTimestamp](../content/Content.html#setCreatedTimestamp\(java.sql.Timestamp\)), [setCreator](../content/Content.html#setCreator\(java.lang.String\)), [setCurrentContentId](../content/Content.html#setCurrentContentId\(java.lang.Long\)), [setDepth](../content/Content.html#setDepth\(java.lang.Integer\)), [setDescription](../content/Content.html#setDescription\(java.lang.String\)), [setExpirationTimestamp](../content/Content.html#setExpirationTimestamp\(java.sql.Timestamp\)), [setFavorite](../content/Content.html#setFavorite\(java.lang.Boolean\)), [setForum](../content/Content.html#setForum\(java.lang.Long\)), [setLatestVersionId](../content/Content.html#setLatestVersionId\(java.lang.Integer\)), [setLockedAt](../content/Content.html#setLockedAt\(java.sql.Timestamp\)), [setLockedBy](../content/Content.html#setLockedBy\(java.lang.String\)), [setLockedByUsername](../content/Content.html#setLockedByUsername\(java.lang.String\)), [setLog](../content/Content.html#setLog\(java.lang.Long\)), [setLogName](../content/Content.html#setLogName\(java.lang.String\)), [setNumberOfVersions](../content/Content.html#setNumberOfVersions\(java.lang.Long\)), [setOriginalContentId](../content/Content.html#setOriginalContentId\(java.lang.Long\)), [setParent](../content/Content.html#setParent\(java.lang.Long\)), [setParentName](../content/Content.html#setParentName\(java.lang.String\)), [setParentType](../content/Content.html#setParentType\(java.lang.Integer\)), [setPartition](../content/Content.html#setPartition\(java.lang.Integer\)), [setPartitionName](../content/Content.html#setPartitionName\(java.lang.String\)), [setPendingApprovalCount](../content/Content.html#setPendingApprovalCount\(java.lang.Integer\)), [setRoleSet](../content/Content.html#setRoleSet\(com.appiancorp.suiteapi.content.ContentRoleSet\)), [setSecurity](../content/Content.html#setSecurity\(int\)), [setSecurity](../content/Content.html#setSecurity\(java.lang.Integer\)), [setSize](../content/Content.html#setSize\(java.lang.Integer\)), [setState](../content/Content.html#setState\(java.lang.Integer\)), [setSubtype](../content/Content.html#setSubtype\(int\)), [setSubtype](../content/Content.html#setSubtype\(java.lang.Integer\)), [setType](../content/Content.html#setType\(java.lang.Integer\)), [setTypesOfChildren](../content/Content.html#setTypesOfChildren\(java.lang.Integer\)), [setUpdatedTimestamp](../content/Content.html#setUpdatedTimestamp\(java.sql.Timestamp\)), [setUsersPendingAccess](../content/Content.html#setUsersPendingAccess\(java.lang.String%5B%5D\)), [setUuid](../content/Content.html#setUuid\(java.lang.String\)), [setVersionId](../content/Content.html#setVersionId\(java.lang.Integer\)), [setVersions](../content/Content.html#setVersions\(java.lang.Long%5B%5D\)), [setVisibility](../content/Content.html#setVisibility\(int\)), [setVisibility](../content/Content.html#setVisibility\(java.lang.Integer\)), [toString](../content/Content.html#toString\(\)), [visibilityContains](../content/Content.html#visibilityContains\(int\)), [visibilityContains](../content/Content.html#visibilityContains\(java.lang.Integer\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Application

        public Application()

-   ## Method Details

    -   ### getUrlIdentifier

        @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUrlIdentifier()

        Returns the URL identifier for this `Application`. The identifier is used to directly navigate to the application via a dedicated URL.

        See Also:

        -   [`setUrlIdentifier(java.lang.String)`](#setUrlIdentifier\(java.lang.String\))

    -   ### setUrlIdentifier

        public void setUrlIdentifier([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

        Sets the URL identifier for this `Application`. This will be used to provide an intuitive URL for direct access to the application. Example, the URL identifier can be "expenses" to be accessed in: "www.appianbpm.com/app/expenses" A valid URL identifier can only contain a-Z, 0-9, dashes and underscores. Its maximum length is 256 characters.

        Parameters:

        `urlIdentifier` - The URL identifier for this `Application`.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If the urlIdentifier is invalid.

    -   ### getCompanyName

        @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCompanyName()

        Gets the company name of the publisher of this application.

        Returns:

        The company name.

    -   ### setCompanyName

        public void setCompanyName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") companyName)

        Sets the company name for this application.

        Parameters:

        `companyName` - The new company name.

    -   ### getCompanyUrl

        @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCompanyUrl()

        Gets the company web site URL of the application publisher as a `String`.

        Returns:

        The company URL as a `String`.

    -   ### setCompanyUrl

        public void setCompanyUrl([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url)

        Sets a the given URL as the company URL for the application publisher.

        Parameters:

        `url` - The new company URL.

    -   ### getLastModifiedBy

        @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLastModifiedBy()

        Gets the name of the user who last modified this Application

        Returns:

        The username of whoever last modified this Application

    -   ### setLastModifiedBy

        public void setLastModifiedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastModifiedBy)

        Sets the name of the user who last modified this Application

        Parameters:

        `lastModifiedBy` - username that last modified this Application

    -   ### setPublished

        public void setPublished(boolean isPublished)

        Sets the published state of the application. Published applications are available for viewing and selection from the End-User Environment.

        Parameters:

        `isPublished` - True to set the application to "published" in the end user environment.

    -   ### isDefault

        public boolean isDefault()

        Tells if this application is marked as the default application.

        Returns:

        true if the application is the default application for the site

    -   ### setDefault

        public void setDefault(boolean isDefault)

        Marks this application as the default application. This is an internal and non persisted application property. To set the default home application use [`ApplicationService.setDefaultApplication(Long)`](ApplicationService.html#setDefaultApplication\(java.lang.Long\)).

        Parameters:

        `isDefault` - If this application is marked as the default one.

    -   ### isPublished

        @Transient public boolean isPublished()

        Gets the published state of the application. Published applications are available for viewing and selection from the End-User Environment.

    -   ### setPublic

        public void setPublic(boolean isPublic)

        A public application gives "viewer" privileges to all users of the system. This has precedence over the [`ApplicationRoleMap`](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications"), that is, if the user "john.smith" is in the "deny" list of the application role map, but this application is "public" using this flag. Then "john.smith" will have "viewer" privileges.

        Parameters:

        `isPublic` - If the application is to be public.

    -   ### setSystem

        public void setSystem(boolean isSystem)

        Sets whether or not this application is a system application. Once the flag is set and the application saved, the flag can't be set back again to false.

        Parameters:

        `isSystem` - whether or not this application should be treated as a system app

    -   ### isSystem

        @Transient public boolean isSystem()

        Whether or not this application is a system application.

    -   ### getPublic

        public boolean getPublic()

        A public application gives "viewer" privileges to all users of the system.

        Returns:

        If the application is public.

    -   ### setIconRelativePath

        public void setIconRelativePath([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") iconRelPath)

        Sets this application's icon path, if stored within the App server structure

        Parameters:

        `iconRelPath` - the path where this application's icon is located

    -   ### getIconRelativePath

        @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getIconRelativePath()

        Gets this application's icon path if it is stored within the application server structure

        Returns:

        the application icon path

    -   ### getPrefix

        @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPrefix()

        Gets the prefix of the application as a `String`. The application prefix is added by default to certain objects created within the application.

        Returns:

        The application prefix as a `String`.

    -   ### setPrefix

        public void setPrefix([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prefix) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

        Sets the prefix of the application. The application prefix is added by default to certain objects created within the application. It is suggested that the application prefix be unique for the Appian environment. An application prefix must meet the following requirements: < 5 characters in length No special characters Cannot all be numbers

        Parameters:

        `prefix` - The new application prefix.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")`

    -   ### addNavigationItem

        public void addNavigationItem([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier) throws [InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")

        Adds a new navigation item to the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s navigation definition to the end of the list.

        Parameters:

        `displayName` - the label that will be shown to the user when rendering the navigation link

        `pageUuid` - the UUID of the target page of the new navigation item

        `urlIdentifier` - A short string that will be used to provide direct, intuitive URL access to the page, e.g. "www.appianbpm.com/app/expenses/**create**"

        Throws:

        `[InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")` - If the parameters for the navigation item are invalid.

    -   ### addNavigationItem

        public void addNavigationItem([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier, int index) throws [InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")

        Adds a new navigation item to the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s navigation definition at the specified index.

        Parameters:

        `displayName` - the label that will be shown to the user when rendering the navigation link

        `pageUuid` - the UUID of the target page of the new navigation item. It is expected that this page is part of the application.

        `urlIdentifier` - A short string that will be used to provide direct, intuitive URL access to the page, e.g. "www.appianbpm.com/app/expenses/**create**"

        `index` - The index where the item should be positioned (where 0 is the first element).

        Throws:

        `[InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")` - If the parameters for the navigation item are invalid.

    -   ### getNavigationItems

        @Transient public [ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")\[\] getNavigationItems()

        Returns the list of navigation items defined for the Application.

        Returns:

        the list of navigation items, represented as an array of [`ApplicationNavigationItem`](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")s

    -   ### removeNavigationItem

        public [ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications") removeNavigationItem(int index) throws [InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")

        Removes the navigation item at the specified index.

        Parameters:

        `index` - the index of the navigation item.

        Throws:

        `[InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")` - if the index is invalid.

    -   ### addAction

        public void addAction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description) throws [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        Adds a new application action to the end of the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s actions list.

        Parameters:

        `displayLabel` - The user friendly label to use when displaying this action.

        `processModelUuid` - The UUID of the process model that executes as part of this action. It is expected that this process model is part of the application.

        `description` - The description of the action.

        Throws:

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If any of the parameters for the action is invalid.

    -   ### addAction

        public void addAction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description, int index) throws [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        Adds a new application action to the [`Application`](Application.html "class in com.appiancorp.suiteapi.applications")'s actions list at the specified position.

        Parameters:

        `displayLabel` - The user friendly label to use when displaying this action.

        `processModelUuid` - The UUID of the process model that executes as part of this action. It is expected that this process model is part of the application.

        `description` - The description of the action.

        `index` - The index where the item should be positioned (where 0 is the first element).

        Throws:

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If any of the parameters for the action is invalid.

    -   ### getActions

        @Transient public [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")\[\] getActions()

        Returns the list of actions defined for the Application.

        Returns:

        the list of actions, represented as an array of [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")s.

    -   ### removeAction

        public [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") removeAction(int index) throws [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        Removes the [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") at the specified index.

        Parameters:

        `index` - The index of the action to remove in the application's list of actions.

        Throws:

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If the index is invalid.

    -   ### addObjects

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void addObjects(com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uuids) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

        Deprecated.

        use [`addObjectsByType(Long, Object[])`](#addObjectsByType\(java.lang.Long,U%5B%5D\))

        Associates objects of the specified type with the Application.

        Parameters:

        `type` - Object type.

        `uuids` - Array of UUIDs corresponding to the objects to be added. May be null but may not be empty or contain null.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If trying to add a null item.

    -   ### addObjectsByType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public <H extends com.appiancorp.ix.Haul<I, U>, I, U> void addObjectsByType(com.appiancorp.ix.Type<H,I,U> type, U\[\] uuids) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

        Deprecated.

        use [`addObjectsByType(Long, Object[])`](#addObjectsByType\(java.lang.Long,U%5B%5D\))

        Associates objects of the specified type with the Application.

        Parameters:

        `type` - Object type.

        `uuids` - Array of UUIDs corresponding to the objects to be added. May be null but may not be empty or contain null.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If trying to add a null item.

    -   ### addObjectsByType

        public <H extends com.appiancorp.ix.Haul<I, U>, I, U> void addObjectsByType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianTypeLong, U\[\] uuids) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

        Associates objects of the specified type with the Application.

        Parameters:

        `appianTypeLong` - Object type. The only supported content type is `AppianTypeLong.CONTENT_ITEM`. Any other content type passed in (e.g. `AppianTypeLong.FOLDER`) will be treated as `AppianTypeLong.CONTENT_ITEM`.

        `uuids` - Array of UUIDs corresponding to the objects to be added. May be null but may not be empty or contain null.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If trying to add a null item.

    -   ### getApplicationObjects

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getApplicationObjects(com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> type)

        Deprecated.

        use [`getObjectsByType(Long)`](#getObjectsByType\(java.lang.Long\))

        Gets an unmodifiable set of all of the UUIDs of a specified Type that have been associated with this Application. Any attempts to modify the return set will return an [`UnsupportedOperationException`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/UnsupportedOperationException.html "class or interface in java.lang"). See [`Collections.unmodifiableSet(Set)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableSet\(java.util.Set\) "class or interface in java.util")

        Parameters:

        `type` - The object `Type`.

        Returns:

        An unmodifiable set with all the application UUIDs.

    -   ### getObjectsByType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public <H extends com.appiancorp.ix.Haul<I, U>, I, U> [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<U> getObjectsByType(com.appiancorp.ix.Type<H,I,U> type)

        Deprecated.

        use [`getObjectsByType(Long)`](#getObjectsByType\(java.lang.Long\))

        Gets an unmodifiable set of all of the UUIDs of a specified Type that have been associated with this Application. Any attempts to modify the return set will return an [`UnsupportedOperationException`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/UnsupportedOperationException.html "class or interface in java.lang"). See [`Collections.unmodifiableSet(Set)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableSet\(java.util.Set\) "class or interface in java.util")

        Parameters:

        `type` - Object type.

        Returns:

        An unmodifiable set with all the application UUIDs.

    -   ### getObjectsByType

        public <H extends com.appiancorp.ix.Haul<I, U>, I, U> [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<U> getObjectsByType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianTypeLong)

        Gets an unmodifiable set of all of the UUIDs of a specified Type that have been associated with this Application. Any attempts to modify the return set will return an [`UnsupportedOperationException`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/UnsupportedOperationException.html "class or interface in java.lang"). See [`Collections.unmodifiableSet(Set)`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collections.html#unmodifiableSet\(java.util.Set\) "class or interface in java.util")

        Parameters:

        `appianTypeLong` - Object type. The only supported content type is `AppianTypeLong.CONTENT_ITEM`. Any other content type passed in (e.g. `AppianTypeLong.FOLDER`) will be treated as `AppianTypeLong.CONTENT_ITEM`.

        Returns:

        An unmodifiable set with all the application UUIDs.

    -   ### removeObjects

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void removeObjects(com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uuids) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`removeObjectsByType(Long, Object[])`](#removeObjectsByType\(java.lang.Long,U%5B%5D\)) instead

        Dissociate specified objects from the Application.

        Parameters:

        `type` - Objects' type.

        `uuids` - Array of UUIDs corresponding to the objects to be removed. May be null may not be empty or contain null.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If trying to remove a null item.

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeObjectsByType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public <H extends com.appiancorp.ix.Haul<I, U>, I, U> void removeObjectsByType(com.appiancorp.ix.Type<H,I,U> type, U\[\] uuids) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`removeObjectsByType(Long, Object[])`](#removeObjectsByType\(java.lang.Long,U%5B%5D\)) instead

        Dissociate specified objects from the Application.

        Parameters:

        `type` - Objects' type.

        `uuids` - Array of UUIDs corresponding to the objects to be removed. May be null may not be empty or contain null.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If trying to remove a null item.

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If trying to remove an object associated an existing application item, such as an action or navigation item.

    -   ### removeObjectsByType

        public <H extends com.appiancorp.ix.Haul<I, U>, I, U> void removeObjectsByType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianTypeLong, U\[\] uuids) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Dissociate specified objects from the Application.

        Parameters:

        `appianTypeLong` - Object type. The only supported content type is `AppianTypeLong.CONTENT_ITEM`. Any other content type passed in (e.g. `AppianTypeLong.FOLDER`) will be treated as `AppianTypeLong.CONTENT_ITEM`.

        `uuids` - Array of UUIDs corresponding to the objects to be removed. May be null may not be empty or contain null.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If trying to remove a null item.

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If trying to remove an object associated with an existing application item, such as an action or navigation item.

    -   ### getAssociatedApplications

        @Transient public [Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications") getAssociatedApplications()

        Returns the associated applications. See [`Application.AssociatedApplications`](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")

    -   ### setAssociatedApplications

        public [Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications") setAssociatedApplications([Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications") AssociatedApplications)

        Sets the associated applications See [`Application.AssociatedApplications`](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")

        Parameters:

        `AssociatedApplications` - The associated applications to set

        Returns:

        The [`Application.AssociatedApplications`](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")

    -   ### getAssociatedObjects

        @Transient public [Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications") getAssociatedObjects()

    -   ### setAssociatedObjects

        public [Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications") setAssociatedObjects([Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications") associatedObjects)

    -   ### getApplicationNavigation

        @Transient public [Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications") getApplicationNavigation()

    -   ### setApplicationNavigation

        public [Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications") setApplicationNavigation([Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications") applicationNavigation)

    -   ### getApplicationActions

        @Transient public [Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") getApplicationActions()

    -   ### setApplicationActions

        public [Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") setApplicationActions([Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") applicationActions)

        Sets the {link ApplicationActions} containing the collection of actions.

        Returns: