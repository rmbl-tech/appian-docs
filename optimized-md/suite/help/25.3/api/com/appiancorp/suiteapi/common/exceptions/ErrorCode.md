---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/ErrorCode.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/ErrorCode.html
version: "25.3"
title: "Class ErrorCode"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/ErrorCode"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class ErrorCode

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.exceptions.AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

com.appiancorp.suiteapi.common.exceptions.ErrorCode

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ErrorCode extends [AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.exceptions.ErrorCode)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class com.appiancorp.exceptions.[AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

    `[AppianErrorCode.InvalidErrorCode](../../../exceptions/AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ACTION_NOT_FOUND](#ACTION_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ACTIVITY_ERROR_ADDNOTE](#ACTIVITY_ERROR_ADDNOTE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_FOLLOWERS_SS_FOLLOWERS_PERMISSIONS_FOLLOWEES](#ADD_FOLLOWERS_SS_FOLLOWERS_PERMISSIONS_FOLLOWEES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_FOLLOWERS_SS_INVALID_PEOPLE](#ADD_FOLLOWERS_SS_INVALID_PEOPLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_FOLLOWERS_SS_SC_AND_FOLLOWERS_PERMISSIONS](#ADD_FOLLOWERS_SS_SC_AND_FOLLOWERS_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_FOLLOWERS_SS_SC_DEACTIVATED](#ADD_FOLLOWERS_SS_SC_DEACTIVATED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_FOLLOWERS_SS_SC_PERMISSIONS_FOLLOWERS](#ADD_FOLLOWERS_SS_SC_PERMISSIONS_FOLLOWERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_FOLLOWERS_SS_SC_PERMISSIONS_GROUPS](#ADD_FOLLOWERS_SS_SC_PERMISSIONS_GROUPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_FOLLOWERS_SS_SC_PERMISSIONS_USERS](#ADD_FOLLOWERS_SS_SC_PERMISSIONS_USERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_ADD_NEGATIVE](#ADD_SUBTRACT_DATETIME_ADD_NEGATIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_ADD_TOO_DISTANT](#ADD_SUBTRACT_DATETIME_ADD_TOO_DISTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_CAST_ERROR](#ADD_SUBTRACT_DATETIME_CAST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_PROCESS_CAL_NOT_FOUND](#ADD_SUBTRACT_DATETIME_PROCESS_CAL_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_START_LIST_NULL](#ADD_SUBTRACT_DATETIME_START_LIST_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_START_NULL](#ADD_SUBTRACT_DATETIME_START_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_SUBTRACT_NEGATIVE](#ADD_SUBTRACT_DATETIME_SUBTRACT_NEGATIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_SUBTRACT_DATETIME_SUBTRACT_TOO_DISTANT](#ADD_SUBTRACT_DATETIME_SUBTRACT_TOO_DISTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_GENERIC_ERROR](#ADD_USER_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_INVALID_TITLE](#ADD_USER_INVALID_TITLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_SN_DUPLICATE_USERNAME](#ADD_USER_SN_DUPLICATE_USERNAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_SN_GENERIC_ERROR](#ADD_USER_SN_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_SN_INSUFFICIENT_PRIVILEGE](#ADD_USER_SN_INSUFFICIENT_PRIVILEGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_SN_INVALID_USER](#ADD_USER_SN_INVALID_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_SN_PASSWORD_COMPLEXITY](#ADD_USER_SN_PASSWORD_COMPLEXITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_SN_TEMP_PWD_GENERIC_EMAIL_ERROR](#ADD_USER_SN_TEMP_PWD_GENERIC_EMAIL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_SN_TEMP_PWD_USER_EMAIL_INVALID](#ADD_USER_SN_TEMP_PWD_USER_EMAIL_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_TEMP_PWD_GENERIC_EMAIL_ERROR](#ADD_USER_TEMP_PWD_GENERIC_EMAIL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADD_USER_TEMP_PWD_USER_EMAIL_INVALID](#ADD_USER_TEMP_PWD_USER_EMAIL_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_GROUP_LANDING_APPS_DESIGNER](#ADMIN_CONSOLE_GROUP_LANDING_APPS_DESIGNER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_GROUP_LANDING_DUPLICATE_GROUPS](#ADMIN_CONSOLE_GROUP_LANDING_DUPLICATE_GROUPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_GROUP_LANDING_EMPTY_GROUPS](#ADMIN_CONSOLE_GROUP_LANDING_EMPTY_GROUPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_GROUP_LANDING_EMPTY_URL](#ADMIN_CONSOLE_GROUP_LANDING_EMPTY_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_GROUP_LANDING_INVALID_URL](#ADMIN_CONSOLE_GROUP_LANDING_INVALID_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_INSUFFICIENT_PRIVILEGES](#ADMIN_CONSOLE_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_INSUFFICIENT_PRIVILEGES_SERVICE](#ADMIN_CONSOLE_INSUFFICIENT_PRIVILEGES_SERVICE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_INVALID_EXTENSION_LIST_CONTAINS_DUPLICATES](#ADMIN_CONSOLE_INVALID_EXTENSION_LIST_CONTAINS_DUPLICATES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_INVALID_EXTENSION_LIST_CONTAINS_PERIODS_BLACKLIST](#ADMIN_CONSOLE_INVALID_EXTENSION_LIST_CONTAINS_PERIODS_BLACKLIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_INVALID_EXTENSION_LIST_CONTAINS_PERIODS_WHITELIST](#ADMIN_CONSOLE_INVALID_EXTENSION_LIST_CONTAINS_PERIODS_WHITELIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_MIGRATION_FAILED_GENERIC_ERROR](#ADMIN_CONSOLE_MIGRATION_FAILED_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADMIN_CONSOLE_PLUGIN_INSUFFICIENT_PRIVILEGES_ERROR](#ADMIN_CONSOLE_PLUGIN_INSUFFICIENT_PRIVILEGES_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ADS_MIGRATION_ERROR](#ADS_MIGRATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AI_AGENT_NOT_FOUND](#AI_AGENT_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AI_AGENT_RUN_NOT_FOUND](#AI_AGENT_RUN_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AI_AGENT_RUN_STEP_NOT_FOUND](#AI_AGENT_RUN_STEP_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AI_SKILL_GENERATIVE_AI_DELETED](#AI_SKILL_GENERATIVE_AI_DELETED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AI_SKILL_GENERATIVE_AI_INPUT_DELETED](#AI_SKILL_GENERATIVE_AI_INPUT_DELETED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_REPORT_MAX_SIZE](#ANALYTIS_REPORT_MAX_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_REPORT_MAX_SIZE_K](#ANALYTIS_REPORT_MAX_SIZE_K)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_GENERIC](#ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_GENERIC_K](#ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_GENERIC_K)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_INVALID_AGGREGATION](#ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_INVALID_AGGREGATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_INVALID_AGGREGATION_K](#ANALYTIS_REPORT_UNSUPPORTED_SPECIFICATION_INVALID_AGGREGATION_K)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_RESULT_PAGE_MAX_SIZE](#ANALYTIS_RESULT_PAGE_MAX_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ANALYTIS_RESULT_PAGE_MAX_SIZE_K](#ANALYTIS_RESULT_PAGE_MAX_SIZE_K)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_CANNOT_ACCESS_CONSTANT_VERSION](#APP_DESIGNER_ACTION_CANNOT_ACCESS_CONSTANT_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_CANNOT_ACCESS_DOCUMENT_VERSION](#APP_DESIGNER_ACTION_CANNOT_ACCESS_DOCUMENT_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_CANNOT_MOVE_UPLOADED_FILE](#APP_DESIGNER_ACTION_CANNOT_MOVE_UPLOADED_FILE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_CANNOT_MOVE_UPLOADED_FILES](#APP_DESIGNER_ACTION_CANNOT_MOVE_UPLOADED_FILES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_OBJECT_DOES_NOT_EXIST](#APP_DESIGNER_ACTION_OBJECT_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_OBJECT_TO_DUPLICATE_NOT_AVAILABLE](#APP_DESIGNER_ACTION_OBJECT_TO_DUPLICATE_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_PERMISSION_DENIED](#APP_DESIGNER_ACTION_PERMISSION_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ACTION_UNEXPECTED_ERROR](#APP_DESIGNER_ACTION_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ADD_ASSOCIATED_APPLICATIONS_PRIVILEGE](#APP_DESIGNER_ADD_ASSOCIATED_APPLICATIONS_PRIVILEGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_ADD_ASSOCIATED_APPLICATIONS_UNAVAILABLE](#APP_DESIGNER_ADD_ASSOCIATED_APPLICATIONS_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_APPLICATION_ADD_PRIVILEGE](#APP_DESIGNER_APPLICATION_ADD_PRIVILEGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_APPLICATION_ADD_UNAVAILABLE](#APP_DESIGNER_APPLICATION_ADD_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_APPLICATION_CREATION_ERROR](#APP_DESIGNER_APPLICATION_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_APPLICATION_NOT_FOUND](#APP_DESIGNER_APPLICATION_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_APPLICATION_REMOVE_PRIVILEGE](#APP_DESIGNER_APPLICATION_REMOVE_PRIVILEGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_APPLICATION_REMOVE_UNAVAILABLE](#APP_DESIGNER_APPLICATION_REMOVE_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_DOCUMENT_MODIFY_PERMISSION_DENIED](#APP_DESIGNER_DOCUMENT_MODIFY_PERMISSION_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_DUPLICATE_NAME](#APP_DESIGNER_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_FEED_CREATION_ERROR_INVALID_ARGUMENT](#APP_DESIGNER_FEED_CREATION_ERROR_INVALID_ARGUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_FOLDER_ACCESS_PERMISSION_DENIED](#APP_DESIGNER_FOLDER_ACCESS_PERMISSION_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_FOLDER_MODIFY_PERMISSION_DENIED](#APP_DESIGNER_FOLDER_MODIFY_PERMISSION_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_FOLDER_NOT_FOUND](#APP_DESIGNER_FOLDER_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_FOLDER_VIEW_MOVE_PARTIAL_SUCCESS](#APP_DESIGNER_FOLDER_VIEW_MOVE_PARTIAL_SUCCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_GROUP_TYPE_DUPLICATE_NAME](#APP_DESIGNER_GROUP_TYPE_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_IMPORT_ZIP_FILE_ERROR](#APP_DESIGNER_IMPORT_ZIP_FILE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_INVALID_APP_URL_STUB](#APP_DESIGNER_INVALID_APP_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_INVALID_GROUP_ID](#APP_DESIGNER_INVALID_GROUP_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_MEMBERSHIP_RULES_UPDATE_FAILED](#APP_DESIGNER_MEMBERSHIP_RULES_UPDATE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_MEMBERSHIP_RULES_UPDATE_INVALID_GROUP_TYPE](#APP_DESIGNER_MEMBERSHIP_RULES_UPDATE_INVALID_GROUP_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_MISSING_DEPENDENCIES_ERROR](#APP_DESIGNER_MISSING_DEPENDENCIES_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_MISSING_IDENTIFIER_APPLICATION_NOT_FOUND](#APP_DESIGNER_MISSING_IDENTIFIER_APPLICATION_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_NAME_CANNOT_BE_NULL_OR_EMPTY](#APP_DESIGNER_NAME_CANNOT_BE_NULL_OR_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_SET_ACTIONS_APPLICATION_UNAVAILABLE](#APP_DESIGNER_SET_ACTIONS_APPLICATION_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_SET_ACTIONS_PERMISSION_DENIED](#APP_DESIGNER_SET_ACTIONS_PERMISSION_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_SET_APPLICATION_SECURITY_DOES_NOT_EXIST](#APP_DESIGNER_SET_APPLICATION_SECURITY_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_SET_APPLICATION_SECURITY_PERMISSION_DENIED](#APP_DESIGNER_SET_APPLICATION_SECURITY_PERMISSION_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_UPDATE_APPLICATION_PERMISSION_DENIED](#APP_DESIGNER_UPDATE_APPLICATION_PERMISSION_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_DESIGNER_UPDATE_GROUP_TYPE_INVALID](#APP_DESIGNER_UPDATE_GROUP_TYPE_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_TOKEN_DEREGISTRATION_FAILED](#APP_TOKEN_DEREGISTRATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_TOKEN_INVALID_PLATFORM](#APP_TOKEN_INVALID_PLATFORM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_TOKEN_MISSING_DEVICE_TOKEN](#APP_TOKEN_MISSING_DEVICE_TOKEN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APP_TOKEN_MISSING_PUBLIC_KEY](#APP_TOKEN_MISSING_PUBLIC_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPIAN_OBJECT_ERROR](#APPIAN_OBJECT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPIAN_SCRIPTING_FN_INVALID_STATE](#APPIAN_SCRIPTING_FN_INVALID_STATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPIAN_TYPE_CAST_EXCEPTION](#APPIAN_TYPE_CAST_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPIANWEBMVC_ACTION_CLASS_NOT_DEFINED](#APPIANWEBMVC_ACTION_CLASS_NOT_DEFINED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_ADDED_INVALID_ITEM](#APPLICATION_ADDED_INVALID_ITEM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_DOCUMENTATION_ITEM_NOT_FOUND](#APPLICATION_DOCUMENTATION_ITEM_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_DOCUMENTATION_MAX_ITEMS](#APPLICATION_DOCUMENTATION_MAX_ITEMS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_DUPLICATE_IDENTIFIER](#APPLICATION_DUPLICATE_IDENTIFIER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_DUPLICATE_URL_IDENTIFIER](#APPLICATION_DUPLICATE_URL_IDENTIFIER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_ERROR](#APPLICATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_EXPORT_FAILED](#APPLICATION_EXPORT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_EXPORT_NO_APP_SELECTED](#APPLICATION_EXPORT_NO_APP_SELECTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_IMPORT_FAILED](#APPLICATION_IMPORT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_INSUFFICIENT_PRIVILEGES](#APPLICATION_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_INVALID](#APPLICATION_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_INVALID_NAME](#APPLICATION_INVALID_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_INVALID_URL_IDENTIFIER](#APPLICATION_INVALID_URL_IDENTIFIER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_NOT_FOUND_BY_ID](#APPLICATION_NOT_FOUND_BY_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_NOT_FOUND_BY_URL](#APPLICATION_NOT_FOUND_BY_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_NOT_FOUND_BY_UUID](#APPLICATION_NOT_FOUND_BY_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_NOT_SAVED](#APPLICATION_NOT_SAVED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_PREFIX_INVALID_CHARACTER](#APPLICATION_PREFIX_INVALID_CHARACTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_PREFIX_ONLY_NUMBERS](#APPLICATION_PREFIX_ONLY_NUMBERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_PREFIX_TOO_LONG](#APPLICATION_PREFIX_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLICATION_REMOVED_INVALID_ITEM](#APPLICATION_REMOVED_INVALID_ITEM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLY_VALIDATIONS_CONTEXT_PARAM_INVALID_TYPE](#APPLY_VALIDATIONS_CONTEXT_PARAM_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLY_VALIDATIONS_CONTEXT_PARAM_NULL](#APPLY_VALIDATIONS_CONTEXT_PARAM_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLY_VALIDATIONS_FUNCTION_NOT_AVAILABLE](#APPLY_VALIDATIONS_FUNCTION_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLY_VALIDATIONS_INVALID_RETURN_TYPE](#APPLY_VALIDATIONS_INVALID_RETURN_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLY_VALIDATIONS_RECORD_FIELD_INVALID_TYPE](#APPLY_VALIDATIONS_RECORD_FIELD_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLY_VALIDATIONS_RECORD_FIELD_PARAM_NULL](#APPLY_VALIDATIONS_RECORD_FIELD_PARAM_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[APPLY_VALIDATIONS_RECORD_TYPE_MISMATCH](#APPLY_VALIDATIONS_RECORD_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ASYNC_VARIABLE_EXECUTION_TIMEOUT](#ASYNC_VARIABLE_EXECUTION_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ASYNC_VARIABLE_NOT_ALLOWED](#ASYNC_VARIABLE_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AUTHZ_ACTION_NOT_ALLOWED_FOR_ANY_ROLE](#AUTHZ_ACTION_NOT_ALLOWED_FOR_ANY_ROLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AUTHZ_INSUFFICIENT_PRIVILEGES](#AUTHZ_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AUTHZ_INSUFFICIENT_PRIVILEGES_FOR_THIS_UI](#AUTHZ_INSUFFICIENT_PRIVILEGES_FOR_THIS_UI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[AUTHZ_USER_IS_NOT_IN_ANY_ROLE](#AUTHZ_USER_IS_NOT_IN_ANY_ROLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BACKGROUND_ACTION_GENERIC_ERROR](#BACKGROUND_ACTION_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BACKGROUND_ACTION_URL_FORBIDDEN](#BACKGROUND_ACTION_URL_FORBIDDEN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BACKGROUND_ACTION_URL_SELF_FORWARD](#BACKGROUND_ACTION_URL_SELF_FORWARD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BIND_FAILED_MULTIPLE_WRITE](#BIND_FAILED_MULTIPLE_WRITE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BIND_FAILED_RESULT_OF_GET_IS_BOUND_VARIABLE](#BIND_FAILED_RESULT_OF_GET_IS_BOUND_VARIABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BIND_FAILED_TO_EVALUATE_GET](#BIND_FAILED_TO_EVALUATE_GET)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BIND_FAILED_TO_EVALUATE_SET_REFERENCE](#BIND_FAILED_TO_EVALUATE_SET_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BIND_FAILED_WRITE](#BIND_FAILED_WRITE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BIND_ONLY_ALLOWED_IN_LOAD_FUNCTION](#BIND_ONLY_ALLOWED_IN_LOAD_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED](#BINDING_UNRESOLVED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_CONTROL_PANEL_BASED_REF](#BINDING_UNRESOLVED_CONTROL_PANEL_BASED_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_PORTAL_BASED_REF](#BINDING_UNRESOLVED_PORTAL_BASED_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_RECORD_BASED_REF](#BINDING_UNRESOLVED_RECORD_BASED_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_RECORD_SEARCH_RESULT_REF](#BINDING_UNRESOLVED_RECORD_SEARCH_RESULT_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_REF](#BINDING_UNRESOLVED_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_REF_NO_ENTITY_IN_DATA_STORE](#BINDING_UNRESOLVED_REF_NO_ENTITY_IN_DATA_STORE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_REF_NO_EVENT_IN_PM](#BINDING_UNRESOLVED_REF_NO_EVENT_IN_PM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_REF_NO_PM_FOR_EVENT](#BINDING_UNRESOLVED_REF_NO_PM_FOR_EVENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BINDING_UNRESOLVED_SITE_BASED_REF](#BINDING_UNRESOLVED_SITE_BASED_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BOOTSTRAP_EXISTING_USER](#BOOTSTRAP_EXISTING_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BOOTSTRAP_INVALID_EMAIL](#BOOTSTRAP_INVALID_EMAIL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BOOTSTRAP_INVALID_FIRST_NAME](#BOOTSTRAP_INVALID_FIRST_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BOOTSTRAP_INVALID_LAST_NAME](#BOOTSTRAP_INVALID_LAST_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BOOTSTRAP_INVALID_PASSWORD](#BOOTSTRAP_INVALID_PASSWORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BOOTSTRAP_INVALID_USERNAME](#BOOTSTRAP_INVALID_USERNAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BOOTSTRAP_SYSTEM_ADMINS_EXIST](#BOOTSTRAP_SYSTEM_ADMINS_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[BUNDLED_APPS_MIGRATION_ERROR](#BUNDLED_APPS_MIGRATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CAN_ONLY_ACCESS_IGNORE_IN_SAVE_MODE_INSIDE_SYSTEM_RULE](#CAN_ONLY_ACCESS_IGNORE_IN_SAVE_MODE_INSIDE_SYSTEM_RULE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_DEREFERENCE_SELF_REFERENCE](#CANNOT_DEREFERENCE_SELF_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_DEREFERENCE_TOO_MANY_LEVELS](#CANNOT_DEREFERENCE_TOO_MANY_LEVELS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_FOLLOW_SELF](#CANNOT_FOLLOW_SELF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_HAVE_GIVEN_PARAMS_WITH_IGNORE_IN_SAVE_MODE](#CANNOT_HAVE_GIVEN_PARAMS_WITH_IGNORE_IN_SAVE_MODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_HAVE_LOAD_OR_LOCAL_VARIABLES](#CANNOT_HAVE_LOAD_OR_LOCAL_VARIABLES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_USE_DYNAMIC_LV_REFRESH_AFTER_VALUE](#CANNOT_USE_DYNAMIC_LV_REFRESH_AFTER_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_USE_ID_REFERABLE_AS_LOCAL_VAR](#CANNOT_USE_ID_REFERABLE_AS_LOCAL_VAR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CANNOT_USE_THIS_RULE_INSIDE_LOOPING_FUNCTION](#CANNOT_USE_THIS_RULE_INSIDE_LOOPING_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CDT_FROM_DATASOURCE_CONNECTION_ERROR](#CDT_FROM_DATASOURCE_CONNECTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CDT_FROM_DATASOURCE_CREATION_ERROR](#CDT_FROM_DATASOURCE_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CDT_FROM_DATASOURCE_PUBLISHING_ERROR](#CDT_FROM_DATASOURCE_PUBLISHING_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CDT_FROM_DATASOURCE_SCHEMA_UPDATE_ERROR](#CDT_FROM_DATASOURCE_SCHEMA_UPDATE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CDT_FROM_DATASOURCE_TABLE_NOT_FOUND_ERROR](#CDT_FROM_DATASOURCE_TABLE_NOT_FOUND_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CDT_FROM_DATASOURCE_UNKNOWN_ERROR](#CDT_FROM_DATASOURCE_UNKNOWN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_KC_EXP_DAYS](#CHANGE_KC_EXP_DAYS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_KC_EXP_DAYS_INSUFFICIENT_PRIVILEGES](#CHANGE_KC_EXP_DAYS_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_KC_EXP_DAYS_INVALID_KC](#CHANGE_KC_EXP_DAYS_INVALID_KC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_KC_EXP_DAYS_UPDATE](#CHANGE_KC_EXP_DAYS_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_KC_EXP_DAYS_UPDATE_PRIVILEGES](#CHANGE_KC_EXP_DAYS_UPDATE_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_USER_PWD_SN_INSUFFICIENT_PRIVILEGE](#CHANGE_USER_PWD_SN_INSUFFICIENT_PRIVILEGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_USER_PWD_SN_INVALID_USER](#CHANGE_USER_PWD_SN_INVALID_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CHANGE_USER_PWD_SN_PASSWORD_COMPLEXITY](#CHANGE_USER_PWD_SN_PASSWORD_COMPLEXITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CLIENT_CERTIFICATE_IMPORT_FAILED](#CLIENT_CERTIFICATE_IMPORT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CLIENT_CERTIFICATE_INVALID_PASSWORD](#CLIENT_CERTIFICATE_INVALID_PASSWORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CLIENT_CERTIFICATE_INVALID_PEM_FILE](#CLIENT_CERTIFICATE_INVALID_PEM_FILE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CLIENT_CERTIFICATE_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#CLIENT_CERTIFICATE_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CLIENT_CERTIFICATE_PEM_ENCRYPED_WITH_UNSUPPORTED_ALGORITHM](#CLIENT_CERTIFICATE_PEM_ENCRYPED_WITH_UNSUPPORTED_ALGORITHM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CLIENT_CERTIFICATE_PEM_MISSING_CERTIFICATE](#CLIENT_CERTIFICATE_PEM_MISSING_CERTIFICATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CLIENT_CERTIFICATE_PEM_MISSING_PRIVATE_KEY](#CLIENT_CERTIFICATE_PEM_MISSING_PRIVATE_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODE_PARAM_NULL](#CODE_PARAM_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODELESS_DATA_MODELING_INCORRECT_DATA_CONFIGURATION](#CODELESS_DATA_MODELING_INCORRECT_DATA_CONFIGURATION)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODELESS_DATA_MODELING_NON_MATCHING_FIELDS](#CODELESS_DATA_MODELING_NON_MATCHING_FIELDS)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODELESS_DATA_MODELING_PARTIAL_SQL_FAILURE](#CODELESS_DATA_MODELING_PARTIAL_SQL_FAILURE)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_PERMISSION](#CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_PERMISSION)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_TABLE_EXISTS](#CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_TABLE_EXISTS)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODELESS_DATA_MODELING_SQL_FAILED_TO_FETCH_COLUMNS](#CODELESS_DATA_MODELING_SQL_FAILED_TO_FETCH_COLUMNS)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CODELESS_DATA_MODELING_SQL_NOT_PRESENT_ERROR](#CODELESS_DATA_MODELING_SQL_NOT_PRESENT_ERROR)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[COMPONENT_CANNOT_USE_DYNAMIC_LV_REFRESH_AFTER_VALUE](#COMPONENT_CANNOT_USE_DYNAMIC_LV_REFRESH_AFTER_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[COMPRESSION_LIMIT_REACHED](#COMPRESSION_LIMIT_REACHED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONFIG_OBJECT_CANNOT_BE_INITIALIZED](#CONFIG_OBJECT_CANNOT_BE_INITIALIZED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONFIG_OBJECT_RESOURCE_CANNOT_BE_PARSED](#CONFIG_OBJECT_RESOURCE_CANNOT_BE_PARSED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONFIGRUATION_DECRYPTION_ERROR](#CONFIGRUATION_DECRYPTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONFIGURATION_MOBILE_PASSCODE_REQUIRED_INVALID](#CONFIGURATION_MOBILE_PASSCODE_REQUIRED_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_ENVIRONMENT_RESPONSE_CANT_DESERIALIZE](#CONNECTED_ENVIRONMENT_RESPONSE_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_ENVIRONMENT_RESPONSE_INVALID_ERROR_CODE](#CONNECTED_ENVIRONMENT_RESPONSE_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_ENVIRONMENT_RESPONSE_MISSING_ERROR_CODE](#CONNECTED_ENVIRONMENT_RESPONSE_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_CONTENT_TYPE](#CONNECTED_SYSTEM_API_INVALID_CONTENT_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_HTTP_METHOD](#CONNECTED_SYSTEM_API_INVALID_HTTP_METHOD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_PROPERTY_CREATE](#CONNECTED_SYSTEM_API_INVALID_PROPERTY_CREATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_REGION](#CONNECTED_SYSTEM_API_INVALID_REGION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_URI_PATH](#CONNECTED_SYSTEM_API_INVALID_URI_PATH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_URL](#CONNECTED_SYSTEM_API_INVALID_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_VALUE_FORMAT](#CONNECTED_SYSTEM_API_INVALID_VALUE_FORMAT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_INVALID_VALUE_TOO_LONG](#CONNECTED_SYSTEM_API_INVALID_VALUE_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_MALFORMED_REQUEST](#CONNECTED_SYSTEM_API_MALFORMED_REQUEST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_API_MISSING_PROPERTY](#CONNECTED_SYSTEM_API_MISSING_PROPERTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_FATAL_MIGRATION_ERROR](#CONNECTED_SYSTEM_FATAL_MIGRATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_GENERIC_ERROR](#CONNECTED_SYSTEM_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_GENERIC_MALFORMED_URL](#CONNECTED_SYSTEM_GENERIC_MALFORMED_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_INVALID_PROPERTY_CREATE](#CONNECTED_SYSTEM_INVALID_PROPERTY_CREATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_INVALID_REGION](#CONNECTED_SYSTEM_INVALID_REGION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_INVALID_URL](#CONNECTED_SYSTEM_INVALID_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_INVALID_VALUE_TOO_LONG](#CONNECTED_SYSTEM_INVALID_VALUE_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_MISSING_PROPERTY_CREATE](#CONNECTED_SYSTEM_MISSING_PROPERTY_CREATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_NOT_FOUND](#CONNECTED_SYSTEM_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_READ_EXCEPTION](#CONNECTED_SYSTEM_READ_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONNECTED_SYSTEM_SAVE_EXCEPTION](#CONNECTED_SYSTEM_SAVE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONSTANT_NOT_FOUND](#CONSTANT_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONSTANT_NOT_FOUND_INC_CONSTANT](#CONSTANT_NOT_FOUND_INC_CONSTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONSTANT_NOT_FOUND_UPD_CONSTANT](#CONSTANT_NOT_FOUND_UPD_CONSTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_INTERFACE_TYPE_LOR_INVALID_CONTROL_PANEL](#CONTROL_PANEL_INTERFACE_TYPE_LOR_INVALID_CONTROL_PANEL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_INVALID_REF_CONSTRUCTOR](#CONTROL_PANEL_INVALID_REF_CONSTRUCTOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_INVALID_REF_TYPE](#CONTROL_PANEL_INVALID_REF_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_IX_INVALID_CUSTOM_CONFIG_SCOPE](#CONTROL_PANEL_IX_INVALID_CUSTOM_CONFIG_SCOPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_IX_INVALID_INTERFACE_INTENT](#CONTROL_PANEL_IX_INVALID_INTERFACE_INTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_LOR_INVALID_CONTROL_PANEL_RECORDS_PARAMETER](#CONTROL_PANEL_LOR_INVALID_CONTROL_PANEL_RECORDS_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_LOR_INVALID_CPTI_UUID](#CONTROL_PANEL_LOR_INVALID_CPTI_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_LOR_INVALID_INTERFACE_TYPE](#CONTROL_PANEL_LOR_INVALID_INTERFACE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_LOR_INVALID_PARAMETER](#CONTROL_PANEL_LOR_INVALID_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_LOR_INVALID_PRIMARY_RECORD_TYPE](#CONTROL_PANEL_LOR_INVALID_PRIMARY_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_LOR_INVALID_RECORD_PARAMETER](#CONTROL_PANEL_LOR_INVALID_RECORD_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_LOR_INVALID_SELECTION_DESIGNATOR_FIELD](#CONTROL_PANEL_LOR_INVALID_SELECTION_DESIGNATOR_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_NOT_ENABLED](#CONTROL_PANEL_NOT_ENABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#CONTROL_PANEL_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_TIER_ITEM_CONTROL_PANEL_INSUFFICIENT_PRIVILEGES](#CONTROL_PANEL_TIER_ITEM_CONTROL_PANEL_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_TIER_ITEM_CONTROL_PANEL_NOT_FOUND](#CONTROL_PANEL_TIER_ITEM_CONTROL_PANEL_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_TIER_ITEM_INSUFFICIENT_PRIVILEGES](#CONTROL_PANEL_TIER_ITEM_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_TIER_ITEM_NOT_FOUND](#CONTROL_PANEL_TIER_ITEM_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_TIER_ITEM_PARENT_INSUFFICIENT_PRIVILEGES](#CONTROL_PANEL_TIER_ITEM_PARENT_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONTROL_PANEL_TIER_ITEM_PARENT_NOT_FOUND](#CONTROL_PANEL_TIER_ITEM_PARENT_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONVERT_TO_SAIL_RULE_INSUFFICIENT_GENERIC](#CONVERT_TO_SAIL_RULE_INSUFFICIENT_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONVERT_TO_SAIL_RULE_INSUFFICIENT_PRIVILEGES](#CONVERT_TO_SAIL_RULE_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONVERT_TO_SAIL_RULE_INVALID_ID](#CONVERT_TO_SAIL_RULE_INVALID_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONVERT_TO_SAIL_RULE_INVALID_RULE_INPUT](#CONVERT_TO_SAIL_RULE_INVALID_RULE_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CONVERT_TO_SAIL_RULE_INVALID_VERSION](#CONVERT_TO_SAIL_RULE_INVALID_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[COULD_NOT_RETRIVE_RECORD_DASHBOARD](#COULD_NOT_RETRIVE_RECORD_DASHBOARD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_COMMUNITY](#CREATE_COMMUNITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_COMMUNITY_INSUFFICIENT_PRIVILEGES](#CREATE_COMMUNITY_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_COMMUNITY_INVALID_PARENT](#CREATE_COMMUNITY_INVALID_PARENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_GROUP_ACT](#CREATE_GROUP_ACT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_GROUP_ACT_DUPLICATE_NAME](#CREATE_GROUP_ACT_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_GROUP_ACT_INVALID_GROUP_TYPE](#CREATE_GROUP_ACT_INVALID_GROUP_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_GROUP_ACT_INVALID_MEMBERSHIP_POLICY](#CREATE_GROUP_ACT_INVALID_MEMBERSHIP_POLICY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_GROUP_ACT_INVALID_PARENT_GROUP](#CREATE_GROUP_ACT_INVALID_PARENT_GROUP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_GROUP_ACT_INVALID_SECURITY_MAP](#CREATE_GROUP_ACT_INVALID_SECURITY_MAP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CREATE_GROUP_ACT_INVALID_VIEW_POLICY](#CREATE_GROUP_ACT_INVALID_VIEW_POLICY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CRYPTOGRAPHER_INVALID_DECRYPTION](#CRYPTOGRAPHER_INVALID_DECRYPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CRYPTOGRAPHER_INVALID_DECRYPTION_KEY](#CRYPTOGRAPHER_INVALID_DECRYPTION_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CRYPTOGRAPHER_INVALID_DECRYPTION_NOT_ENCRYPTED](#CRYPTOGRAPHER_INVALID_DECRYPTION_NOT_ENCRYPTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CRYPTOGRAPHER_INVALID_ENCRYPTION](#CRYPTOGRAPHER_INVALID_ENCRYPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CRYPTOGRAPHER_INVALID_ENCRYPTION_ALREADY_ENCRYPTED](#CRYPTOGRAPHER_INVALID_ENCRYPTION_ALREADY_ENCRYPTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CSTF_INVALID_CAST_EXCEPTION](#CSTF_INVALID_CAST_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CURRENCY_INDICATOR_ALIGNMENT_INVALID_TYPE_ERROR](#CURRENCY_INDICATOR_ALIGNMENT_INVALID_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CURRENCY_INDICATOR_ALIGNMENT_INVALID_VALUE_ERROR](#CURRENCY_INDICATOR_ALIGNMENT_INVALID_VALUE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CURRENCY_INVALID_CODE_ERROR](#CURRENCY_INVALID_CODE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CURRENCY_INVALID_FORMAT_TYPE_ERROR](#CURRENCY_INVALID_FORMAT_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CURRENCY_INVALID_FORMAT_VALUE_ERROR](#CURRENCY_INVALID_FORMAT_VALUE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CURRENCY_PARAMS_CAST_ERROR](#CURRENCY_PARAMS_CAST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CUSTOM_BRANDING_IMAGE_CREATION_ERROR](#CUSTOM_BRANDING_IMAGE_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CUSTOM_BRANDING_IMAGES_FOLDER_CREATION_ERROR](#CUSTOM_BRANDING_IMAGES_FOLDER_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CUSTOM_FIELD_CIRCULAR_REFERENCE_ERROR](#CUSTOM_FIELD_CIRCULAR_REFERENCE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CUSTOM_FIELD_EVALUATION_ERROR](#CUSTOM_FIELD_EVALUATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CUSTOM_FIELD_MATCH_IN_MEASURE_ERROR](#CUSTOM_FIELD_MATCH_IN_MEASURE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CUSTOM_FIELD_MAX_NESTING_ERROR](#CUSTOM_FIELD_MAX_NESTING_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[CUSTOM_FIELD_NESTED_MATCH_ERROR](#CUSTOM_FIELD_NESTED_MATCH_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_ANALYSIS_GENERAL_ERROR](#DATA_ANALYSIS_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_COLLECTION_GENERAL_ERROR](#DATA_COLLECTION_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_CANT_LOAD_PROCESS_REPORT_DOC_ERROR](#DATA_EXPORT_CANT_LOAD_PROCESS_REPORT_DOC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_CDT_FIELD_NOT_PRESENT_IN_EXPRESSION_DATA](#DATA_EXPORT_CDT_FIELD_NOT_PRESENT_IN_EXPRESSION_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_COLUMN_LIMIT_EXCEEDED](#DATA_EXPORT_COLUMN_LIMIT_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_CSV_QUOTE_PARSE_ERROR](#DATA_EXPORT_CSV_QUOTE_PARSE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DATA_DENSITY_TOO_HIGH](#DATA_EXPORT_DATA_DENSITY_TOO_HIGH)`

    Deprecated.

    Used in 17.4 and 18.1 only

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DATA_SOURCE_CONNECTION_ISSUE](#DATA_EXPORT_DATA_SOURCE_CONNECTION_ISSUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DATA_SOURCE_MISSING](#DATA_EXPORT_DATA_SOURCE_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DOCUMENT_DESCRIPTION_INVALID_LENGTH](#DATA_EXPORT_DOCUMENT_DESCRIPTION_INVALID_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DOCUMENT_FOLDER_INVALID](#DATA_EXPORT_DOCUMENT_FOLDER_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DOCUMENT_LOCKED_BY_PROCESS](#DATA_EXPORT_DOCUMENT_LOCKED_BY_PROCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DOCUMENT_NAME_AND_UPDATE](#DATA_EXPORT_DOCUMENT_NAME_AND_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DOCUMENT_NAME_EMPTY](#DATA_EXPORT_DOCUMENT_NAME_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DOCUMENT_NAME_INVALID_LENGTH](#DATA_EXPORT_DOCUMENT_NAME_INVALID_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_DOCUMENT_NO_NAME](#DATA_EXPORT_DOCUMENT_NO_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_EMAIL_SUBJECT_OR_MESSAGE_MISSING](#DATA_EXPORT_EMAIL_SUBJECT_OR_MESSAGE_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_EMPTY_EMAIL_GROUP_RECIPIENTS](#DATA_EXPORT_EMPTY_EMAIL_GROUP_RECIPIENTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_EXCEEDED_MAX_ENTRY_SIZE](#DATA_EXPORT_EXCEEDED_MAX_ENTRY_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_EXCEEDED_MIN_INFLATE_RATIO](#DATA_EXPORT_EXCEEDED_MIN_INFLATE_RATIO)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_EXPRESSION_RECORD_FAILED_DEFAULT_BATCH](#DATA_EXPORT_EXPRESSION_RECORD_FAILED_DEFAULT_BATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_FILTER_AND_LOGICAL_EXPRESSION_SELECTED](#DATA_EXPORT_FILTER_AND_LOGICAL_EXPRESSION_SELECTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_FILTER_OR_SELECTION_INVALID_FIELD](#DATA_EXPORT_FILTER_OR_SELECTION_INVALID_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_GENERIC_DOCUMENT_TO_UPDATE_ERROR](#DATA_EXPORT_GENERIC_DOCUMENT_TO_UPDATE_ERROR)`

    Generic error with the provided Document To Update.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_GENERIC_ERROR](#DATA_EXPORT_GENERIC_ERROR)`

    Generic error during export.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_GENERIC_INPUT_ERROR](#DATA_EXPORT_GENERIC_INPUT_ERROR)`

    Generic error with an input provided to Data Export.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_GENERIC_PROCESS_QUERY_ERROR](#DATA_EXPORT_GENERIC_PROCESS_QUERY_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_GENERIC_WRITE_ERROR](#DATA_EXPORT_GENERIC_WRITE_ERROR)`

    Generic error with document creation during export.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_INVALID_CSV_DELIMITER](#DATA_EXPORT_INVALID_CSV_DELIMITER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_INVALID_CUSTOM_CELL_POSITION_REFERENCE](#DATA_EXPORT_INVALID_CUSTOM_CELL_POSITION_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_INVALID_CUSTOM_HEADER_CELL_REFERENCE](#DATA_EXPORT_INVALID_CUSTOM_HEADER_CELL_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_INVALID_DOCUMENT_TO_UPDATE_TYPE](#DATA_EXPORT_INVALID_DOCUMENT_TO_UPDATE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_INVALID_EMAIL_RECIPIENT_OR_GROUP](#DATA_EXPORT_INVALID_EMAIL_RECIPIENT_OR_GROUP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_INVALID_FILTERS_INPUT](#DATA_EXPORT_INVALID_FILTERS_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_INVALID_OUTPUT_FORMAT](#DATA_EXPORT_INVALID_OUTPUT_FORMAT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_MISMATCHED_CUSTOM_CELL_POSITIONS_VALUES](#DATA_EXPORT_MISMATCHED_CUSTOM_CELL_POSITIONS_VALUES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_MISMATCHED_LIST_LENGTH](#DATA_EXPORT_MISMATCHED_LIST_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_MISSING_CUSTOM_CELL_POSITIONS](#DATA_EXPORT_MISSING_CUSTOM_CELL_POSITIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_MISSING_CUSTOM_CELL_VALUES](#DATA_EXPORT_MISSING_CUSTOM_CELL_VALUES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_MISSING_CUSTOM_HEADER_CELLS](#DATA_EXPORT_MISSING_CUSTOM_HEADER_CELLS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_MISSING_CUSTOM_HEADER_VALUES](#DATA_EXPORT_MISSING_CUSTOM_HEADER_VALUES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_NAMED_DOCUMENT_LOCKED_BY_USER](#DATA_EXPORT_NAMED_DOCUMENT_LOCKED_BY_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_NEGATIVE_TOTAL_COUNT_IN_RECORD_LIST](#DATA_EXPORT_NEGATIVE_TOTAL_COUNT_IN_RECORD_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_NO_PROCESS_REPORT_DOC_ERROR](#DATA_EXPORT_NO_PROCESS_REPORT_DOC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_NULL_PRIMARY_KEY](#DATA_EXPORT_NULL_PRIMARY_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_NUM_IDENTIFIERS_DIFFERS_FROM_NUM_EXPRESSION_ROWS](#DATA_EXPORT_NUM_IDENTIFIERS_DIFFERS_FROM_NUM_EXPRESSION_ROWS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_OUT_OF_MEMORY](#DATA_EXPORT_OUT_OF_MEMORY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_OVERWRITTEN_CUSTOM_CELL_LOCATION](#DATA_EXPORT_OVERWRITTEN_CUSTOM_CELL_LOCATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_OVERWRITTEN_CUSTOM_CELL_POSITION](#DATA_EXPORT_OVERWRITTEN_CUSTOM_CELL_POSITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_PROCESS_RECORD_TIMEOUT](#DATA_EXPORT_PROCESS_RECORD_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_QUERY_FAILED](#DATA_EXPORT_QUERY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_RECORD_CANNOT_RETRIEVE_DATA](#DATA_EXPORT_RECORD_CANNOT_RETRIEVE_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_RECORD_HEADER_ERROR](#DATA_EXPORT_RECORD_HEADER_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_RECORD_SOURCE_EXPRESSION_ERROR](#DATA_EXPORT_RECORD_SOURCE_EXPRESSION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_RECORD_SYNC_COMPLETED_DURING_EXPORT](#DATA_EXPORT_RECORD_SYNC_COMPLETED_DURING_EXPORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_REPORT_MISSING](#DATA_EXPORT_REPORT_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_SAVE_IN_FOLDER_MISSING](#DATA_EXPORT_SAVE_IN_FOLDER_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_SELECTION_AND_AGGREGATION_SELECTED](#DATA_EXPORT_SELECTION_AND_AGGREGATION_SELECTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_SHEET_NAME_ALREADY_EXISTS](#DATA_EXPORT_SHEET_NAME_ALREADY_EXISTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_SHEET_NAME_TOO_LONG](#DATA_EXPORT_SHEET_NAME_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_SHEET_NUMBER_DOES_NOT_EXIST](#DATA_EXPORT_SHEET_NUMBER_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_SHEET_NUMBER_NOT_POSITIVE](#DATA_EXPORT_SHEET_NUMBER_NOT_POSITIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_STARTING_CELL_INVALID](#DATA_EXPORT_STARTING_CELL_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_UNNAMED_DOCUMENT_LOCKED_BY_USER](#DATA_EXPORT_UNNAMED_DOCUMENT_LOCKED_BY_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_EXPORT_UPDATE_INVALID_DOCUMENT](#DATA_EXPORT_UPDATE_INVALID_DOCUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_DATASOURCE_EMPTY](#DATA_STORE_CONFIG_DATASOURCE_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_ENTITY_NOT_FOUND](#DATA_STORE_CONFIG_ENTITY_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_ENTITY_NOT_FOUND_IN_LATEST_PUBLISHED_VERSION](#DATA_STORE_CONFIG_ENTITY_NOT_FOUND_IN_LATEST_PUBLISHED_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_NAME_EMPTY](#DATA_STORE_CONFIG_NAME_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_NAME_WHITESPACE](#DATA_STORE_CONFIG_NAME_WHITESPACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_NO_EMF_DEFINITION_FOR_TYPES](#DATA_STORE_CONFIG_NO_EMF_DEFINITION_FOR_TYPES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_NO_PUBLISHED_VERSION](#DATA_STORE_CONFIG_NO_PUBLISHED_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_NOT_FOUND](#DATA_STORE_CONFIG_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIG_NOT_PUBLISHABLE](#DATA_STORE_CONFIG_NOT_PUBLISHABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIGS_CANNOT_EXECUTE_DDL](#DATA_STORE_CONFIGS_CANNOT_EXECUTE_DDL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIGS_CANNOT_GENERATE_DDL](#DATA_STORE_CONFIGS_CANNOT_GENERATE_DDL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIGS_CANNOT_VALIDATE_SCHEMA](#DATA_STORE_CONFIGS_CANNOT_VALIDATE_SCHEMA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_CONFIGS_NOT_FOUND](#DATA_STORE_CONFIGS_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_DUPLICATE_NAME](#DATA_STORE_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATA_STORE_SECURITY_NOT_INHERITABLE](#DATA_STORE_SECURITY_NOT_INHERITABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATATYPE_FIELD_COMPARATOR_SORT_PROPERTIES_DIFFERENT_TYPES](#DATATYPE_FIELD_COMPARATOR_SORT_PROPERTIES_DIFFERENT_TYPES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DATATYPE_FIELD_COMPARATOR_SORT_PROPERTY_NOT_PRIMITIVE](#DATATYPE_FIELD_COMPARATOR_SORT_PROPERTY_NOT_PRIMITIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEACTIVATE_COMMUNITY](#DEACTIVATE_COMMUNITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEACTIVATE_COMMUNITY_INSUFFICIENT_PRIVILEGES](#DEACTIVATE_COMMUNITY_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEACTIVATE_COMMUNITY_INVALID_CONTENT](#DEACTIVATE_COMMUNITY_INVALID_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEACTIVATE_COMMUNITY_NOT_EMPTY](#DEACTIVATE_COMMUNITY_NOT_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEACTIVATE_USER_SN_UNSUPPORTED_ADMINISTRATOR](#DEACTIVATE_USER_SN_UNSUPPORTED_ADMINISTRATOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECIMAL_VALUE_LIMIT_EXCEED](#DECIMAL_VALUE_LIMIT_EXCEED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_BETWEEN_BOUNDS_INVALID](#DECISION_BETWEEN_BOUNDS_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_DEFINITION_NOT_UNIQUE](#DECISION_DEFINITION_NOT_UNIQUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_EXEC_RUNTIME_VALUE_REQUIRED](#DECISION_EXEC_RUNTIME_VALUE_REQUIRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_FROM_BOUNDS_INVALID](#DECISION_FROM_BOUNDS_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_GENERIC_ERROR](#DECISION_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_INPUT_BOUNDS_TOO_CLOSE](#DECISION_INPUT_BOUNDS_TOO_CLOSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_INPUT_EXPR_CHAR_LENGTH_INVALID](#DECISION_INPUT_EXPR_CHAR_LENGTH_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_INPUT_EXPR_DUPLICATE_VALUES](#DECISION_INPUT_EXPR_DUPLICATE_VALUES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_INPUT_EXPR_EMPTY_LIST](#DECISION_INPUT_EXPR_EMPTY_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_INPUT_EXPR_INCORRECT_TYPE](#DECISION_INPUT_EXPR_INCORRECT_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_INPUT_LITERAL_DUPLICATE_VALUES](#DECISION_INPUT_LITERAL_DUPLICATE_VALUES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_INPUT_NULL_OR_EMPTY_VALUE_NOT_ALLOWED](#DECISION_INPUT_NULL_OR_EMPTY_VALUE_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_TABLE_DUPLICATED_DECISION_TABLE_NAME](#DECISION_TABLE_DUPLICATED_DECISION_TABLE_NAME)`

    Deprecated.

    ErrorCode for unreleased Decision Table feature

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_TABLE_DUPLICATED_INPUT_NAME](#DECISION_TABLE_DUPLICATED_INPUT_NAME)`

    Deprecated.

    ErrorCode for unreleased Decision Table feature

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_TABLE_INVALID_CONDITION_DEFINITION](#DECISION_TABLE_INVALID_CONDITION_DEFINITION)`

    Deprecated.

    ErrorCode for unreleased Decision Table feature

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_TABLE_INVALID_DECISION_TABLE_NAME](#DECISION_TABLE_INVALID_DECISION_TABLE_NAME)`

    Deprecated.

    ErrorCode for unreleased Decision Table feature

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_TABLE_INVALID_INPUT_NAME](#DECISION_TABLE_INVALID_INPUT_NAME)`

    Deprecated.

    ErrorCode for unreleased Decision Table feature

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_TABLE_INVALID_RULE_INPUT](#DECISION_TABLE_INVALID_RULE_INPUT)`

    Deprecated.

    ErrorCode for unreleased Decision Table feature

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECISION_TABLE_OPERATOR_TYPE_MISMATCH](#DECISION_TABLE_OPERATOR_TYPE_MISMATCH)`

    Deprecated.

    ErrorCode for unreleased Decision Table feature

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DECRYPT_OPAQUE_URL_ERROR](#DECRYPT_OPAQUE_URL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEFAULT_VALUE_DUPLICATE_HANDLE_ASYNC_PARAMETERS](#DEFAULT_VALUE_DUPLICATE_HANDLE_ASYNC_PARAMETERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEFAULT_VALUE_DUPLICATE_VALUE_PARAMETERS](#DEFAULT_VALUE_DUPLICATE_VALUE_PARAMETERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEFAULT_VALUE_NO_DEFAULT_PARAMETER](#DEFAULT_VALUE_NO_DEFAULT_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEFAULT_VALUE_NO_VALUE_PARAMETER](#DEFAULT_VALUE_NO_VALUE_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DELETE_COMMUNITY_INVALID_TYPE](#DELETE_COMMUNITY_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DELETE_CONTENT](#DELETE_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DELETE_DOCUMENT_INVALID_TYPE](#DELETE_DOCUMENT_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DELETE_FOLDER_INVALID_TYPE](#DELETE_FOLDER_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DELETE_KC_INVALID_TYPE](#DELETE_KC_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DEPLOYMENT_HISTORY_EXPORT_ACCESS_DENIED](#DEPLOYMENT_HISTORY_EXPORT_ACCESS_DENIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_DDL_DATASOURCE_EXCEPTION](#DESIGN_DEPLOYMENT_DDL_DATASOURCE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_DDL_SQL_EXCEPTION](#DESIGN_DEPLOYMENT_DDL_SQL_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_DEPLOY_AS_USER_PRIVILEGES](#DESIGN_DEPLOYMENT_DEPLOY_AS_USER_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_DEPLOY_PLUGINS_DISABLED](#DESIGN_DEPLOYMENT_DEPLOY_PLUGINS_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_DISABLED](#DESIGN_DEPLOYMENT_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_EMPTY_PACKAGE](#DESIGN_DEPLOYMENT_EMPTY_PACKAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_EXECUTE_DB_SCRIPTS_DISABLED](#DESIGN_DEPLOYMENT_EXECUTE_DB_SCRIPTS_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_GENERIC_EXCEPTION](#DESIGN_DEPLOYMENT_GENERIC_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_IMPORT_EXCEPTION](#DESIGN_DEPLOYMENT_IMPORT_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_INSUFFICIENT_PRIVILEGES](#DESIGN_DEPLOYMENT_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_INVALID_ICF_EXCEPTION](#DESIGN_DEPLOYMENT_INVALID_ICF_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_INVALID_LOG_EXCEPTION](#DESIGN_DEPLOYMENT_INVALID_LOG_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_INVALID_PACKAGE_EXCEPTION](#DESIGN_DEPLOYMENT_INVALID_PACKAGE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_INVALID_PLUGIN](#DESIGN_DEPLOYMENT_INVALID_PLUGIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_INVALID_SECONDARY_PACKAGE_EXCEPTION](#DESIGN_DEPLOYMENT_INVALID_SECONDARY_PACKAGE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_INVALID_STATUS_UPDATE](#DESIGN_DEPLOYMENT_INVALID_STATUS_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_MESSAGE_EXCEPTION](#DESIGN_DEPLOYMENT_MESSAGE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_MISSING_DEPLOY_AS_USER](#DESIGN_DEPLOYMENT_MISSING_DEPLOY_AS_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_MULTIPLE_DATA_SOURCES](#DESIGN_DEPLOYMENT_MULTIPLE_DATA_SOURCES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_NO_DATA](#DESIGN_DEPLOYMENT_NO_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_NO_DATA_INCLUDING_ADMIN](#DESIGN_DEPLOYMENT_NO_DATA_INCLUDING_ADMIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_NON_EXISTENT_PLUGIN_ZIP_DOC](#DESIGN_DEPLOYMENT_NON_EXISTENT_PLUGIN_ZIP_DOC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_REQUEST_ERROR](#DESIGN_DEPLOYMENT_REQUEST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_REUSE_INSUFFICIENT_PRIVILEGES](#DESIGN_DEPLOYMENT_REUSE_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_REVIEW_INSUFFICIENT_PRIVILEGES](#DESIGN_DEPLOYMENT_REVIEW_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_TIMEOUT](#DESIGN_DEPLOYMENT_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_UNREADABLE_RESPONSE](#DESIGN_DEPLOYMENT_UNREADABLE_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_DEPLOYMENT_UNSUPPORTED_TYPE](#DESIGN_DEPLOYMENT_UNSUPPORTED_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DESIGN_OBJECT_SCHEMA_ERROR](#DESIGN_OBJECT_SCHEMA_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_CANNOT_CAST_KEY](#DFDS_CANNOT_CAST_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_CANNOT_RETRIEVE_ENTITY](#DFDS_CANNOT_RETRIEVE_ENTITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_DATA_SOURCE_CONNECTION](#DFDS_DATA_SOURCE_CONNECTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_GENERIC_ERROR](#DFDS_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_INSUFFICIENT_PERMISSION](#DFDS_INSUFFICIENT_PERMISSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_MIXED_DATA_STORES](#DFDS_MIXED_DATA_STORES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_NO_PRIMARY_KEY](#DFDS_NO_PRIMARY_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DFDS_NULL_ENTITY](#DFDS_NULL_ENTITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DKIM_CONFIGURATION_ERROR](#DKIM_CONFIGURATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DKIM_INVALID_KEY_PAIR_GENERATION](#DKIM_INVALID_KEY_PAIR_GENERATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DKIM_INVALID_PRIVATE_KEY](#DKIM_INVALID_PRIVATE_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DKIM_INVALID_PUBLIC_KEY](#DKIM_INVALID_PUBLIC_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_ACCESS_TOKEN_ERRORED](#DOC_EXTRACT_ACCESS_TOKEN_ERRORED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_CLIENT_PDF_ERROR](#DOC_EXTRACT_CLIENT_PDF_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_CREDENTIALS](#DOC_EXTRACT_CREDENTIALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_ERROR_AI_SKILL_TURNED_OFF](#DOC_EXTRACT_ERROR_AI_SKILL_TURNED_OFF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_ERROR_RETRIEVING_EXTRACTION_ID](#DOC_EXTRACT_ERROR_RETRIEVING_EXTRACTION_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_GENERIC](#DOC_EXTRACT_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_INVALID_DOC_EXTRACTION_ID](#DOC_EXTRACT_INVALID_DOC_EXTRACTION_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_INVALID_DOC_EXTRACTION_ID_CLASS](#DOC_EXTRACT_INVALID_DOC_EXTRACTION_ID_CLASS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_INVALID_TYPE_NUMBER](#DOC_EXTRACT_INVALID_TYPE_NUMBER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_IX_INVALID_PROPERTY_VALUE](#DOC_EXTRACT_IX_INVALID_PROPERTY_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_JOB_ERRORED](#DOC_EXTRACT_JOB_ERRORED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_JOB_IN_PROGRESS](#DOC_EXTRACT_JOB_IN_PROGRESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_JOBLESS_GENERIC](#DOC_EXTRACT_JOBLESS_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_NO_LOOKUP_PERMISSIONS](#DOC_EXTRACT_NO_LOOKUP_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_EXTRACT_NO_RESULT_LOOKUP_PERMISSIONS](#DOC_EXTRACT_NO_RESULT_LOOKUP_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_INTERPRETED_NO_RESULT_LOOKUP_PERMISSIONS](#DOC_INTERPRETED_NO_RESULT_LOOKUP_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOC_RECONCILE_NO_RESULT_LOOKUP_PERMISSIONS](#DOC_RECONCILE_NO_RESULT_LOOKUP_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOCUMENT_CHAT_INSUFFICIENT_PRIVILEGES](#DOCUMENT_CHAT_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOCUMENT_DOWNLOAD_ERROR_GENERIC](#DOCUMENT_DOWNLOAD_ERROR_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOCUMENT_INFO_ERROR_GENERIC](#DOCUMENT_INFO_ERROR_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOCUMENT_INFO_ERROR_NOT_AUTHORIZED_FOR_DOCUMENT](#DOCUMENT_INFO_ERROR_NOT_AUTHORIZED_FOR_DOCUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOCUMENT_NOT_FOUND_ERROR](#DOCUMENT_NOT_FOUND_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOES_GROUP_EXIST_INVALID_PARAMETER_TYPE](#DOES_GROUP_EXIST_INVALID_PARAMETER_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOES_GROUP_EXIST_MISSING_PARAMETER](#DOES_GROUP_EXIST_MISSING_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOES_GROUP_EXIST_TOO_MANY_PARAMETERS](#DOES_GROUP_EXIST_TOO_MANY_PARAMETERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DOWNLOAD_ZIP_GENERAL_ERROR](#DOWNLOAD_ZIP_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DS_ENTITIES_LOCK_ERROR](#DS_ENTITIES_LOCK_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DS_ENTITY_LOCK_ERROR](#DS_ENTITY_LOCK_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DSCS_PLUGIN_ACCESS_ERROR](#DSCS_PLUGIN_ACCESS_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DSCS_PLUGIN_DSCS_ID_PARSE_ERROR](#DSCS_PLUGIN_DSCS_ID_PARSE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DT_PLUGIN_CLASSES_NOT_FOUND](#DT_PLUGIN_CLASSES_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DT_PLUGIN_INCORRECT_XML](#DT_PLUGIN_INCORRECT_XML)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DT_PLUGIN_VERSION_NOT_INCREMENTED](#DT_PLUGIN_VERSION_NOT_INCREMENTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DT_PLUGIN_VERSION_UNKNOWN](#DT_PLUGIN_VERSION_UNKNOWN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DTO_TO_JAVA_BEAN_CONVERTER_NOT_FOUND](#DTO_TO_JAVA_BEAN_CONVERTER_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DUPLICATE_FUNCTION](#DUPLICATE_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DUPLICATE_FUNCTION_CATEGORY](#DUPLICATE_FUNCTION_CATEGORY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DUPLICATE_SMART_SERVICE](#DUPLICATE_SMART_SERVICE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DUPLICATE_WS_NAME](#DUPLICATE_WS_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DUPLICATE_WS_NAME_EXPOSE_AS_WS](#DUPLICATE_WS_NAME_EXPOSE_AS_WS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_CALENDAR_MISMATCH](#DYNAMIC_OFFLINE_CALENDAR_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_GENERIC](#DYNAMIC_OFFLINE_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_RULE_BUNDLE_FOLDER_ERROR](#DYNAMIC_OFFLINE_RULE_BUNDLE_FOLDER_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_RULE_BUNDLE_NOT_BUILT](#DYNAMIC_OFFLINE_RULE_BUNDLE_NOT_BUILT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_RULE_BUNDLE_NOT_FOUND](#DYNAMIC_OFFLINE_RULE_BUNDLE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_RULE_BUNDLE_NOT_STORED](#DYNAMIC_OFFLINE_RULE_BUNDLE_NOT_STORED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_RUNTIME_BUNDLE_FOLDER_RETRIEVAL_ERROR](#DYNAMIC_OFFLINE_RUNTIME_BUNDLE_FOLDER_RETRIEVAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[DYNAMIC_OFFLINE_RUNTIME_BUNDLE_OVERRIDE_ERROR](#DYNAMIC_OFFLINE_RUNTIME_BUNDLE_OVERRIDE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ECORE_TO_TV_DUPLICATE_FIELDS_UNSUPPORTED](#ECORE_TO_TV_DUPLICATE_FIELDS_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ECORE_TO_TV_ERROR](#ECORE_TO_TV_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_ALL_TABLE_UPDATES_FAILED](#EDP_API_ALL_TABLE_UPDATES_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_INVALID_CONTENT_TYPE](#EDP_API_INVALID_CONTENT_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_INVALID_HTTP_METHOD](#EDP_API_INVALID_HTTP_METHOD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_INVALID_SCHEMA_NAME](#EDP_API_INVALID_SCHEMA_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_INVALID_URI_PATH](#EDP_API_INVALID_URI_PATH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_MALFORMED_REQUEST](#EDP_API_MALFORMED_REQUEST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_MISSING_PASSWORD](#EDP_API_MISSING_PASSWORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_PARAMETER_NOT_PROVIDED](#EDP_API_PARAMETER_NOT_PROVIDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_PASSWORD_FAILS_REQS](#EDP_API_PASSWORD_FAILS_REQS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_TABLES_NOT_FOUND](#EDP_API_TABLES_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_TABLES_NOT_PROVIDED](#EDP_API_TABLES_NOT_PROVIDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_API_USERNAME_FAILS_REQS](#EDP_API_USERNAME_FAILS_REQS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_PASSWORD_API_SAVE_EXCEPTION](#EDP_PASSWORD_API_SAVE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EDP_PERMISSIONS_API_SAVE_EXCEPTION](#EDP_PERMISSIONS_API_SAVE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_EVALUATION_ERROR](#EE_EVALUATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_FUNCTION_NOT_AVAILABLE](#EE_FUNCTION_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_INVALID_FOLDER](#EE_INVALID_FOLDER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_INVALID_PARAM_NEG](#EE_INVALID_PARAM_NEG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_INVALID_PARAM_NULL_INT](#EE_INVALID_PARAM_NULL_INT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_INVALID_VARIABLE](#EE_INVALID_VARIABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_PROPERTY_NOT_AVAILABLE](#EE_PROPERTY_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_RETURNTYPE_COULD_NOT_BE_INFERRED](#EE_RETURNTYPE_COULD_NOT_BE_INFERRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_SYNTAX_ERROR](#EE_SYNTAX_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_UNEXPECTED_PARAMETER_TYPES](#EE_UNEXPECTED_PARAMETER_TYPES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_UNEXPECTED_PARAMETERS](#EE_UNEXPECTED_PARAMETERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EE_UNINJECTABLE_OBJECT](#EE_UNINJECTABLE_OBJECT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ELASTICSEARCH_NOT_RUNNING](#ELASTICSEARCH_NOT_RUNNING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EMBEDDED_INVALID_RECORD_ID](#EMBEDDED_INVALID_RECORD_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EMBEDDED_SAIL_OPTION_VALIDATION](#EMBEDDED_SAIL_OPTION_VALIDATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EMBEDDED_TASK_NON_SAIL](#EMBEDDED_TASK_NON_SAIL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENCRYPT_OPAQUE_URL_ERROR](#ENCRYPT_OPAQUE_URL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENCRYPT_OPAQUE_URL_ERROR_ID](#ENCRYPT_OPAQUE_URL_ERROR_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENCRYPTED_TEXT_NOT_SUPPORTED](#ENCRYPTED_TEXT_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENCRYPTED_TEXTFIELD_DECRYPTION](#ENCRYPTED_TEXTFIELD_DECRYPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENCRYPTED_TEXTFIELD_ENCRYPTION](#ENCRYPTED_TEXTFIELD_ENCRYPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENCRYPTIONAPI_SECURITY_EXCEPTION](#ENCRYPTIONAPI_SECURITY_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENTITY_CONFIG_BAD_UUID](#ENTITY_CONFIG_BAD_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENTITY_CONFIG_NAME_EMPTY](#ENTITY_CONFIG_NAME_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENTITY_CONFIG_NAME_WHITESPACE](#ENTITY_CONFIG_NAME_WHITESPACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENTITY_CONFIG_TYPE_DUPLICATE](#ENTITY_CONFIG_TYPE_DUPLICATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENTITY_CONFIG_TYPE_EMPTY](#ENTITY_CONFIG_TYPE_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENTRY_DELETION_HAS_COMMENTS](#ENTRY_DELETION_HAS_COMMENTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ENTRY_DELETION_INSUFFICENT_PRIVILEGES](#ENTRY_DELETION_INSUFFICENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EVALUATION_EPOCH_OVERFLOW](#EVALUATION_EPOCH_OVERFLOW)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPECT_UNABLE_TO_ACCEPT_TASK](#EXPECT_UNABLE_TO_ACCEPT_TASK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPECT_UNABLE_TO_ACCEPT_TASK_AS_PROCESS_NOT_ACTIVE_ERROR](#EXPECT_UNABLE_TO_ACCEPT_TASK_AS_PROCESS_NOT_ACTIVE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPOSE_MODEL_AS_WS](#EXPOSE_MODEL_AS_WS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_EMPTY_RULE_IDENTIFIER](#EXPR_DESIGNER_EMPTY_RULE_IDENTIFIER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_EXPIRED_CONTENT](#EXPR_DESIGNER_EXPIRED_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_INSUFFICIENT_PRIVILEGES_FOLDER](#EXPR_DESIGNER_INSUFFICIENT_PRIVILEGES_FOLDER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_INSUFFICIENT_PRIVILEGES_RULE](#EXPR_DESIGNER_INSUFFICIENT_PRIVILEGES_RULE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_INVALID_URL_FOLDER_IDENTIFIER](#EXPR_DESIGNER_INVALID_URL_FOLDER_IDENTIFIER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_INVALID_URL_RULE_IDENTIFIER](#EXPR_DESIGNER_INVALID_URL_RULE_IDENTIFIER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_NON_UNIQUE_RULE_ID](#EXPR_DESIGNER_NON_UNIQUE_RULE_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPR_DESIGNER_RULENAME_NOT_UNIQUE](#EXPR_DESIGNER_RULENAME_NOT_UNIQUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPRESSION_DEBUGGING_ERROR_OCCURRED](#EXPRESSION_DEBUGGING_ERROR_OCCURRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPRESSION_DEBUGGING_INVALID_LINE](#EXPRESSION_DEBUGGING_INVALID_LINE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPRESSION_ERROR](#EXPRESSION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPRESSION_ERROR_HIDDEN_FUNC](#EXPRESSION_ERROR_HIDDEN_FUNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPRESSION_EVALUATION_LIMIT_EXCEEDED](#EXPRESSION_EVALUATION_LIMIT_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPRESSION_INVALID](#EXPRESSION_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXPRESSION_VALIDATION_EXPRESSION_TOO_LONG](#EXPRESSION_VALIDATION_EXPRESSION_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_ADMIN_CONSOLE_SETTINGS_DISABLED](#EXTERNAL_DEPLOYMENT_ADMIN_CONSOLE_SETTINGS_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_ADMIN_SETTINGS_IN_PACKAGE_FILE](#EXTERNAL_DEPLOYMENT_ADMIN_SETTINGS_IN_PACKAGE_FILE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_AUTHENTICATE_AS_INVALID](#EXTERNAL_DEPLOYMENT_AUTHENTICATE_AS_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_BLANK_NAME_PARAM_AFTER_SANITIZATION](#EXTERNAL_DEPLOYMENT_BLANK_NAME_PARAM_AFTER_SANITIZATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_DDL_DISABLED](#EXTERNAL_DEPLOYMENT_DDL_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_DDL_DUPLICATE_KEY](#EXTERNAL_DEPLOYMENT_DDL_DUPLICATE_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_FILE_MAX_SIZE_EXCEEDED](#EXTERNAL_DEPLOYMENT_FILE_MAX_SIZE_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_GENERIC_ERROR](#EXTERNAL_DEPLOYMENT_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INCORRECT_MEDIA_TYPE](#EXTERNAL_DEPLOYMENT_INCORRECT_MEDIA_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_APPLICATION_UUID](#EXTERNAL_DEPLOYMENT_INVALID_APPLICATION_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_APPLICATION_UUID_FOR_REGULAR_ACCOUNT](#EXTERNAL_DEPLOYMENT_INVALID_APPLICATION_UUID_FOR_REGULAR_ACCOUNT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_CHARS_IN_NAME_PARAM](#EXTERNAL_DEPLOYMENT_INVALID_CHARS_IN_NAME_PARAM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_CHARS_IN_PACKAGE_FILE_NAME_PARAM](#EXTERNAL_DEPLOYMENT_INVALID_CHARS_IN_PACKAGE_FILE_NAME_PARAM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_DDL_ORDER_ID](#EXTERNAL_DEPLOYMENT_INVALID_DDL_ORDER_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_DDL_SEQUENCE](#EXTERNAL_DEPLOYMENT_INVALID_DDL_SEQUENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_FILE_NAME](#EXTERNAL_DEPLOYMENT_INVALID_FILE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_PLUGIN_EXTENSION](#EXTERNAL_DEPLOYMENT_INVALID_PLUGIN_EXTENSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_PLUGIN_NAME](#EXTERNAL_DEPLOYMENT_INVALID_PLUGIN_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_SYNTAX_FOR_UUIDS](#EXTERNAL_DEPLOYMENT_INVALID_SYNTAX_FOR_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_UUID](#EXTERNAL_DEPLOYMENT_INVALID_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_INVALID_UUID_PARAM_AFTER_SANITIZATION](#EXTERNAL_DEPLOYMENT_INVALID_UUID_PARAM_AFTER_SANITIZATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_JSON_BODY_NOT_SPECIFIED](#EXTERNAL_DEPLOYMENT_JSON_BODY_NOT_SPECIFIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_MULTIPLE_JSON_BODIES_SPECIFIED](#EXTERNAL_DEPLOYMENT_MULTIPLE_JSON_BODIES_SPECIFIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_NO_ADMIN_SETTINGS_IN_ADMIN_SETTINGS_FILE](#EXTERNAL_DEPLOYMENT_NO_ADMIN_SETTINGS_IN_ADMIN_SETTINGS_FILE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_NOT_ENABLED](#EXTERNAL_DEPLOYMENT_NOT_ENABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_PARAMETER_MAX_SIZE_EXCEEDED](#EXTERNAL_DEPLOYMENT_PARAMETER_MAX_SIZE_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_PLUGIN_DISABLED](#EXTERNAL_DEPLOYMENT_PLUGIN_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_PLUGIN_KEY_NOT_FOUND](#EXTERNAL_DEPLOYMENT_PLUGIN_KEY_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_REQUEST_PARAMETERS_NOT_IN_JSON](#EXTERNAL_DEPLOYMENT_REQUEST_PARAMETERS_NOT_IN_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_REQUIRED_DATASOURCE](#EXTERNAL_DEPLOYMENT_REQUIRED_DATASOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_REQUIRED_DDL](#EXTERNAL_DEPLOYMENT_REQUIRED_DDL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETER](#EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETERS](#EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETERS_WITH_ADMIN_SETTINGS](#EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETERS_WITH_ADMIN_SETTINGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETERS_WITH_PLUGINS](#EXTERNAL_DEPLOYMENT_REQUIRED_PARAMETERS_WITH_PLUGINS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_SERVICE_UNAVAILABLE](#EXTERNAL_DEPLOYMENT_SERVICE_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_TOO_MANY_FILES_WITH_THE_SAME_NAME](#EXTERNAL_DEPLOYMENT_TOO_MANY_FILES_WITH_THE_SAME_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_TOTAL_FILE_MAX_SIZE_EXCEEDED](#EXTERNAL_DEPLOYMENT_TOTAL_FILE_MAX_SIZE_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_DEPLOYMENT_UNSUPPORTED_PARAMETERS](#EXTERNAL_DEPLOYMENT_UNSUPPORTED_PARAMETERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_EMPTY_PACKAGE](#EXTERNAL_EXPORT_EMPTY_PACKAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_ILLEGAL_NON_ARRAY_FOR_UUIDS](#EXTERNAL_EXPORT_ILLEGAL_NON_ARRAY_FOR_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_INVALID_CONTENT_TYPE](#EXTERNAL_EXPORT_INVALID_CONTENT_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_INVALID_TYPE](#EXTERNAL_EXPORT_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_INVALID_UUID](#EXTERNAL_EXPORT_INVALID_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_INVALID_UUIDS](#EXTERNAL_EXPORT_INVALID_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_NOT_ENABLED](#EXTERNAL_EXPORT_NOT_ENABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_SERVICE_UNAVAILABLE](#EXTERNAL_EXPORT_SERVICE_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_TOO_MANY_PACKAGE_UUIDS](#EXTERNAL_EXPORT_TOO_MANY_PACKAGE_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_EXPORT_TOO_MANY_UUIDS](#EXTERNAL_EXPORT_TOO_MANY_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_INSPECT_INVALID_SUMMARY](#EXTERNAL_INSPECT_INVALID_SUMMARY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_INSPECT_INVALID_UUID](#EXTERNAL_INSPECT_INVALID_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_INSPECT_REQUIRED_PARAMETERS_WITH_ADMIN_SETTINGS](#EXTERNAL_INSPECT_REQUIRED_PARAMETERS_WITH_ADMIN_SETTINGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_INSPECT_UNAVAILABLE](#EXTERNAL_INSPECT_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_CANT_RETRIEVE_SYSTEM_SECURED_VALUE](#EXTERNAL_SYSTEM_CANT_RETRIEVE_SYSTEM_SECURED_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_CANT_RETRIEVE_USER_SECURED_VALUE](#EXTERNAL_SYSTEM_CANT_RETRIEVE_USER_SECURED_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_CONFIGURATION_ATTR_DOES_NOT_EXIST](#EXTERNAL_SYSTEM_CONFIGURATION_ATTR_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_CONFIGURATION_INVALID_ATTR_NAME](#EXTERNAL_SYSTEM_CONFIGURATION_INVALID_ATTR_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_CONFIGURATION_INVALID_EXT_SYS](#EXTERNAL_SYSTEM_CONFIGURATION_INVALID_EXT_SYS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_CREATE_WRITER_ERROR](#EXTERNAL_SYSTEM_CREATE_WRITER_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_DELETE_WRITER_ERROR](#EXTERNAL_SYSTEM_DELETE_WRITER_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#EXTERNAL_SYSTEM_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_TEST_CONNECTION_INVALID_KEY_ERROR](#EXTERNAL_SYSTEM_TEST_CONNECTION_INVALID_KEY_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_UPDATE_WRITER_ERROR](#EXTERNAL_SYSTEM_UPDATE_WRITER_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNAL_SYSTEM_USER_SEC_VAL_REQUIRES_APPIAN_AUTH](#EXTERNAL_SYSTEM_USER_SEC_VAL_REQUIRES_APPIAN_AUTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[EXTERNALIZE_INVALID_TYPE](#EXTERNALIZE_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FAILED_RECORD_FIELD_RETRIEVAL_FOR_NAME_RESOLVER](#FAILED_RECORD_FIELD_RETRIEVAL_FOR_NAME_RESOLVER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FAILED_TO_GENERATE_UNIQUE_RECORD_TYPE_URL_STUB](#FAILED_TO_GENERATE_UNIQUE_RECORD_TYPE_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FEATURE_FLAG_INVALID_NAME](#FEATURE_FLAG_INVALID_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FEATURE_FLAG_NON_UNIQUE_NAME](#FEATURE_FLAG_NON_UNIQUE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FEATURE_FLAG_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#FEATURE_FLAG_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FEATURE_FLAG_NOT_FOUND_INSUFFICIENT_PRIVILEGES_NONAME](#FEATURE_FLAG_NOT_FOUND_INSUFFICIENT_PRIVILEGES_NONAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FEATURE_TOGGLED_OFF](#FEATURE_TOGGLED_OFF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FEATURE_TRACKED_PRIOR_TO_REMOVAL](#FEATURE_TRACKED_PRIOR_TO_REMOVAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FOLLOW_RECORDS_SS_SC_PERMISSIONS_USERS](#FOLLOW_RECORDS_SS_SC_PERMISSIONS_USERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FOLLOW_USERS_SS_SC_DEACTIVATED](#FOLLOW_USERS_SS_SC_DEACTIVATED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FOLLOW_USERS_SS_SC_PERMISSIONS_USERS](#FOLLOW_USERS_SS_SC_PERMISSIONS_USERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FONT_AWESOME_INVALID_CLASS](#FONT_AWESOME_INVALID_CLASS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FONT_AWESOME_INVALID_ID](#FONT_AWESOME_INVALID_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORM_RENDER_COLLAB_DOCUMENT](#FORM_RENDER_COLLAB_DOCUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORM_RUNTIME_MISMATCH](#FORM_RUNTIME_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORMAT_PHONE_NUMBER_INVALID_OUTPUT_FORMAT](#FORMAT_PHONE_NUMBER_INVALID_OUTPUT_FORMAT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORMS_ALREADY_SUBMITTED](#FORMS_ALREADY_SUBMITTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORMS_COMPONENT_FAILED_VALIDATION](#FORMS_COMPONENT_FAILED_VALIDATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORMS_INVALID_TASK_STATUS](#FORMS_INVALID_TASK_STATUS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORMS_NO_LONGER_EXISTS](#FORMS_NO_LONGER_EXISTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FORMS_NOT_MOBILE_ENABLED](#FORMS_NOT_MOBILE_ENABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FROM_JSON_SERIALIZATION](#FROM_JSON_SERIALIZATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[FUNCTION_NOT_AVAILABLE](#FUNCTION_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GENERIC_ERROR](#GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GENERIC_RUNTIME_ERROR](#GENERIC_RUNTIME_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GET_PROCESS_MODEL_MONITORING_DATA_KPI_TIMEOUT](#GET_PROCESS_MODEL_MONITORING_DATA_KPI_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GET_PROCESS_MODEL_MONITORING_DATA_TIMEOUT](#GET_PROCESS_MODEL_MONITORING_DATA_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUP_MEMBERS_GROUP_DOES_NOT_EXIST](#GROUP_MEMBERS_GROUP_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUP_MEMBERS_GROUP_INSUFFICIENT_PERMISSION](#GROUP_MEMBERS_GROUP_INSUFFICIENT_PERMISSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUP_MEMBERS_GROUP_PARAMETER_MISSING](#GROUP_MEMBERS_GROUP_PARAMETER_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUP_MEMBERS_GROUP_PARAMETER_NULL](#GROUP_MEMBERS_GROUP_PARAMETER_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUP_MEMBERS_SORT_FIELD_DOES_NOT_EXIST](#GROUP_MEMBERS_SORT_FIELD_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUP_MEMBERSHIP_CLEARING_ERROR_TOO_MANY_USERS](#GROUP_MEMBERSHIP_CLEARING_ERROR_TOO_MANY_USERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUP_NOT_SPECIFIED](#GROUP_NOT_SPECIFIED)`

    Error codes for retrieving group role map

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPING_ON_X_TO_MANY_RELATIONSHIP_NOT_SUPPORTED](#GROUPING_ON_X_TO_MANY_RELATIONSHIP_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_NAME_INVALID_PARAMETER_TYPE](#GROUPS_BY_NAME_INVALID_PARAMETER_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_NAME_MISSING_PARAMETER](#GROUPS_BY_NAME_MISSING_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_NAME_NULL_PARAMETER](#GROUPS_BY_NAME_NULL_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_NAME_TOO_MANY_NAMES](#GROUPS_BY_NAME_TOO_MANY_NAMES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_TYPE_GROUP_TYPE_DOES_NOT_EXIST](#GROUPS_BY_TYPE_GROUP_TYPE_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_TYPE_GROUP_TYPE_PARAMETER_MISSING](#GROUPS_BY_TYPE_GROUP_TYPE_PARAMETER_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_TYPE_GROUP_TYPE_PARAMETER_NULL](#GROUPS_BY_TYPE_GROUP_TYPE_PARAMETER_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_TYPE_GROUP_TYPE_PARAMETER_WRONG_TYPE](#GROUPS_BY_TYPE_GROUP_TYPE_PARAMETER_WRONG_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_BY_TYPE_TOO_MANY_GROUP_TYPE](#GROUPS_BY_TYPE_TOO_MANY_GROUP_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_FOR_USER_INVALID_CUSTOM_GROUP_TYPES](#GROUPS_FOR_USER_INVALID_CUSTOM_GROUP_TYPES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_FOR_USER_INVALID_CUSTOM_GROUP_TYPES_DATATYPE](#GROUPS_FOR_USER_INVALID_CUSTOM_GROUP_TYPES_DATATYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_FOR_USER_INVALID_GROUP](#GROUPS_FOR_USER_INVALID_GROUP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_FOR_USER_INVALID_RELATIONSHIP_TYPE](#GROUPS_FOR_USER_INVALID_RELATIONSHIP_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_FOR_USER_INVALID_RELATIONSHIP_TYPE_DATATYPE](#GROUPS_FOR_USER_INVALID_RELATIONSHIP_TYPE_DATATYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_FOR_USER_INVALID_USER_PARAMETER_TYPE](#GROUPS_FOR_USER_INVALID_USER_PARAMETER_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_FOR_USER_TOO_MANY_USERNAMES](#GROUPS_FOR_USER_TOO_MANY_USERNAMES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_MEMBERS_DIRECT_PARAMETER_WRONG_TYPE](#GROUPS_MEMBERS_DIRECT_PARAMETER_WRONG_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_MEMBERS_GROUP_PARAMETER_WRONG_TYPE](#GROUPS_MEMBERS_GROUP_PARAMETER_WRONG_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_MEMBERS_MEMBERSHIP_TYPE_PARAMETER_INVALID_VALUE](#GROUPS_MEMBERS_MEMBERSHIP_TYPE_PARAMETER_INVALID_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_MEMBERS_MEMBERSHIP_TYPE_PARAMETER_WRONG_TYPE](#GROUPS_MEMBERS_MEMBERSHIP_TYPE_PARAMETER_WRONG_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[GROUPS_MEMBERS_TOO_MANY_GROUPS](#GROUPS_MEMBERS_TOO_MANY_GROUPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HEALTH_CHECK_FORUM_BAD_GATEWAY](#HEALTH_CHECK_FORUM_BAD_GATEWAY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HEALTH_CHECK_FORUM_CREDENTIALS_ERROR](#HEALTH_CHECK_FORUM_CREDENTIALS_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HEALTH_CHECK_FORUM_DOWN_ERROR](#HEALTH_CHECK_FORUM_DOWN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HEALTH_CHECK_FORUM_TIMEOUT_ERROR](#HEALTH_CHECK_FORUM_TIMEOUT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HEALTH_CHECK_GENERAL_ERROR](#HEALTH_CHECK_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HEALTH_CHECK_SETUP_ERROR](#HEALTH_CHECK_SETUP_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HEALTH_CHECK_ZIP_ERROR](#HEALTH_CHECK_ZIP_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_CHILD_DUPLICATE_ID](#HIERARCHY_FIELD_CHILD_DUPLICATE_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_CHILD_INVALID_ID](#HIERARCHY_FIELD_CHILD_INVALID_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_CHILD_INVALID_IMAGE](#HIERARCHY_FIELD_CHILD_INVALID_IMAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_CHILD_INVALID_LINK](#HIERARCHY_FIELD_CHILD_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_CHILD_INVALID_NAME](#HIERARCHY_FIELD_CHILD_INVALID_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_INVALID_ANCESTRY](#HIERARCHY_FIELD_INVALID_ANCESTRY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_INVALID_LAYOUT](#HIERARCHY_FIELD_INVALID_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_NODE_DUPLICATE_ID](#HIERARCHY_FIELD_NODE_DUPLICATE_ID)`

    Deprecated. 

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_NODE_INVALID_ID](#HIERARCHY_FIELD_NODE_INVALID_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_NODE_INVALID_IMAGE](#HIERARCHY_FIELD_NODE_INVALID_IMAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_NODE_INVALID_LINK](#HIERARCHY_FIELD_NODE_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HIERARCHY_FIELD_NODE_INVALID_NAME](#HIERARCHY_FIELD_NODE_INVALID_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT](#HTTP_TRANSPORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT_CONNECTION_TIMEOUT](#HTTP_TRANSPORT_CONNECTION_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT_CREDENTIALS](#HTTP_TRANSPORT_CREDENTIALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT_HTTP_STATUS](#HTTP_TRANSPORT_HTTP_STATUS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT_INVALID_REDIRECTS](#HTTP_TRANSPORT_INVALID_REDIRECTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT_SOCKET_TIMEOUT](#HTTP_TRANSPORT_SOCKET_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT_SSL](#HTTP_TRANSPORT_SSL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[HTTP_TRANSPORT_SSL_CERTIFICATE](#HTTP_TRANSPORT_SSL_CERTIFICATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ID_DESIGN_VIEW_INCORRECT_NUMBER_OF_PARAMETERS_FOR_FUNCTION](#ID_DESIGN_VIEW_INCORRECT_NUMBER_OF_PARAMETERS_FOR_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ID_DESIGN_VIEW_INCORRECT_NUMBER_OF_PARAMETERS_FOR_RULE](#ID_DESIGN_VIEW_INCORRECT_NUMBER_OF_PARAMETERS_FOR_RULE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ID_DESIGN_VIEW_NONEXISTENT_FUNCTION](#ID_DESIGN_VIEW_NONEXISTENT_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ID_DESIGN_VIEW_NONEXISTENT_PARAM](#ID_DESIGN_VIEW_NONEXISTENT_PARAM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ID_DESIGN_VIEW_NONEXISTENT_RULE](#ID_DESIGN_VIEW_NONEXISTENT_RULE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ID_DESIGN_VIEW_UNEXPECTED_ERROR](#ID_DESIGN_VIEW_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IDP_METADATA_EXPIRATION_MIGRATION_FAILED](#IDP_METADATA_EXPIRATION_MIGRATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IMAGE_FIELD_DOCUMENT_LINK_DOCUMENT_NULL](#IMAGE_FIELD_DOCUMENT_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IMAGE_FIELD_SAFE_LINK_URI_NULL](#IMAGE_FIELD_SAFE_LINK_URI_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IMAGE_FIELD_TASK_LINK_TASK_NULL](#IMAGE_FIELD_TASK_LINK_TASK_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IMAGE_FIELD_THUMBNAIL_LINK](#IMAGE_FIELD_THUMBNAIL_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IMPACT_ANALYSIS_INVALID_DESIGNER_OBJECT](#IMPACT_ANALYSIS_INVALID_DESIGNER_OBJECT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IMPACT_ANALYSIS_UNSUPPORTED_TYPE](#IMPACT_ANALYSIS_UNSUPPORTED_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INBOUND_AUTHENTICATION_FUNCTION_INSUFFICIENT_PRIVILEGES](#INBOUND_AUTHENTICATION_FUNCTION_INSUFFICIENT_PRIVILEGES)`

    Inbound Authentication Function Insufficient Access

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INCREMENT_CONSTANT_ACT](#INCREMENT_CONSTANT_ACT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_BLOCKED_EMPTY_EXTENSION](#INLINE_FILE_UPLOAD_BLOCKED_EMPTY_EXTENSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_BLOCKED_EXTENSION](#INLINE_FILE_UPLOAD_BLOCKED_EXTENSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_BLOCKED_FILE_TYPE_MISMATCH](#INLINE_FILE_UPLOAD_BLOCKED_FILE_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_DOMAIN_NOT_SUPPORTED](#INLINE_FILE_UPLOAD_DOMAIN_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_ENVIRONMENT_NOT_SUPPORTED](#INLINE_FILE_UPLOAD_ENVIRONMENT_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_FAILED](#INLINE_FILE_UPLOAD_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_GENERIC](#INLINE_FILE_UPLOAD_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_MAX_SIZE_EXCEEDED](#INLINE_FILE_UPLOAD_MAX_SIZE_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_NO_TEMP_DOCS_KC](#INLINE_FILE_UPLOAD_NO_TEMP_DOCS_KC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_NO_TEMP_DOCS_KC_PRIVILEGES](#INLINE_FILE_UPLOAD_NO_TEMP_DOCS_KC_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_SAVE_NOT_SUPPORTED](#INLINE_FILE_UPLOAD_SAVE_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_SIGNATURE_VALIDATION_FAILED](#INLINE_FILE_UPLOAD_SIGNATURE_VALIDATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_TIMEOUT](#INLINE_FILE_UPLOAD_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INLINE_FILE_UPLOAD_VIRUS_FOUND](#INLINE_FILE_UPLOAD_VIRUS_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INSUFFICIENT_PRIVILEGES](#INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INSUFFICIENT_PRIVILEGES_ADD_CREATE_GROUP_ACT](#INSUFFICIENT_PRIVILEGES_ADD_CREATE_GROUP_ACT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INSUFFICIENT_PRIVILEGES_ADD_NOTE](#INSUFFICIENT_PRIVILEGES_ADD_NOTE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INSUFFICIENT_PRIVILEGES_INC_CONSTANT](#INSUFFICIENT_PRIVILEGES_INC_CONSTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INSUFFICIENT_PRIVILEGES_UPD_CONSTANT](#INSUFFICIENT_PRIVILEGES_UPD_CONSTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INSUFFICIENT_RESOURCE_ERROR](#INSUFFICIENT_RESOURCE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INTEGRATION_DELETED](#INTEGRATION_DELETED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INTEGRATION_MAPPINGS_DELETED](#INTEGRATION_MAPPINGS_DELETED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INTERFACE_DELETED](#INTERFACE_DELETED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INTERFACE_MAPPINGS_DELETED](#INTERFACE_MAPPINGS_DELETED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INTERFACE_MAPPINGS_TYPE_CHANGE](#INTERFACE_MAPPINGS_TYPE_CHANGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INTERFACE_NOT_FOUND](#INTERFACE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INTERNALIZE_INVALID_TYPE](#INTERNALIZE_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_ACTION](#INVALID_ACTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_ACTION_EMPTY_LABEL](#INVALID_ACTION_EMPTY_LABEL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_ACTION_EMPTY_MODEL_UUID](#INVALID_ACTION_EMPTY_MODEL_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_ACTION_INVALID_INDEX](#INVALID_ACTION_INVALID_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_ACTION_REFERENCE](#INVALID_ACTION_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_BATCH_SIZE_WITH_SEARCH](#INVALID_BATCH_SIZE_WITH_SEARCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_BEAN_ACCESSOR_FUNCTION_DEFINITION](#INVALID_BEAN_ACCESSOR_FUNCTION_DEFINITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_CHART_COLOR](#INVALID_CHART_COLOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_DOCUMENT](#INVALID_DOCUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_DOMAIN_LOCAL_VAR](#INVALID_DOMAIN_LOCAL_VAR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_DOT_NOTATION](#INVALID_DOT_NOTATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_ENCRYPTION_ALGORITHM](#INVALID_ENCRYPTION_ALGORITHM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_ENUMERATION_DEFINITION](#INVALID_ENUMERATION_DEFINITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_EXPLICIT_DEPENDENCIES](#INVALID_EXPLICIT_DEPENDENCIES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_FIELD_ADDRESSABLE_LIST_UPDATE_INDICES_NOT_BIJECTIVE](#INVALID_FIELD_ADDRESSABLE_LIST_UPDATE_INDICES_NOT_BIJECTIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_FIELD_ADDRESSABLE_UPDATE_LIST_INDEXING_SCALAR_VALUE](#INVALID_FIELD_ADDRESSABLE_UPDATE_LIST_INDEXING_SCALAR_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_FUNCTION_DEFINITION](#INVALID_FUNCTION_DEFINITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_FUNCTION_DEFINITION_TYPE](#INVALID_FUNCTION_DEFINITION_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_FUNCTION_IMPLEMENTATION](#INVALID_FUNCTION_IMPLEMENTATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_FUNCTION_PARAMETER](#INVALID_FUNCTION_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_IDENTIFIER_TOKEN](#INVALID_IDENTIFIER_TOKEN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_INDEX_INTO_TYPE](#INVALID_INDEX_INTO_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_INDEX_OUT_OF_BOUNDS](#INVALID_INDEX_OUT_OF_BOUNDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_INPUT_TO_AUTOMATION_FUNCTION](#INVALID_INPUT_TO_AUTOMATION_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_JSON_OBJECT](#INVALID_JSON_OBJECT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_JSON_OBJECT_WITHOUT_FRAGMENT](#INVALID_JSON_OBJECT_WITHOUT_FRAGMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_KEYWORD_COMBINATION](#INVALID_KEYWORD_COMBINATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_LOAD_STATE](#INVALID_LOAD_STATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_LOCAL_VARIABLE_INSIDE_LOOPING_FUNCTION](#INVALID_LOCAL_VARIABLE_INSIDE_LOOPING_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_LV_REFRESH_AFTER_VALUE](#INVALID_LV_REFRESH_AFTER_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_ARRAY_OPERATION_INDEX_NULL_VALUE](#INVALID_MAP_ARRAY_OPERATION_INDEX_NULL_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_ARRAY_OPERATION_INDEX_TYPE](#INVALID_MAP_ARRAY_OPERATION_INDEX_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_ARRAY_UPDATE_LIST_INDEXING_NOT_BIJECTIVE](#INVALID_MAP_ARRAY_UPDATE_LIST_INDEXING_NOT_BIJECTIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_ARRAY_UPDATE_LIST_INDEXING_SCALAR_VALUE](#INVALID_MAP_ARRAY_UPDATE_LIST_INDEXING_SCALAR_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_ARRAY_UPDATE_SCALAR_VALUE](#INVALID_MAP_ARRAY_UPDATE_SCALAR_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_INDEX_NULL_LIST](#INVALID_MAP_INDEX_NULL_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_OPERATION_BROKEN_INDEX_CHAIN](#INVALID_MAP_OPERATION_BROKEN_INDEX_CHAIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_OPERATION_BROKEN_INDEX_CHAIN_DUE_TO_NESTED_PROPERTY](#INVALID_MAP_OPERATION_BROKEN_INDEX_CHAIN_DUE_TO_NESTED_PROPERTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_OPERATION_INVALID_INDEX_TYPE](#INVALID_MAP_OPERATION_INVALID_INDEX_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_MAP_UPDATE_VALUE_ASSIGN_VALUE_MISMATCH](#INVALID_MAP_UPDATE_VALUE_ASSIGN_VALUE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_NAV_ITEM](#INVALID_NAV_ITEM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_NAV_ITEM_EMPTY_LABEL](#INVALID_NAV_ITEM_EMPTY_LABEL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_NAV_ITEM_EMPTY_PAGE_UUID](#INVALID_NAV_ITEM_EMPTY_PAGE_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_NAV_ITEM_INVALID_INDEX](#INVALID_NAV_ITEM_INVALID_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_NAV_ITEM_INVALID_URL_ID](#INVALID_NAV_ITEM_INVALID_URL_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_NAV_ITEM_REFERENCE](#INVALID_NAV_ITEM_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_OPERATION_EMPTY_VALUE](#INVALID_OPERATION_EMPTY_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_OPERATION_INSERT](#INVALID_OPERATION_INSERT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_OPERATION_NULL_INDEX](#INVALID_OPERATION_NULL_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_PM](#INVALID_PM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_PM_EXPOSE_AS_WS](#INVALID_PM_EXPOSE_AS_WS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_PROCESS_SELECTED](#INVALID_PROCESS_SELECTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_PROTOCOL](#INVALID_PROTOCOL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_PUSH_NOFICICATIONS_TEST_MODE](#INVALID_PUSH_NOFICICATIONS_TEST_MODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_RECORD_LEVEL_SECURITY](#INVALID_RECORD_LEVEL_SECURITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_REFRESH_AFTER_VALUE](#INVALID_REFRESH_AFTER_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SAVE_BINDING_IN_FIRST_ARGUMENT](#INVALID_SAVE_BINDING_IN_FIRST_ARGUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SAVE_BINDING_IN_LEFT_SIDE](#INVALID_SAVE_BINDING_IN_LEFT_SIDE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SAVE_BINDING_IN_RIGHT_SIDE](#INVALID_SAVE_BINDING_IN_RIGHT_SIDE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SAVE_INTO](#INVALID_SAVE_INTO)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SAVE_INTO_INTERVAL_LOCAL_VAR](#INVALID_SAVE_INTO_INTERVAL_LOCAL_VAR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SAVE_INTO_LOCAL_VAR](#INVALID_SAVE_INTO_LOCAL_VAR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SAVE_INTO_WITH_BINDING](#INVALID_SAVE_INTO_WITH_BINDING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SEARCH_RESULT_FIELD_FOR_FILTER](#INVALID_SEARCH_RESULT_FIELD_FOR_FILTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_SMART_SERVICE_DEFINITION](#INVALID_SMART_SERVICE_DEFINITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_START_VALUE](#INVALID_START_VALUE)`

    isBetween Error Codes /\*\* @since

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_STATUS](#INVALID_STATUS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_STATUS_K](#INVALID_STATUS_K)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_STRING_INDEX](#INVALID_STRING_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_TRANSLATION_STRING_VERSION_NUM](#INVALID_TRANSLATION_STRING_VERSION_NUM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_TRANSLATION_VARIABLE](#INVALID_TRANSLATION_VARIABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_TYPE_IN_PLUGIN](#INVALID_TYPE_IN_PLUGIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_TYPE_PROPERTY](#INVALID_TYPE_PROPERTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_USER](#INVALID_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_USER_ACTIVITY_ADD_NOTE](#INVALID_USER_ACTIVITY_ADD_NOTE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_USER_WITHOUT_USERID](#INVALID_USER_WITHOUT_USERID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_VALUE](#INVALID_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_VALUE_INC_CONSTANT](#INVALID_VALUE_INC_CONSTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_VALUE_UPD_CONSTANT](#INVALID_VALUE_UPD_CONSTANT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_VARIANT_INDEX](#INVALID_VARIANT_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_WSDL](#INVALID_WSDL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_WSDL_NO_BINDINGS](#INVALID_WSDL_NO_BINDINGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_WSDL_RELATIVE_IMPORT](#INVALID_WSDL_RELATIVE_IMPORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_WSDL_V11_UNKNOWN](#INVALID_WSDL_V11_UNKNOWN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_WSDL_V20_UNKNOWN](#INVALID_WSDL_V20_UNKNOWN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_WSDL_VERSION](#INVALID_WSDL_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[INVALID_XPATH_EXPRESSION](#INVALID_XPATH_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IS_USER_MEMBER_OF_GROUP_INVALID_GROUP_PARAMETER_TYPE](#IS_USER_MEMBER_OF_GROUP_INVALID_GROUP_PARAMETER_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IS_USER_MEMBER_OF_GROUP_INVALID_USER_PARAMETER_TYPE](#IS_USER_MEMBER_OF_GROUP_INVALID_USER_PARAMETER_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IS_USER_MEMBER_OF_GROUP_TOO_MANY_USERNAMES](#IS_USER_MEMBER_OF_GROUP_TOO_MANY_USERNAMES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ANALYSIS_EXCEED_DIRECT_PRECEDENTS_LIMIT](#IX_ANALYSIS_EXCEED_DIRECT_PRECEDENTS_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_FIELDS_MISMATCH](#IX_APPIAN_AUTH_FIELDS_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_IDLE_SESSION_TIMEOUT_TOO_HIGH](#IX_APPIAN_AUTH_IDLE_SESSION_TIMEOUT_TOO_HIGH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_IDLE_SESSION_TIMEOUT_TOO_LOW](#IX_APPIAN_AUTH_IDLE_SESSION_TIMEOUT_TOO_LOW)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_INTEGER_BELOW_MINIMUM](#IX_APPIAN_AUTH_INTEGER_BELOW_MINIMUM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_INTEGER_BELOW_ZERO](#IX_APPIAN_AUTH_INTEGER_BELOW_ZERO)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_INTEGER_TOO_LARGE](#IX_APPIAN_AUTH_INTEGER_TOO_LARGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_INVALID_PASSWORD_LINK_RESET_DURATION](#IX_APPIAN_AUTH_INVALID_PASSWORD_LINK_RESET_DURATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_INVALID_PASSWORD_REUSE](#IX_APPIAN_AUTH_INVALID_PASSWORD_REUSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_INVALID_REMEMBER_ME](#IX_APPIAN_AUTH_INVALID_REMEMBER_ME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_INVALID_TOS](#IX_APPIAN_AUTH_INVALID_TOS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_NOT_BOOLEAN](#IX_APPIAN_AUTH_NOT_BOOLEAN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_APPIAN_AUTH_NOT_INTEGER](#IX_APPIAN_AUTH_NOT_INTEGER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_BRANDING_INVALID_BANNER_MESSAGE](#IX_BRANDING_INVALID_BANNER_MESSAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_BRANDING_INVALID_HEX_COLOR](#IX_BRANDING_INVALID_HEX_COLOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_BRANDING_INVALID_IMAGE_SOURCE](#IX_BRANDING_INVALID_IMAGE_SOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_BRANDING_INVALID_LOGO_ALT_TEXT](#IX_BRANDING_INVALID_LOGO_ALT_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_BRANDING_INVALID_SITE_NAME](#IX_BRANDING_INVALID_SITE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_BRANDING_INVALID_URL](#IX_BRANDING_INVALID_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_BRANDING_INVALID_WALLPAPER_COLOR](#IX_BRANDING_INVALID_WALLPAPER_COLOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_CMDLINE_NOHIB](#IX_CMDLINE_NOHIB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DATA_SOURCES_CONNECTION_FAILED](#IX_DATA_SOURCES_CONNECTION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DATA_SOURCES_INVALID_CONNECTION_STRING_FORMAT](#IX_DATA_SOURCES_INVALID_CONNECTION_STRING_FORMAT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DATA_SOURCES_INVALID_CREDENTIALS](#IX_DATA_SOURCES_INVALID_CREDENTIALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DATA_SOURCES_INVALID_DATABASE_TYPE](#IX_DATA_SOURCES_INVALID_DATABASE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DATA_STORES_SCHEMA_VALIDATION](#IX_DATA_STORES_SCHEMA_VALIDATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DATATYPES_MUST_GO_FIRST](#IX_DATATYPES_MUST_GO_FIRST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DEACTIVATED_DATATYPE_REFERENCED_WITHOUT_ECORE_MODEL](#IX_DEACTIVATED_DATATYPE_REFERENCED_WITHOUT_ECORE_MODEL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DEPENDENT_DATATYPE_TRANSPORT_FAILED](#IX_DEPENDENT_DATATYPE_TRANSPORT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DEPENDENT_DATATYPE_TRANSPORT_FAILED_DUE_TO_OTHER_DATATYPE_FAILURE](#IX_DEPENDENT_DATATYPE_TRANSPORT_FAILED_DUE_TO_OTHER_DATATYPE_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DUPLICATE_IMPORT](#IX_DUPLICATE_IMPORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DUPLICATE_INSPECT](#IX_DUPLICATE_INSPECT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DUPLICATE_NAME](#IX_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_DUPLICATE_OBJECT](#IX_DUPLICATE_OBJECT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_ORIGIN_EMPTY_ORIGIN](#IX_EMBEDDED_ORIGIN_EMPTY_ORIGIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_ORIGIN_INVALID_DOMAIN](#IX_EMBEDDED_ORIGIN_INVALID_DOMAIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_ORIGIN_INVALID_ORIGIN](#IX_EMBEDDED_ORIGIN_INVALID_ORIGIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_ORIGIN_INVALID_PORT](#IX_EMBEDDED_ORIGIN_INVALID_PORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_ORIGIN_NO_SCHEME](#IX_EMBEDDED_ORIGIN_NO_SCHEME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_DESCRIPTION_EXCEEDS_MAXIMUM_LENGTH](#IX_EMBEDDED_THEME_DESCRIPTION_EXCEEDS_MAXIMUM_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_IDENTIFIER_INVALID_CHARACTERS](#IX_EMBEDDED_THEME_IDENTIFIER_INVALID_CHARACTERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_IDENTIFIER_NOT_UNIQUE](#IX_EMBEDDED_THEME_IDENTIFIER_NOT_UNIQUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_NAME_EXCEEDS_MAXIMUM_LENGTH](#IX_EMBEDDED_THEME_NAME_EXCEEDS_MAXIMUM_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_STYLE_INSECURE_FONT_FACE](#IX_EMBEDDED_THEME_STYLE_INSECURE_FONT_FACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_STYLE_INVALID_BASE_FONT_SIZE](#IX_EMBEDDED_THEME_STYLE_INVALID_BASE_FONT_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_STYLE_INVALID_COLOR_VALUE_EXPRESSIONS](#IX_EMBEDDED_THEME_STYLE_INVALID_COLOR_VALUE_EXPRESSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_STYLE_INVALID_FONT_FACE](#IX_EMBEDDED_THEME_STYLE_INVALID_FONT_FACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EMBEDDED_THEME_STYLE_INVALID_HEX_COLOR](#IX_EMBEDDED_THEME_STYLE_INVALID_HEX_COLOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_CREATE_MISSING_IMPORT_CUSTOMIZATION](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_CREATE_MISSING_IMPORT_CUSTOMIZATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_LIST_INVALID_ESCAPE_CHARACTER](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_LIST_INVALID_ESCAPE_CHARACTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_BOOLEAN](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_BOOLEAN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_DATE](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_DATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_DATETIME](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_DATETIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_DECIMAL](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_DECIMAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_INTEGER](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_INTEGER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_LIST](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_TIME](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_NOT_TIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_ENVIRONMENT_SPECIFIC_CONSTANT_UPDATE_TYPE_MISMATCH](#IX_ENVIRONMENT_SPECIFIC_CONSTANT_UPDATE_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_EXTRACT_REFERENCES_OBJECT_FAILED](#IX_EXTRACT_REFERENCES_OBJECT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_FAILED_TO_PUBLISH_PORTAL](#IX_FAILED_TO_PUBLISH_PORTAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_FAILED_TO_UNPUBLISH_PORTAL](#IX_FAILED_TO_UNPUBLISH_PORTAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_HEALTHCHECK_PROPERTY_NOT_BOOLEAN](#IX_HEALTHCHECK_PROPERTY_NOT_BOOLEAN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_HEALTHCHECK_PROPERTY_NOT_VALID_AUTOMATIC_UPLOAD_TRUE](#IX_HEALTHCHECK_PROPERTY_NOT_VALID_AUTOMATIC_UPLOAD_TRUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_HEALTHCHECK_PROPERTY_NOT_VALID_DATETIME](#IX_HEALTHCHECK_PROPERTY_NOT_VALID_DATETIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_HEALTHCHECK_PROPERTY_NOT_VALID_FREQUENCY](#IX_HEALTHCHECK_PROPERTY_NOT_VALID_FREQUENCY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_I18N_PROPERTY_REQUIRED](#IX_I18N_PROPERTY_REQUIRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_I18N_PROPERTY_UNSUPPORTED](#IX_I18N_PROPERTY_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_IMPORT_DATA_STORES_SCHEMA_UPDATE](#IX_IMPORT_DATA_STORES_SCHEMA_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INACCESSIBLE_DATA_SOURCE](#IX_INACCESSIBLE_DATA_SOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INACCESSIBLE_DATA_SOURCE_FOR_DATASTORE](#IX_INACCESSIBLE_DATA_SOURCE_FOR_DATASTORE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INVALID_APPLICATION_DOCUMENTATION_REFERENCE](#IX_INVALID_APPLICATION_DOCUMENTATION_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INVALID_DEFAULT_APPLICATION_GROUPS_REFERENCE](#IX_INVALID_DEFAULT_APPLICATION_GROUPS_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INVALID_EXTENSION_BLOCKING_MODE](#IX_INVALID_EXTENSION_BLOCKING_MODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INVALID_PACKAGE](#IX_INVALID_PACKAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INVALID_PACKAGE_UNSUPPORTED_VERSION](#IX_INVALID_PACKAGE_UNSUPPORTED_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_INVALID_POST_DEPLOYMENT_PROCESS_REFERENCE](#IX_INVALID_POST_DEPLOYMENT_PROCESS_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_LOGIN_PAGE_LINKS_COUNT_EXCEEDS_ALLOWED_LIMIT](#IX_LOGIN_PAGE_LINKS_COUNT_EXCEEDS_ALLOWED_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_LOGIN_PAGE_LINKS_INVALID_LINK](#IX_LOGIN_PAGE_LINKS_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_LOGIN_PAGE_LINKS_INVALID_TEXT](#IX_LOGIN_PAGE_LINKS_INVALID_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_MISMATCHED_GROUP_ATTRIBUTE](#IX_MISMATCHED_GROUP_ATTRIBUTE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_MISSING_IMPORT_REGISTRATION](#IX_MISSING_IMPORT_REGISTRATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_MISSING_INSPECT_REGISTRATION](#IX_MISSING_INSPECT_REGISTRATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_MISSING_PLUGIN](#IX_MISSING_PLUGIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_MULTI_LINE_TAG_BEGIN_NOT_FOUND](#IX_MULTI_LINE_TAG_BEGIN_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_MULTI_LINE_TAG_END_NOT_FOUND](#IX_MULTI_LINE_TAG_END_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_EXPORT_DATA_RETRIEVAL](#IX_OBJECT_EXPORT_DATA_RETRIEVAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_EXPORT_PARAMETER_CREATE_FAILED](#IX_OBJECT_EXPORT_PARAMETER_CREATE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_EXPORT_UNRESOLVED_REF](#IX_OBJECT_EXPORT_UNRESOLVED_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_HAUL_PRODUCER_FAILED](#IX_OBJECT_HAUL_PRODUCER_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_IMPORT_CREATE](#IX_OBJECT_IMPORT_CREATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_IMPORT_DUPLICATE_PARAMETER](#IX_OBJECT_IMPORT_DUPLICATE_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_IMPORT_FINALIZE](#IX_OBJECT_IMPORT_FINALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_IMPORT_UNRESOLVED_REF](#IX_OBJECT_IMPORT_UNRESOLVED_REF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_IMPORT_UPDATE](#IX_OBJECT_IMPORT_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_MISSING_PARAMETER](#IX_OBJECT_MISSING_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_TRANSPORT_FAILED](#IX_OBJECT_TRANSPORT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_TRANSPORT_FAILED_HAS_DST_ID](#IX_OBJECT_TRANSPORT_FAILED_HAS_DST_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_XML_DESERIALIZE](#IX_OBJECT_XML_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_OBJECT_XML_SERIALIZE](#IX_OBJECT_XML_SERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PACKAGE_DATATYPE_TRANSPORT_FAILED_DUE_TO_OTHER_DATATYPE_FAILURE](#IX_PACKAGE_DATATYPE_TRANSPORT_FAILED_DUE_TO_OTHER_DATATYPE_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PLUGIN_VERSION_MISMATCH](#IX_PLUGIN_VERSION_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PORTAL_PROPERTY_NOT_BOOLEAN](#IX_PORTAL_PROPERTY_NOT_BOOLEAN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PROXY_HOST_CONTAINS_INVALID_CHARS](#IX_PROXY_HOST_CONTAINS_INVALID_CHARS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PROXY_HOST_EXCEEDS_MAXIMUM_LENGTH](#IX_PROXY_HOST_EXCEEDS_MAXIMUM_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PROXY_PORT_OUT_OF_RANGE](#IX_PROXY_PORT_OUT_OF_RANGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PROXY_PROPERTY_NOT_BOOLEAN](#IX_PROXY_PROPERTY_NOT_BOOLEAN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PROXY_PROPERTY_NOT_INTEGER](#IX_PROXY_PROPERTY_NOT_INTEGER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_PROXY_PROPERTY_REQUIRED](#IX_PROXY_PROPERTY_REQUIRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_QUERY_SUBPROCESS](#IX_QUERY_SUBPROCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_RECORD_RELATIONSHIP_JOIN_FIELD_WRONG_CARDINALITY](#IX_RECORD_RELATIONSHIP_JOIN_FIELD_WRONG_CARDINALITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_RECORD_RELATIONSHIP_RECORD_TYPE_NOT_SYNCED](#IX_RECORD_RELATIONSHIP_RECORD_TYPE_NOT_SYNCED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_REFERENCE_FUNCTION_MISSING_REFERENCE](#IX_REFERENCE_FUNCTION_MISSING_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_THIRD_PARTY_CREDENTIALS_DUPLICATE_KEY](#IX_THIRD_PARTY_CREDENTIALS_DUPLICATE_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_THIRD_PARTY_CREDENTIALS_DUPLICATE_NAME](#IX_THIRD_PARTY_CREDENTIALS_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_ACTIVE_IS_NOT_BOOLEAN](#IX_TYPEFACE_PROPERTY_CONFIGS_ACTIVE_IS_NOT_BOOLEAN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_MAX_LANGUAGE_GROUP_NUMBER](#IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_MAX_LANGUAGE_GROUP_NUMBER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_MAX_TYPEFACES_NUMBER](#IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_MAX_TYPEFACES_NUMBER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_TYPEFACE_NAME_LENGTH](#IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_TYPEFACE_NAME_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_URL_LENGTH](#IX_TYPEFACE_PROPERTY_CONFIGS_EXCEED_URL_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_ILLEGAL_FONT_NAME](#IX_TYPEFACE_PROPERTY_CONFIGS_ILLEGAL_FONT_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_FONT_WEIGHT_KEY](#IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_FONT_WEIGHT_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_JSON](#IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_LANGUAGE_GROUP_KEY](#IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_LANGUAGE_GROUP_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_TYPEFACE_KEY](#IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_TYPEFACE_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_URL](#IX_TYPEFACE_PROPERTY_CONFIGS_INVALID_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_KEY_NOT_WRAPPED_IN_QUOTES](#IX_TYPEFACE_PROPERTY_CONFIGS_KEY_NOT_WRAPPED_IN_QUOTES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_MULTIPLE_ACTIVE_TYPEFACES](#IX_TYPEFACE_PROPERTY_CONFIGS_MULTIPLE_ACTIVE_TYPEFACES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_TYPEFACE_PROPERTY_CONFIGS_TYPEFACE_NAME_NOT_WRAPPED_IN_QUOTES](#IX_TYPEFACE_PROPERTY_CONFIGS_TYPEFACE_NAME_NOT_WRAPPED_IN_QUOTES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_UPDATE_PACKAGE_SUBPROCESS](#IX_UPDATE_PACKAGE_SUBPROCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[IX_UPDATE_TARGET_SUBPROCESS](#IX_UPDATE_TARGET_SUBPROCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KC_STATS](#KC_STATS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KC_STATS_INSUFFICIENT_PRIVILEGES](#KC_STATS_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KC_STATS_INVALID_CONTENT](#KC_STATS_INVALID_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYSTORE_INVALID_CRYPTOGRAPHER_TYPE](#KEYSTORE_INVALID_CRYPTOGRAPHER_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYSTORE_INVALID_MISSING_FILE](#KEYSTORE_INVALID_MISSING_FILE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYSTORE_INVALID_MISSING_PASSWORD](#KEYSTORE_INVALID_MISSING_PASSWORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYSTORE_UNABLE_TO_BUILD_LOCK_FILE](#KEYSTORE_UNABLE_TO_BUILD_LOCK_FILE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYSTORE_UNABLE_TO_GENERATE_KEY](#KEYSTORE_UNABLE_TO_GENERATE_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYSTORE_UNABLE_TO_INITIALIZE](#KEYSTORE_UNABLE_TO_INITIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYWORD_DUPLICATE](#KEYWORD_DUPLICATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYWORD_DUPLICATE_LOCAL](#KEYWORD_DUPLICATE_LOCAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYWORD_INVALID](#KEYWORD_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYWORD_MIXED_WITH_NON_KEYWORD](#KEYWORD_MIXED_WITH_NON_KEYWORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYWORD_REQUIRED](#KEYWORD_REQUIRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KEYWORD_UNSUPPORTED](#KEYWORD_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KM_INSUFFICIENT_USER_PRIVILEGES](#KM_INSUFFICIENT_USER_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KM_INVALID_CONTENT](#KM_INVALID_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KM_INVALID_DATA_FORMAT](#KM_INVALID_DATA_FORMAT)`

    Deprecated. 

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KM_INVALID_REPORT](#KM_INVALID_REPORT)`

    Deprecated. 

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KM_INVALID_TYPE_MASK](#KM_INVALID_TYPE_MASK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KM_INVALID_VERSION](#KM_INVALID_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KM_STORAGE_LIMIT](#KM_STORAGE_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[KUDOS_GIVE_SELF](#KUDOS_GIVE_SELF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LAST_HEALTH_CHECK_FUNCTION_INSUFFICIENT_ERROR](#LAST_HEALTH_CHECK_FUNCTION_INSUFFICIENT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LAST_HEALTH_CHECK_FUNCTION_NOT_SETUP_ERROR](#LAST_HEALTH_CHECK_FUNCTION_NOT_SETUP_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LAST_HEALTH_CHECK_FUNCTION_NOT_SETUP_NOT_SYS_ADMIN_ERROR](#LAST_HEALTH_CHECK_FUNCTION_NOT_SETUP_NOT_SYS_ADMIN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LICENSING_APPLY_INSUFFICIENT_PERMISSIONS](#LICENSING_APPLY_INSUFFICIENT_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LICENSING_DUPLICATE_LICENSE](#LICENSING_DUPLICATE_LICENSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LICENSING_INVALID_LICENSE](#LICENSING_INVALID_LICENSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LICENSING_VIEW_INSUFFICIENT_PERMISSIONS](#LICENSING_VIEW_INSUFFICIENT_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LIST_TYPE_ARGUMENT_CANNOT_BE_LIST](#LIST_TYPE_ARGUMENT_CANNOT_BE_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LIST_TYPE_ARGUMENT_TYPE_INVALID](#LIST_TYPE_ARGUMENT_TYPE_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LIST_VIEW_EXPR_VALIDATION_EXPR_TOO_LONG](#LIST_VIEW_EXPR_VALIDATION_EXPR_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LOAD_VARIABLE_INSIDE_LOOPING_FUNCTION](#LOAD_VARIABLE_INSIDE_LOOPING_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LOOPING_FUNCTION_NON_LIST](#LOOPING_FUNCTION_NON_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LOOPING_FUNCTION_NON_LIST_REDUCE](#LOOPING_FUNCTION_NON_LIST_REDUCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[LOOPING_FUNCTION_NON_RULE_OF_FUNCTION_DOMAIN](#LOOPING_FUNCTION_NON_RULE_OF_FUNCTION_DOMAIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MAP_ARRAY_UPDATE_ERROR](#MAP_ARRAY_UPDATE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_DESERIALIZATION_ERROR](#MESSAGE_EXECUTOR_DESERIALIZATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_FILTER_EVAL_ERROR](#MESSAGE_EXECUTOR_FILTER_EVAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_FILTER_INVALID_RETURN_TYPE](#MESSAGE_EXECUTOR_FILTER_INVALID_RETURN_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_GENERIC_ERROR](#MESSAGE_EXECUTOR_GENERIC_ERROR)`

    Message Executor / Message Integration Error Codes /\*\* @since

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_INVALID_OBJECT_ACCESS](#MESSAGE_EXECUTOR_INVALID_OBJECT_ACCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_MSG_EVAL_ERROR](#MESSAGE_EXECUTOR_MSG_EVAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_MSG_SIZE_EXCEEDED_ERROR](#MESSAGE_EXECUTOR_MSG_SIZE_EXCEEDED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_NOT_ENABLED](#MESSAGE_EXECUTOR_NOT_ENABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGE_EXECUTOR_START_TEST_ERROR](#MESSAGE_EXECUTOR_START_TEST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGING_INVALID_JMS_QUEUE](#MESSAGING_INVALID_JMS_QUEUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MESSAGING_PROCESS_ROUTE_MISSING](#MESSAGING_PROCESS_ROUTE_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MFA_GROUP_NOT_FOUND](#MFA_GROUP_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MIGRATION_FAILED_LDAP](#MIGRATION_FAILED_LDAP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MIGRATION_FAILED_LDAP_BASE_DNS_DO_NOT_MATCH](#MIGRATION_FAILED_LDAP_BASE_DNS_DO_NOT_MATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MIGRATION_FAILED_LDAP_DUPLICATE_BASEDN](#MIGRATION_FAILED_LDAP_DUPLICATE_BASEDN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MIGRATION_FAILED_LDAP_MALFORMED_URI](#MIGRATION_FAILED_LDAP_MALFORMED_URI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MIGRATION_FAILED_LDAP_MISSING_REQUIRED_PROPERTY](#MIGRATION_FAILED_LDAP_MISSING_REQUIRED_PROPERTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MIGRATION_FAILED_SAML_INVALID_GROUP_ID](#MIGRATION_FAILED_SAML_INVALID_GROUP_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_EXEC_DASHBOARD_CFG_VALIDATION_DUPLICATE_ACTIVITY_NAME](#MINING_EXEC_DASHBOARD_CFG_VALIDATION_DUPLICATE_ACTIVITY_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_EXEC_DASHBOARD_CFG_VALIDATION_NEGATIVE_COSTS](#MINING_EXEC_DASHBOARD_CFG_VALIDATION_NEGATIVE_COSTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_EXEC_DASHBOARD_CFG_VALIDATION_SPECIFIC_ACTIVITIES_DEFINED_FOR_INVALID_EXPECTED_SEQUENCE](#MINING_EXEC_DASHBOARD_CFG_VALIDATION_SPECIFIC_ACTIVITIES_DEFINED_FOR_INVALID_EXPECTED_SEQUENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_EXEC_DASHBOARD_CFG_VALIDATION_SPECIFIC_ACTIVITIES_DEFINED_FOR_MISSING_EXPECTED_SEQUENCE](#MINING_EXEC_DASHBOARD_CFG_VALIDATION_SPECIFIC_ACTIVITIES_DEFINED_FOR_MISSING_EXPECTED_SEQUENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_EXEC_DASHBOARD_CFG_VALIDATION_TOO_MANY_ACTIVITY_DATA_CFGS](#MINING_EXEC_DASHBOARD_CFG_VALIDATION_TOO_MANY_ACTIVITY_DATA_CFGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_CATEGORICAL_ATTRIBUTE](#MINING_KPI_VALIDATION_CATEGORICAL_ATTRIBUTE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_COUNT_AGGREGATION_ATTRIBUTE_VALUE](#MINING_KPI_VALIDATION_COUNT_AGGREGATION_ATTRIBUTE_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_COUNT_KPI_ATTRIBUTE_VALUE](#MINING_KPI_VALIDATION_COUNT_KPI_ATTRIBUTE_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_DUPLICATE_NAME](#MINING_KPI_VALIDATION_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_DURATION_KPI_DURATION_MEASURE](#MINING_KPI_VALIDATION_DURATION_KPI_DURATION_MEASURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_IS_DIRECT_FOLLOWER](#MINING_KPI_VALIDATION_IS_DIRECT_FOLLOWER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_NONEXISTING_VIEW_NAMES](#MINING_KPI_VALIDATION_NONEXISTING_VIEW_NAMES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_REQUIRES_DUAL_TIMESTAMPS](#MINING_KPI_VALIDATION_REQUIRES_DUAL_TIMESTAMPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_SLA_KPI_DURATION](#MINING_KPI_VALIDATION_SLA_KPI_DURATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_KPI_VALIDATION_TOO_MANY_KPIS](#MINING_KPI_VALIDATION_TOO_MANY_KPIS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_ACTION_FIELD_TOO_UNIQUE](#MINING_PROCESS_ACTION_FIELD_TOO_UNIQUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_BAD_SEMANTIC_MAPPINGS](#MINING_PROCESS_BAD_SEMANTIC_MAPPINGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_BROKEN_ANALYST_CUSTOM_FIELD](#MINING_PROCESS_BROKEN_ANALYST_CUSTOM_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_BROKEN_PROCESS_FILTER](#MINING_PROCESS_BROKEN_PROCESS_FILTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_DEPENDENCY_MIGRATION_ERROR](#MINING_PROCESS_DEPENDENCY_MIGRATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_DUPLICATE_FIELD_NAMES](#MINING_PROCESS_DUPLICATE_FIELD_NAMES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_FAILED_TO_DELETE_PROCESS](#MINING_PROCESS_FAILED_TO_DELETE_PROCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_FAILED_TO_UPDATE_INACTIVITY_TIMEOUT](#MINING_PROCESS_FAILED_TO_UPDATE_INACTIVITY_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_FAILED_TO_UPDATE_PROCESS_PROPERTIES](#MINING_PROCESS_FAILED_TO_UPDATE_PROCESS_PROPERTIES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_GENERIC_CREATE_FAILURE](#MINING_PROCESS_GENERIC_CREATE_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_GENERIC_UPDATE_FAILURE](#MINING_PROCESS_GENERIC_UPDATE_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_MISSING_CASE_OR_EVENT_RECORD_TYPE](#MINING_PROCESS_MISSING_CASE_OR_EVENT_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_MISSING_CASE_TO_EVENT_RELATIONSHIP](#MINING_PROCESS_MISSING_CASE_TO_EVENT_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_MISSING_NON_CASE_TO_EVENT_RELATIONSHIP](#MINING_PROCESS_MISSING_NON_CASE_TO_EVENT_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_MISSING_RECORD_FIELDS](#MINING_PROCESS_MISSING_RECORD_FIELDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_MISSING_RELATED_RECORD_TYPE](#MINING_PROCESS_MISSING_RELATED_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_MISSING_REQUIRED_SEMANTIC](#MINING_PROCESS_MISSING_REQUIRED_SEMANTIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_NOT_DATA_STEWARD_INSUFFICIENT_PRIVILEGES](#MINING_PROCESS_NOT_DATA_STEWARD_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#MINING_PROCESS_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_POLLING_TIMEOUT_FAILURE](#MINING_PROCESS_POLLING_TIMEOUT_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_RESERVED_FIELD_NAME](#MINING_PROCESS_RESERVED_FIELD_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_SYNC_FAILED_BECAUSE_NO_RECORD_DATA](#MINING_PROCESS_SYNC_FAILED_BECAUSE_NO_RECORD_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_TOO_MANY_CASE_TO_EVENT_RELATIONSHIPS](#MINING_PROCESS_TOO_MANY_CASE_TO_EVENT_RELATIONSHIPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_WRONG_CASE_FIELD_ON_CASE_TO_EVENT_RELATIONSHIP](#MINING_PROCESS_WRONG_CASE_FIELD_ON_CASE_TO_EVENT_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_PROCESS_WRONG_EVENT_FIELD_ON_CASE_TO_EVENT_RELATIONSHIP](#MINING_PROCESS_WRONG_EVENT_FIELD_ON_CASE_TO_EVENT_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_FEATURE_DISABLED](#MINING_RECIPE_FEATURE_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_PROVISIONING_DUPLICATE_NAME](#MINING_RECIPE_PROVISIONING_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_PROVISIONING_FAILED_TO_SYNC](#MINING_RECIPE_PROVISIONING_FAILED_TO_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_PROVISIONING_GENERIC_FAILURE](#MINING_RECIPE_PROVISIONING_GENERIC_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_ALERT_FREQUENCY_FT_OFF](#MINING_RECIPE_VALIDATION_ALERT_FREQUENCY_FT_OFF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_BAD_VERSION](#MINING_RECIPE_VALIDATION_BAD_VERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_CONTAINS_VIEWER_ANALYST_OVERLAP](#MINING_RECIPE_VALIDATION_CONTAINS_VIEWER_ANALYST_OVERLAP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_CONTAINS_VIEWER_ANALYST_OVERLAP_GROUPS](#MINING_RECIPE_VALIDATION_CONTAINS_VIEWER_ANALYST_OVERLAP_GROUPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_COUNT_KPI_OPTION_CASES_WITH_ACTIVITY](#MINING_RECIPE_VALIDATION_COUNT_KPI_OPTION_CASES_WITH_ACTIVITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_COUNT_KPI_OPTION_CASES_WITH_SEQUENCE](#MINING_RECIPE_VALIDATION_COUNT_KPI_OPTION_CASES_WITH_SEQUENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_DECIMAL_MULTIPLE_POINTS](#MINING_RECIPE_VALIDATION_DECIMAL_MULTIPLE_POINTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_DUPLICATE_EXCLUDED_FIELD_UUID](#MINING_RECIPE_VALIDATION_DUPLICATE_EXCLUDED_FIELD_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_DUPLICATE_GROUPS](#MINING_RECIPE_VALIDATION_DUPLICATE_GROUPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_DUPLICATE_USERS](#MINING_RECIPE_VALIDATION_DUPLICATE_USERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_FIELD_OVERRIDE_OVERLAPS_EXCLUDED_FIELD_UUIDS](#MINING_RECIPE_VALIDATION_FIELD_OVERRIDE_OVERLAPS_EXCLUDED_FIELD_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_GENERIC_PROBLEM](#MINING_RECIPE_VALIDATION_GENERIC_PROBLEM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_GROUPS_DOES_NOT_EXIST](#MINING_RECIPE_VALIDATION_GROUPS_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_INVALID_CASE_TO_EVENT_RELATIONSHIP](#MINING_RECIPE_VALIDATION_INVALID_CASE_TO_EVENT_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_INVALID_RECORD_TYPE_RELATIONSHIP](#MINING_RECIPE_VALIDATION_INVALID_RECORD_TYPE_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_JSON_SYNTAX_PROBLEM](#MINING_RECIPE_VALIDATION_JSON_SYNTAX_PROBLEM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_KPI_DOES_NOT_SUPPORT_THRESHOLD](#MINING_RECIPE_VALIDATION_KPI_DOES_NOT_SUPPORT_THRESHOLD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_KPI_MULTIPLE_THRESHOLDS](#MINING_RECIPE_VALIDATION_KPI_MULTIPLE_THRESHOLDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_AT_MOST_ONE](#MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_AT_MOST_ONE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_EXACTLY_ONE](#MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_EXACTLY_ONE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_NONE](#MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_NONE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_START_OR_END](#MINING_RECIPE_VALIDATION_MAP_TO_VALUE_MUST_HAVE_START_OR_END)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_MISSING_REQUIRED_FIELD](#MINING_RECIPE_VALIDATION_MISSING_REQUIRED_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_NONEXISTENT_RECORD_TYPE](#MINING_RECIPE_VALIDATION_NONEXISTENT_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_NONEXISTENT_RECORD_TYPE_FIELD](#MINING_RECIPE_VALIDATION_NONEXISTENT_RECORD_TYPE_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_NONEXISTENT_RECORD_TYPE_RELATIONSHIP](#MINING_RECIPE_VALIDATION_NONEXISTENT_RECORD_TYPE_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_NOT_A_JSON_ARRAY](#MINING_RECIPE_VALIDATION_NOT_A_JSON_ARRAY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_NOT_A_JSON_PRIMITIVE](#MINING_RECIPE_VALIDATION_NOT_A_JSON_PRIMITIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_NOT_COMMUNITY_EDITION](#MINING_RECIPE_VALIDATION_NOT_COMMUNITY_EDITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_NUMBER_FORMAT_PROBLEM](#MINING_RECIPE_VALIDATION_NUMBER_FORMAT_PROBLEM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_THRESHOLD_FT_OFF](#MINING_RECIPE_VALIDATION_THRESHOLD_FT_OFF)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_TOO_MANY_EXCLUDED_FIELD_UUIDS](#MINING_RECIPE_VALIDATION_TOO_MANY_EXCLUDED_FIELD_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_TOO_MANY_GROUPS](#MINING_RECIPE_VALIDATION_TOO_MANY_GROUPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_TOO_MANY_USERS](#MINING_RECIPE_VALIDATION_TOO_MANY_USERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_UNEXPECTED_FIELDS](#MINING_RECIPE_VALIDATION_UNEXPECTED_FIELDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_UNRECOGNIZED_ENUM_VALUE](#MINING_RECIPE_VALIDATION_UNRECOGNIZED_ENUM_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_USERS_DOES_NOT_EXIST](#MINING_RECIPE_VALIDATION_USERS_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_VERSION_1_KPIS_UNDER_VIEWS_VIOLATION](#MINING_RECIPE_VALIDATION_VERSION_1_KPIS_UNDER_VIEWS_VIOLATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VALIDATION_VERSION_2_VIOLATION](#MINING_RECIPE_VALIDATION_VERSION_2_VIOLATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_RECIPE_VERSION_1_INVALID_PROPERTY_VIOLATION](#MINING_RECIPE_VERSION_1_INVALID_PROPERTY_VIOLATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_VIEW_VALIDATION_ATTRIBUTE_FILTER_LIMIT_EXCEEDED](#MINING_VIEW_VALIDATION_ATTRIBUTE_FILTER_LIMIT_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_VIEW_VALIDATION_DUPLICATE_VIEW_NAMES](#MINING_VIEW_VALIDATION_DUPLICATE_VIEW_NAMES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_VIEW_VALIDATION_NAME_SIZE_LIMIT_EXCEEDED](#MINING_VIEW_VALIDATION_NAME_SIZE_LIMIT_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_VIEW_VALIDATION_RESERVED_VIEW_NAME](#MINING_VIEW_VALIDATION_RESERVED_VIEW_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MINING_VIEW_VALIDATION_TOO_MANY_VIEWS](#MINING_VIEW_VALIDATION_TOO_MANY_VIEWS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MISPLACED_USER_SUMMARY_COMPONENT_ERROR](#MISPLACED_USER_SUMMARY_COMPONENT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MISSING_I18N_BUNDLES](#MISSING_I18N_BUNDLES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MISSING_KEYWORD](#MISSING_KEYWORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MOBILE_APP_ID_NOT_ALLOWED](#MOBILE_APP_ID_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MORE_THAN_ONE_SEARCH_FILTER](#MORE_THAN_ONE_SEARCH_FILTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MOVE_CONTENT_ACTION](#MOVE_CONTENT_ACTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MOVE_CONTENT_ACTION_ILLEGAL_RECURSION](#MOVE_CONTENT_ACTION_ILLEGAL_RECURSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MOVE_CONTENT_ACTION_INSUFFICIENT_PRIVILEGES](#MOVE_CONTENT_ACTION_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MOVE_CONTENT_ACTION_INVALID_CONTENT](#MOVE_CONTENT_ACTION_INVALID_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MSG_EXECUTOR_ACTIVATION_STATUS_CHANGE_FAILED](#MSG_EXECUTOR_ACTIVATION_STATUS_CHANGE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MSG_INTEGRATION_LISTENER_CREATION_FAILED](#MSG_INTEGRATION_LISTENER_CREATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MSG_INTEGRATION_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#MSG_INTEGRATION_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MSG_INTEGRATION_PRODUCER_CREATION_FAILED](#MSG_INTEGRATION_PRODUCER_CREATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MSG_INTEGRATION_TOPIC_CREATION_FAILED](#MSG_INTEGRATION_TOPIC_CREATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MULTIDIMENSIONAL_ARRAYS_UNSUPPORTED](#MULTIDIMENSIONAL_ARRAYS_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MULTIPLE_COMBINED_SIMILARITY_SCORES](#MULTIPLE_COMBINED_SIMILARITY_SCORES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MULTIPLE_IDP_MIGRATION_FAILED](#MULTIPLE_IDP_MIGRATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MW2DS_ACCESS_PERMISSION](#MW2DS_ACCESS_PERMISSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MW2DS_CANNOT_RETRIEVE_ENTITY](#MW2DS_CANNOT_RETRIEVE_ENTITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MW2DS_DATA_SOURCE_CONNECTION](#MW2DS_DATA_SOURCE_CONNECTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MW2DS_DURING_WRITE](#MW2DS_DURING_WRITE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MW2DS_MIXED_DATA_STORES](#MW2DS_MIXED_DATA_STORES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[MW2DS_WRITE_PERMISSION](#MW2DS_WRITE_PERMISSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NESTED_COMBINED_SIMILARITY_SCORE](#NESTED_COMBINED_SIMILARITY_SCORE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NESTEDCHOICE_DUPLICATE_ID](#NESTEDCHOICE_DUPLICATE_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NESTEDCHOICE_MISSING_ID](#NESTEDCHOICE_MISSING_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_APPLICATION_INVALID](#NEW_INTEGRATION_APPLICATION_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_DUPLICATE_INPUTS](#NEW_INTEGRATION_DUPLICATE_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_DUPLICATE_NAME](#NEW_INTEGRATION_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_EMPTY_NAME](#NEW_INTEGRATION_EMPTY_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_GENERAL_ERROR](#NEW_INTEGRATION_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_INVALID_INPUT_NAME](#NEW_INTEGRATION_INVALID_INPUT_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_INVALID_RULENAME](#NEW_INTEGRATION_INVALID_RULENAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_NO_APPLICATION_PROVIDED](#NEW_INTEGRATION_NO_APPLICATION_PROVIDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_NO_FOLDER_PROVIDED](#NEW_INTEGRATION_NO_FOLDER_PROVIDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTEGRATION_UNABLE_TO_ADD_TO_APP](#NEW_INTEGRATION_UNABLE_TO_ADD_TO_APP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_APPLICATION_INVALID](#NEW_INTERFACE_APPLICATION_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_DUPLICATE_INPUTS](#NEW_INTERFACE_DUPLICATE_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_DUPLICATE_NAME](#NEW_INTERFACE_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_EMPTY_NAME](#NEW_INTERFACE_EMPTY_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_GENERAL_ERROR](#NEW_INTERFACE_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_INVALID_INPUT_NAME](#NEW_INTERFACE_INVALID_INPUT_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_INVALID_RULENAME](#NEW_INTERFACE_INVALID_RULENAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_NO_APPLICATION_PROVIDED](#NEW_INTERFACE_NO_APPLICATION_PROVIDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_NO_FOLDER_PROVIDED](#NEW_INTERFACE_NO_FOLDER_PROVIDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_INTERFACE_UNABLE_TO_ADD_TO_APP](#NEW_INTERFACE_UNABLE_TO_ADD_TO_APP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NEW_TRANSLATION_VARIABLE_FOUND_IN_IMPORT_UPDATE](#NEW_TRANSLATION_VARIABLE_FOUND_IN_IMPORT_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NO_USER_PROFILE](#NO_USER_PROFILE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NO_UUID_CAST_TO_RECORD_REFERENCE_TYPE](#NO_UUID_CAST_TO_RECORD_REFERENCE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NON_INDEXABLE_RECORD_FIELD_SEARCH](#NON_INDEXABLE_RECORD_FIELD_SEARCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NONSYSTEM_TYPES_EXPOSE_AS_WS](#NONSYSTEM_TYPES_EXPOSE_AS_WS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NONSYSTEM_TYPES_UNSUPPORTED](#NONSYSTEM_TYPES_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOT_ACCEPTABLE_HTTP_406](#NOT_ACCEPTABLE_HTTP_406)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOTIFICATION_ERROR_ADMIN_CONFIG](#NOTIFICATION_ERROR_ADMIN_CONFIG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOTIFICATION_ERROR_EMPTY_NULL_RECIPIENTS](#NOTIFICATION_ERROR_EMPTY_NULL_RECIPIENTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOTIFICATION_ERROR_EMPTY_NULL_TITLE](#NOTIFICATION_ERROR_EMPTY_NULL_TITLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOTIFICATION_ERROR_INVALID_LINK](#NOTIFICATION_ERROR_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOTIFICATION_ERROR_NULL_LINK](#NOTIFICATION_ERROR_NULL_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOTIFICATION_ERROR_TOO_MANY_RECIPIENTS](#NOTIFICATION_ERROR_TOO_MANY_RECIPIENTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NOTIFICATIONS_DISABLED_IN_ADMIN_CONSOLE](#NOTIFICATIONS_DISABLED_IN_ADMIN_CONSOLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NULL_JSON_PARAMETER](#NULL_JSON_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[NULL_REPORT_CONTEXT](#NULL_REPORT_CONTEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OBJECT_BEING_EDITED_BY_ANOTHER_USER_NAME](#OBJECT_BEING_EDITED_BY_ANOTHER_USER_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OBJECT_TEMPLATE_GENERIC](#OBJECT_TEMPLATE_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OBJECT_TRANSLATOR_CAUGHT_EXCEPTION_FROM_SERVICE](#OBJECT_TRANSLATOR_CAUGHT_EXCEPTION_FROM_SERVICE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OPAQUE_URL_BUILDER_ERROR_OPAQUING_CONTENT_ID](#OPAQUE_URL_BUILDER_ERROR_OPAQUING_CONTENT_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OPAQUE_URL_BUILDER_ERROR_OPAQUING_PROCESS_MODEL_ID](#OPAQUE_URL_BUILDER_ERROR_OPAQUING_PROCESS_MODEL_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OPAQUE_URL_BUILDER_ERROR_OPAQUING_RECORD_ID](#OPAQUE_URL_BUILDER_ERROR_OPAQUING_RECORD_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OPAQUE_URL_BUILDER_ERROR_OPAQUING_TASK_ID](#OPAQUE_URL_BUILDER_ERROR_OPAQUING_TASK_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OPEN_API_IX_INVALID_PROPERTY_VALUE](#OPEN_API_IX_INVALID_PROPERTY_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OUTBOUND_INTEGRATION_GENERIC_ERROR](#OUTBOUND_INTEGRATION_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OUTBOUND_INTEGRATION_MISSING_PROPERTY_CREATE](#OUTBOUND_INTEGRATION_MISSING_PROPERTY_CREATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OUTBOUND_INTEGRATION_MISSING_PROPERTY_UPDATE](#OUTBOUND_INTEGRATION_MISSING_PROPERTY_UPDATE)`

    Deprecated.

    outboundintegration ix create exception

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OUTBOUND_INTEGRATION_REQUEST_BODY_SIZE_THRESHOLD_EXCEEDED](#OUTBOUND_INTEGRATION_REQUEST_BODY_SIZE_THRESHOLD_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OUTBOUND_INTEGRATION_RESPONSE_BODY_SIZE_THRESHOLD_EXCEEDED](#OUTBOUND_INTEGRATION_RESPONSE_BODY_SIZE_THRESHOLD_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OUTBOUND_INTEGRATION_UNABLE_TO_PROCESS_REQUEST_BODY](#OUTBOUND_INTEGRATION_UNABLE_TO_PROCESS_REQUEST_BODY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[OUTBOUND_INTEGRATION_UNABLE_TO_PROCESS_RESPONSE_BODY](#OUTBOUND_INTEGRATION_UNABLE_TO_PROCESS_RESPONSE_BODY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_CONFIGURATION_START_INDEX_TOO_SMALL](#PAGING_CONFIGURATION_START_INDEX_TOO_SMALL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_AND_IDS_SIZE_MISMATCH](#PAGING_GRID_DATA_AND_IDS_SIZE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_CAST_ERROR](#PAGING_GRID_DATA_CAST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_FIELD_CAST_ERROR](#PAGING_GRID_DATA_FIELD_CAST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_INVALID_FIELD_VALUE](#PAGING_GRID_DATA_INVALID_FIELD_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_IS_LIST_TYPE](#PAGING_GRID_DATA_IS_LIST_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_IS_NON_RECORD_TYPE](#PAGING_GRID_DATA_IS_NON_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_IS_NULL](#PAGING_GRID_DATA_IS_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_DATA_MISSING_FIELD](#PAGING_GRID_DATA_MISSING_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAGING_GRID_UNKNOWN](#PAGING_GRID_UNKNOWN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PARAMETER_NOT_CONTEXT_REFERENCE](#PARAMETER_NOT_CONTEXT_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PARTICIPANTS_INVALID_ENTRY](#PARTICIPANTS_INVALID_ENTRY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_AUTHORIZATION_FAILED_FOR_REQUEST](#PAS_AUTHORIZATION_FAILED_FOR_REQUEST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_BUNDLE_MIGRATING_GENERIC_ERROR](#PAS_BUNDLE_MIGRATING_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_CREATE_ECR_FAILED](#PAS_CREATE_ECR_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_CREATE_FAILED_GENERIC_ERROR](#PAS_CREATE_FAILED_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DATABASE_GET_FAILED](#PAS_DATABASE_GET_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DATABASE_READ_FAILED](#PAS_DATABASE_READ_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DATABASE_UPDATE_FAILED](#PAS_DATABASE_UPDATE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DATABASE_WRITE_FAILED](#PAS_DATABASE_WRITE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DEFAULT_CREATE_FAILED](#PAS_DEFAULT_CREATE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DEFAULT_DELETE_FAILED](#PAS_DEFAULT_DELETE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DEFAULT_FAILED](#PAS_DEFAULT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DEFAULT_REQUEST_FAILED](#PAS_DEFAULT_REQUEST_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DEFAULT_UPDATE_FAILED](#PAS_DEFAULT_UPDATE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DELETE_ECR_FAILED](#PAS_DELETE_ECR_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DELETE_FAILED_GENERIC_ERROR](#PAS_DELETE_FAILED_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DELETE_PUBLIC_KEY_FAILED](#PAS_DELETE_PUBLIC_KEY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DELETE_RESOURCES_FAILED](#PAS_DELETE_RESOURCES_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DELETE_RESOURCES_FAILED_PARAMS](#PAS_DELETE_RESOURCES_FAILED_PARAMS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_DELETE_S3_ZIP_FAILED](#PAS_DELETE_S3_ZIP_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_GENERIC_REQUEST_FAILURE_WITH_STATUS_CODE](#PAS_GENERIC_REQUEST_FAILURE_WITH_STATUS_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_GET_ECR_FAILED](#PAS_GET_ECR_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_GET_LIBRARY_VERSION_OVERRIDE_FAILED](#PAS_GET_LIBRARY_VERSION_OVERRIDE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_GET_PORTAL_METRICS_FAILED](#PAS_GET_PORTAL_METRICS_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_GET_PORTAL_MONITORING_VIEW_METRICS_FAILED](#PAS_GET_PORTAL_MONITORING_VIEW_METRICS_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_GET_PUBLIC_KEY_FAILED](#PAS_GET_PUBLIC_KEY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_GET_S3_ZIP_FAILED](#PAS_GET_S3_ZIP_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_INVALID_APP_ICON_FORMAT_ERROR](#PAS_INVALID_APP_ICON_FORMAT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_INVALID_HOSTNAME](#PAS_INVALID_HOSTNAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_INVALID_LOGO_IMAGE_FILE_EXTENSION](#PAS_INVALID_LOGO_IMAGE_FILE_EXTENSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_INVALID_TIME_RANGE_FOR_GET_PORTAL_METRICS](#PAS_INVALID_TIME_RANGE_FOR_GET_PORTAL_METRICS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_MISSING_AUTHORIZATION_HEADER](#PAS_MISSING_AUTHORIZATION_HEADER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_NO_EXISTING_PRIVATE_KEY](#PAS_NO_EXISTING_PRIVATE_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_NULL_SITE_ID](#PAS_NULL_SITE_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_PORTAL_ALREADY_EXISTS](#PAS_PORTAL_ALREADY_EXISTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_PORTAL_MGMT_FT_DISABLED](#PAS_PORTAL_MGMT_FT_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_PORTALS_CREATE_TRANSACTION_CONFLICT](#PAS_PORTALS_CREATE_TRANSACTION_CONFLICT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_PORTALS_LIMIT_EXCEEDED](#PAS_PORTALS_LIMIT_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_REQUEST_BAD_URI](#PAS_REQUEST_BAD_URI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_REQUEST_IO_EXCEPTION](#PAS_REQUEST_IO_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_REQUEST_PROTOCOL_EXCEPTION](#PAS_REQUEST_PROTOCOL_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_REQUEST_UNEXPECTED_EXCEPTION](#PAS_REQUEST_UNEXPECTED_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_RESPONSE_STATUS_409_PORTAL_NOT_FOUND](#PAS_RESPONSE_STATUS_409_PORTAL_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_RESPONSE_STATUS_413](#PAS_RESPONSE_STATUS_413)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_RESPONSE_STATUS_413_NO_PRECEDENTS](#PAS_RESPONSE_STATUS_413_NO_PRECEDENTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_RESPONSE_STATUS_429](#PAS_RESPONSE_STATUS_429)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_RUN_CODEBUILD_FAILED](#PAS_RUN_CODEBUILD_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_SET_PUBLIC_KEY_FAILED](#PAS_SET_PUBLIC_KEY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_UPDATE_FAILED_GENERIC_ERROR](#PAS_UPDATE_FAILED_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PAS_UPLOAD_S3_ZIP_FAILED](#PAS_UPLOAD_S3_ZIP_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PASSWORD_EXTERNALLY_MANAGED](#PASSWORD_EXTERNALLY_MANAGED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PASSWORD_HASH_ERROR](#PASSWORD_HASH_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PASSWORD_MINIMUM_AGE_ERROR](#PASSWORD_MINIMUM_AGE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PASSWORDS_PROPERTIES_DELETION_ERROR](#PASSWORDS_PROPERTIES_DELETION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PATCH_DATA_SERVER_UNAVAILABLE](#PATCH_DATA_SERVER_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PEOPLE_FUNCTIONS_BATCH_SIZE_TOO_LARGE](#PEOPLE_FUNCTIONS_BATCH_SIZE_TOO_LARGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PEOPLE_FUNCTIONS_BATCH_SIZE_TOO_SMALL](#PEOPLE_FUNCTIONS_BATCH_SIZE_TOO_SMALL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PEOPLE_FUNCTIONS_PAGING_INFO_PARAMETER_WRONG_TYPE](#PEOPLE_FUNCTIONS_PAGING_INFO_PARAMETER_WRONG_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PEOPLE_FUNCTIONS_START_INDEX_TOO_SMALL](#PEOPLE_FUNCTIONS_START_INDEX_TOO_SMALL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PERSISTED_ACCESS_FORBIDDEN](#PERSISTED_ACCESS_FORBIDDEN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PERSISTED_ERROR](#PERSISTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PERSISTED_NAME_NOT_UNIQUE](#PERSISTED_NAME_NOT_UNIQUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PERSISTED_NOT_FOUND](#PERSISTED_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PHONE_NUMBER_FUNCTIONS_INVALID_COUNTRY_CODE](#PHONE_NUMBER_FUNCTIONS_INVALID_COUNTRY_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PLUGIN_MANAGEMENT_DEPLOY_INVALID_API_ERROR](#PLUGIN_MANAGEMENT_DEPLOY_INVALID_API_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PLUGIN_MANAGEMENT_FAILED_TO_DELETE_BACKUP_ERROR](#PLUGIN_MANAGEMENT_FAILED_TO_DELETE_BACKUP_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PLUGIN_MANAGEMENT_FAILED_TO_DELETE_PLUGIN_ERROR](#PLUGIN_MANAGEMENT_FAILED_TO_DELETE_PLUGIN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PLUGIN_MANAGEMENT_GENERIC_REVERT_ERROR](#PLUGIN_MANAGEMENT_GENERIC_REVERT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PLUGIN_MANAGEMENT_NO_BACKUP_FOR_REVERT_ERROR](#PLUGIN_MANAGEMENT_NO_BACKUP_FOR_REVERT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PLUGIN_METHOD_SECURITY_EXCEPTION](#PLUGIN_METHOD_SECURITY_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PLUGIN_SECURITY_EXCEPTION](#PLUGIN_SECURITY_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PM_IMPORT_INVALID_ACTIVITY_CLASS_SCHEMA](#PM_IMPORT_INVALID_ACTIVITY_CLASS_SCHEMA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PMM_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE](#PMM_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PMM_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE](#PMM_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PMM_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#PMM_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PMM_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE](#PMM_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PMM_CONNECTED_ENVIRONMENT_PROCESSMEMORYCALC_DISABLED](#PMM_CONNECTED_ENVIRONMENT_PROCESSMEMORYCALC_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POJO_DT_IMPORT_CANNOT_GENERATE_XSDS_FROM_CLASSES](#POJO_DT_IMPORT_CANNOT_GENERATE_XSDS_FROM_CLASSES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POJO_DT_IMPORT_CANNOT_GENERATE_XSDS_FROM_PACKAGES](#POJO_DT_IMPORT_CANNOT_GENERATE_XSDS_FROM_PACKAGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POJO_DT_IMPORT_CANNOT_IMPORT_XSDS](#POJO_DT_IMPORT_CANNOT_IMPORT_XSDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POJO_UNSUPPORTED_JPA_ANNOTATION](#POJO_UNSUPPORTED_JPA_ANNOTATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTAL_DATA_DOWNLOADER_FETCH_TVM_CREDENTIALS_FAILURE_EMPTY_RESPONSE](#PORTAL_DATA_DOWNLOADER_FETCH_TVM_CREDENTIALS_FAILURE_EMPTY_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTAL_DATA_DOWNLOADER_FETCH_TVM_CREDENTIALS_FAILURE_GENERIC](#PORTAL_DATA_DOWNLOADER_FETCH_TVM_CREDENTIALS_FAILURE_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTAL_DATA_DOWNLOADER_FETCH_TVM_CREDENTIALS_FAILURE_MALFORMED_RESPONSE](#PORTAL_DATA_DOWNLOADER_FETCH_TVM_CREDENTIALS_FAILURE_MALFORMED_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTAL_DATA_DOWNLOADER_GET_S3_ZIP_FAILURE](#PORTAL_DATA_DOWNLOADER_GET_S3_ZIP_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTAL_URL_WITH_LOCALE_NOT_AVAILABLE](#PORTAL_URL_WITH_LOCALE_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_BINDINGS_OUT_OF_DATE](#PORTALS_BINDINGS_OUT_OF_DATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_ENVIRONMENT_SPECIFIC_CONSTANT_INVALID_TYPE](#PORTALS_ENVIRONMENT_SPECIFIC_CONSTANT_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_GET_DOCUMENT_PROPERTIES_LCP_BUSY](#PORTALS_GET_DOCUMENT_PROPERTIES_LCP_BUSY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_GRID_DATA_EXPORT_FAILURE](#PORTALS_GRID_DATA_EXPORT_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_INTERFACE_NOT_FOUND](#PORTALS_INTERFACE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_INVALID_DATA_SOURCE](#PORTALS_INVALID_DATA_SOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_INVALID_DATA_SOURCE_CREDENTIALS](#PORTALS_INVALID_DATA_SOURCE_CREDENTIALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_INVALID_DATA_STORE_PERMISSIONS](#PORTALS_INVALID_DATA_STORE_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_INVALID_FILE_MOVER_REQUEST_CONTENT](#PORTALS_INVALID_FILE_MOVER_REQUEST_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_INVALID_RECAPTCHA_CREDENTIALS](#PORTALS_INVALID_RECAPTCHA_CREDENTIALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_INVALID_URL_STUB](#PORTALS_INVALID_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_NO_SERVICE_ACCOUNT_CONFIGURED](#PORTALS_NO_SERVICE_ACCOUNT_CONFIGURED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_NON_UNIQUE_URL_STUB](#PORTALS_NON_UNIQUE_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_NOT_ENABLED](#PORTALS_NOT_ENABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_NOT_ENABLED_QUERY_RECORD](#PORTALS_NOT_ENABLED_QUERY_RECORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#PORTALS_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_NOT_FOUND_INSUFFICIENT_PRIVILEGES_NONAME](#PORTALS_NOT_FOUND_INSUFFICIENT_PRIVILEGES_NONAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_PAGE_NOT_FOUND](#PORTALS_PAGE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_PUBLISH_INFO_NOT_FOUND](#PORTALS_PUBLISH_INFO_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_QUERY_DATA_SOURCE_CONNECTION_ERROR](#PORTALS_QUERY_DATA_SOURCE_CONNECTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_QUERY_DATA_SOURCE_GENERIC_ERROR](#PORTALS_QUERY_DATA_SOURCE_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_QUERY_RECORD_CONNECTION_ERROR](#PORTALS_QUERY_RECORD_CONNECTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_QUERY_RECORD_TYPE_LCP_BUSY](#PORTALS_QUERY_RECORD_TYPE_LCP_BUSY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_QUERY_RECORD_VERSION_MISMATCH](#PORTALS_QUERY_RECORD_VERSION_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_RECORD_ACTIONS_NOT_SUPPORTED](#PORTALS_RECORD_ACTIONS_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_RECORD_LINKS_NOT_SUPPORTED](#PORTALS_RECORD_LINKS_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_SERVICE_ACCOUNT_SUGGEST_FAILED](#PORTALS_SERVICE_ACCOUNT_SUGGEST_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PORTALS_START_PROCESS_LCP_BUSY](#PORTALS_START_PROCESS_LCP_BUSY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POST_COMMENT_TO_FEED_GENERAL](#POST_COMMENT_TO_FEED_GENERAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POST_TO_FEED_GENERAL](#POST_TO_FEED_GENERAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POST_TO_FEED_INVALID_ACTION_PM](#POST_TO_FEED_INVALID_ACTION_PM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POST_TO_FEED_INVALID_GROUP](#POST_TO_FEED_INVALID_GROUP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[POST_TO_FEED_INVALID_ICON_DOCUMENT](#POST_TO_FEED_INVALID_ICON_DOCUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRETTYPRINT_TYPEDVALUE_IS_HIDDEN_TYPE](#PRETTYPRINT_TYPEDVALUE_IS_HIDDEN_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRIMARY_TRANSLATED_TEXT_NOT_EMPTY_OR_CONTAINS_WHITESPACES](#PRIMARY_TRANSLATED_TEXT_NOT_EMPTY_OR_CONTAINS_WHITESPACES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_HQ_MINING_KPI_DUPLICATE_NAME](#PROCESS_HQ_MINING_KPI_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_HQ_RECORD_TYPE_MIGRATION_ERROR](#PROCESS_HQ_RECORD_TYPE_MIGRATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_BAD_ADMIN_CONFIG](#PROCESS_MINING_BAD_ADMIN_CONFIG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_FAILED_TO_COMMUNICATE_TO_SERVER](#PROCESS_MINING_FAILED_TO_COMMUNICATE_TO_SERVER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_NO_INSTANCE_URL](#PROCESS_MINING_NO_INSTANCE_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_RECORD_EVENTS_CONFIGURATION_NOT_FOUND](#PROCESS_MINING_RECORD_EVENTS_CONFIGURATION_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_RECORD_EVENTS_ERROR_READING_RECORD_TYPE_CONFIG](#PROCESS_MINING_RECORD_EVENTS_ERROR_READING_RECORD_TYPE_CONFIG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_APP_GENERATION_ERROR](#PROCESS_MINING_SYNERGY_APP_GENERATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_APP_GENERATION_MISSING_NAME](#PROCESS_MINING_SYNERGY_APP_GENERATION_MISSING_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_BPMN_FILE_TOO_LARGE](#PROCESS_MINING_SYNERGY_BPMN_FILE_TOO_LARGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_ERROR_QUERYING_GENERATED_OBJECTS](#PROCESS_MINING_SYNERGY_ERROR_QUERYING_GENERATED_OBJECTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_ERROR_WHILE_CHECKING_MEMBERSHIP](#PROCESS_MINING_SYNERGY_ERROR_WHILE_CHECKING_MEMBERSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_EXPECTED_OBJECT_MISSING](#PROCESS_MINING_SYNERGY_EXPECTED_OBJECT_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_GENERIC_ERROR](#PROCESS_MINING_SYNERGY_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_PROCESS_BAD_UPLOAD](#PROCESS_MINING_SYNERGY_PROCESS_BAD_UPLOAD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_PROCESS_MODEL_CONVERSION_ERROR](#PROCESS_MINING_SYNERGY_PROCESS_MODEL_CONVERSION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_PROCESS_MODEL_CREATION_ERROR](#PROCESS_MINING_SYNERGY_PROCESS_MODEL_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MINING_SYNERGY_SYSTEM_ROLE_INSUFFICIENT](#PROCESS_MINING_SYNERGY_SYSTEM_ROLE_INSUFFICIENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MODEL_INSUFFICIENT_PRIVILEGES](#PROCESS_MODEL_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_MODEL_NO_START_FORM](#PROCESS_MODEL_NO_START_FORM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_UPGRADE_DATA_TYPE_EVOLUTION_TRANSFORMATION_ERRORS](#PROCESS_UPGRADE_DATA_TYPE_EVOLUTION_TRANSFORMATION_ERRORS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_UPGRADE_INCOMPLETE](#PROCESS_UPGRADE_INCOMPLETE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PROCESS_UPGRADE_UNSUPPORTED_ALERT_RECIPIENTS_EXPRESSION](#PROCESS_UPGRADE_UNSUPPORTED_ALERT_RECIPIENTS_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_API_KEY_GENERATION](#PRTL_API_KEY_GENERATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_ASSET_NOT_FOUND](#PRTL_ASSET_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_DATA_SOURCES](#PRTL_DATA_SOURCES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_DATA_SOURCES_CAN_VIEW_ALL](#PRTL_DATA_SOURCES_CAN_VIEW_ALL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_DATA_SOURCES_CANNOT_VIEW_ANY](#PRTL_DATA_SOURCES_CANNOT_VIEW_ANY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_DATA_STORE](#PRTL_DATA_STORE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_EXPORT_PRECEDENT](#PRTL_EXPORT_PRECEDENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_FAIL](#PRTL_FAIL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_INTERFACE_HAS_RULE_INPUTS](#PRTL_INTERFACE_HAS_RULE_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_MIXED_PROCESS_MODEL_PERMISSIONS_PLURAL_ERROR_KEY](#PRTL_MIXED_PROCESS_MODEL_PERMISSIONS_PLURAL_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_MIXED_PROCESS_MODEL_PERMISSIONS_SINGULAR_ERROR_KEY](#PRTL_MIXED_PROCESS_MODEL_PERMISSIONS_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_MIXED_RECORD_TYPE_PERMISSIONS_PLURAL_ERROR_KEY](#PRTL_MIXED_RECORD_TYPE_PERMISSIONS_PLURAL_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_MIXED_RECORD_TYPE_PERMISSIONS_SINGULAR_ERROR_KEY](#PRTL_MIXED_RECORD_TYPE_PERMISSIONS_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_PLURAL_ERROR_KEY](#PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_PLURAL_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_SINGULAR_ERROR_KEY](#PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_PLURAL_ERROR_KEY](#PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_PLURAL_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_SINGULAR_ERROR_KEY](#PRTL_NO_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_PAGE_CONFIGURED](#PRTL_NO_PAGE_CONFIGURED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_USER_SELECTED_PROCESS_MODEL_ERROR_KEY](#PRTL_NO_USER_SELECTED_PROCESS_MODEL_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_USER_SELECTED_PROCESS_MODEL_SINGULAR_ERROR_KEY](#PRTL_NO_USER_SELECTED_PROCESS_MODEL_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_USER_SELECTED_RECORD_TYPE_ERROR_KEY](#PRTL_NO_USER_SELECTED_RECORD_TYPE_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_NO_USER_SELECTED_RECORD_TYPE_SINGULAR_ERROR_KEY](#PRTL_NO_USER_SELECTED_RECORD_TYPE_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_SERVICE_ACCOUNT](#PRTL_SERVICE_ACCOUNT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_SERVICE_ACCOUNT_DOCUMENT](#PRTL_SERVICE_ACCOUNT_DOCUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_SERVICE_ACCOUNT_DOCUMENT_USER_CAN_SEE_ALL](#PRTL_SERVICE_ACCOUNT_DOCUMENT_USER_CAN_SEE_ALL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_SERVICE_ACCOUNT_DOCUMENT_USER_CAN_SEE_SOME_BUT_NOT_ALL](#PRTL_SERVICE_ACCOUNT_DOCUMENT_USER_CAN_SEE_SOME_BUT_NOT_ALL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_SERVICE_ACCOUNT_DOCUMENT_USER_CANNOT_SEE_ANY](#PRTL_SERVICE_ACCOUNT_DOCUMENT_USER_CANNOT_SEE_ANY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_SERVICE_ACCOUNT_INACTIVE](#PRTL_SERVICE_ACCOUNT_INACTIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_SERVICE_ACCOUNT_PORTAL](#PRTL_SERVICE_ACCOUNT_PORTAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_UNEXPECTED_ERROR](#PRTL_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_UNPUBLISH_FAIL](#PRTL_UNPUBLISH_FAIL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_UNPUBLISH_UNEXPECTED_ERROR](#PRTL_UNPUBLISH_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_UNPUBLISH_USER_ACCESS](#PRTL_UNPUBLISH_USER_ACCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_USER_ACCESS](#PRTL_USER_ACCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_PLURAL_ERROR_KEY](#PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_PLURAL_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_SINGULAR_ERROR_KEY](#PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_PROCESS_MODEL_PERMISSIONS_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_PLURAL_ERROR_KEY](#PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_PLURAL_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_SINGULAR_ERROR_KEY](#PRTL_YES_DESIGNER_NO_SERVICE_ACCOUNT_RECORD_TYPE_PERMISSIONS_SINGULAR_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[PUSH_NOTIFICATION_ENCRYPTION_FAILED](#PUSH_NOTIFICATION_ENCRYPTION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_GENERIC_ERROR](#QPA_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_INVALID_BATCH_SIZE](#QPA_INVALID_BATCH_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_INVALID_REPORT_ID](#QPA_INVALID_REPORT_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_MULTIPLE_NON_NULL_CONTEXTS](#QPA_MULTIPLE_NON_NULL_CONTEXTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_NOT_A_REPORT_REPORT_ID](#QPA_NOT_A_REPORT_REPORT_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_NULL_REPORT](#QPA_NULL_REPORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_TIMEOUT](#QPA_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_UNNECESSARY_CONTEXT](#QPA_UNNECESSARY_CONTEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QPA_UNSUPPORTED_REPORT_CONTEXT](#QPA_UNSUPPORTED_REPORT_CONTEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_ENTITY_COULD_NOT_RETRIEVE_DATA](#QUERY_ENTITY_COULD_NOT_RETRIEVE_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_ENTITY_ENTITY_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#QUERY_ENTITY_ENTITY_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_ENTITY_ENTITY_NOT_FOUND_INSUFFICIENT_PRIVILEGES_PORTALS](#QUERY_ENTITY_ENTITY_NOT_FOUND_INSUFFICIENT_PRIVILEGES_PORTALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DETAILS_INVALID_INPUT](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DETAILS_INVALID_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DETAILS_INVALID_RESPONSE](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DETAILS_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DETAILS_QUERY_FAILURE](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DETAILS_QUERY_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DISABLED](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_CANT_DESERIALIZE](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_INVALID_ERROR_CODE](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_INVALID_INPUT](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_INVALID_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_INVALID_RESPONSE](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_QUERY_FAILURE](#QUERY_PERFORMANCE_MONITOR_CONNECTED_ENVIRONMENT_SUMMARY_QUERY_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RECORD_BY_IDENTIFIER_CANNOT_QUERY_RECORD_WITHOUT_FIELD_REFERENCES](#QUERY_RECORD_BY_IDENTIFIER_CANNOT_QUERY_RECORD_WITHOUT_FIELD_REFERENCES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RECORD_CANNOT_QUERY_EXPRESSION_BASED_RECORDS](#QUERY_RECORD_CANNOT_QUERY_EXPRESSION_BASED_RECORDS)`

    Deprecated.

    use [`RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS`](#RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS) instead.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_ACCESS_STORE_FAILED](#QUERY_RULE_ACCESS_STORE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_ARRAY_PARAM_ELEMENT_NULL](#QUERY_RULE_ARRAY_PARAM_ELEMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_CANNOT_CHANGE_NAME](#QUERY_RULE_CANNOT_CHANGE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_CONNECTION_ERROR](#QUERY_RULE_CONNECTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_ENTITY_LOOKUP_FAILED](#QUERY_RULE_ENTITY_LOOKUP_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_ENTITY_PERMISSIONS](#QUERY_RULE_ENTITY_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_FILTER_ERROR](#QUERY_RULE_FILTER_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_INVALID_EXPRESSION](#QUERY_RULE_INVALID_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_INVALID_XML](#QUERY_RULE_INVALID_XML)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_LITERAL_ERROR](#QUERY_RULE_LITERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_LOAD_FAILED](#QUERY_RULE_LOAD_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_NAME_NOT_UNIQUE](#QUERY_RULE_NAME_NOT_UNIQUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_NOT_FOUND](#QUERY_RULE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_OUTPUT_CONVERT_FAILED](#QUERY_RULE_OUTPUT_CONVERT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_OUTPUT_TOO_BIG](#QUERY_RULE_OUTPUT_TOO_BIG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_PARAM_COUNT_ERROR](#QUERY_RULE_PARAM_COUNT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_PARAM_NULL](#QUERY_RULE_PARAM_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_PARAM_TYPE_ERROR](#QUERY_RULE_PARAM_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_RETRIEVE_ROLE_SET_FAILED](#QUERY_RULE_RETRIEVE_ROLE_SET_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_SAVE_PERMISSIONS](#QUERY_RULE_SAVE_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_SORT_PROPERTY_DOES_NOT_EXIST](#QUERY_RULE_SORT_PROPERTY_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_SORT_PROPERTY_NOT_PRIMITIVE](#QUERY_RULE_SORT_PROPERTY_NOT_PRIMITIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_UNKNOWN_RUNTIME_ERROR](#QUERY_RULE_UNKNOWN_RUNTIME_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_UNKNOWN_SAVE_ERROR](#QUERY_RULE_UNKNOWN_SAVE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_UPDATE_ROLE_SET_FAILED](#QUERY_RULE_UPDATE_ROLE_SET_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_RULE_UUID_MAPPING_FAILED](#QUERY_RULE_UUID_MAPPING_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_ALIAS_NOT_UNIQUE](#QUERY_VALIDATOR_ALIAS_NOT_UNIQUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_AND_ALL_NOT_SUPPORTED](#QUERY_VALIDATOR_AND_ALL_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_CANNOT_SORT_BY_MULTIPLE_FIELDS](#QUERY_VALIDATOR_CANNOT_SORT_BY_MULTIPLE_FIELDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_ALIAS_NOT_ALLOWED](#QUERY_VALIDATOR_FILTER_ALIAS_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_BETWEEN_INVALID_LIST](#QUERY_VALIDATOR_FILTER_BETWEEN_INVALID_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_BLANK_FIELD_NAME](#QUERY_VALIDATOR_FILTER_BLANK_FIELD_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_BLANK_VALUE](#QUERY_VALIDATOR_FILTER_BLANK_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_CANNOT_APPLY_OPERATOR_TO_FIELD](#QUERY_VALIDATOR_FILTER_CANNOT_APPLY_OPERATOR_TO_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_CANNOT_APPLY_OPERATOR_TO_RELATIONSHIP](#QUERY_VALIDATOR_FILTER_CANNOT_APPLY_OPERATOR_TO_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_INVALID_EXPRESSION](#QUERY_VALIDATOR_FILTER_INVALID_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_INVALID_FIELD_TYPE](#QUERY_VALIDATOR_FILTER_INVALID_FIELD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_INVALID_OPERATOR](#QUERY_VALIDATOR_FILTER_INVALID_OPERATOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_LOGICAL_EXPRESSION_INVALID_OPERATOR](#QUERY_VALIDATOR_FILTER_LOGICAL_EXPRESSION_INVALID_OPERATOR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_FILTER_LOGICAL_EXPRESSION_MISSING_CRITERIA](#QUERY_VALIDATOR_FILTER_LOGICAL_EXPRESSION_MISSING_CRITERIA)`

    Deprecated.

    passing empty criteria to the "filters" parameter of queryLogicalExpression no longer results in an error.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_GROUPBY_FIELD](#QUERY_VALIDATOR_GROUPBY_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_GROUPING_AND_AGGREGATION_NOT_SUPPORTED](#QUERY_VALIDATOR_GROUPING_AND_AGGREGATION_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_GROUPING_SORT_FILTER_ON_SECURED_FIELD](#QUERY_VALIDATOR_GROUPING_SORT_FILTER_ON_SECURED_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_AGGREGATION_HEURISTIC](#QUERY_VALIDATOR_INVALID_AGGREGATION_HEURISTIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_ALIAS_NAME](#QUERY_VALIDATOR_INVALID_ALIAS_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_FIELD](#QUERY_VALIDATOR_INVALID_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_INDEXING_MULTIPLE](#QUERY_VALIDATOR_INVALID_INDEXING_MULTIPLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_OPERATION_AGGREGATION](#QUERY_VALIDATOR_INVALID_OPERATION_AGGREGATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_OPERATION_GROUPING](#QUERY_VALIDATOR_INVALID_OPERATION_GROUPING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_OPERATION_SORTING](#QUERY_VALIDATOR_INVALID_OPERATION_SORTING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_DEFAULT_FILTERS](#QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_DEFAULT_FILTERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_FILTERS](#QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_FILTERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_SELECTION](#QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_SELECTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_SORT](#QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_SORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_USER_FILTERS](#QUERY_VALIDATOR_INVALID_RELATIONSHIP_JOIN_ON_USER_FILTERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_NO_FIELDS](#QUERY_VALIDATOR_NO_FIELDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_NO_GROUP_BY_FIELDS](#QUERY_VALIDATOR_NO_GROUP_BY_FIELDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_NULL_OR_EMPTY_EXPRESSION](#QUERY_VALIDATOR_NULL_OR_EMPTY_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_NULL_PAGING_INFO](#QUERY_VALIDATOR_NULL_PAGING_INFO)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_SEARCH_NULL_OR_EMPTY](#QUERY_VALIDATOR_SEARCH_NULL_OR_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_SELECTION_NOT_SUPPORTED](#QUERY_VALIDATOR_SELECTION_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_SORTING_BLANK_FIELD](#QUERY_VALIDATOR_SORTING_BLANK_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_SORTING_INVALID_FIELD](#QUERY_VALIDATOR_SORTING_INVALID_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUERY_VALIDATOR_SORTING_INVALID_FIELD_GROUPING](#QUERY_VALIDATOR_SORTING_INVALID_FIELD_GROUPING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUICKAPPS_APP_BUILDER_DATASOURCE_MISSING_PERM](#QUICKAPPS_APP_BUILDER_DATASOURCE_MISSING_PERM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUICKAPPS_APP_BUILDER_DATASOURCE_MISSING_PERM_CLEANUP_FAILED](#QUICKAPPS_APP_BUILDER_DATASOURCE_MISSING_PERM_CLEANUP_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUICKAPPS_DATASOURCE_GENERAL](#QUICKAPPS_DATASOURCE_GENERAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUICKAPPS_DATASOURCE_MISSING_PERM](#QUICKAPPS_DATASOURCE_MISSING_PERM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[QUICKAPPS_DATASOURCE_MISSING_PERM_CLEANUP_FAILED](#QUICKAPPS_DATASOURCE_MISSING_PERM_CLEANUP_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_DATA_SOURCE_CONNECTION_ERROR](#RDBMS_DATA_SOURCE_CONNECTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_DATA_SOURCE_NOT_FOUND](#RDBMS_DATA_SOURCE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_PRIMARY_DATA_SOURCE_CONFIGURATION_ERROR](#RDBMS_PRIMARY_DATA_SOURCE_CONFIGURATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_PRIMARY_DATA_SOURCE_CONNECTION_ERROR](#RDBMS_PRIMARY_DATA_SOURCE_CONNECTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_PRIMARY_DATA_SOURCE_NOT_CONFIGURED](#RDBMS_PRIMARY_DATA_SOURCE_NOT_CONFIGURED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_SCHEMA_PASSWORD_DECRYPTION_ERROR](#RDBMS_SCHEMA_PASSWORD_DECRYPTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_SN_INVALID_DROP_DATABASE_COMMAND](#RDBMS_SN_INVALID_DROP_DATABASE_COMMAND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_SN_INVALID_LOAD_DATA_PATH](#RDBMS_SN_INVALID_LOAD_DATA_PATH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_SN_LOAD_DATA_GEN_ERROR](#RDBMS_SN_LOAD_DATA_GEN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDBMS_SN_RESULTSET_VALUE_NOT_COMPATIBLE](#RDBMS_SN_RESULTSET_VALUE_NOT_COMPATIBLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_CLONE_EXCEPTION](#RDO_CLONE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_FORBIDDEN_OBJECT_ERROR](#RDO_FORBIDDEN_OBJECT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_IX_CANT_DESERIALIZE_RDO_JSON](#RDO_IX_CANT_DESERIALIZE_RDO_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_IX_MISSING_RDO_JSON](#RDO_IX_MISSING_RDO_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_IX_REMOTE_SERVICE_ERROR](#RDO_IX_REMOTE_SERVICE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_OBJECT_NOT_FOUND_ERROR](#RDO_OBJECT_NOT_FOUND_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_OBJECT_UNKNOWN_ERROR](#RDO_OBJECT_UNKNOWN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RDO_UNAUTHORIZED_ACCESS_OBJECT_ERROR](#RDO_UNAUTHORIZED_ACCESS_OBJECT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REACTIVATE_COMMUNITY](#REACTIVATE_COMMUNITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REACTIVATE_COMMUNITY_INSUFFICIENT_PRIVILEGES](#REACTIVATE_COMMUNITY_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REACTIVATE_COMMUNITY_INVALID_CONTENT](#REACTIVATE_COMMUNITY_INVALID_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[READ_DATA_STORE_BY_UUID_INVALID_DATA_STORE](#READ_DATA_STORE_BY_UUID_INVALID_DATA_STORE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[READ_GROUP_BY_UUID_INSUFFICIENT_PRIVILEGES](#READ_GROUP_BY_UUID_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[READ_GROUP_BY_UUID_INVALID_GROUP](#READ_GROUP_BY_UUID_INVALID_GROUP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[READ_GROUPTYPE_BY_UUID_INVALID_GROUPTYPE](#READ_GROUPTYPE_BY_UUID_INVALID_GROUPTYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[READ_PROCESS_REPORT_BY_UUID_INVALID_PROCESS_REPORT](#READ_PROCESS_REPORT_BY_UUID_INVALID_PROCESS_REPORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_ACCESS_DASHBOARD](#RECORD_CANNOT_ACCESS_DASHBOARD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_ACCESS_SOURCE](#RECORD_CANNOT_ACCESS_SOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_ACCESS_SOURCE_PROCESS_MODEL_UUID](#RECORD_CANNOT_ACCESS_SOURCE_PROCESS_MODEL_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_DISPLAY](#RECORD_CANNOT_DISPLAY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_EVALUATE_FACET](#RECORD_CANNOT_EVALUATE_FACET)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_EVALUATE_FACETS](#RECORD_CANNOT_EVALUATE_FACETS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_EVALUATE_FILTERS](#RECORD_CANNOT_EVALUATE_FILTERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_RETRIEVE_DATA](#RECORD_CANNOT_RETRIEVE_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_CANNOT_RETRIEVE_DATA_MISSING_DATATYPE](#RECORD_CANNOT_RETRIEVE_DATA_MISSING_DATATYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_ACTIVE_SYNC_CANCELED_EXCEPTION](#RECORD_DATA_SYNC_ACTIVE_SYNC_CANCELED_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_BINGE_POST_PROCESSING_ERROR](#RECORD_DATA_SYNC_BINGE_POST_PROCESSING_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_BRANCH_NOT_OPENED](#RECORD_DATA_SYNC_BRANCH_NOT_OPENED)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_BRANCH_TIMEOUT_INCR_SYNC](#RECORD_DATA_SYNC_BRANCH_TIMEOUT_INCR_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_CONCURRENT_BULK_SYNC](#RECORD_DATA_SYNC_CONCURRENT_BULK_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_EXCEEDS_MAX_SYNC_DURATION](#RECORD_DATA_SYNC_EXCEEDS_MAX_SYNC_DURATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_EXCEEDS_REPLICA_ROW_LIMIT](#RECORD_DATA_SYNC_EXCEEDS_REPLICA_ROW_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_GENERIC_ERROR](#RECORD_DATA_SYNC_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_GET_BY_ID_EXPRESSION_ERROR](#RECORD_DATA_SYNC_GET_BY_ID_EXPRESSION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_INVALID_DATETIME](#RECORD_DATA_SYNC_INVALID_DATETIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_INVALID_SOURCE_FILTER](#RECORD_DATA_SYNC_INVALID_SOURCE_FILTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_INVALID_SYNC_FILTER](#RECORD_DATA_SYNC_INVALID_SYNC_FILTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_MODEL_CHANGED](#RECORD_DATA_SYNC_MODEL_CHANGED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_NO_EXISTING_FULL_SYNC](#RECORD_DATA_SYNC_NO_EXISTING_FULL_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_NO_INC_SYNC_EXPRESSION](#RECORD_DATA_SYNC_NO_INC_SYNC_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_NON_SYNCED_RECORD_TYPE_SOURCE](#RECORD_DATA_SYNC_NON_SYNCED_RECORD_TYPE_SOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_NON_UNIQUE_VALUE](#RECORD_DATA_SYNC_NON_UNIQUE_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_REAPER_EXECUTED](#RECORD_DATA_SYNC_REAPER_EXECUTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_RELATED_RECORD_RELATIONSHIP_INVALID](#RECORD_DATA_SYNC_RELATED_RECORD_RELATIONSHIP_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_RELATED_RECORD_SYNC_FIELD_INVALID](#RECORD_DATA_SYNC_RELATED_RECORD_SYNC_FIELD_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_RELATED_RECORD_SYNC_INVALID](#RECORD_DATA_SYNC_RELATED_RECORD_SYNC_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_RESERVATION_CLAIM_FAILED](#RECORD_DATA_SYNC_RESERVATION_CLAIM_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_ROLLING_SYNC_FIELD_INVALID](#RECORD_DATA_SYNC_ROLLING_SYNC_FIELD_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_BAD_CREDENTIALS](#RECORD_DATA_SYNC_SOURCE_BAD_CREDENTIALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_BATCH_READ_FAILED](#RECORD_DATA_SYNC_SOURCE_BATCH_READ_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_COLUMN_NOT_FOUND](#RECORD_DATA_SYNC_SOURCE_COLUMN_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_COLUMN_TYPE_MISMATCH](#RECORD_DATA_SYNC_SOURCE_COLUMN_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_DATA_NULL_PK](#RECORD_DATA_SYNC_SOURCE_DATA_NULL_PK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_EXPRESSION_BATCH_ERROR](#RECORD_DATA_SYNC_SOURCE_EXPRESSION_BATCH_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_EXPRESSION_ERROR](#RECORD_DATA_SYNC_SOURCE_EXPRESSION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_GENERIC_ERROR](#RECORD_DATA_SYNC_SOURCE_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_INVALID_VALUE](#RECORD_DATA_SYNC_SOURCE_INVALID_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_INVALID_VALUE_ZERO_DATE](#RECORD_DATA_SYNC_SOURCE_INVALID_VALUE_ZERO_DATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_INVALID_VALUE_ZERO_DATE_TIME](#RECORD_DATA_SYNC_SOURCE_INVALID_VALUE_ZERO_DATE_TIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_NO_RESPONSE](#RECORD_DATA_SYNC_SOURCE_NO_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_NOT_FOUND](#RECORD_DATA_SYNC_SOURCE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_PRIMARY_KEY_MISMATCH](#RECORD_DATA_SYNC_SOURCE_PRIMARY_KEY_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_SCHEMA_MISMATCH](#RECORD_DATA_SYNC_SOURCE_SCHEMA_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_TABLE_NOT_FOUND](#RECORD_DATA_SYNC_SOURCE_TABLE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_SOURCE_UNIQUE_CONSTRAINT_MISMATCH](#RECORD_DATA_SYNC_SOURCE_UNIQUE_CONSTRAINT_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_STRING_COLUMN_SIZE_EXCEEDED_EXCEPTION](#RECORD_DATA_SYNC_STRING_COLUMN_SIZE_EXCEEDED_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_STRING_COLUMN_SIZE_EXCEEDED_NO_FIELD_EXCEPTION](#RECORD_DATA_SYNC_STRING_COLUMN_SIZE_EXCEEDED_NO_FIELD_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_TARGET_BATCH_WRITE_FAILED](#RECORD_DATA_SYNC_TARGET_BATCH_WRITE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_TARGET_DISK_FULL](#RECORD_DATA_SYNC_TARGET_DISK_FULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_TARGET_INVALID_VALUE](#RECORD_DATA_SYNC_TARGET_INVALID_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_TARGET_ROW_TOO_BIG](#RECORD_DATA_SYNC_TARGET_ROW_TOO_BIG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_TARGET_SYSTEM_FAILURE](#RECORD_DATA_SYNC_TARGET_SYSTEM_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_TO_MANY_RRSF_RECORDS](#RECORD_DATA_SYNC_TO_MANY_RRSF_RECORDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_TOO_MANY_ROWS_UPDATED](#RECORD_DATA_SYNC_TOO_MANY_ROWS_UPDATED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_UNIQUE_KEY_EXCEPTION](#RECORD_DATA_SYNC_UNIQUE_KEY_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DATA_SYNC_VALUE_EXCEEDS_LENGTH](#RECORD_DATA_SYNC_VALUE_EXCEEDS_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DELETE_INPUT_TOO_MANY_ROWS](#RECORD_DELETE_INPUT_TOO_MANY_ROWS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DELETE_NO_PK_INPUT](#RECORD_DELETE_NO_PK_INPUT)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DOCUMENT_FOLDER_INVALID_RECORD_TYPE_INPUT](#RECORD_DOCUMENT_FOLDER_INVALID_RECORD_TYPE_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DOCUMENT_FOLDER_NON_DOCUMENT_RECORD_TYPE](#RECORD_DOCUMENT_FOLDER_NON_DOCUMENT_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DOCUMENT_FOLDER_RECORD_TYPE_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#RECORD_DOCUMENT_FOLDER_RECORD_TYPE_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_DOCUMENT_KNOWLEDGE_CENTER_INVALID_MOVE](#RECORD_DOCUMENT_KNOWLEDGE_CENTER_INVALID_MOVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FIELD_METADATA_CALL_ARGS](#RECORD_FIELD_METADATA_CALL_ARGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FIELD_METADATA_INVALID_ARGS](#RECORD_FIELD_METADATA_INVALID_ARGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FIELD_METADATA_MISSING_INTERFACE](#RECORD_FIELD_METADATA_MISSING_INTERFACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FILTERS_FIELD_NOT_RECORD_FIELD](#RECORD_FILTERS_FIELD_NOT_RECORD_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FILTERS_FIELD_REFERENCE_INVALID](#RECORD_FILTERS_FIELD_REFERENCE_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FILTERS_FIELD_REFERENCE_RECORD_TYPE_MISMATCH](#RECORD_FILTERS_FIELD_REFERENCE_RECORD_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FROM_SCRATCH_BAD_DATA_SOURCE](#RECORD_FROM_SCRATCH_BAD_DATA_SOURCE)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FROM_SCRATCH_CANT_HAVE_NULL_TABLE_NAME](#RECORD_FROM_SCRATCH_CANT_HAVE_NULL_TABLE_NAME)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FROM_SCRATCH_DOCUMENT_PERSIST_ERROR](#RECORD_FROM_SCRATCH_DOCUMENT_PERSIST_ERROR)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FROM_SCRATCH_FAILED_TO_GET_UNIQUE_NAME](#RECORD_FROM_SCRATCH_FAILED_TO_GET_UNIQUE_NAME)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FROM_SCRATCH_TABLE_CREATION_UNSUCCESFUL](#RECORD_FROM_SCRATCH_TABLE_CREATION_UNSUCCESFUL)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_FROM_SCRATCH_TABLE_PUBLISH_ERROR](#RECORD_FROM_SCRATCH_TABLE_PUBLISH_ERROR)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_GRID_TITLE_EVAL_ERROR](#RECORD_GRID_TITLE_EVAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_INVALID_DEFAULT_FILTER_TYPE](#RECORD_INVALID_DEFAULT_FILTER_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_INVALID_LIST_VIEW_EXPRESSION](#RECORD_INVALID_LIST_VIEW_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_ITEM_PROVIDER_ERROR_RESOLVING_FACETS](#RECORD_ITEM_PROVIDER_ERROR_RESOLVING_FACETS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_ITEM_PROVIDER_ERROR_RETRIVING_LIST_VIEW_DATA_FOR_FEED](#RECORD_ITEM_PROVIDER_ERROR_RETRIVING_LIST_VIEW_DATA_FOR_FEED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_LINK_INVALID_TARGET_LOCATION](#RECORD_LINK_INVALID_TARGET_LOCATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_LINK_INVALID_TARGET_LOCATION_SITE_PAGE](#RECORD_LINK_INVALID_TARGET_LOCATION_SITE_PAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_LIST_EVALUATION_ERROR](#RECORD_LIST_EVALUATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_LIST_VIEW_SRC_EXPRESSION_INVALID_TYPE](#RECORD_LIST_VIEW_SRC_EXPRESSION_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_INDEX_INVALID_FIELD](#RECORD_MAP_INDEX_INVALID_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_INDEX_INVALID_RELATIONSHIP](#RECORD_MAP_INDEX_INVALID_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_INDEX_INVALID_SEARCH_RESULT](#RECORD_MAP_INDEX_INVALID_SEARCH_RESULT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_INDEX_LIST_OF_LIST](#RECORD_MAP_INDEX_LIST_OF_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_INVALID_INDEX_TYPE](#RECORD_MAP_INVALID_INDEX_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_INVALID_INDEX_VALUE](#RECORD_MAP_INVALID_INDEX_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_KEYWORDS](#RECORD_MAP_KEYWORDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_TYPE_FIELD_NOT_FOUND](#RECORD_MAP_TYPE_FIELD_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_TYPE_INVALID_KEYWORD_TYPE](#RECORD_MAP_TYPE_INVALID_KEYWORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MAP_TYPE_RECORD_NOT_FOUND](#RECORD_MAP_TYPE_RECORD_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MODERN_LIST_VIEW_SRC_INVALID_TYPE](#RECORD_MODERN_LIST_VIEW_SRC_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MODERN_RECORD_VIEW_SRC_INVALID_DATA_LENGTH](#RECORD_MODERN_RECORD_VIEW_SRC_INVALID_DATA_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MODERN_RECORD_VIEW_SRC_INVALID_TYPE](#RECORD_MODERN_RECORD_VIEW_SRC_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_DUPLICATE_RECORD_ID](#RECORD_MUTATION_DUPLICATE_RECORD_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_EMPTY_INPUT](#RECORD_MUTATION_EMPTY_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_FIELD_CAST_ERROR](#RECORD_MUTATION_FIELD_CAST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_INPUT_SYNC_INVALID](#RECORD_MUTATION_INPUT_SYNC_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_INVALID_RECORD_TYPE_INPUT](#RECORD_MUTATION_INVALID_RECORD_TYPE_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_MULTIPLE_DATA_SOURCES](#RECORD_MUTATION_MULTIPLE_DATA_SOURCES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_MULTIPLE_RECORD_TYPES](#RECORD_MUTATION_MULTIPLE_RECORD_TYPES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_NULL_INPUT](#RECORD_MUTATION_NULL_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_RECORD_INPUT_DOES_NOT_EXIST](#RECORD_MUTATION_RECORD_INPUT_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_SEQUENCE_NOT_AVAILABLE](#RECORD_MUTATION_SEQUENCE_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_SOURCE_COLUMN_NOT_FOUND](#RECORD_MUTATION_SOURCE_COLUMN_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_SOURCE_COLUMN_TYPE_MISMATCH](#RECORD_MUTATION_SOURCE_COLUMN_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_SOURCE_PRIMARY_KEY_MISMATCH](#RECORD_MUTATION_SOURCE_PRIMARY_KEY_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_SOURCE_SCHEMA_MISMATCH](#RECORD_MUTATION_SOURCE_SCHEMA_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_TABLE_NOT_FOUND](#RECORD_MUTATION_TABLE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_UNIQUENESS_CONSTRAINT_MISMATCH](#RECORD_MUTATION_UNIQUENESS_CONSTRAINT_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_MUTATION_WRONG_INPUT_TYPE](#RECORD_MUTATION_WRONG_INPUT_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#RECORD_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_ONLY_ONE_FACET_PER_EXPRESSION](#RECORD_ONLY_ONE_FACET_PER_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_PICKER_INVALID_RECORD_TYPE_RULE_BACKED](#RECORD_PICKER_INVALID_RECORD_TYPE_RULE_BACKED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_PROXY_TYPE_CREATION_FAILED](#RECORD_PROXY_TYPE_CREATION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_AGGREGATION_SORT_XL_TEXT](#RECORD_QUERY_AGGREGATION_SORT_XL_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_AND_ALL_INVALID_FIELD](#RECORD_QUERY_AND_ALL_INVALID_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_AND_ALL_MORE_THAN_ONE_SHARED_PATH](#RECORD_QUERY_AND_ALL_MORE_THAN_ONE_SHARED_PATH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS](#RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_CANNOT_QUERY_IN_LOOPING_FUNCTION_FOR_TRANSFORMATION](#RECORD_QUERY_CANNOT_QUERY_IN_LOOPING_FUNCTION_FOR_TRANSFORMATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_CANNOT_QUERY_NONSYNCED_RECORDS_FOR_TRANSFORMATION](#RECORD_QUERY_CANNOT_QUERY_NONSYNCED_RECORDS_FOR_TRANSFORMATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_CANNOT_QUERY_RECORDS_WITHOUT_FIELD_REFERENCES](#RECORD_QUERY_CANNOT_QUERY_RECORDS_WITHOUT_FIELD_REFERENCES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_CANNOT_QUERY_SYNC_BACKED_RECORDS](#RECORD_QUERY_CANNOT_QUERY_SYNC_BACKED_RECORDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_CANNOT_QUERY_SYS_DOC_RT](#RECORD_QUERY_CANNOT_QUERY_SYS_DOC_RT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_CANNOT_QUERY_TRANSFORMATION_RECORDS](#RECORD_QUERY_CANNOT_QUERY_TRANSFORMATION_RECORDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_EXPRESSION_INVALID_AGGREGATION_INPUT](#RECORD_QUERY_EXPRESSION_INVALID_AGGREGATION_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_EXPRESSION_MISSING_FIELDS](#RECORD_QUERY_EXPRESSION_MISSING_FIELDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_FILTER_XL_TEXT](#RECORD_QUERY_FILTER_XL_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_INVALID_TYPE](#RECORD_QUERY_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_NULL_PARAMETER](#RECORD_QUERY_NULL_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_ONE_TO_MANY_XL_TEXT](#RECORD_QUERY_ONE_TO_MANY_XL_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_RECORD_POWERED_COMPONENT_XL_TEXT](#RECORD_QUERY_RECORD_POWERED_COMPONENT_XL_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_RELATED_RECORD_DATA_SORT_XL_TEXT](#RECORD_QUERY_RELATED_RECORD_DATA_SORT_XL_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_QUERY_TOO_MANY_QUERY_CALLS_FOR_TRANSFORMATION](#RECORD_QUERY_TOO_MANY_QUERY_CALLS_FOR_TRANSFORMATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_RECORD_VIEW_SRC_EXPRESSION_INVALID_DATA_LENGTH](#RECORD_RECORD_VIEW_SRC_EXPRESSION_INVALID_DATA_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_RECORD_VIEW_SRC_EXPRESSION_INVALID_TYPE](#RECORD_RECORD_VIEW_SRC_EXPRESSION_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_REFERENCE_INVALID_PROPERTY](#RECORD_REFERENCE_INVALID_PROPERTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_REFERENCE_INVALID_UUID](#RECORD_REFERENCE_INVALID_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SECURITY_INVALID_RECORD_IDENTIFIER_TYPE](#RECORD_SECURITY_INVALID_RECORD_IDENTIFIER_TYPE)`

    Deprecated. 

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SECURITY_NOT_ENABLED_FOR_ENTITY](#RECORD_SECURITY_NOT_ENABLED_FOR_ENTITY)`

    Deprecated. 

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SECURITY_REQUIRES_DATA_STORE_ADMIN](#RECORD_SECURITY_REQUIRES_DATA_STORE_ADMIN)`

    Deprecated. 

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SECURITY_REQUIRES_EDITOR_PERMISSION](#RECORD_SECURITY_REQUIRES_EDITOR_PERMISSION)`

    Deprecated. 

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SOURCE_MISMATCHED_DATASUBSET_LENGTHS](#RECORD_SOURCE_MISMATCHED_DATASUBSET_LENGTHS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_ERROR](#RECORD_SYNC_ERROR)`

    Deprecated.

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_ERROR_COULD_NOT_FIND_RECORD_ID](#RECORD_SYNC_ERROR_COULD_NOT_FIND_RECORD_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_ERROR_RECORD_TYPE_HAS_MULTIPLE_SOURCES](#RECORD_SYNC_ERROR_RECORD_TYPE_HAS_MULTIPLE_SOURCES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_ALERTS_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#RECORD_SYNC_MONITOR_ALERTS_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_ALERTS_CONNECTED_ENVIRONMENT_QUERY_FAILURE](#RECORD_SYNC_MONITOR_ALERTS_CONNECTED_ENVIRONMENT_QUERY_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_DETAIL_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#RECORD_SYNC_MONITOR_DETAIL_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_DETAIL_CONNECTED_ENVIRONMENT_QUERY_FAILURE](#RECORD_SYNC_MONITOR_DETAIL_CONNECTED_ENVIRONMENT_QUERY_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_INVALID_ERROR_CODE](#RECORD_SYNC_MONITOR_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_MAIN_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#RECORD_SYNC_MONITOR_MAIN_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_MAIN_CONNECTED_ENVIRONMENT_QUERY_FAILURE](#RECORD_SYNC_MONITOR_MAIN_CONNECTED_ENVIRONMENT_QUERY_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_MISSING_ERROR_CODE](#RECORD_SYNC_MONITOR_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_SYNC_MONITOR_ROW_LIMIT_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#RECORD_SYNC_MONITOR_ROW_LIMIT_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_ACTION_NOT_FOUND](#RECORD_TYPE_ACTION_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_CONSTANTS](#RECORD_TYPE_CUSTOM_FIELD_CONSTANTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_CUSTOM_FIELD_REFERENCE](#RECORD_TYPE_CUSTOM_FIELD_CUSTOM_FIELD_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_CONFLICTING_PARAM_TYPE](#RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_CONFLICTING_PARAM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_INVALID_PARAM_TYPE](#RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_INVALID_PARAM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_MISSING_PARAMETER](#RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_MISSING_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_MULTIPLE_VALUES](#RECORD_TYPE_CUSTOM_FIELD_DEFAULT_VALUE_MULTIPLE_VALUES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_DISALLOWED_FUNCTION](#RECORD_TYPE_CUSTOM_FIELD_DISALLOWED_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_DISALLOWED_RLS_FUNCTION](#RECORD_TYPE_CUSTOM_FIELD_DISALLOWED_RLS_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FIELD_REFERENCE](#RECORD_TYPE_CUSTOM_FIELD_FIELD_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FIELD_REFERENCE_INVALID](#RECORD_TYPE_CUSTOM_FIELD_FIELD_REFERENCE_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FIELD_REFERENCE_QUERY_TIME](#RECORD_TYPE_CUSTOM_FIELD_FIELD_REFERENCE_QUERY_TIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_INSUFFICIENT_PRIVILEGES](#RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_INVALID](#RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_NESTED_INSUFFICIENT_PRIVILEGES](#RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_NESTED_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_NESTED_INSUFFICIENT_RECORD_FIELD_SECURITY_PRIVILEGES](#RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_NESTED_INSUFFICIENT_RECORD_FIELD_SECURITY_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_TARGET_RECORD_TYPE_MISMATCH](#RECORD_TYPE_CUSTOM_FIELD_FILTER_FIELD_TARGET_RECORD_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_VALUE_BETWEEN_LENGTH](#RECORD_TYPE_CUSTOM_FIELD_FILTER_VALUE_BETWEEN_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_VALUE_IN_NOT_IN_SCALAR](#RECORD_TYPE_CUSTOM_FIELD_FILTER_VALUE_IN_NOT_IN_SCALAR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_FILTER_VALUE_TYPE_MISMATCH](#RECORD_TYPE_CUSTOM_FIELD_FILTER_VALUE_TYPE_MISMATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_GENERIC_ERROR](#RECORD_TYPE_CUSTOM_FIELD_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_INVALID_FIELD_REFERENCE](#RECORD_TYPE_CUSTOM_FIELD_INVALID_FIELD_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_INVALID_STRUCTURE](#RECORD_TYPE_CUSTOM_FIELD_INVALID_STRUCTURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_MATCH_CONFLICTING_PARAM_TYPE](#RECORD_TYPE_CUSTOM_FIELD_MATCH_CONFLICTING_PARAM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_MATCH_INVALID_PARAM_TYPE](#RECORD_TYPE_CUSTOM_FIELD_MATCH_INVALID_PARAM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_MATCH_VALUE_LITERAL](#RECORD_TYPE_CUSTOM_FIELD_MATCH_VALUE_LITERAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_MATCH_WHEN_TRUE_INVALID_TYPE](#RECORD_TYPE_CUSTOM_FIELD_MATCH_WHEN_TRUE_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_ONE_TO_MANY_DISALLOWED_ERROR](#RECORD_TYPE_CUSTOM_FIELD_ONE_TO_MANY_DISALLOWED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_RECORD_FIELD_FROM_OTHER_RECORD_TYPE](#RECORD_TYPE_CUSTOM_FIELD_RECORD_FIELD_FROM_OTHER_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_RECORD_VARIABLE_QUERY_TIME](#RECORD_TYPE_CUSTOM_FIELD_RECORD_VARIABLE_QUERY_TIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_RELATED_RECORD_FIELD](#RECORD_TYPE_CUSTOM_FIELD_RELATED_RECORD_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_RULES](#RECORD_TYPE_CUSTOM_FIELD_RULES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_WRITE_TIME_CF_FUNCTION](#RECORD_TYPE_CUSTOM_FIELD_WRITE_TIME_CF_FUNCTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_WRITE_TIME_RELATED_RECORD_FIELD](#RECORD_TYPE_CUSTOM_FIELD_WRITE_TIME_RELATED_RECORD_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_WRITE_TIME_TODAY_NOW](#RECORD_TYPE_CUSTOM_FIELD_WRITE_TIME_TODAY_NOW)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_CUSTOM_FIELD_XL_TEXT_FIELD_ERROR](#RECORD_TYPE_CUSTOM_FIELD_XL_TEXT_FIELD_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_DATA_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#RECORD_TYPE_DATA_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_DATA_RETRIEVAL_UNEXPECTED_ERROR](#RECORD_TYPE_DATA_RETRIEVAL_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_INSUFFICIENT_PRIVILEGES](#RECORD_TYPE_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_INSUFFICIENT_PRIVILEGES_TEMP](#RECORD_TYPE_INSUFFICIENT_PRIVILEGES_TEMP)`

    Deprecated.

    `ErrorCode.RECORD_TYPE_NOT_FOUND_INSUFFICIENT_PRIVILEGES`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_INVALID_SYNC](#RECORD_TYPE_INVALID_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_INVALID_SYNC_ATTRIBUTE](#RECORD_TYPE_INVALID_SYNC_ATTRIBUTE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_INVALID_SYNC_GENERIC](#RECORD_TYPE_INVALID_SYNC_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_INVALID_SYNC_RELATED](#RECORD_TYPE_INVALID_SYNC_RELATED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_INVALID_URL_STUB](#RECORD_TYPE_INVALID_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_NOT_FOUND](#RECORD_TYPE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#RECORD_TYPE_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_PROPERTIES_CALL_ARGS](#RECORD_TYPE_PROPERTIES_CALL_ARGS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_PROPERTIES_CALL_NON_CONSTRUCTED](#RECORD_TYPE_PROPERTIES_CALL_NON_CONSTRUCTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_PROPERTIES_UNSUPPORTED_PROPERTY](#RECORD_TYPE_PROPERTIES_UNSUPPORTED_PROPERTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_RECORD_FIELD_SECURITY_PRECEDENT_CUSTOM_FIELDS](#RECORD_TYPE_RECORD_FIELD_SECURITY_PRECEDENT_CUSTOM_FIELDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_RELATED_ACTION_NOT_FOUND](#RECORD_TYPE_RELATED_ACTION_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_TYPE_USER_FILTER_NOT_FOUND](#RECORD_TYPE_USER_FILTER_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UI_DETAIL](#RECORD_UI_DETAIL)`

    Deprecated.

    see RECORD\_UI\_HEADER\_DETAIL

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UI_HEADER](#RECORD_UI_HEADER)`

    Deprecated.

    see RECORD\_UI\_HEADER\_DETAIL

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UI_HEADER_DETAIL](#RECORD_UI_HEADER_DETAIL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UI_INITIALIZATION](#RECORD_UI_INITIALIZATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_CONFLICTING_FIELD_CHANGE](#RECORD_UPDATE_CONFLICTING_FIELD_CHANGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_CONFLICTING_RELATIONSHIP_CHANGE](#RECORD_UPDATE_CONFLICTING_RELATIONSHIP_CHANGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_EMPTY_RECORD_MAP](#RECORD_UPDATE_EMPTY_RECORD_MAP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_EVENT_RECORD_AND_BASE_RECORD_DIFFERENT_SOURCES](#RECORD_UPDATE_EVENT_RECORD_AND_BASE_RECORD_DIFFERENT_SOURCES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_EVENT_RECORD_TYPE_INVALID_SYNC](#RECORD_UPDATE_EVENT_RECORD_TYPE_INVALID_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_EVENT_RECORD_TYPE_NOT_SYNCED_OR_RDBMS_BACKED](#RECORD_UPDATE_EVENT_RECORD_TYPE_NOT_SYNCED_OR_RDBMS_BACKED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_EVENT_TYPE_RECORD_TYPE_INVALID_SYNC](#RECORD_UPDATE_EVENT_TYPE_RECORD_TYPE_INVALID_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_EVENT_TYPE_RECORD_TYPE_NOT_SYNCED](#RECORD_UPDATE_EVENT_TYPE_RECORD_TYPE_NOT_SYNCED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_EVENTS_NOT_CONFIGURED](#RECORD_UPDATE_EVENTS_NOT_CONFIGURED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INPUT_TOO_MANY_ROWS](#RECORD_UPDATE_INPUT_TOO_MANY_ROWS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INPUT_TOO_MANY_TRAVERSED_ROWS](#RECORD_UPDATE_INPUT_TOO_MANY_TRAVERSED_ROWS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_ACTIVITY_ID_FIELD_MISSING](#RECORD_UPDATE_INVALID_EVENT_RECORD_ACTIVITY_ID_FIELD_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_AUTOMATION_TYPE_FIELD_MISSING](#RECORD_UPDATE_INVALID_EVENT_RECORD_AUTOMATION_TYPE_FIELD_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_AUTOMATION_TYPE_FIELD_NULL](#RECORD_UPDATE_INVALID_EVENT_RECORD_AUTOMATION_TYPE_FIELD_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_RELATIONSHIP](#RECORD_UPDATE_INVALID_EVENT_RECORD_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_RELATIONSHIP_JOIN_FIELD](#RECORD_UPDATE_INVALID_EVENT_RECORD_RELATIONSHIP_JOIN_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_RELATIONSHIP_SOURCE_FIELD_NOT_ID](#RECORD_UPDATE_INVALID_EVENT_RECORD_RELATIONSHIP_SOURCE_FIELD_NOT_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_TIMESTAMP_FIELD_MISSING](#RECORD_UPDATE_INVALID_EVENT_RECORD_TIMESTAMP_FIELD_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_TYPE](#RECORD_UPDATE_INVALID_EVENT_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_RECORD_USER_FIELD_MISSING](#RECORD_UPDATE_INVALID_EVENT_RECORD_USER_FIELD_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_TYPE_RECORD_RELATIONSHIP](#RECORD_UPDATE_INVALID_EVENT_TYPE_RECORD_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_EVENT_TYPE_RECORD_TYPE](#RECORD_UPDATE_INVALID_EVENT_TYPE_RECORD_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_PRIMARY_KEY_CHANGE](#RECORD_UPDATE_INVALID_PRIMARY_KEY_CHANGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_INVALID_RELATIONSHIP](#RECORD_UPDATE_INVALID_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_MISSING_UK_RELATIONSHIP_FIELD](#RECORD_UPDATE_MISSING_UK_RELATIONSHIP_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_MULTIPLE_BASE_RECORD_TYPES](#RECORD_UPDATE_MULTIPLE_BASE_RECORD_TYPES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_PAST_NON_CASCADING_RELATIONSHIP](#RECORD_UPDATE_PAST_NON_CASCADING_RELATIONSHIP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_RECORD_TYPE_DIFFERENT_SOURCE](#RECORD_UPDATE_RECORD_TYPE_DIFFERENT_SOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_RECORD_TYPE_NOT_SYNCED_OR_RDMBS_BACKED](#RECORD_UPDATE_RECORD_TYPE_NOT_SYNCED_OR_RDMBS_BACKED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_UPDATE_RECORD_TYPE_SYNC_INVALID](#RECORD_UPDATE_RECORD_TYPE_SYNC_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_WRITE_DATA_INTEGRITY_VIOLATION](#RECORD_WRITE_DATA_INTEGRITY_VIOLATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_WRITE_SOURCE_BAD_CREDENTIALS](#RECORD_WRITE_SOURCE_BAD_CREDENTIALS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_WRITE_SOURCE_GENERIC_ERROR](#RECORD_WRITE_SOURCE_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RECORD_WRITE_SOURCE_NO_RESPONSE](#RECORD_WRITE_SOURCE_NO_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REFRESH_ALWAYS_NOT_ALLOWED](#REFRESH_ALWAYS_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REFRESH_VARIABLE_NOT_ALLOWED](#REFRESH_VARIABLE_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REGEX_CASE_SENSITIVE_INCORRECT_TYPE_ERROR](#REGEX_CASE_SENSITIVE_INCORRECT_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REGEX_EXACT_MATCH_INCORRECT_TYPE_ERROR](#REGEX_EXACT_MATCH_INCORRECT_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REGEX_NULL_PATTERN_ERROR](#REGEX_NULL_PATTERN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REGEX_PATTERN_INCORRECT_TYPE_ERROR](#REGEX_PATTERN_INCORRECT_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REGEX_TEXT_INCORRECT_TYPE_ERROR](#REGEX_TEXT_INCORRECT_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RELATED_ACTION_INVALID_CONTEXT](#RELATED_ACTION_INVALID_CONTEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_DUPLICATE_NEW_USERNAMES](#RENAMEUSER_DUPLICATE_NEW_USERNAMES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_DUPLICATE_UUIDS](#RENAMEUSER_DUPLICATE_UUIDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_INVALID_NEW_USERNAME](#RENAMEUSER_INVALID_NEW_USERNAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_INVALID_USER_UUID](#RENAMEUSER_INVALID_USER_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_INVALID_USER_UUID_CANNOT_BE_RENAMED](#RENAMEUSER_INVALID_USER_UUID_CANNOT_BE_RENAMED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_MISMATCHED_INPUT_ARRAYS](#RENAMEUSER_MISMATCHED_INPUT_ARRAYS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_NON_UNIQUE_NEW_USERNAME](#RENAMEUSER_NON_UNIQUE_NEW_USERNAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_NONEXISTENT_USER_UUID](#RENAMEUSER_NONEXISTENT_USER_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_NONEXISTENT_USERNAME](#RENAMEUSER_NONEXISTENT_USERNAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_NONEXISTENT_USERNAME_TOO_MANY_TO_LOG](#RENAMEUSER_NONEXISTENT_USERNAME_TOO_MANY_TO_LOG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_NOT_SYSADMIN](#RENAMEUSER_NOT_SYSADMIN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_NULL_INPUT_ARRAY](#RENAMEUSER_NULL_INPUT_ARRAY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_NULL_USER_RENAME](#RENAMEUSER_NULL_USER_RENAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RENAMEUSER_SELF_RENAME](#RENAMEUSER_SELF_RENAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REPORT_FILTER_COLUMN_NOT_AVAILABLE](#REPORT_FILTER_COLUMN_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REPOSITORY_ERROR](#REPOSITORY_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RESET_FILE_EXP](#RESET_FILE_EXP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RESET_FILE_EXP_INVALID_CONTENT](#RESET_FILE_EXP_INVALID_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RESET_PWD_GENERIC_EMAIL_ERROR](#RESET_PWD_GENERIC_EMAIL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RESET_PWD_USER_EMAIL_INVALID](#RESET_PWD_USER_EMAIL_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[REVIEW_DATA_GENERAL_ERROR](#REVIEW_DATA_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DATATYPE_IDENTIFIER_NOT_FOUND](#RPA_DATATYPE_IDENTIFIER_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DATATYPE_NOT_FOUND](#RPA_DATATYPE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOC_FOLDER_ID_NOT_VALID](#RPA_DOC_FOLDER_ID_NOT_VALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOC_FOLDER_NOT_FOUND](#RPA_DOC_FOLDER_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOC_FOLDER_UUID_NOT_FOUND](#RPA_DOC_FOLDER_UUID_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOC_NAME_NOT_FOUND](#RPA_DOC_NAME_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOC_SAVING_ERROR](#RPA_DOC_SAVING_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOC_TOO_LARGE](#RPA_DOC_TOO_LARGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOC_VIRUS_FOUND](#RPA_DOC_VIRUS_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOMAIN_NOT_VALID](#RPA_DOMAIN_NOT_VALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_DOMAIN_PV](#RPA_DOMAIN_PV)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_BINDINGS_INVALID](#RPA_EVALUATION_BINDINGS_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_BINDINGS_NOT_BASE_64](#RPA_EVALUATION_BINDINGS_NOT_BASE_64)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_CONDITIONAL_MUST_CAST_TO_STRING](#RPA_EVALUATION_CONDITIONAL_MUST_CAST_TO_STRING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_EXPRESSION_EVALUATION_EXCEPTION](#RPA_EVALUATION_EXPRESSION_EVALUATION_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_EXPRESSION_SYNTAX_INVALID](#RPA_EVALUATION_EXPRESSION_SYNTAX_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_INVALID_ENDPOINT](#RPA_EVALUATION_INVALID_ENDPOINT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_JSON_INVALID](#RPA_EVALUATION_JSON_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_WORKFLOW_BINDINGS_CDT_IO_EXCEPTION](#RPA_EVALUATION_WORKFLOW_BINDINGS_CDT_IO_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_WORKFLOW_BINDINGS_CDT_NOT_MAP](#RPA_EVALUATION_WORKFLOW_BINDINGS_CDT_NOT_MAP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_WORKFLOW_BINDINGS_DATATYPE_MISSING_UUID](#RPA_EVALUATION_WORKFLOW_BINDINGS_DATATYPE_MISSING_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_WORKFLOW_BINDINGS_ICT_UNSUPPORTED](#RPA_EVALUATION_WORKFLOW_BINDINGS_ICT_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_WORKFLOW_BINDINGS_MISSING_KEY](#RPA_EVALUATION_WORKFLOW_BINDINGS_MISSING_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_WORKFLOW_BINDINGS_NOT_DICTIONARY](#RPA_EVALUATION_WORKFLOW_BINDINGS_NOT_DICTIONARY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EVALUATION_WORKFLOW_BINDINGS_NOT_VALID_TYPE](#RPA_EVALUATION_WORKFLOW_BINDINGS_NOT_VALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_EXPRESSION_RULE_NOT_FOUND](#RPA_EXPRESSION_RULE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_INSUFFICIENT_PRIVILEGE](#RPA_INSUFFICIENT_PRIVILEGE)`

    Error codes for retrieving user role maps

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_INVALID_JSON](#RPA_INVALID_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_INVALID_OBJECT_TYPE](#RPA_INVALID_OBJECT_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_INVALID_USER](#RPA_INVALID_USER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_LIST_PARAM_PROCESS_NOT_FOUND](#RPA_LIST_PARAM_PROCESS_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_LIST_PARAM_RULE_NOT_FOUND](#RPA_LIST_PARAM_RULE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_MALFORMED_JSON](#RPA_MALFORMED_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_NO_AUTHENTICATION](#RPA_NO_AUTHENTICATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_NO_PRIVILEGE_INITIATE_PROCESS](#RPA_NO_PRIVILEGE_INITIATE_PROCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_NO_PRIVILEGE_LIST_PARAMS_PM](#RPA_NO_PRIVILEGE_LIST_PARAMS_PM)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_PARAM_NOT_FOUND_IN_JSON](#RPA_PARAM_NOT_FOUND_IN_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_PROCESS_MODEL_NOT_FOUND](#RPA_PROCESS_MODEL_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_PROCESS_PARAM_CAST_ERROR](#RPA_PROCESS_PARAM_CAST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_REQUEST_NOT_SUPPORTED](#RPA_REQUEST_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_REQUIRED_PARAM_NOT_FOUND](#RPA_REQUIRED_PARAM_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_RULE_PARAM_CAST_ERROR](#RPA_RULE_PARAM_CAST_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_SEARCH_PHRASE_NOT_FOUND](#RPA_SEARCH_PHRASE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_SMART_SERVICE_DESIGN_INCORRECT_CS](#RPA_SMART_SERVICE_DESIGN_INCORRECT_CS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_SMART_SERVICE_DESIGN_INCORRECT_INTEGRATION](#RPA_SMART_SERVICE_DESIGN_INCORRECT_INTEGRATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_SMART_SERVICE_DESIGN_INTEGRATION_DNE](#RPA_SMART_SERVICE_DESIGN_INTEGRATION_DNE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_SMART_SERVICE_RUNTIME_INCORRECT_CS](#RPA_SMART_SERVICE_RUNTIME_INCORRECT_CS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_SMART_SERVICE_RUNTIME_INCORRECT_INTEGRATION](#RPA_SMART_SERVICE_RUNTIME_INCORRECT_INTEGRATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_SMART_SERVICE_RUNTIME_INTEGRATION_DNE](#RPA_SMART_SERVICE_RUNTIME_INTEGRATION_DNE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_UNKNOWN_ERROR](#RPA_UNKNOWN_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_USER_NOT_FOUND](#RPA_USER_NOT_FOUND)`

    Error codes for retrieving user role maps

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_USER_UUID_HEADER_NOT_FOUND](#RPA_USER_UUID_HEADER_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_UUID_NOT_FOUND](#RPA_UUID_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPA_UUID_NOT_FOUND_IN_JSON](#RPA_UUID_NOT_FOUND_IN_JSON)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPT_CONNECTED_ENVIRONMENT_CANT_CONVERT_TO_VALUE](#RPT_CONNECTED_ENVIRONMENT_CANT_CONVERT_TO_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPT_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE](#RPT_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPT_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE](#RPT_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPT_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#RPT_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RPT_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE](#RPT_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_DOCUMENT_TOO_LARGE](#RSS_DOCUMENT_TOO_LARGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_FAILED_TO_GET_INDEX_STATUS](#RSS_FAILED_TO_GET_INDEX_STATUS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_FAILED_TO_INDEX_RECORDS](#RSS_FAILED_TO_INDEX_RECORDS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_FAILED_TO_UPLOAD_RECORD_DOCUMENT](#RSS_FAILED_TO_UPLOAD_RECORD_DOCUMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_GENERIC_INDEXING_FAILURE](#RSS_GENERIC_INDEXING_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_INVALID_DOCUMENT_FILE_TYPE](#RSS_INVALID_DOCUMENT_FILE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_INVALID_INDEX_SEARCH_QUERY](#RSS_INVALID_INDEX_SEARCH_QUERY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RSS_OVER_INDEX_ROW_LIMIT](#RSS_OVER_INDEX_ROW_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_IMPORT_DUPLICATE_EXPRESSION](#RULE_IMPORT_DUPLICATE_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_IMPORT_RENAME_NOT_ALLOWED](#RULE_IMPORT_RENAME_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_CALLED_FN](#RULE_MAPPING_CALLED_FN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_CALLED_INVALID](#RULE_MAPPING_CALLED_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_CALLED_PLAIN_RULE](#RULE_MAPPING_CALLED_PLAIN_RULE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_CALLED_SYSRULE](#RULE_MAPPING_CALLED_SYSRULE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_CANT_LEX](#RULE_MAPPING_CANT_LEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_CANT_PARSE](#RULE_MAPPING_CANT_PARSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_EMPTY](#RULE_MAPPING_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_GENERAL_ERROR](#RULE_MAPPING_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_INSUFFICIENT_PERMISSION](#RULE_MAPPING_INSUFFICIENT_PERMISSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_MISSING_INTEGRATION](#RULE_MAPPING_MISSING_INTEGRATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_MISSING_INTERFACE](#RULE_MAPPING_MISSING_INTERFACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_NOTHING_CALLED](#RULE_MAPPING_NOTHING_CALLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_MAPPING_POSITIONAL_CALL](#RULE_MAPPING_POSITIONAL_CALL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[RULE_NAME_DUPLICATE_AGAINST_FUNCTION_NAME](#RULE_NAME_DUPLICATE_AGAINST_FUNCTION_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_APPLICATION_INVALID_APP_URL_STUB](#SAIL_APPLICATION_INVALID_APP_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_INVALID_ALIGN](#SAIL_INVALID_ALIGN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_CHECKBOX_VALUE_CONTAINS_NULL](#SAIL_VAL_CHECKBOX_VALUE_CONTAINS_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_CHECKBOX_VALUE_VALID_INDEX](#SAIL_VAL_CHECKBOX_VALUE_VALID_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_INVALID_CHOICE_LAYOUT](#SAIL_VAL_INVALID_CHOICE_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_INVALID_HEIGHT](#SAIL_VAL_INVALID_HEIGHT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_INVALID_LABEL_POSITION](#SAIL_VAL_INVALID_LABEL_POSITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_MULTI_DROPDOWN_VALUE_CONTAINS_NULL](#SAIL_VAL_MULTI_DROPDOWN_VALUE_CONTAINS_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_MULTI_DROPDOWN_VALUE_VALID_INDEX](#SAIL_VAL_MULTI_DROPDOWN_VALUE_VALID_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_RADIO_BUTTON_VALUE_VALID_INDEX](#SAIL_VAL_RADIO_BUTTON_VALUE_VALID_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_SIMPLE_DROPDOWN_VALUE_CONTAINS_NULL](#SAIL_VAL_SIMPLE_DROPDOWN_VALUE_CONTAINS_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VAL_SIMPLE_DROPDOWN_VALUE_VALID_INDEX](#SAIL_VAL_SIMPLE_DROPDOWN_VALUE_VALID_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_BAR_CHART_INVALID_Y_MIN_MAX](#SAIL_VALIDATION_BAR_CHART_INVALID_Y_MIN_MAX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_COLUMN_CHART_INVALID_Y_MIN_MAX](#SAIL_VALIDATION_COLUMN_CHART_INVALID_Y_MIN_MAX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_DOCUMENT_IMAGE_DOCUMENT_NULL](#SAIL_VALIDATION_DOCUMENT_IMAGE_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_DOCUMENT_IMAGE_DOCUMENT_NULL](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_DOCUMENT_IMAGE_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_DOCUMENT_LINK_DOCUMENT_NULL](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_DOCUMENT_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_IMAGE_TYPE](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_IMAGE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_IMAGES_NULL](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_IMAGES_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_INVALID_LINK_TYPE](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_INVALID_LINK_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_LINK_IS_NONEMPTY_LIST](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_LINK_IS_NONEMPTY_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_SAFE_IMAGE_URI_NULL](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_SAFE_IMAGE_URI_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_SAFE_LINK_URI_NULL](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_SAFE_LINK_URI_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_SIZE_INVALID](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_SIZE_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_SIZE_INVALID_V1](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_SIZE_INVALID_V1)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_TASK_LINK_TASK_NULL](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_TASK_LINK_TASK_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_GRID_IMAGE_COLUMN_THUMBNAIL_LINK](#SAIL_VALIDATION_GRID_IMAGE_COLUMN_THUMBNAIL_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_IMAGE_COUNT](#SAIL_VALIDATION_IMAGE_GALLERY_IMAGE_COUNT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_IMAGE_NULL](#SAIL_VALIDATION_IMAGE_GALLERY_IMAGE_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_IMAGE_TYPE](#SAIL_VALIDATION_IMAGE_GALLERY_IMAGE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_IMAGES_NULL](#SAIL_VALIDATION_IMAGE_GALLERY_IMAGES_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_MULTIPLE_SIZES_IN_GRID](#SAIL_VALIDATION_IMAGE_GALLERY_MULTIPLE_SIZES_IN_GRID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_SIZE](#SAIL_VALIDATION_IMAGE_GALLERY_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_SIZE_IN_GRID](#SAIL_VALIDATION_IMAGE_GALLERY_SIZE_IN_GRID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_SIZE_IN_GRID_V1](#SAIL_VALIDATION_IMAGE_GALLERY_SIZE_IN_GRID_V1)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_IMAGE_GALLERY_SIZE_V1](#SAIL_VALIDATION_IMAGE_GALLERY_SIZE_V1)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_LINE_CHART_INVALID_Y_MIN_MAX](#SAIL_VALIDATION_LINE_CHART_INVALID_Y_MIN_MAX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_MILESTONE_FIELD_INVALID_ACTIVE](#SAIL_VALIDATION_MILESTONE_FIELD_INVALID_ACTIVE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_MILESTONE_FIELD_INVALID_STEPS](#SAIL_VALIDATION_MILESTONE_FIELD_INVALID_STEPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_MILESTONE_FIELD_LINKS_EXCEEDS_STEPS](#SAIL_VALIDATION_MILESTONE_FIELD_LINKS_EXCEEDS_STEPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_SAFE_IMAGE_URI_NULL](#SAIL_VALIDATION_SAFE_IMAGE_URI_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_STACKING_INVALID_DATA](#SAIL_VALIDATION_STACKING_INVALID_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_TOGGLE_WIDGET_CHOICE_ICON_IDENTIFIER_INVALID](#SAIL_VALIDATION_TOGGLE_WIDGET_CHOICE_ICON_IDENTIFIER_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_TOGGLE_WIDGET_CHOICE_ICON_IDENTIFIER_NULL_OR_EMPTY](#SAIL_VALIDATION_TOGGLE_WIDGET_CHOICE_ICON_IDENTIFIER_NULL_OR_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_TOGGLE_WIDGET_CHOICE_LABEL_TOOLTIPS_ICON_IDENTIFIERS_DIFFERENT_COUNTS](#SAIL_VALIDATION_TOGGLE_WIDGET_CHOICE_LABEL_TOOLTIPS_ICON_IDENTIFIERS_DIFFERENT_COUNTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_TOGGLE_WIDGET_VALUE_INVALID_INDEX](#SAIL_VALIDATION_TOGGLE_WIDGET_VALUE_INVALID_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAIL_VALIDATION_VIDEO_NULL_SOURCE](#SAIL_VALIDATION_VIDEO_NULL_SOURCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SALT_INITIALIZATION_ERROR](#SALT_INITIALIZATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SALT_RETRIEVAL_ERROR](#SALT_RETRIEVAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAML_FAILED_TO_MOVE_IDP_METADATA](#SAML_FAILED_TO_MOVE_IDP_METADATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAVE_OPERATOR_LEFT](#SAVE_OPERATOR_LEFT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAVE_OPERATOR_RIGHT](#SAVE_OPERATOR_RIGHT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAVE_OPERATOR_RUNTIME_ERROR](#SAVE_OPERATOR_RUNTIME_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAVE_OUTBOUND_INTEGRATION_EXCEED_SIZE_LIMIT](#SAVE_OUTBOUND_INTEGRATION_EXCEED_SIZE_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SAVING_USER_FILTERS_SERVER_UNAVAILABLE](#SAVING_USER_FILTERS_SERVER_UNAVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SCHEMA_WIDE_PERMISSIONS_NOT_ALLOWED](#SCHEMA_WIDE_PERMISSIONS_NOT_ALLOWED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SCS_KEY_EMPTY](#SCS_KEY_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SCS_KEY_EXCEPTION](#SCS_KEY_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SEARCH_FILTER_ON_SEARCH_RESULT](#SEARCH_FILTER_ON_SEARCH_RESULT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SEARCH_IN_AGGREGATION](#SEARCH_IN_AGGREGATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SEARCH_RESULT_FILTER_IN_OR_LOGICAL_EXPRESSION](#SEARCH_RESULT_FILTER_IN_OR_LOGICAL_EXPRESSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SEARCH_RESULT_SORT_NOT_ON_SIMILARITY_SCORE](#SEARCH_RESULT_SORT_NOT_ON_SIMILARITY_SCORE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SEARCH_RESULT_SORT_ON_SEARCH_MATCHES](#SEARCH_RESULT_SORT_ON_SEARCH_MATCHES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SEARCH_RESULT_USE_IN_FILTER_WITHOUT_SEARCH_FILTER](#SEARCH_RESULT_USE_IN_FILTER_WITHOUT_SEARCH_FILTER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SEMANTIC_SEARCH_RECORD_TYPE_NOT_SYNCED](#SEMANTIC_SEARCH_RECORD_TYPE_NOT_SYNCED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SERVICE_ERROR](#SERVICE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SERVICE_LOCATOR_INITIALIZATION_ERROR](#SERVICE_LOCATOR_INITIALIZATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SERVICE_LOCATOR_INITIALIZATION_ERROR_CLASS](#SERVICE_LOCATOR_INITIALIZATION_ERROR_CLASS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SERVICE_LOCATOR_INITIALIZATION_ERROR_IO](#SERVICE_LOCATOR_INITIALIZATION_ERROR_IO)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SERVICE_LOCATOR_INITIALIZATION_ERROR_SAX](#SERVICE_LOCATOR_INITIALIZATION_ERROR_SAX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_INVALID_PAGE_ERROR](#SITE_INVALID_PAGE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_INVALID_URL_STUB](#SITE_INVALID_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_INVALID_URL_STUB_NO_DETAILS](#SITE_INVALID_URL_STUB_NO_DETAILS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_NON_UNIQUE_URL_STUB](#SITE_NON_UNIQUE_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#SITE_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_NOT_FOUND_INSUFFICIENT_PRIVILEGES_NONAME](#SITE_NOT_FOUND_INSUFFICIENT_PRIVILEGES_NONAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_PROCESS_MODEL_INSUFFICIENT_PRIVILEGES](#SITE_PROCESS_MODEL_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_RULE_INVALID](#SITE_RULE_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SITE_TITLE_EVALUATION_ERROR](#SITE_TITLE_EVALUATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SORTING_BY_RELATED_FIELD_FROM_X_TO_MANY_RELATIONSHIP_NOT_SUPPORTED](#SORTING_BY_RELATED_FIELD_FROM_X_TO_MANY_RELATIONSHIP_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SORTING_BY_X_TO_MANY_RELATED_FIELD](#SORTING_BY_X_TO_MANY_RELATED_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SSA_LIBRARY_OBJECT_NOT_FOUND](#SSA_LIBRARY_OBJECT_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SSA_MINING_KPI_NOT_FOUND](#SSA_MINING_KPI_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[START_HEALTH_CHECK_BAD_ENVIRONMENT](#START_HEALTH_CHECK_BAD_ENVIRONMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[START_HEALTH_CHECK_NOT_AUTHORIZED](#START_HEALTH_CHECK_NOT_AUTHORIZED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[START_HEALTH_CHECK_PLUGIN_INSTALLED](#START_HEALTH_CHECK_PLUGIN_INSTALLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[START_PROCESS_LINK_PROCESS_ERROR](#START_PROCESS_LINK_PROCESS_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_BATCH_LIMIT_EXCEEDED](#SXBR_BATCH_LIMIT_EXCEEDED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_BLOCKED_FUNCTIONS](#SXBR_BLOCKED_FUNCTIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_BLOCKED_FUNCTIONS_PARTIAL_SYNC](#SXBR_BLOCKED_FUNCTIONS_PARTIAL_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_BLOCKED_FUNCTIONS_RELAXED](#SXBR_BLOCKED_FUNCTIONS_RELAXED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_DUPLICATE_PK_WITHIN_BATCH](#SXBR_DUPLICATE_PK_WITHIN_BATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_EXTRA_IDS_FROM_PARTIAL_SYNC](#SXBR_EXTRA_IDS_FROM_PARTIAL_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_INTEGRATION_ERROR](#SXBR_INTEGRATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_INTEGRATION_ERROR_PARTIAL_SYNC](#SXBR_INTEGRATION_ERROR_PARTIAL_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_INVALID_RULE_INPUT](#SXBR_INVALID_RULE_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_INVALID_RULE_INPUT_NO_PAGING_WITH_LAST_SYNC_TIME](#SXBR_INVALID_RULE_INPUT_NO_PAGING_WITH_LAST_SYNC_TIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_INVALID_RULE_INPUT_PAGING_WITH_LAST_SYNC_TIME](#SXBR_INVALID_RULE_INPUT_PAGING_WITH_LAST_SYNC_TIME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_INVALID_TRANSFORMATION_RETURN](#SXBR_INVALID_TRANSFORMATION_RETURN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_INVALID_TRANSFORMATION_RULE_INPUT](#SXBR_INVALID_TRANSFORMATION_RULE_INPUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_NON_SYSTEM_RULE_SOURCE_CONTEXT_BINDING](#SXBR_NON_SYSTEM_RULE_SOURCE_CONTEXT_BINDING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_RESULT_INVALID_TYPE](#SXBR_RESULT_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_RESULT_INVALID_TYPE_PARTIAL_SYNC](#SXBR_RESULT_INVALID_TYPE_PARTIAL_SYNC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_SAME_DATA_ACROSS_BATCHES](#SXBR_SAME_DATA_ACROSS_BATCHES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SXBR_TRANSFORMATION_BLOCKED_FUNCTIONS](#SXBR_TRANSFORMATION_BLOCKED_FUNCTIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SYS_APP_IMPORT_FAILED](#SYS_APP_IMPORT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SYSTEM_DOCUMENT_RECORD_TYPE_NOT_FOUND](#SYSTEM_DOCUMENT_RECORD_TYPE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SYSTEM_FOLDER_COVER_PHOTOS_CREATION_ERROR](#SYSTEM_FOLDER_COVER_PHOTOS_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SYSTEM_FOLDER_RECORD_TYPES_CREATION_ERROR](#SYSTEM_FOLDER_RECORD_TYPES_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[SYSTEM_FOLDER_TEMPO_ATTACHMENTS_CREATION_ERROR](#SYSTEM_FOLDER_TEMPO_ATTACHMENTS_CREATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TASK_INSUFFICIENT_PRIVILEGES](#TASK_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TASK_NO_LONGER_EXISTS](#TASK_NO_LONGER_EXISTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TASK_SUBMISSION_NOT_OWNER](#TASK_SUBMISSION_NOT_OWNER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TASK_URL_DECRYPTION_ERROR](#TASK_URL_DECRYPTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ACTION_INSTRUCTIONS_TOO_LONG](#TEMPO_ENGINE_ACTION_INSTRUCTIONS_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ACTION_LABEL_TOO_LONG](#TEMPO_ENGINE_ACTION_LABEL_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ACTION_SUMMARY_TOO_LONG](#TEMPO_ENGINE_ACTION_SUMMARY_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ADD_COMMENT_FAILED](#TEMPO_ENGINE_ADD_COMMENT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ADD_ENTRY_FAILED](#TEMPO_ENGINE_ADD_ENTRY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ADD_PARTICIPANTS_FAILED](#TEMPO_ENGINE_ADD_PARTICIPANTS_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ADD_SUBSCRIPTION_FAILED](#TEMPO_ENGINE_ADD_SUBSCRIPTION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ALREADY_PARENTED](#TEMPO_ENGINE_ALREADY_PARENTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ALREADY_PERSISTED](#TEMPO_ENGINE_ALREADY_PERSISTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_AUTHOR_MISSING](#TEMPO_ENGINE_AUTHOR_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_AUTHOR_TOO_LONG](#TEMPO_ENGINE_AUTHOR_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_BAD_TIMESTAMP](#TEMPO_ENGINE_BAD_TIMESTAMP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_BODYTEXT_MISSING](#TEMPO_ENGINE_BODYTEXT_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_BODYTEXT_TOO_LONG](#TEMPO_ENGINE_BODYTEXT_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_CLOSE_SOCIAL_TASK_FAILED](#TEMPO_ENGINE_CLOSE_SOCIAL_TASK_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_DATA_SOURCE_NOT_CONFIGURED](#TEMPO_ENGINE_DATA_SOURCE_NOT_CONFIGURED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_DELETE_ENTRY_FAILED](#TEMPO_ENGINE_DELETE_ENTRY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_ENTRY_NOT_ACCESSIBLE](#TEMPO_ENGINE_ENTRY_NOT_ACCESSIBLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_FEED_ENTRY_DOES_NOT_EXIST](#TEMPO_ENGINE_FEED_ENTRY_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_FEED_ENTRY_INSUFFICIENT_PRIVILEGES](#TEMPO_ENGINE_FEED_ENTRY_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_FEED_INSUFFICIENT_PRIVILEGES](#TEMPO_ENGINE_FEED_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_FEED_NOT_FOUND](#TEMPO_ENGINE_FEED_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_FEED_REQUIRED](#TEMPO_ENGINE_FEED_REQUIRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_GENERAL_FAILURE](#TEMPO_ENGINE_GENERAL_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_GET_ENTRY_FAILED](#TEMPO_ENGINE_GET_ENTRY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_GET_FEED_BY_UUID_FAILED](#TEMPO_ENGINE_GET_FEED_BY_UUID_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_INVALID_FILE_ATTACHMENTS](#TEMPO_ENGINE_INVALID_FILE_ATTACHMENTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_QUERY_FAILED](#TEMPO_ENGINE_QUERY_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_REMOVE_SUBSCRIPTION_FAILED](#TEMPO_ENGINE_REMOVE_SUBSCRIPTION_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_SOCIAL_TASK_ALREADY_CLOSED](#TEMPO_ENGINE_SOCIAL_TASK_ALREADY_CLOSED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_SOCIAL_TASK_DOES_NOT_EXIST](#TEMPO_ENGINE_SOCIAL_TASK_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_SOCIAL_TASK_NOT_ACCESSIBLE](#TEMPO_ENGINE_SOCIAL_TASK_NOT_ACCESSIBLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_SOCIAL_TASK_REQUIRES_ASSIGNEE](#TEMPO_ENGINE_SOCIAL_TASK_REQUIRES_ASSIGNEE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_ENGINE_SOURCE_TOO_LONG](#TEMPO_ENGINE_SOURCE_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_FEEDS_DELETE_GENERAL](#TEMPO_FEEDS_DELETE_GENERAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_FEEDS_DELETE_NOTHING_SELECTED](#TEMPO_FEEDS_DELETE_NOTHING_SELECTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_FEEDS_GENERAL_FAILURE](#TEMPO_FEEDS_GENERAL_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEMPO_FEEDS_SECURITY_UPDATE_FAILED](#TEMPO_FEEDS_SECURITY_UPDATE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_INVALID_APP_UUID](#TEST_SERVICE_INVALID_APP_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_INVALID_ID_TEST_RUN](#TEST_SERVICE_INVALID_ID_TEST_RUN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_INVALID_ID_TEST_STATUS](#TEST_SERVICE_INVALID_ID_TEST_STATUS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_INVALID_JOB](#TEST_SERVICE_INVALID_JOB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_INVALID_UUID](#TEST_SERVICE_INVALID_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_NO_PERMISSIONS](#TEST_SERVICE_NO_PERMISSIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_NON_APPLICATION_UUID](#TEST_SERVICE_NON_APPLICATION_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_NON_DESIGNER](#TEST_SERVICE_NON_DESIGNER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_NULL_PARAMETER](#TEST_SERVICE_NULL_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TEST_SERVICE_TIMEOUT](#TEST_SERVICE_TIMEOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TIMEZONE_NOT_SET_TO_GMT](#TIMEZONE_NOT_SET_TO_GMT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TO_EXPRESSION_CANNOT_CONVERT_SYSTEM_TYPE](#TO_EXPRESSION_CANNOT_CONVERT_SYSTEM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TO_JSON_CANNOT_CONVERT_TYPE](#TO_JSON_CANNOT_CONVERT_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TO_JSON_SERIALIZATION](#TO_JSON_SERIALIZATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TO_JSON_SERIALIZATION_16_1](#TO_JSON_SERIALIZATION_16_1)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TO_XML_CANNOT_CONVERT_SYSTEM_TYPE](#TO_XML_CANNOT_CONVERT_SYSTEM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSACTIONAL_REACTION_BEGIN_FAILED](#TRANSACTIONAL_REACTION_BEGIN_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSACTIONAL_REACTION_COMMIT_FAILED](#TRANSACTIONAL_REACTION_COMMIT_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSACTIONAL_REACTION_ROLLBACK_FAILED](#TRANSACTIONAL_REACTION_ROLLBACK_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_SET_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#TRANSLATION_SET_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_BAD_EXTENSION](#TRANSLATION_STRING_IMPORT_BAD_EXTENSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_CHARACTER_LIMIT](#TRANSLATION_STRING_IMPORT_CHARACTER_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_DESCRIPTION_NOTES_CHARACTER_LIMIT](#TRANSLATION_STRING_IMPORT_DESCRIPTION_NOTES_CHARACTER_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_FILE_EMPTY](#TRANSLATION_STRING_IMPORT_FILE_EMPTY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_MISMATCH_UUID](#TRANSLATION_STRING_IMPORT_MISMATCH_UUID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_MISSING_HEADERS](#TRANSLATION_STRING_IMPORT_MISSING_HEADERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_MISSING_PRIMARY_LOCALE](#TRANSLATION_STRING_IMPORT_MISSING_PRIMARY_LOCALE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_IMPORT_STRING_LIMIT](#TRANSLATION_STRING_IMPORT_STRING_LIMIT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_KEY_NOT_AVAILABLE](#TRANSLATION_STRING_KEY_NOT_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_KEY_NOT_VARIABLE_REFERENCE](#TRANSLATION_STRING_KEY_NOT_VARIABLE_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_MISSING_PRIMARY_LOCALE_VALUE](#TRANSLATION_STRING_MISSING_PRIMARY_LOCALE_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#TRANSLATION_STRING_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_STRING_VARIABLES_LIMIT_VALIDATION](#TRANSLATION_STRING_VARIABLES_LIMIT_VALIDATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_UNABLE_TO_MOVE_FAILURE](#TRANSLATION_UNABLE_TO_MOVE_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_VARIABLE_MISSING_IN_PRIMARY_LOCALE_UPDATE](#TRANSLATION_VARIABLE_MISSING_IN_PRIMARY_LOCALE_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TRANSLATION_VARIABLE_NOT_DEFINED_IN_PRIMARY_LOCALE](#TRANSLATION_VARIABLE_NOT_DEFINED_IN_PRIMARY_LOCALE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TV_TO_ECORE_DUPLICATE_FIELDS_UNSUPPORTED](#TV_TO_ECORE_DUPLICATE_FIELDS_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TV_TO_ECORE_ERROR](#TV_TO_ECORE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE](#TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_AMBIGUOUS](#TYPE_AMBIGUOUS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DB_INACCESSIBLE](#TYPE_DB_INACCESSIBLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DB_TYPE_LOAD_ERROR](#TYPE_DB_TYPE_LOAD_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DB_TYPE_NOT_FOUND](#TYPE_DB_TYPE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DB_TYPE_SAVE_ERROR](#TYPE_DB_TYPE_SAVE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DB_UPDATE_UNEXPECTED_ERROR](#TYPE_DB_UPDATE_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DB_VALIDATE_UNEXPECTED_ERROR](#TYPE_DB_VALIDATE_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DEACTIVATE_ALREADY_DEACTIVATED](#TYPE_DEACTIVATE_ALREADY_DEACTIVATED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DEACTIVATE_ERROR](#TYPE_DEACTIVATE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DEACTIVATE_PRIVILEGES](#TYPE_DEACTIVATE_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DEACTIVATED_TYPE](#TYPE_DEACTIVATED_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DEACTIVATED_UPDATED_FOR_APP](#TYPE_DEACTIVATED_UPDATED_FOR_APP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_DELETED_AFTER_SAVE_ERROR](#TYPE_DELETED_AFTER_SAVE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_EXPORT_NOT_SUPPORTED](#TYPE_EXPORT_NOT_SUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_ID_TO_NAMESPACE_CONVERSION](#TYPE_ID_TO_NAMESPACE_CONVERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_IMPORT_DTD_XSD_COMPARISON_ERROR](#TYPE_IMPORT_DTD_XSD_COMPARISON_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_IMPORT_PRE_EXISTING_TYPE](#TYPE_IMPORT_PRE_EXISTING_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_IMPORT_PRE_EXISTING_TYPE_ERROR](#TYPE_IMPORT_PRE_EXISTING_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_INVALID_NAMESPACE_ID](#TYPE_INVALID_NAMESPACE_ID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_INVALID_PARTIAL_XSD](#TYPE_INVALID_PARTIAL_XSD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_INVALID_REFERENCE](#TYPE_INVALID_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_INVALID_REFERENCE_ACP](#TYPE_INVALID_REFERENCE_ACP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_INVALID_REFERENCE_MAPPING](#TYPE_INVALID_REFERENCE_MAPPING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_INVALID_REFERENCE_PV](#TYPE_INVALID_REFERENCE_PV)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_LIST_TYPE_NOT_FOUND](#TYPE_LIST_TYPE_NOT_FOUND)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_NAMESPACE_TO_ID_CONVERSION](#TYPE_NAMESPACE_TO_ID_CONVERSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_NO_DB_TYPE_DEFINITION](#TYPE_NO_DB_TYPE_DEFINITION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION](#TYPE_VALIDATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_ANYLINK_INVALID_LINK_TYPE](#TYPE_VALIDATION_ANYLINK_INVALID_LINK_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_ANYLINK_LINKS_INCLUDES_NULL](#TYPE_VALIDATION_ANYLINK_LINKS_INCLUDES_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_ANYLINKFIELD_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_ANYLINKFIELD_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_APPLICATION_HEADER_LAYOUT_INCLUDES_INVALID_TYPE](#TYPE_VALIDATION_APPLICATION_HEADER_LAYOUT_INCLUDES_INVALID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_BAR_INVALID_LINK](#TYPE_VALIDATION_BAR_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_BARCHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_BARCHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_BUTTON_LAYOUT_PRIMARY_BUTTONS_CONTAINING_NULL](#TYPE_VALIDATION_BUTTON_LAYOUT_PRIMARY_BUTTONS_CONTAINING_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_BUTTON_LAYOUT_SECONDARY_BUTTONS_CONTAINING_NULL](#TYPE_VALIDATION_BUTTON_LAYOUT_SECONDARY_BUTTONS_CONTAINING_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_BUTTON_WIDGET_INVALID_STYLE](#TYPE_VALIDATION_BUTTON_WIDGET_INVALID_STYLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_ARRAY_LAYOUT_COLUMNS_CONTAINING_NULL](#TYPE_VALIDATION_COLUMN_ARRAY_LAYOUT_COLUMNS_CONTAINING_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_ARRAY_LAYOUT_COLUMNS_NULL](#TYPE_VALIDATION_COLUMN_ARRAY_LAYOUT_COLUMNS_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_INVALID_LINK](#TYPE_VALIDATION_COLUMN_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_COLUMN_ARRAY_LAYOUT](#TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_COLUMN_ARRAY_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_COLUMN_LAYOUT](#TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_COLUMN_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_CONTAINING_NULL](#TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_CONTAINING_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_FORM_LAYOUT](#TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_FORM_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_ILLEGAL_UI](#TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_ILLEGAL_UI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_NON_UI](#TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_NON_UI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_NULL](#TYPE_VALIDATION_COLUMN_LAYOUT_CONTENTS_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_COLUMNCHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_COLUMNCHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_DATEPICKERFIELD_INVALID_VALUE_TYPE](#TYPE_VALIDATION_DATEPICKERFIELD_INVALID_VALUE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_DATETIMEPICKERFIELD_INVALID_VALUE_TYPE](#TYPE_VALIDATION_DATETIMEPICKERFIELD_INVALID_VALUE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_EXPR_DESIGNER_HEADER_COLUMN_ARRAY_NULL](#TYPE_VALIDATION_EXPR_DESIGNER_HEADER_COLUMN_ARRAY_NULL)`

    Deprecated.

    Type no longer exists

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_COLUMN_ALIGNMENT](#TYPE_VALIDATION_GRID_COLUMN_ALIGNMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_COLUMN_INVALID_DATA](#TYPE_VALIDATION_GRID_COLUMN_INVALID_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_COLUMN_TEXT_LINK_NULL_TASK](#TYPE_VALIDATION_GRID_COLUMN_TEXT_LINK_NULL_TASK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_COLUMN_TEXT_LINK_NULL_URI](#TYPE_VALIDATION_GRID_COLUMN_TEXT_LINK_NULL_URI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_GRID_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_IDENTIFIERS_COUNT_NOT_EQUAL_ROW_COUNT](#TYPE_VALIDATION_GRID_IDENTIFIERS_COUNT_NOT_EQUAL_ROW_COUNT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_IDENTIFIERS_GREATER_THAN_BATCH_SIZE](#TYPE_VALIDATION_GRID_IDENTIFIERS_GREATER_THAN_BATCH_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_IDENTIFIERS_INCLUDES_NULL](#TYPE_VALIDATION_GRID_IDENTIFIERS_INCLUDES_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_IDENTIFIERS_INVALID_ENTRY_TYPE](#TYPE_VALIDATION_GRID_IDENTIFIERS_INVALID_ENTRY_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_INVALID_COLUMNS](#TYPE_VALIDATION_GRID_INVALID_COLUMNS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_INVALID_DATA](#TYPE_VALIDATION_GRID_INVALID_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_INVALID_TOTAL_COUNT](#TYPE_VALIDATION_GRID_INVALID_TOTAL_COUNT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_INVALID_VALUE](#TYPE_VALIDATION_GRID_INVALID_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_INVALID_VALUE_AND_TOTAL_COUNT](#TYPE_VALIDATION_GRID_INVALID_VALUE_AND_TOTAL_COUNT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_INVALID_VALUE_BATCH_SIZE](#TYPE_VALIDATION_GRID_INVALID_VALUE_BATCH_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_INVALID_VALUE_START_INDEX](#TYPE_VALIDATION_GRID_INVALID_VALUE_START_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_LAYOUT_COLUMN_INVALID_COMPONENT](#TYPE_VALIDATION_GRID_LAYOUT_COLUMN_INVALID_COMPONENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_LAYOUT_COLUMN_MULTIPLE_COMPONENTS_UNSUPPORTED](#TYPE_VALIDATION_GRID_LAYOUT_COLUMN_MULTIPLE_COMPONENTS_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_LAYOUT_COLUMN_UNSUPPORTED_COMPONENT](#TYPE_VALIDATION_GRID_LAYOUT_COLUMN_UNSUPPORTED_COMPONENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_LINK_NULL_URI](#TYPE_VALIDATION_GRID_LINK_NULL_URI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_MORE_DATA_THAN_BATCH](#TYPE_VALIDATION_GRID_MORE_DATA_THAN_BATCH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_NULL_COLUMNS](#TYPE_VALIDATION_GRID_NULL_COLUMNS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_NULL_IDENTIFIERS](#TYPE_VALIDATION_GRID_NULL_IDENTIFIERS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_NULL_VALUE](#TYPE_VALIDATION_GRID_NULL_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_SELECTED_INCLUDES_NULL](#TYPE_VALIDATION_GRID_SELECTED_INCLUDES_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_SELECTED_INVALID_ENTRY_TYPE](#TYPE_VALIDATION_GRID_SELECTED_INVALID_ENTRY_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_TEXT_COLUMN_INVALID_DATA](#TYPE_VALIDATION_GRID_TEXT_COLUMN_INVALID_DATA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRID_VALUE_START_INDEX_AND_BATCH_SIZE](#TYPE_VALIDATION_GRID_VALUE_START_INDEX_AND_BATCH_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_EXPECTED_ROW_LAYOUT](#TYPE_VALIDATION_GRIDLAYOUT_EXPECTED_ROW_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_HEADER_TEXT](#TYPE_VALIDATION_GRIDLAYOUT_HEADER_TEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_INVALID_CHECKBOX_ID_TYPE](#TYPE_VALIDATION_GRIDLAYOUT_INVALID_CHECKBOX_ID_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_INVALID_GRIDCOLUMNWIDTH](#TYPE_VALIDATION_GRIDLAYOUT_INVALID_GRIDCOLUMNWIDTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_INVALID_GRIDCOLUMNWIDTH_FOR_GALLERY](#TYPE_VALIDATION_GRIDLAYOUT_INVALID_GRIDCOLUMNWIDTH_FOR_GALLERY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_INVALID_GRIDCOLUMNWIDTH_FOR_THUMBNAIL](#TYPE_VALIDATION_GRIDLAYOUT_INVALID_GRIDCOLUMNWIDTH_FOR_THUMBNAIL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_INVALID_ROW_SIZE](#TYPE_VALIDATION_GRIDLAYOUT_INVALID_ROW_SIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_MORE_THAN_ONE_ROW_FOR_HEADER](#TYPE_VALIDATION_GRIDLAYOUT_MORE_THAN_ONE_ROW_FOR_HEADER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_GRIDLAYOUT_UNSUPPORTED_COMPONENT](#TYPE_VALIDATION_GRIDLAYOUT_UNSUPPORTED_COMPONENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_IMAGE_LINK_IS_NONEMPTY_LIST](#TYPE_VALIDATION_IMAGE_LINK_IS_NONEMPTY_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_COLUMN_ARRAY_LAYOUT](#TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_COLUMN_ARRAY_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_COLUMN_LAYOUT](#TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_COLUMN_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_CONTAINING_NULL](#TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_CONTAINING_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_FORM_LAYOUT](#TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_FORM_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_ILLEGAL_UI](#TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_ILLEGAL_UI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_NON_UI](#TYPE_VALIDATION_INJECTED_COLUMN_LAYOUT_CONTENTS_NON_UI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_INVALID_IMAGE_LINK_TYPE](#TYPE_VALIDATION_INVALID_IMAGE_LINK_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINE_INVALID_LINK](#TYPE_VALIDATION_LINE_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINECHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_LINECHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINK_NULL_LINK](#TYPE_VALIDATION_LINK_NULL_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINK_NULL_LINK_ARRAY](#TYPE_VALIDATION_LINK_NULL_LINK_ARRAY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINK_NULL_PROCESS_MODEL](#TYPE_VALIDATION_LINK_NULL_PROCESS_MODEL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINK_NULL_TASK](#TYPE_VALIDATION_LINK_NULL_TASK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINK_NULL_URI](#TYPE_VALIDATION_LINK_NULL_URI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_LINKEDITEM_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_LINKEDITEM_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MASTER_DETAIL_LAYOUT_NULL_FIELD](#TYPE_VALIDATION_MASTER_DETAIL_LAYOUT_NULL_FIELD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MENULAYOUT_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_MENULAYOUT_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MENULAYOUT_INSERT_DIVIDER_AFTER_INDICES_WITHOUT_CONTENTS](#TYPE_VALIDATION_MENULAYOUT_INSERT_DIVIDER_AFTER_INDICES_WITHOUT_CONTENTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MENULAYOUT_INVALID_INSERT_DIVIDER_AFTER_INDEX](#TYPE_VALIDATION_MENULAYOUT_INVALID_INSERT_DIVIDER_AFTER_INDEX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MENULAYOUT_INVALID_LINK_TYPE](#TYPE_VALIDATION_MENULAYOUT_INVALID_LINK_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MENULAYOUT_LINKS_INCLUDES_NULL](#TYPE_VALIDATION_MENULAYOUT_LINKS_INCLUDES_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MILESTONE_FIELD_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_MILESTONE_FIELD_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_MILESTONE_FIELD_INVALID_LINK_TYPE](#TYPE_VALIDATION_MILESTONE_FIELD_INVALID_LINK_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_PICKERFIELD_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_PICKERFIELD_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_PICKERFIELD_INVALID_LINK_TYPE](#TYPE_VALIDATION_PICKERFIELD_INVALID_LINK_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_PIE_INVALID_LINK](#TYPE_VALIDATION_PIE_INVALID_LINK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_PIECHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL](#TYPE_VALIDATION_PIECHART_DOCUMENT_DOWNLOAD_LINK_DOCUMENT_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_SECTION_LAYOUT_CONTAINS_SECTION_LAYOUT](#TYPE_VALIDATION_SECTION_LAYOUT_CONTAINS_SECTION_LAYOUT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_SELECTABLE_ITEM_LIST_FIELD_INVALID_CHOICES](#TYPE_VALIDATION_SELECTABLE_ITEM_LIST_FIELD_INVALID_CHOICES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_SELECTABLE_ITEM_LIST_FIELD_INVALID_VALUE](#TYPE_VALIDATION_SELECTABLE_ITEM_LIST_FIELD_INVALID_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_TOOLBAR_LAYOUT_BUTTONS_INCLUDES_NULL](#TYPE_VALIDATION_TOOLBAR_LAYOUT_BUTTONS_INCLUDES_NULL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[TYPE_VALIDATION_TOOLBAR_LAYOUT_INVALID_BUTTON_TYPE](#TYPE_VALIDATION_TOOLBAR_LAYOUT_INVALID_BUTTON_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UI_CONTAINER_INVALID_URL_STUB](#UI_CONTAINER_INVALID_URL_STUB)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UI_CONTAINER_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#UI_CONTAINER_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UI_SERVICE_CANNOT_CREATE_CONTEXT](#UI_SERVICE_CANNOT_CREATE_CONTEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UI_SERVICE_CANNOT_INTERPRET_CONTEXT](#UI_SERVICE_CANNOT_INTERPRET_CONTEXT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNABLE_TO_DETERMINE_DATABASE_TYPE](#UNABLE_TO_DETERMINE_DATABASE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNEXPECTED_ADS_QUERY_ERROR_GENERIC](#UNEXPECTED_ADS_QUERY_ERROR_GENERIC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNEXPECTED_SEMANTIC_SEARCH_RUNTIME_ERROR](#UNEXPECTED_SEMANTIC_SEARCH_RUNTIME_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNEXPECTED_SEMANTIC_SEARCH_VALIDATION_ERROR](#UNEXPECTED_SEMANTIC_SEARCH_VALIDATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNPARSEABLE_XML](#UNPARSEABLE_XML)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNRECOGNIZABLE_THUMBNAIL_TYPE](#UNRECOGNIZABLE_THUMBNAIL_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNREFERENCED_OBJECTS_GENERIC_ERROR](#UNREFERENCED_OBJECTS_GENERIC_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNSAFE_URI](#UNSAFE_URI)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNSUCCESSFUL_FILE_SUBMISSION](#UNSUCCESSFUL_FILE_SUBMISSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNSUPPORTED_CHILD_NODE](#UNSUPPORTED_CHILD_NODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNSUPPORTED_WSDL](#UNSUPPORTED_WSDL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNSUPPORTED_WSDL_MISSING_TOKEN](#UNSUPPORTED_WSDL_MISSING_TOKEN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNSUPPORTED_WSDL_UNKNOWN](#UNSUPPORTED_WSDL_UNKNOWN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UNSUPPORTED_WSDL_WS_I](#UNSUPPORTED_WSDL_WS_I)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_ACTIVITY](#UPDATE_ACTIVITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_ADDRESS_DISABLED](#UPDATE_ADDRESS_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_BLURB_DISABLED](#UPDATE_BLURB_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_CITY_DISABLED](#UPDATE_CITY_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_COUNTRY_DISABLED](#UPDATE_COUNTRY_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_DATA_PARAM_TYPE](#UPDATE_DATA_PARAM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_DISPLAY_NAME_DISABLED](#UPDATE_DISPLAY_NAME_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_EMAIL_DISABLED](#UPDATE_EMAIL_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_FIRST_NAME_DISABLED](#UPDATE_FIRST_NAME_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_GROUP_ACT_INVALID_GROUP](#UPDATE_GROUP_ACT_INVALID_GROUP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_GROUP_ACT_PRIVILEGE_EXCEPTION](#UPDATE_GROUP_ACT_PRIVILEGE_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_GROUP_ACT_RECURSIVE_RELATIONSHIP_EXCEPTION](#UPDATE_GROUP_ACT_RECURSIVE_RELATIONSHIP_EXCEPTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_KEY_PARAM_TYPE](#UPDATE_KEY_PARAM_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_LAST_NAME_DISABLED](#UPDATE_LAST_NAME_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_MIDDLE_NAME_DISABLED](#UPDATE_MIDDLE_NAME_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_MOBILE_PHONE_DISABLED](#UPDATE_MOBILE_PHONE_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_OFFICE_PHONE_DISABLED](#UPDATE_OFFICE_PHONE_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_QUOTA](#UPDATE_QUOTA)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_QUOTA_INSUFFICIENT_PRIVILEGES](#UPDATE_QUOTA_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_STATE_DISABLED](#UPDATE_STATE_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_SUPERVISOR_DISABLED](#UPDATE_SUPERVISOR_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_TITLE_DISABLED](#UPDATE_TITLE_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[UPDATE_ZIPCODE_DISABLED](#UPDATE_ZIPCODE_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_DEFAULT_VALUE_ERROR_KEY](#URL_DEFAULT_VALUE_ERROR_KEY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PAGE_DECRYPTION_ERROR](#URL_FOR_PAGE_DECRYPTION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PAGE_ERROR_OCCURRED](#URL_FOR_PAGE_ERROR_OCCURRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_FAILURE](#URL_FOR_PORTAL_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_INPUT_TOO_LONG](#URL_FOR_PORTAL_INPUT_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_INVALID_GROUP_REFERENCE](#URL_FOR_PORTAL_INVALID_GROUP_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_INVALID_INPUTS](#URL_FOR_PORTAL_INVALID_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_INVALID_PORTAL](#URL_FOR_PORTAL_INVALID_PORTAL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_INVALID_PORTAL_PAGE](#URL_FOR_PORTAL_INVALID_PORTAL_PAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_LOCALE_NOT_IN_ENABLED_LIST](#URL_FOR_PORTAL_LOCALE_NOT_IN_ENABLED_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_NO_PORTAL_REFERENCE](#URL_FOR_PORTAL_NO_PORTAL_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_PAGE_MISSING](#URL_FOR_PORTAL_PAGE_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_PLAINTEXT_NOT_ENABLED_INPUTS](#URL_FOR_PORTAL_PLAINTEXT_NOT_ENABLED_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_PORTAL_TOO_MANY_INPUTS](#URL_FOR_PORTAL_TOO_MANY_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_RECORD_INVALID_LIST_VALUE](#URL_FOR_RECORD_INVALID_LIST_VALUE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_RECORD_INVALID_RECORD_TYPE_LENGTH](#URL_FOR_RECORD_INVALID_RECORD_TYPE_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_RECORD_INVALID_RECORD_TYPE_REFERENCE](#URL_FOR_RECORD_INVALID_RECORD_TYPE_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_RECORD_INVALID_TARGET_LOCATION](#URL_FOR_RECORD_INVALID_TARGET_LOCATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_RECORD_INVALID_TARGET_LOCATION_LENGTH](#URL_FOR_RECORD_INVALID_TARGET_LOCATION_LENGTH)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_RECORD_MISSING_PARAMETER](#URL_FOR_RECORD_MISSING_PARAMETER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_RECORD_RECORD_IDS_REQUIRED_FOR_SITE_PAGES](#URL_FOR_RECORD_RECORD_IDS_REQUIRED_FOR_SITE_PAGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_FAILURE](#URL_FOR_SITE_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_INPUT_TOO_LONG](#URL_FOR_SITE_INPUT_TOO_LONG)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_INVALID_GROUP_REFERENCE](#URL_FOR_SITE_INVALID_GROUP_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_INVALID_INPUTS](#URL_FOR_SITE_INVALID_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_INVALID_SITE](#URL_FOR_SITE_INVALID_SITE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_INVALID_SITE_PAGE](#URL_FOR_SITE_INVALID_SITE_PAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_NO_SITE_REFERENCE](#URL_FOR_SITE_NO_SITE_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_NON_INTERFACE_PAGE](#URL_FOR_SITE_NON_INTERFACE_PAGE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_PAGE_MISSING](#URL_FOR_SITE_PAGE_MISSING)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_PLAINTEXT_NOT_ENABLED_INPUTS](#URL_FOR_SITE_PLAINTEXT_NOT_ENABLED_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_SITE_TOO_MANY_INPUTS](#URL_FOR_SITE_TOO_MANY_INPUTS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URL_FOR_TASK_NULL_TASK](#URL_FOR_TASK_NULL_TASK)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_CANNOT_GENERATE_PERFORMANCE_VIEW](#URT_CANNOT_GENERATE_PERFORMANCE_VIEW)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE](#URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE](#URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE](#URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_UNEXPECTED_ERROR](#URT_COLLECTION_DISABLED_CONNECTED_ENVIRONMENT_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_ENDPOINTS_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE](#URT_ENDPOINTS_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_ENDPOINTS_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE](#URT_ENDPOINTS_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_ENDPOINTS_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#URT_ENDPOINTS_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_ENDPOINTS_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE](#URT_ENDPOINTS_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_ENDPOINTS_CONNECTED_ENVIRONMENT_QUERY_FAILURE](#URT_ENDPOINTS_CONNECTED_ENVIRONMENT_QUERY_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_ENDPOINTS_CONNECTED_ENVIRONMENT_URT_DISABLED](#URT_ENDPOINTS_CONNECTED_ENVIRONMENT_URT_DISABLED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_METRICS_OBJECT_DOES_NOT_EXIST](#URT_METRICS_OBJECT_DOES_NOT_EXIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE](#URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE](#URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE](#URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_QUERY_FAILURE](#URT_PERFORMANCE_VIEW_CONNECTED_ENVIRONMENT_QUERY_FAILURE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE](#URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_CANT_DESERIALIZE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE](#URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_INVALID_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_INVALID_RESPONSE](#URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE](#URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_MISSING_ERROR_CODE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_UNEXPECTED_ERROR](#URT_TIMES_FOR_ENDPOINT_CONNECTED_ENVIRONMENT_UNEXPECTED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[USER_FILTER_HAS_EXPRESSION_ERROR](#USER_FILTER_HAS_EXPRESSION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[USER_FRIENDLY_ERROR](#USER_FRIENDLY_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[USER_INSUFFICIENT_PRIVILEGES_TO_ACCESS](#USER_INSUFFICIENT_PRIVILEGES_TO_ACCESS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_COMMUNITY_PROPS](#VIEW_COMMUNITY_PROPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_COMMUNITY_PROPS_INSUFFICIENT_PRIVILEGES](#VIEW_COMMUNITY_PROPS_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_COMMUNITY_PROPS_INVALID_COMMUNITY](#VIEW_COMMUNITY_PROPS_INVALID_COMMUNITY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_COMMUNITY_PROPS_UPDATE](#VIEW_COMMUNITY_PROPS_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_COMMUNITY_PROPS_UPDATE_PRIVILEGES](#VIEW_COMMUNITY_PROPS_UPDATE_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_DOC_PROPS](#VIEW_DOC_PROPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_DOC_PROPS_INSUFFICIENT_PRIVILEGES](#VIEW_DOC_PROPS_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_DOC_PROPS_INVALID_DOC](#VIEW_DOC_PROPS_INVALID_DOC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_DOC_PROPS_UPDATE](#VIEW_DOC_PROPS_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_DOC_PROPS_UPDATE_PRIVILEGES](#VIEW_DOC_PROPS_UPDATE_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FILE_EXP](#VIEW_FILE_EXP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FILE_EXP_INSUFFICIENT_PRIVILEGES](#VIEW_FILE_EXP_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FILE_EXP_INVALID_CONTENT](#VIEW_FILE_EXP_INVALID_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FOLDER_PROPS](#VIEW_FOLDER_PROPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FOLDER_PROPS_INSUFFICIENT_PRIVILEGES](#VIEW_FOLDER_PROPS_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FOLDER_PROPS_INVALID_FOLDER](#VIEW_FOLDER_PROPS_INVALID_FOLDER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FOLDER_PROPS_UPDATE](#VIEW_FOLDER_PROPS_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_FOLDER_PROPS_UPDATE_PRIVILEGES](#VIEW_FOLDER_PROPS_UPDATE_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_KC_PROPS](#VIEW_KC_PROPS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_KC_PROPS_INSUFFICIENT_PRIVILEGES](#VIEW_KC_PROPS_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_KC_PROPS_INVALID_KC](#VIEW_KC_PROPS_INVALID_KC)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_KC_PROPS_UPDATE](#VIEW_KC_PROPS_UPDATE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_KC_PROPS_UPDATE_PRIVILEGES](#VIEW_KC_PROPS_UPDATE_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[VIEW_REPORT_GENERAL_ERROR](#VIEW_REPORT_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WAITING_ON_ANALYSIS_GENERAL_ERROR](#WAITING_ON_ANALYSIS_GENERAL_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_AUTHENTICATION_ERROR](#WEB_API_AUTHENTICATION_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_BAD_CREDENTIALS_ERROR](#WEB_API_BAD_CREDENTIALS_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_CREDENTIALS_EXPIRED_ERROR](#WEB_API_CREDENTIALS_EXPIRED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_EXISTING_SESSION_ERROR](#WEB_API_EXISTING_SESSION_ERROR)`

    Used when a webapi is accessed both using a Key and JSESSION cookie

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_LOCKED_ACCOUNT_ERROR](#WEB_API_LOCKED_ACCOUNT_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_MOBILE_NEWER_CLIENT_VERSION_REQUIRED](#WEB_API_MOBILE_NEWER_CLIENT_VERSION_REQUIRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_TEMPORARY_PASSWORD_ERROR](#WEB_API_TEMPORARY_PASSWORD_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_API_TEMPORARY_PASSWORD_EXPIRED_ERROR](#WEB_API_TEMPORARY_PASSWORD_EXPIRED_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_RESPONSE_ERROR](#WEB_RESPONSE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_SECURITY_NULL_BYTE_REQUEST](#WEB_SECURITY_NULL_BYTE_REQUEST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEB_SECURITY_UNSUPPORTED_METHOD](#WEB_SECURITY_UNSUPPORTED_METHOD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_DUPLICATE_ALIAS_METHOD_ENDPOINT](#WEBAPI_DUPLICATE_ALIAS_METHOD_ENDPOINT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_DUPLICATE_NAME_ENDPOINT](#WEBAPI_DUPLICATE_NAME_ENDPOINT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_INVALID_HEADER_SET](#WEBAPI_INVALID_HEADER_SET)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_METHOD_DOES_NOT_SUPPORT_REACTIONS](#WEBAPI_METHOD_DOES_NOT_SUPPORT_REACTIONS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_MUST_RETURN_WEB_API_RESPONSE](#WEBAPI_MUST_RETURN_WEB_API_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_NOT_FOUND_INSUFFICIENT_PRIVILEGES](#WEBAPI_NOT_FOUND_INSUFFICIENT_PRIVILEGES)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_RESPONSE_WITH_DOCUMENT_AND_BODY](#WEBAPI_RESPONSE_WITH_DOCUMENT_AND_BODY)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WEBAPI_RETURNED_EMPTY_RESPONSE](#WEBAPI_RETURNED_EMPTY_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WRONG_FILTER_OPERATOR_FOR_SIMILARITY_SCORE](#WRONG_FILTER_OPERATOR_FOR_SIMILARITY_SCORE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS](#WS)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_CONFIGURATION](#WS_CONFIGURATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_IMPORTER_ENDPOINT_UNDEFINED](#WS_IMPORTER_ENDPOINT_UNDEFINED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_IMPORTER_OPERATION_UNDEFINED](#WS_IMPORTER_OPERATION_UNDEFINED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_IMPORTER_SERVICE_UNDEFINED](#WS_IMPORTER_SERVICE_UNDEFINED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_IMPORTER_UNKNOWN](#WS_IMPORTER_UNKNOWN)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_INVALID_OPERATION](#WS_INVALID_OPERATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_INVALID_RESPONSE](#WS_INVALID_RESPONSE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_MISSING_USERNAME_TOKEN_EXTENSION](#WS_MISSING_USERNAME_TOKEN_EXTENSION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_RETRYABLE_WSDL](#WS_RETRYABLE_WSDL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_USERNAME_TOKEN_EXTENSION_MISSING_PASSWORD](#WS_USERNAME_TOKEN_EXTENSION_MISSING_PASSWORD)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_USERNAME_TOKEN_EXTENSION_MISSING_USERNAME](#WS_USERNAME_TOKEN_EXTENSION_MISSING_USERNAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_WRITE_FAILED](#WS_WRITE_FAILED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_WRITE_HTTP_ERROR_OCCURRED](#WS_WRITE_HTTP_ERROR_OCCURRED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WS_WRITE_HTTP_FAULT_RECEIVED](#WS_WRITE_HTTP_FAULT_RECEIVED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WSCLIENT](#WSCLIENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WSCLIENT_IO](#WSCLIENT_IO)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WSCLIENT_MALFORMED_URL](#WSCLIENT_MALFORMED_URL)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WSDL_PARSER](#WSDL_PARSER)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WSDL_PARSER_NO_LOCK_AVAILABLE](#WSDL_PARSER_NO_LOCK_AVAILABLE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WSDL_PARSER_NO_PREFIX_SPECIFIED](#WSDL_PARSER_NO_PREFIX_SPECIFIED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[WSDL_PARSER_UNBOUND_PREFIX](#WSDL_PARSER_UNBOUND_PREFIX)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_IMPORT](#XSD_IMPORT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_IMPORT_DATA_TYPE_LOCK_ERROR](#XSD_IMPORT_DATA_TYPE_LOCK_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_IMPORT_ECORE_SAVE_ERROR](#XSD_IMPORT_ECORE_SAVE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_IMPORT_INVALID_ELEMENT](#XSD_IMPORT_INVALID_ELEMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_IMPORT_UNSUPPORTED_ZIP_CIRCULAR_REFERENCE](#XSD_IMPORT_UNSUPPORTED_ZIP_CIRCULAR_REFERENCE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_INVALID](#XSD_INVALID)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_INVALID_ANNOTATION](#XSD_INVALID_ANNOTATION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_INVALID_ANONYMOUS_GLOBAL_COMPONENT](#XSD_INVALID_ANONYMOUS_GLOBAL_COMPONENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_INVALID_CONSTRAINT](#XSD_INVALID_CONSTRAINT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_INVALID_DUPLICATE_ELEMENT](#XSD_INVALID_DUPLICATE_ELEMENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_INVALID_NAME](#XSD_INVALID_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_INVALID_UNRESOLVED_COMPONENT](#XSD_INVALID_UNRESOLVED_COMPONENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_READ_FROM_DATA_TYPE_ERROR](#XSD_READ_FROM_DATA_TYPE_ERROR)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED](#XSD_UNSUPPORTED)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_CHOICE](#XSD_UNSUPPORTED_CHOICE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_CHOICE_DUPLICATE_TYPE](#XSD_UNSUPPORTED_CHOICE_DUPLICATE_TYPE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_DUPLICATE_NAME](#XSD_UNSUPPORTED_DUPLICATE_NAME)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_MISSING_NAMESPACE](#XSD_UNSUPPORTED_MISSING_NAMESPACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_MIXED_CONTENT](#XSD_UNSUPPORTED_MIXED_CONTENT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_MULTIPLE_LIST](#XSD_UNSUPPORTED_MULTIPLE_LIST)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_NESTED_CHOICE](#XSD_UNSUPPORTED_NESTED_CHOICE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_OCCURRENCE_CONSTRAINT](#XSD_UNSUPPORTED_OCCURRENCE_CONSTRAINT)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_REDEFINE](#XSD_UNSUPPORTED_REDEFINE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_RESERVED_NAMESPACE](#XSD_UNSUPPORTED_RESERVED_NAMESPACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_SIMPLE_CONTENT_RESTRICTION](#XSD_UNSUPPORTED_SIMPLE_CONTENT_RESTRICTION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_SUBSTITUTION_GROUP](#XSD_UNSUPPORTED_SUBSTITUTION_GROUP)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_SYSTEM_TYPE_NON_RESERVED_NAMESPACE](#XSD_UNSUPPORTED_SYSTEM_TYPE_NON_RESERVED_NAMESPACE)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[XSD_UNSUPPORTED_UNION](#XSD_UNSUPPORTED_UNION)`

    `static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[ZIPPING_COLLECTION_GENERAL_ERROR](#ZIPPING_COLLECTION_GENERAL_ERROR)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[ErrorCode](#%3Cinit%3E\(\))()`

    For GWT serialization

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.exceptions.[AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

    `[equals](../../../exceptions/AppianErrorCode.html#equals\(java.lang.Object\)), [getCategory](../../../exceptions/AppianErrorCode.html#getCategory\(\)), [getDetail](../../../exceptions/AppianErrorCode.html#getDetail\(\)), [getMessage](../../../exceptions/AppianErrorCode.html#getMessage\(com.appiancorp.suiteapi.common.exceptions.AppianErrorCodeFormatter,java.lang.Object...\)), [getMessageWithCode](../../../exceptions/AppianErrorCode.html#getMessageWithCode\(com.appiancorp.suiteapi.common.exceptions.AppianErrorCodeFormatter,java.lang.Object...\)), [getNamespace](../../../exceptions/AppianErrorCode.html#getNamespace\(\)), [getStaticMessage](../../../exceptions/AppianErrorCode.html#getStaticMessage\(com.appiancorp.exceptions.AppianErrorCodeStaticMessageFormatter\)), [getTitle](../../../exceptions/AppianErrorCode.html#getTitle\(com.appiancorp.exceptions.AppianErrorCodeTitleFormatter,java.lang.Object...\)), [hashCode](../../../exceptions/AppianErrorCode.html#hashCode\(\)), [hasTitle](../../../exceptions/AppianErrorCode.html#hasTitle\(\)), [toErrorCode](../../../exceptions/AppianErrorCode.html#toErrorCode\(java.lang.String\)), [toString](../../../exceptions/AppianErrorCode.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GENERIC\_ERROR

    -   ### APPLICATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_ERROR

    -   ### GENERIC\_RUNTIME\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GENERIC\_RUNTIME\_ERROR

    -   ### SERVICE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SERVICE\_ERROR

    -   ### FEATURE\_TOGGLED\_OFF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FEATURE\_TOGGLED\_OFF

    -   ### FEATURE\_TRACKED\_PRIOR\_TO\_REMOVAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FEATURE\_TRACKED\_PRIOR\_TO\_REMOVAL

    -   ### WSCLIENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WSCLIENT

    -   ### WSCLIENT\_MALFORMED\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WSCLIENT\_MALFORMED\_URL

    -   ### WSCLIENT\_IO

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WSCLIENT\_IO

    -   ### INVALID\_WSDL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_WSDL

    -   ### INVALID\_WSDL\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_WSDL\_VERSION

    -   ### INVALID\_WSDL\_V11\_UNKNOWN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_WSDL\_V11\_UNKNOWN

    -   ### INVALID\_WSDL\_V20\_UNKNOWN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_WSDL\_V20\_UNKNOWN

    -   ### INVALID\_WSDL\_RELATIVE\_IMPORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_WSDL\_RELATIVE\_IMPORT

    -   ### INVALID\_WSDL\_NO\_BINDINGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_WSDL\_NO\_BINDINGS

    -   ### WSDL\_PARSER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WSDL\_PARSER

    -   ### WSDL\_PARSER\_UNBOUND\_PREFIX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WSDL\_PARSER\_UNBOUND\_PREFIX

    -   ### WSDL\_PARSER\_NO\_PREFIX\_SPECIFIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WSDL\_PARSER\_NO\_PREFIX\_SPECIFIED

    -   ### WSDL\_PARSER\_NO\_LOCK\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WSDL\_PARSER\_NO\_LOCK\_AVAILABLE

    -   ### UNSUPPORTED\_WSDL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNSUPPORTED\_WSDL

    -   ### UNSUPPORTED\_WSDL\_UNKNOWN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNSUPPORTED\_WSDL\_UNKNOWN

    -   ### UNSUPPORTED\_WSDL\_WS\_I

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNSUPPORTED\_WSDL\_WS\_I

    -   ### UNSUPPORTED\_WSDL\_MISSING\_TOKEN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNSUPPORTED\_WSDL\_MISSING\_TOKEN

    -   ### WS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS

    -   ### WS\_CONFIGURATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_CONFIGURATION

    -   ### WS\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_INVALID\_RESPONSE

    -   ### WS\_RETRYABLE\_WSDL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_RETRYABLE\_WSDL

    -   ### WS\_MISSING\_USERNAME\_TOKEN\_EXTENSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_MISSING\_USERNAME\_TOKEN\_EXTENSION

    -   ### WS\_USERNAME\_TOKEN\_EXTENSION\_MISSING\_PASSWORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_USERNAME\_TOKEN\_EXTENSION\_MISSING\_PASSWORD

    -   ### WS\_USERNAME\_TOKEN\_EXTENSION\_MISSING\_USERNAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_USERNAME\_TOKEN\_EXTENSION\_MISSING\_USERNAME

    -   ### WS\_WRITE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_WRITE\_FAILED

    -   ### WS\_WRITE\_HTTP\_FAULT\_RECEIVED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_WRITE\_HTTP\_FAULT\_RECEIVED

    -   ### WS\_WRITE\_HTTP\_ERROR\_OCCURRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_WRITE\_HTTP\_ERROR\_OCCURRED

    -   ### WS\_INVALID\_OPERATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_INVALID\_OPERATION

    -   ### HTTP\_TRANSPORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT

    -   ### HTTP\_TRANSPORT\_HTTP\_STATUS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT\_HTTP\_STATUS

    -   ### HTTP\_TRANSPORT\_SOCKET\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT\_SOCKET\_TIMEOUT

    -   ### HTTP\_TRANSPORT\_CONNECTION\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT\_CONNECTION\_TIMEOUT

    -   ### HTTP\_TRANSPORT\_SSL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT\_SSL

    -   ### HTTP\_TRANSPORT\_SSL\_CERTIFICATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT\_SSL\_CERTIFICATE

    -   ### HTTP\_TRANSPORT\_CREDENTIALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT\_CREDENTIALS

    -   ### HTTP\_TRANSPORT\_INVALID\_REDIRECTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HTTP\_TRANSPORT\_INVALID\_REDIRECTS

    -   ### CLIENT\_CERTIFICATE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CLIENT\_CERTIFICATE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### CLIENT\_CERTIFICATE\_IMPORT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CLIENT\_CERTIFICATE\_IMPORT\_FAILED

    -   ### CLIENT\_CERTIFICATE\_INVALID\_PEM\_FILE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CLIENT\_CERTIFICATE\_INVALID\_PEM\_FILE

    -   ### CLIENT\_CERTIFICATE\_INVALID\_PASSWORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CLIENT\_CERTIFICATE\_INVALID\_PASSWORD

    -   ### CLIENT\_CERTIFICATE\_PEM\_MISSING\_PRIVATE\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CLIENT\_CERTIFICATE\_PEM\_MISSING\_PRIVATE\_KEY

    -   ### CLIENT\_CERTIFICATE\_PEM\_MISSING\_CERTIFICATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CLIENT\_CERTIFICATE\_PEM\_MISSING\_CERTIFICATE

    -   ### CLIENT\_CERTIFICATE\_PEM\_ENCRYPED\_WITH\_UNSUPPORTED\_ALGORITHM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CLIENT\_CERTIFICATE\_PEM\_ENCRYPED\_WITH\_UNSUPPORTED\_ALGORITHM

    -   ### WS\_IMPORTER\_UNKNOWN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_IMPORTER\_UNKNOWN

    -   ### WS\_IMPORTER\_SERVICE\_UNDEFINED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_IMPORTER\_SERVICE\_UNDEFINED

    -   ### WS\_IMPORTER\_ENDPOINT\_UNDEFINED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_IMPORTER\_ENDPOINT\_UNDEFINED

    -   ### WS\_IMPORTER\_OPERATION\_UNDEFINED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WS\_IMPORTER\_OPERATION\_UNDEFINED

    -   ### TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE

    -   ### TYPE\_INVALID\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_INVALID\_REFERENCE

    -   ### TYPE\_INVALID\_REFERENCE\_PV

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_INVALID\_REFERENCE\_PV

    -   ### TYPE\_INVALID\_REFERENCE\_MAPPING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_INVALID\_REFERENCE\_MAPPING

    -   ### TYPE\_INVALID\_REFERENCE\_ACP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_INVALID\_REFERENCE\_ACP

    -   ### TYPE\_DEACTIVATE\_ALREADY\_DEACTIVATED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DEACTIVATE\_ALREADY\_DEACTIVATED

    -   ### TYPE\_DEACTIVATE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DEACTIVATE\_ERROR

    -   ### TYPE\_DEACTIVATE\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DEACTIVATE\_PRIVILEGES

    -   ### TYPE\_DB\_TYPE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DB\_TYPE\_NOT\_FOUND

    -   ### TYPE\_NO\_DB\_TYPE\_DEFINITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_NO\_DB\_TYPE\_DEFINITION

    -   ### TYPE\_DB\_INACCESSIBLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DB\_INACCESSIBLE

    -   ### TYPE\_DEACTIVATED\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DEACTIVATED\_TYPE

    -   ### TYPE\_INVALID\_PARTIAL\_XSD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_INVALID\_PARTIAL\_XSD

    -   ### TYPE\_EXPORT\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_EXPORT\_NOT\_SUPPORTED

    -   ### TYPE\_DB\_TYPE\_LOAD\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DB\_TYPE\_LOAD\_ERROR

    -   ### TYPE\_DB\_TYPE\_SAVE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DB\_TYPE\_SAVE\_ERROR

    -   ### TYPE\_IMPORT\_PRE\_EXISTING\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_IMPORT\_PRE\_EXISTING\_TYPE

    -   ### TYPE\_IMPORT\_PRE\_EXISTING\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_IMPORT\_PRE\_EXISTING\_TYPE\_ERROR

    -   ### TYPE\_INVALID\_NAMESPACE\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_INVALID\_NAMESPACE\_ID

    -   ### TYPE\_AMBIGUOUS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_AMBIGUOUS

    -   ### TYPE\_IMPORT\_DTD\_XSD\_COMPARISON\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_IMPORT\_DTD\_XSD\_COMPARISON\_ERROR

    -   ### TYPE\_ID\_TO\_NAMESPACE\_CONVERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_ID\_TO\_NAMESPACE\_CONVERSION

    -   ### TYPE\_NAMESPACE\_TO\_ID\_CONVERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_NAMESPACE\_TO\_ID\_CONVERSION

    -   ### TYPE\_DEACTIVATED\_UPDATED\_FOR\_APP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DEACTIVATED\_UPDATED\_FOR\_APP

    -   ### TYPE\_DB\_VALIDATE\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DB\_VALIDATE\_UNEXPECTED\_ERROR

    -   ### TYPE\_DB\_UPDATE\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DB\_UPDATE\_UNEXPECTED\_ERROR

    -   ### TYPE\_DELETED\_AFTER\_SAVE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_DELETED\_AFTER\_SAVE\_ERROR

    -   ### TYPE\_LIST\_TYPE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_LIST\_TYPE\_NOT\_FOUND

    -   ### XSD\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED

    -   ### XSD\_UNSUPPORTED\_UNION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_UNION

    -   ### XSD\_UNSUPPORTED\_OCCURRENCE\_CONSTRAINT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_OCCURRENCE\_CONSTRAINT

    -   ### XSD\_UNSUPPORTED\_MIXED\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_MIXED\_CONTENT

    -   ### XSD\_UNSUPPORTED\_RESERVED\_NAMESPACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_RESERVED\_NAMESPACE

    -   ### XSD\_UNSUPPORTED\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_DUPLICATE\_NAME

    -   ### XSD\_UNSUPPORTED\_MISSING\_NAMESPACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_MISSING\_NAMESPACE

    -   ### XSD\_UNSUPPORTED\_MULTIPLE\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_MULTIPLE\_LIST

    -   ### XSD\_UNSUPPORTED\_CHOICE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_CHOICE

    -   ### XSD\_UNSUPPORTED\_REDEFINE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_REDEFINE

    -   ### XSD\_UNSUPPORTED\_SUBSTITUTION\_GROUP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_SUBSTITUTION\_GROUP

    -   ### XSD\_UNSUPPORTED\_SIMPLE\_CONTENT\_RESTRICTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_SIMPLE\_CONTENT\_RESTRICTION

    -   ### XSD\_UNSUPPORTED\_SYSTEM\_TYPE\_NON\_RESERVED\_NAMESPACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_SYSTEM\_TYPE\_NON\_RESERVED\_NAMESPACE

    -   ### XSD\_UNSUPPORTED\_NESTED\_CHOICE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_NESTED\_CHOICE

    -   ### XSD\_UNSUPPORTED\_CHOICE\_DUPLICATE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_UNSUPPORTED\_CHOICE\_DUPLICATE\_TYPE

    -   ### XSD\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_INVALID

    -   ### XSD\_INVALID\_UNRESOLVED\_COMPONENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_INVALID\_UNRESOLVED\_COMPONENT

    -   ### XSD\_INVALID\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_INVALID\_NAME

    -   ### XSD\_INVALID\_DUPLICATE\_ELEMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_INVALID\_DUPLICATE\_ELEMENT

    -   ### XSD\_INVALID\_ANONYMOUS\_GLOBAL\_COMPONENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_INVALID\_ANONYMOUS\_GLOBAL\_COMPONENT

    -   ### XSD\_INVALID\_ANNOTATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_INVALID\_ANNOTATION

    -   ### XSD\_INVALID\_CONSTRAINT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_INVALID\_CONSTRAINT

    -   ### XSD\_IMPORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_IMPORT

    -   ### XSD\_IMPORT\_INVALID\_ELEMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_IMPORT\_INVALID\_ELEMENT

    -   ### XSD\_IMPORT\_ECORE\_SAVE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_IMPORT\_ECORE\_SAVE\_ERROR

    -   ### XSD\_IMPORT\_UNSUPPORTED\_ZIP\_CIRCULAR\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_IMPORT\_UNSUPPORTED\_ZIP\_CIRCULAR\_REFERENCE

    -   ### XSD\_IMPORT\_DATA\_TYPE\_LOCK\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_IMPORT\_DATA\_TYPE\_LOCK\_ERROR

    -   ### XSD\_READ\_FROM\_DATA\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") XSD\_READ\_FROM\_DATA\_TYPE\_ERROR

    -   ### EXPOSE\_MODEL\_AS\_WS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPOSE\_MODEL\_AS\_WS

    -   ### DUPLICATE\_WS\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DUPLICATE\_WS\_NAME

    -   ### DUPLICATE\_WS\_NAME\_EXPOSE\_AS\_WS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DUPLICATE\_WS\_NAME\_EXPOSE\_AS\_WS

    -   ### NONSYSTEM\_TYPES\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NONSYSTEM\_TYPES\_UNSUPPORTED

    -   ### NONSYSTEM\_TYPES\_EXPOSE\_AS\_WS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NONSYSTEM\_TYPES\_EXPOSE\_AS\_WS

    -   ### INVALID\_PM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_PM

    -   ### INVALID\_PM\_EXPOSE\_AS\_WS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_PM\_EXPOSE\_AS\_WS

    -   ### INVALID\_NAV\_ITEM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_NAV\_ITEM

    -   ### INVALID\_NAV\_ITEM\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_NAV\_ITEM\_REFERENCE

    -   ### INVALID\_NAV\_ITEM\_EMPTY\_PAGE\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_NAV\_ITEM\_EMPTY\_PAGE\_UUID

    -   ### INVALID\_NAV\_ITEM\_INVALID\_URL\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_NAV\_ITEM\_INVALID\_URL\_ID

    -   ### INVALID\_NAV\_ITEM\_EMPTY\_LABEL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_NAV\_ITEM\_EMPTY\_LABEL

    -   ### INVALID\_NAV\_ITEM\_INVALID\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_NAV\_ITEM\_INVALID\_INDEX

    -   ### INVALID\_ACTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_ACTION

    -   ### INVALID\_ACTION\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_ACTION\_REFERENCE

    -   ### INVALID\_ACTION\_EMPTY\_MODEL\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_ACTION\_EMPTY\_MODEL\_UUID

    -   ### INVALID\_ACTION\_EMPTY\_LABEL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_ACTION\_EMPTY\_LABEL

    -   ### INVALID\_ACTION\_INVALID\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_ACTION\_INVALID\_INDEX

    -   ### ACTION\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ACTION\_NOT\_FOUND

    -   ### APPLICATION\_NOT\_FOUND\_BY\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_NOT\_FOUND\_BY\_ID

    -   ### APPLICATION\_NOT\_FOUND\_BY\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_NOT\_FOUND\_BY\_URL

    -   ### APPLICATION\_NOT\_FOUND\_BY\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_NOT\_FOUND\_BY\_UUID

    -   ### APPLICATION\_INVALID\_URL\_IDENTIFIER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_INVALID\_URL\_IDENTIFIER

    -   ### APPLICATION\_ADDED\_INVALID\_ITEM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_ADDED\_INVALID\_ITEM

    -   ### APPLICATION\_REMOVED\_INVALID\_ITEM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_REMOVED\_INVALID\_ITEM

    -   ### APPLICATION\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_INVALID

    -   ### APPLICATION\_DUPLICATE\_IDENTIFIER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_DUPLICATE\_IDENTIFIER

    -   ### APPLICATION\_DUPLICATE\_URL\_IDENTIFIER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_DUPLICATE\_URL\_IDENTIFIER

    -   ### APPLICATION\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_INSUFFICIENT\_PRIVILEGES

    -   ### APPLICATION\_NOT\_SAVED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_NOT\_SAVED

    -   ### APPLICATION\_EXPORT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_EXPORT\_FAILED

    -   ### APPLICATION\_EXPORT\_NO\_APP\_SELECTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_EXPORT\_NO\_APP\_SELECTED

    -   ### APPLICATION\_INVALID\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_INVALID\_NAME

    -   ### BINDING\_UNRESOLVED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED

    -   ### BINDING\_UNRESOLVED\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_REF

    -   ### BINDING\_UNRESOLVED\_REF\_NO\_PM\_FOR\_EVENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_REF\_NO\_PM\_FOR\_EVENT

    -   ### BINDING\_UNRESOLVED\_REF\_NO\_EVENT\_IN\_PM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_REF\_NO\_EVENT\_IN\_PM

    -   ### BINDING\_UNRESOLVED\_REF\_NO\_ENTITY\_IN\_DATA\_STORE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_REF\_NO\_ENTITY\_IN\_DATA\_STORE

    -   ### BINDING\_UNRESOLVED\_RECORD\_BASED\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_RECORD\_BASED\_REF

    -   ### BINDING\_UNRESOLVED\_PORTAL\_BASED\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_PORTAL\_BASED\_REF

    -   ### BINDING\_UNRESOLVED\_SITE\_BASED\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_SITE\_BASED\_REF

    -   ### BINDING\_UNRESOLVED\_CONTROL\_PANEL\_BASED\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_CONTROL\_PANEL\_BASED\_REF

    -   ### BINDING\_UNRESOLVED\_RECORD\_SEARCH\_RESULT\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BINDING\_UNRESOLVED\_RECORD\_SEARCH\_RESULT\_REF

    -   ### IX\_OBJECT\_TRANSPORT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_TRANSPORT\_FAILED

    -   ### IX\_OBJECT\_TRANSPORT\_FAILED\_HAS\_DST\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_TRANSPORT\_FAILED\_HAS\_DST\_ID

    -   ### IX\_OBJECT\_EXPORT\_DATA\_RETRIEVAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_EXPORT\_DATA\_RETRIEVAL

    -   ### IX\_OBJECT\_EXPORT\_UNRESOLVED\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_EXPORT\_UNRESOLVED\_REF

    -   ### IX\_OBJECT\_XML\_SERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_XML\_SERIALIZE

    -   ### IX\_OBJECT\_XML\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_XML\_DESERIALIZE

    -   ### IX\_OBJECT\_IMPORT\_UNRESOLVED\_REF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_IMPORT\_UNRESOLVED\_REF

    -   ### IX\_OBJECT\_IMPORT\_CREATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_IMPORT\_CREATE

    -   ### IX\_OBJECT\_IMPORT\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_IMPORT\_UPDATE

    -   ### IX\_OBJECT\_IMPORT\_FINALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_IMPORT\_FINALIZE

    -   ### IX\_CMDLINE\_NOHIB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_CMDLINE\_NOHIB

    -   ### IX\_ANALYSIS\_EXCEED\_DIRECT\_PRECEDENTS\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ANALYSIS\_EXCEED\_DIRECT\_PRECEDENTS\_LIMIT

    -   ### IX\_DUPLICATE\_OBJECT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DUPLICATE\_OBJECT

    -   ### IX\_EXTRACT\_REFERENCES\_OBJECT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EXTRACT\_REFERENCES\_OBJECT\_FAILED

    -   ### IX\_DATA\_STORES\_SCHEMA\_VALIDATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DATA\_STORES\_SCHEMA\_VALIDATION

    -   ### IX\_IMPORT\_DATA\_STORES\_SCHEMA\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_IMPORT\_DATA\_STORES\_SCHEMA\_UPDATE

    -   ### IX\_OBJECT\_EXPORT\_PARAMETER\_CREATE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_EXPORT\_PARAMETER\_CREATE\_FAILED

    -   ### IX\_OBJECT\_IMPORT\_DUPLICATE\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_IMPORT\_DUPLICATE\_PARAMETER

    -   ### IX\_PACKAGE\_DATATYPE\_TRANSPORT\_FAILED\_DUE\_TO\_OTHER\_DATATYPE\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PACKAGE\_DATATYPE\_TRANSPORT\_FAILED\_DUE\_TO\_OTHER\_DATATYPE\_FAILURE

    -   ### IX\_DATATYPES\_MUST\_GO\_FIRST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DATATYPES\_MUST\_GO\_FIRST

    -   ### IX\_OBJECT\_HAUL\_PRODUCER\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_HAUL\_PRODUCER\_FAILED

    -   ### IX\_DEACTIVATED\_DATATYPE\_REFERENCED\_WITHOUT\_ECORE\_MODEL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DEACTIVATED\_DATATYPE\_REFERENCED\_WITHOUT\_ECORE\_MODEL

    -   ### IX\_OBJECT\_MISSING\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_OBJECT\_MISSING\_PARAMETER

    -   ### IX\_DATA\_SOURCES\_INVALID\_CREDENTIALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DATA\_SOURCES\_INVALID\_CREDENTIALS

    -   ### IX\_DATA\_SOURCES\_INVALID\_DATABASE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DATA\_SOURCES\_INVALID\_DATABASE\_TYPE

    -   ### IX\_DATA\_SOURCES\_INVALID\_CONNECTION\_STRING\_FORMAT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DATA\_SOURCES\_INVALID\_CONNECTION\_STRING\_FORMAT

    -   ### IX\_DATA\_SOURCES\_CONNECTION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DATA\_SOURCES\_CONNECTION\_FAILED

    -   ### IX\_THIRD\_PARTY\_CREDENTIALS\_DUPLICATE\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_THIRD\_PARTY\_CREDENTIALS\_DUPLICATE\_KEY

    -   ### IX\_THIRD\_PARTY\_CREDENTIALS\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_THIRD\_PARTY\_CREDENTIALS\_DUPLICATE\_NAME

    -   ### IX\_DEPENDENT\_DATATYPE\_TRANSPORT\_FAILED\_DUE\_TO\_OTHER\_DATATYPE\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DEPENDENT\_DATATYPE\_TRANSPORT\_FAILED\_DUE\_TO\_OTHER\_DATATYPE\_FAILURE

    -   ### IX\_DEPENDENT\_DATATYPE\_TRANSPORT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DEPENDENT\_DATATYPE\_TRANSPORT\_FAILED

    -   ### IX\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DUPLICATE\_NAME

    -   ### IX\_QUERY\_SUBPROCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_QUERY\_SUBPROCESS

    -   ### IX\_UPDATE\_TARGET\_SUBPROCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_UPDATE\_TARGET\_SUBPROCESS

    -   ### IX\_BRANDING\_INVALID\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_BRANDING\_INVALID\_URL

    -   ### IX\_BRANDING\_INVALID\_HEX\_COLOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_BRANDING\_INVALID\_HEX\_COLOR

    -   ### IX\_UPDATE\_PACKAGE\_SUBPROCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_UPDATE\_PACKAGE\_SUBPROCESS

    -   ### IX\_BRANDING\_INVALID\_SITE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_BRANDING\_INVALID\_SITE\_NAME

    -   ### IX\_BRANDING\_INVALID\_WALLPAPER\_COLOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_BRANDING\_INVALID\_WALLPAPER\_COLOR

    -   ### IX\_APPIAN\_AUTH\_NOT\_INTEGER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_NOT\_INTEGER

    -   ### IX\_APPIAN\_AUTH\_INTEGER\_TOO\_LARGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_INTEGER\_TOO\_LARGE

    -   ### IX\_APPIAN\_AUTH\_INVALID\_TOS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_INVALID\_TOS

    -   ### IX\_APPIAN\_AUTH\_IDLE\_SESSION\_TIMEOUT\_TOO\_HIGH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_IDLE\_SESSION\_TIMEOUT\_TOO\_HIGH

    -   ### IX\_APPIAN\_AUTH\_INVALID\_REMEMBER\_ME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_INVALID\_REMEMBER\_ME

    -   ### IX\_APPIAN\_AUTH\_INVALID\_PASSWORD\_REUSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_INVALID\_PASSWORD\_REUSE

    -   ### IX\_APPIAN\_AUTH\_FIELDS\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_FIELDS\_MISMATCH

    -   ### IX\_APPIAN\_AUTH\_INTEGER\_BELOW\_MINIMUM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_INTEGER\_BELOW\_MINIMUM

    -   ### IX\_APPIAN\_AUTH\_IDLE\_SESSION\_TIMEOUT\_TOO\_LOW

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_IDLE\_SESSION\_TIMEOUT\_TOO\_LOW

    -   ### IX\_APPIAN\_AUTH\_INVALID\_PASSWORD\_LINK\_RESET\_DURATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_INVALID\_PASSWORD\_LINK\_RESET\_DURATION

    -   ### IX\_APPIAN\_AUTH\_INTEGER\_BELOW\_ZERO

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_INTEGER\_BELOW\_ZERO

    -   ### IX\_APPIAN\_AUTH\_NOT\_BOOLEAN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_APPIAN\_AUTH\_NOT\_BOOLEAN

    -   ### IX\_MULTI\_LINE\_TAG\_BEGIN\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_MULTI\_LINE\_TAG\_BEGIN\_NOT\_FOUND

    -   ### IX\_MULTI\_LINE\_TAG\_END\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_MULTI\_LINE\_TAG\_END\_NOT\_FOUND

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_CREATE\_MISSING\_IMPORT\_CUSTOMIZATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_CREATE\_MISSING\_IMPORT\_CUSTOMIZATION

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_UPDATE\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_UPDATE\_TYPE\_MISMATCH

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_INTEGER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_INTEGER

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_DECIMAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_DECIMAL

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_BOOLEAN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_BOOLEAN

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_DATETIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_DATETIME

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_DATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_DATE

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_TIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_TIME

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_NOT\_LIST

    -   ### IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_LIST\_INVALID\_ESCAPE\_CHARACTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_LIST\_INVALID\_ESCAPE\_CHARACTER

    -   ### IX\_LOGIN\_PAGE\_LINKS\_INVALID\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_LOGIN\_PAGE\_LINKS\_INVALID\_TEXT

    -   ### IX\_LOGIN\_PAGE\_LINKS\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_LOGIN\_PAGE\_LINKS\_INVALID\_LINK

    -   ### IX\_LOGIN\_PAGE\_LINKS\_COUNT\_EXCEEDS\_ALLOWED\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_LOGIN\_PAGE\_LINKS\_COUNT\_EXCEEDS\_ALLOWED\_LIMIT

    -   ### IX\_REFERENCE\_FUNCTION\_MISSING\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_REFERENCE\_FUNCTION\_MISSING\_REFERENCE

    -   ### IX\_INVALID\_EXTENSION\_BLOCKING\_MODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INVALID\_EXTENSION\_BLOCKING\_MODE

    -   ### IX\_EMBEDDED\_THEME\_NAME\_EXCEEDS\_MAXIMUM\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_NAME\_EXCEEDS\_MAXIMUM\_LENGTH

    -   ### IX\_EMBEDDED\_THEME\_DESCRIPTION\_EXCEEDS\_MAXIMUM\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_DESCRIPTION\_EXCEEDS\_MAXIMUM\_LENGTH

    -   ### IX\_EMBEDDED\_THEME\_IDENTIFIER\_INVALID\_CHARACTERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_IDENTIFIER\_INVALID\_CHARACTERS

    -   ### IX\_EMBEDDED\_THEME\_IDENTIFIER\_NOT\_UNIQUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_IDENTIFIER\_NOT\_UNIQUE

    -   ### IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_HEX\_COLOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_HEX\_COLOR

    -   ### IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_COLOR\_VALUE\_EXPRESSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_COLOR\_VALUE\_EXPRESSIONS

    -   ### IX\_EMBEDDED\_THEME\_STYLE\_INSECURE\_FONT\_FACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_STYLE\_INSECURE\_FONT\_FACE

    -   ### IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_FONT\_FACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_FONT\_FACE

    -   ### IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_BASE\_FONT\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_THEME\_STYLE\_INVALID\_BASE\_FONT\_SIZE

    -   ### IX\_EMBEDDED\_ORIGIN\_NO\_SCHEME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_ORIGIN\_NO\_SCHEME

    -   ### IX\_EMBEDDED\_ORIGIN\_INVALID\_ORIGIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_ORIGIN\_INVALID\_ORIGIN

    -   ### IX\_EMBEDDED\_ORIGIN\_INVALID\_DOMAIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_ORIGIN\_INVALID\_DOMAIN

    -   ### IX\_EMBEDDED\_ORIGIN\_INVALID\_PORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_ORIGIN\_INVALID\_PORT

    -   ### IX\_EMBEDDED\_ORIGIN\_EMPTY\_ORIGIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_EMBEDDED\_ORIGIN\_EMPTY\_ORIGIN

    -   ### IX\_PROXY\_HOST\_EXCEEDS\_MAXIMUM\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PROXY\_HOST\_EXCEEDS\_MAXIMUM\_LENGTH

    -   ### IX\_PROXY\_HOST\_CONTAINS\_INVALID\_CHARS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PROXY\_HOST\_CONTAINS\_INVALID\_CHARS

    -   ### IX\_PROXY\_PORT\_OUT\_OF\_RANGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PROXY\_PORT\_OUT\_OF\_RANGE

    -   ### IX\_PROXY\_PROPERTY\_REQUIRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PROXY\_PROPERTY\_REQUIRED

    -   ### IX\_PROXY\_PROPERTY\_NOT\_INTEGER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PROXY\_PROPERTY\_NOT\_INTEGER

    -   ### IX\_PROXY\_PROPERTY\_NOT\_BOOLEAN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PROXY\_PROPERTY\_NOT\_BOOLEAN

    -   ### IX\_I18N\_PROPERTY\_REQUIRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_I18N\_PROPERTY\_REQUIRED

    -   ### IX\_I18N\_PROPERTY\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_I18N\_PROPERTY\_UNSUPPORTED

    -   ### IX\_BRANDING\_INVALID\_LOGO\_ALT\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_BRANDING\_INVALID\_LOGO\_ALT\_TEXT

    -   ### IX\_BRANDING\_INVALID\_BANNER\_MESSAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_BRANDING\_INVALID\_BANNER\_MESSAGE

    -   ### IX\_BRANDING\_INVALID\_IMAGE\_SOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_BRANDING\_INVALID\_IMAGE\_SOURCE

    -   ### IX\_MISSING\_PLUGIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_MISSING\_PLUGIN

    -   ### IX\_PLUGIN\_VERSION\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PLUGIN\_VERSION\_MISMATCH

    -   ### IX\_DUPLICATE\_INSPECT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DUPLICATE\_INSPECT

    -   ### IX\_DUPLICATE\_IMPORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_DUPLICATE\_IMPORT

    -   ### IX\_RECORD\_RELATIONSHIP\_JOIN\_FIELD\_WRONG\_CARDINALITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_RECORD\_RELATIONSHIP\_JOIN\_FIELD\_WRONG\_CARDINALITY

    -   ### IX\_RECORD\_RELATIONSHIP\_RECORD\_TYPE\_NOT\_SYNCED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_RECORD\_RELATIONSHIP\_RECORD\_TYPE\_NOT\_SYNCED

    -   ### IX\_MISSING\_INSPECT\_REGISTRATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_MISSING\_INSPECT\_REGISTRATION

    -   ### IX\_MISSING\_IMPORT\_REGISTRATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_MISSING\_IMPORT\_REGISTRATION

    -   ### IX\_INVALID\_APPLICATION\_DOCUMENTATION\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INVALID\_APPLICATION\_DOCUMENTATION\_REFERENCE

    -   ### IX\_INVALID\_POST\_DEPLOYMENT\_PROCESS\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INVALID\_POST\_DEPLOYMENT\_PROCESS\_REFERENCE

    -   ### IX\_INVALID\_DEFAULT\_APPLICATION\_GROUPS\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INVALID\_DEFAULT\_APPLICATION\_GROUPS\_REFERENCE

    -   ### IX\_FAILED\_TO\_PUBLISH\_PORTAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_FAILED\_TO\_PUBLISH\_PORTAL

    -   ### IX\_FAILED\_TO\_UNPUBLISH\_PORTAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_FAILED\_TO\_UNPUBLISH\_PORTAL

    -   ### IX\_INACCESSIBLE\_DATA\_SOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INACCESSIBLE\_DATA\_SOURCE

    -   ### RULE\_IMPORT\_RENAME\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_IMPORT\_RENAME\_NOT\_ALLOWED

    -   ### RULE\_IMPORT\_DUPLICATE\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_IMPORT\_DUPLICATE\_EXPRESSION

    -   ### RULE\_NAME\_DUPLICATE\_AGAINST\_FUNCTION\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_NAME\_DUPLICATE\_AGAINST\_FUNCTION\_NAME

    -   ### PM\_IMPORT\_INVALID\_ACTIVITY\_CLASS\_SCHEMA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PM\_IMPORT\_INVALID\_ACTIVITY\_CLASS\_SCHEMA

    -   ### APPLICATION\_IMPORT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_IMPORT\_FAILED

    -   ### DECISION\_TABLE\_INVALID\_CONDITION\_DEFINITION

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_TABLE\_INVALID\_CONDITION\_DEFINITION

        Deprecated.

        ErrorCode for unreleased Decision Table feature

    -   ### DECISION\_TABLE\_INVALID\_RULE\_INPUT

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_TABLE\_INVALID\_RULE\_INPUT

        Deprecated.

        ErrorCode for unreleased Decision Table feature

    -   ### DECISION\_TABLE\_DUPLICATED\_DECISION\_TABLE\_NAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_TABLE\_DUPLICATED\_DECISION\_TABLE\_NAME

        Deprecated.

        ErrorCode for unreleased Decision Table feature

    -   ### DECISION\_TABLE\_DUPLICATED\_INPUT\_NAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_TABLE\_DUPLICATED\_INPUT\_NAME

        Deprecated.

        ErrorCode for unreleased Decision Table feature

    -   ### DECISION\_TABLE\_INVALID\_DECISION\_TABLE\_NAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_TABLE\_INVALID\_DECISION\_TABLE\_NAME

        Deprecated.

        ErrorCode for unreleased Decision Table feature

    -   ### DECISION\_TABLE\_INVALID\_INPUT\_NAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_TABLE\_INVALID\_INPUT\_NAME

        Deprecated.

        ErrorCode for unreleased Decision Table feature

    -   ### DECISION\_TABLE\_OPERATOR\_TYPE\_MISMATCH

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_TABLE\_OPERATOR\_TYPE\_MISMATCH

        Deprecated.

        ErrorCode for unreleased Decision Table feature

    -   ### PERSISTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PERSISTED\_ERROR

    -   ### PERSISTED\_ACCESS\_FORBIDDEN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PERSISTED\_ACCESS\_FORBIDDEN

    -   ### PERSISTED\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PERSISTED\_NOT\_FOUND

    -   ### PERSISTED\_NAME\_NOT\_UNIQUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PERSISTED\_NAME\_NOT\_UNIQUE

    -   ### REPOSITORY\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REPOSITORY\_ERROR

    -   ### CREATE\_COMMUNITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_COMMUNITY

    -   ### CREATE\_COMMUNITY\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_COMMUNITY\_INSUFFICIENT\_PRIVILEGES

    -   ### CREATE\_COMMUNITY\_INVALID\_PARENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_COMMUNITY\_INVALID\_PARENT

    -   ### VIEW\_COMMUNITY\_PROPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_COMMUNITY\_PROPS

    -   ### VIEW\_COMMUNITY\_PROPS\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_COMMUNITY\_PROPS\_INSUFFICIENT\_PRIVILEGES

    -   ### VIEW\_COMMUNITY\_PROPS\_INVALID\_COMMUNITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_COMMUNITY\_PROPS\_INVALID\_COMMUNITY

    -   ### VIEW\_COMMUNITY\_PROPS\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_COMMUNITY\_PROPS\_UPDATE

    -   ### VIEW\_COMMUNITY\_PROPS\_UPDATE\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_COMMUNITY\_PROPS\_UPDATE\_PRIVILEGES

    -   ### VIEW\_FOLDER\_PROPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FOLDER\_PROPS

    -   ### VIEW\_FOLDER\_PROPS\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FOLDER\_PROPS\_INSUFFICIENT\_PRIVILEGES

    -   ### VIEW\_FOLDER\_PROPS\_INVALID\_FOLDER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FOLDER\_PROPS\_INVALID\_FOLDER

    -   ### VIEW\_FOLDER\_PROPS\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FOLDER\_PROPS\_UPDATE

    -   ### VIEW\_FOLDER\_PROPS\_UPDATE\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FOLDER\_PROPS\_UPDATE\_PRIVILEGES

    -   ### DEACTIVATE\_COMMUNITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEACTIVATE\_COMMUNITY

    -   ### DEACTIVATE\_COMMUNITY\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEACTIVATE\_COMMUNITY\_INSUFFICIENT\_PRIVILEGES

    -   ### DEACTIVATE\_COMMUNITY\_INVALID\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEACTIVATE\_COMMUNITY\_INVALID\_CONTENT

    -   ### DEACTIVATE\_COMMUNITY\_NOT\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEACTIVATE\_COMMUNITY\_NOT\_EMPTY

    -   ### REACTIVATE\_COMMUNITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REACTIVATE\_COMMUNITY

    -   ### REACTIVATE\_COMMUNITY\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REACTIVATE\_COMMUNITY\_INSUFFICIENT\_PRIVILEGES

    -   ### REACTIVATE\_COMMUNITY\_INVALID\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REACTIVATE\_COMMUNITY\_INVALID\_CONTENT

    -   ### UPDATE\_QUOTA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_QUOTA

    -   ### UPDATE\_QUOTA\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_QUOTA\_INSUFFICIENT\_PRIVILEGES

    -   ### KC\_STATS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KC\_STATS

    -   ### KC\_STATS\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KC\_STATS\_INSUFFICIENT\_PRIVILEGES

    -   ### KC\_STATS\_INVALID\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KC\_STATS\_INVALID\_CONTENT

    -   ### CHANGE\_KC\_EXP\_DAYS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_KC\_EXP\_DAYS

    -   ### CHANGE\_KC\_EXP\_DAYS\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_KC\_EXP\_DAYS\_INSUFFICIENT\_PRIVILEGES

    -   ### CHANGE\_KC\_EXP\_DAYS\_INVALID\_KC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_KC\_EXP\_DAYS\_INVALID\_KC

    -   ### CHANGE\_KC\_EXP\_DAYS\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_KC\_EXP\_DAYS\_UPDATE

    -   ### CHANGE\_KC\_EXP\_DAYS\_UPDATE\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_KC\_EXP\_DAYS\_UPDATE\_PRIVILEGES

    -   ### RESET\_FILE\_EXP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RESET\_FILE\_EXP

    -   ### RESET\_FILE\_EXP\_INVALID\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RESET\_FILE\_EXP\_INVALID\_CONTENT

    -   ### VIEW\_FILE\_EXP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FILE\_EXP

    -   ### VIEW\_FILE\_EXP\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FILE\_EXP\_INSUFFICIENT\_PRIVILEGES

    -   ### VIEW\_FILE\_EXP\_INVALID\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_FILE\_EXP\_INVALID\_CONTENT

    -   ### MOVE\_CONTENT\_ACTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MOVE\_CONTENT\_ACTION

    -   ### MOVE\_CONTENT\_ACTION\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MOVE\_CONTENT\_ACTION\_INSUFFICIENT\_PRIVILEGES

    -   ### MOVE\_CONTENT\_ACTION\_INVALID\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MOVE\_CONTENT\_ACTION\_INVALID\_CONTENT

    -   ### MOVE\_CONTENT\_ACTION\_ILLEGAL\_RECURSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MOVE\_CONTENT\_ACTION\_ILLEGAL\_RECURSION

    -   ### KM\_INSUFFICIENT\_USER\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KM\_INSUFFICIENT\_USER\_PRIVILEGES

    -   ### KM\_INVALID\_TYPE\_MASK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KM\_INVALID\_TYPE\_MASK

    -   ### KM\_INVALID\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KM\_INVALID\_CONTENT

    -   ### KM\_INVALID\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KM\_INVALID\_VERSION

    -   ### KM\_STORAGE\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KM\_STORAGE\_LIMIT

    -   ### KM\_INVALID\_DATA\_FORMAT

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KM\_INVALID\_DATA\_FORMAT

        Deprecated.

    -   ### KM\_INVALID\_REPORT

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KM\_INVALID\_REPORT

        Deprecated.

    -   ### DELETE\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DELETE\_CONTENT

    -   ### DELETE\_COMMUNITY\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DELETE\_COMMUNITY\_INVALID\_TYPE

    -   ### DELETE\_KC\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DELETE\_KC\_INVALID\_TYPE

    -   ### DELETE\_FOLDER\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DELETE\_FOLDER\_INVALID\_TYPE

    -   ### DELETE\_DOCUMENT\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DELETE\_DOCUMENT\_INVALID\_TYPE

    -   ### INVALID\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_USER

    -   ### INVALID\_USER\_ACTIVITY\_ADD\_NOTE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_USER\_ACTIVITY\_ADD\_NOTE

    -   ### NO\_USER\_PROFILE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NO\_USER\_PROFILE

    -   ### INVALID\_USER\_WITHOUT\_USERID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_USER\_WITHOUT\_USERID

    -   ### INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INSUFFICIENT\_PRIVILEGES

    -   ### INVALID\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_VALUE

    -   ### CONSTANT\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONSTANT\_NOT\_FOUND

    -   ### INCREMENT\_CONSTANT\_ACT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INCREMENT\_CONSTANT\_ACT

    -   ### INSUFFICIENT\_PRIVILEGES\_INC\_CONSTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INSUFFICIENT\_PRIVILEGES\_INC\_CONSTANT

    -   ### INVALID\_VALUE\_INC\_CONSTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_VALUE\_INC\_CONSTANT

    -   ### CONSTANT\_NOT\_FOUND\_INC\_CONSTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONSTANT\_NOT\_FOUND\_INC\_CONSTANT

    -   ### UPDATE\_ACTIVITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_ACTIVITY

    -   ### INSUFFICIENT\_PRIVILEGES\_UPD\_CONSTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INSUFFICIENT\_PRIVILEGES\_UPD\_CONSTANT

    -   ### INVALID\_VALUE\_UPD\_CONSTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_VALUE\_UPD\_CONSTANT

    -   ### CONSTANT\_NOT\_FOUND\_UPD\_CONSTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONSTANT\_NOT\_FOUND\_UPD\_CONSTANT

    -   ### CREATE\_GROUP\_ACT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_GROUP\_ACT

    -   ### CREATE\_GROUP\_ACT\_INVALID\_PARENT\_GROUP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_GROUP\_ACT\_INVALID\_PARENT\_GROUP

    -   ### CREATE\_GROUP\_ACT\_INVALID\_GROUP\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_GROUP\_ACT\_INVALID\_GROUP\_TYPE

    -   ### CREATE\_GROUP\_ACT\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_GROUP\_ACT\_DUPLICATE\_NAME

    -   ### CREATE\_GROUP\_ACT\_INVALID\_MEMBERSHIP\_POLICY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_GROUP\_ACT\_INVALID\_MEMBERSHIP\_POLICY

    -   ### CREATE\_GROUP\_ACT\_INVALID\_SECURITY\_MAP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_GROUP\_ACT\_INVALID\_SECURITY\_MAP

    -   ### CREATE\_GROUP\_ACT\_INVALID\_VIEW\_POLICY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CREATE\_GROUP\_ACT\_INVALID\_VIEW\_POLICY

    -   ### INSUFFICIENT\_PRIVILEGES\_ADD\_CREATE\_GROUP\_ACT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INSUFFICIENT\_PRIVILEGES\_ADD\_CREATE\_GROUP\_ACT

    -   ### UPDATE\_GROUP\_ACT\_INVALID\_GROUP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_GROUP\_ACT\_INVALID\_GROUP

    -   ### UPDATE\_GROUP\_ACT\_PRIVILEGE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_GROUP\_ACT\_PRIVILEGE\_EXCEPTION

    -   ### READ\_GROUP\_BY\_UUID\_INVALID\_GROUP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") READ\_GROUP\_BY\_UUID\_INVALID\_GROUP

    -   ### READ\_GROUP\_BY\_UUID\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") READ\_GROUP\_BY\_UUID\_INSUFFICIENT\_PRIVILEGES

    -   ### UPDATE\_GROUP\_ACT\_RECURSIVE\_RELATIONSHIP\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_GROUP\_ACT\_RECURSIVE\_RELATIONSHIP\_EXCEPTION

    -   ### READ\_GROUPTYPE\_BY\_UUID\_INVALID\_GROUPTYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") READ\_GROUPTYPE\_BY\_UUID\_INVALID\_GROUPTYPE

    -   ### APP\_DESIGNER\_UPDATE\_GROUP\_TYPE\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_UPDATE\_GROUP\_TYPE\_INVALID

    -   ### IX\_INVALID\_PACKAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INVALID\_PACKAGE

    -   ### IX\_INVALID\_PACKAGE\_UNSUPPORTED\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INVALID\_PACKAGE\_UNSUPPORTED\_VERSION

    -   ### IX\_MISMATCHED\_GROUP\_ATTRIBUTE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_MISMATCHED\_GROUP\_ATTRIBUTE

    -   ### NULL\_REPORT\_CONTEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NULL\_REPORT\_CONTEXT

    -   ### REPORT\_FILTER\_COLUMN\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REPORT\_FILTER\_COLUMN\_NOT\_AVAILABLE

    -   ### VIEW\_DOC\_PROPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_DOC\_PROPS

    -   ### VIEW\_DOC\_PROPS\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_DOC\_PROPS\_INSUFFICIENT\_PRIVILEGES

    -   ### VIEW\_DOC\_PROPS\_INVALID\_DOC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_DOC\_PROPS\_INVALID\_DOC

    -   ### VIEW\_DOC\_PROPS\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_DOC\_PROPS\_UPDATE

    -   ### VIEW\_DOC\_PROPS\_UPDATE\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_DOC\_PROPS\_UPDATE\_PRIVILEGES

    -   ### VIEW\_KC\_PROPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_KC\_PROPS

    -   ### VIEW\_KC\_PROPS\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_KC\_PROPS\_INSUFFICIENT\_PRIVILEGES

    -   ### VIEW\_KC\_PROPS\_INVALID\_KC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_KC\_PROPS\_INVALID\_KC

    -   ### VIEW\_KC\_PROPS\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_KC\_PROPS\_UPDATE

    -   ### VIEW\_KC\_PROPS\_UPDATE\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_KC\_PROPS\_UPDATE\_PRIVILEGES

    -   ### INSUFFICIENT\_PRIVILEGES\_ADD\_NOTE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INSUFFICIENT\_PRIVILEGES\_ADD\_NOTE

    -   ### DUPLICATE\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DUPLICATE\_FUNCTION

    -   ### DUPLICATE\_FUNCTION\_CATEGORY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DUPLICATE\_FUNCTION\_CATEGORY

    -   ### INVALID\_BEAN\_ACCESSOR\_FUNCTION\_DEFINITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_BEAN\_ACCESSOR\_FUNCTION\_DEFINITION

    -   ### INVALID\_FUNCTION\_DEFINITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_FUNCTION\_DEFINITION

    -   ### DUPLICATE\_SMART\_SERVICE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DUPLICATE\_SMART\_SERVICE

    -   ### INVALID\_SMART\_SERVICE\_DEFINITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SMART\_SERVICE\_DEFINITION

    -   ### INVALID\_ENUMERATION\_DEFINITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_ENUMERATION\_DEFINITION

    -   ### INVALID\_FUNCTION\_IMPLEMENTATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_FUNCTION\_IMPLEMENTATION

    -   ### INVALID\_FUNCTION\_DEFINITION\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_FUNCTION\_DEFINITION\_TYPE

    -   ### EXPRESSION\_EVALUATION\_LIMIT\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPRESSION\_EVALUATION\_LIMIT\_EXCEEDED

    -   ### FUNCTION\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FUNCTION\_NOT\_AVAILABLE

    -   ### ACTIVITY\_ERROR\_ADDNOTE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ACTIVITY\_ERROR\_ADDNOTE

    -   ### FORMS\_COMPONENT\_FAILED\_VALIDATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORMS\_COMPONENT\_FAILED\_VALIDATION

    -   ### FORMS\_NOT\_MOBILE\_ENABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORMS\_NOT\_MOBILE\_ENABLED

    -   ### FORMS\_INVALID\_TASK\_STATUS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORMS\_INVALID\_TASK\_STATUS

    -   ### FORMS\_ALREADY\_SUBMITTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORMS\_ALREADY\_SUBMITTED

    -   ### FORMS\_NO\_LONGER\_EXISTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORMS\_NO\_LONGER\_EXISTS

    -   ### TASK\_NO\_LONGER\_EXISTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TASK\_NO\_LONGER\_EXISTS

    -   ### TASK\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TASK\_INSUFFICIENT\_PRIVILEGES

    -   ### TASK\_SUBMISSION\_NOT\_OWNER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TASK\_SUBMISSION\_NOT\_OWNER

    -   ### URL\_FOR\_TASK\_NULL\_TASK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_TASK\_NULL\_TASK

    -   ### INLINE\_FILE\_UPLOAD\_NO\_TEMP\_DOCS\_KC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_NO\_TEMP\_DOCS\_KC

    -   ### INLINE\_FILE\_UPLOAD\_MAX\_SIZE\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_MAX\_SIZE\_EXCEEDED

    -   ### INLINE\_FILE\_UPLOAD\_NO\_TEMP\_DOCS\_KC\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_NO\_TEMP\_DOCS\_KC\_PRIVILEGES

    -   ### INLINE\_FILE\_UPLOAD\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_FAILED

    -   ### INLINE\_FILE\_UPLOAD\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_TIMEOUT

    -   ### INLINE\_FILE\_UPLOAD\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_GENERIC

    -   ### INLINE\_FILE\_UPLOAD\_SAVE\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_SAVE\_NOT\_SUPPORTED

    -   ### INLINE\_FILE\_UPLOAD\_DOMAIN\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_DOMAIN\_NOT\_SUPPORTED

    -   ### INLINE\_FILE\_UPLOAD\_VIRUS\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_VIRUS\_FOUND

    -   ### INLINE\_FILE\_UPLOAD\_BLOCKED\_EXTENSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_BLOCKED\_EXTENSION

    -   ### INLINE\_FILE\_UPLOAD\_BLOCKED\_EMPTY\_EXTENSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_BLOCKED\_EMPTY\_EXTENSION

    -   ### INLINE\_FILE\_UPLOAD\_BLOCKED\_FILE\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_BLOCKED\_FILE\_TYPE\_MISMATCH

    -   ### INLINE\_FILE\_UPLOAD\_ENVIRONMENT\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_ENVIRONMENT\_NOT\_SUPPORTED

    -   ### INLINE\_FILE\_UPLOAD\_SIGNATURE\_VALIDATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INLINE\_FILE\_UPLOAD\_SIGNATURE\_VALIDATION\_FAILED

    -   ### PAGING\_GRID\_UNKNOWN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_UNKNOWN

    -   ### PAGING\_GRID\_DATA\_IS\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_IS\_NULL

    -   ### PAGING\_GRID\_DATA\_IS\_LIST\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_IS\_LIST\_TYPE

    -   ### PAGING\_GRID\_DATA\_IS\_NON\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_IS\_NON\_RECORD\_TYPE

    -   ### PAGING\_GRID\_DATA\_CAST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_CAST\_ERROR

    -   ### PAGING\_GRID\_DATA\_FIELD\_CAST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_FIELD\_CAST\_ERROR

    -   ### PAGING\_GRID\_DATA\_MISSING\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_MISSING\_FIELD

    -   ### PAGING\_GRID\_DATA\_INVALID\_FIELD\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_INVALID\_FIELD\_VALUE

    -   ### PAGING\_GRID\_DATA\_AND\_IDS\_SIZE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_GRID\_DATA\_AND\_IDS\_SIZE\_MISMATCH

    -   ### MESSAGING\_PROCESS\_ROUTE\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGING\_PROCESS\_ROUTE\_MISSING

    -   ### MESSAGING\_INVALID\_JMS\_QUEUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGING\_INVALID\_JMS\_QUEUE

    -   ### OBJECT\_TRANSLATOR\_CAUGHT\_EXCEPTION\_FROM\_SERVICE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OBJECT\_TRANSLATOR\_CAUGHT\_EXCEPTION\_FROM\_SERVICE

    -   ### SERVICE\_LOCATOR\_INITIALIZATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SERVICE\_LOCATOR\_INITIALIZATION\_ERROR

    -   ### SERVICE\_LOCATOR\_INITIALIZATION\_ERROR\_SAX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SERVICE\_LOCATOR\_INITIALIZATION\_ERROR\_SAX

    -   ### SERVICE\_LOCATOR\_INITIALIZATION\_ERROR\_IO

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SERVICE\_LOCATOR\_INITIALIZATION\_ERROR\_IO

    -   ### SERVICE\_LOCATOR\_INITIALIZATION\_ERROR\_CLASS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SERVICE\_LOCATOR\_INITIALIZATION\_ERROR\_CLASS

    -   ### EE\_PROPERTY\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_PROPERTY\_NOT\_AVAILABLE

    -   ### EE\_UNEXPECTED\_PARAMETERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_UNEXPECTED\_PARAMETERS

    -   ### EE\_FUNCTION\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_FUNCTION\_NOT\_AVAILABLE

    -   ### EE\_UNEXPECTED\_PARAMETER\_TYPES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_UNEXPECTED\_PARAMETER\_TYPES

    -   ### EE\_EVALUATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_EVALUATION\_ERROR

    -   ### EE\_RETURNTYPE\_COULD\_NOT\_BE\_INFERRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_RETURNTYPE\_COULD\_NOT\_BE\_INFERRED

    -   ### EE\_UNINJECTABLE\_OBJECT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_UNINJECTABLE\_OBJECT

    -   ### EE\_SYNTAX\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_SYNTAX\_ERROR

    -   ### EE\_INVALID\_VARIABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_INVALID\_VARIABLE

    -   ### EE\_INVALID\_PARAM\_NEG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_INVALID\_PARAM\_NEG

    -   ### EE\_INVALID\_PARAM\_NULL\_INT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_INVALID\_PARAM\_NULL\_INT

    -   ### EE\_INVALID\_FOLDER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EE\_INVALID\_FOLDER

    -   ### INVALID\_FUNCTION\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_FUNCTION\_PARAMETER

    -   ### INVALID\_DOCUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_DOCUMENT

    -   ### UNPARSEABLE\_XML

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNPARSEABLE\_XML

    -   ### INVALID\_XPATH\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_XPATH\_EXPRESSION

    -   ### INVALID\_PROTOCOL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_PROTOCOL

    -   ### INVALID\_INPUT\_TO\_AUTOMATION\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_INPUT\_TO\_AUTOMATION\_FUNCTION

    -   ### RESET\_PWD\_GENERIC\_EMAIL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RESET\_PWD\_GENERIC\_EMAIL\_ERROR

    -   ### RESET\_PWD\_USER\_EMAIL\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RESET\_PWD\_USER\_EMAIL\_INVALID

    -   ### ADD\_USER\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_GENERIC\_ERROR

    -   ### ADD\_USER\_TEMP\_PWD\_GENERIC\_EMAIL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_TEMP\_PWD\_GENERIC\_EMAIL\_ERROR

    -   ### ADD\_USER\_TEMP\_PWD\_USER\_EMAIL\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_TEMP\_PWD\_USER\_EMAIL\_INVALID

    -   ### CHANGE\_USER\_PWD\_SN\_INSUFFICIENT\_PRIVILEGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_USER\_PWD\_SN\_INSUFFICIENT\_PRIVILEGE

    -   ### CHANGE\_USER\_PWD\_SN\_INVALID\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_USER\_PWD\_SN\_INVALID\_USER

    -   ### CHANGE\_USER\_PWD\_SN\_PASSWORD\_COMPLEXITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CHANGE\_USER\_PWD\_SN\_PASSWORD\_COMPLEXITY

    -   ### ADD\_USER\_SN\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_SN\_GENERIC\_ERROR

    -   ### ADD\_USER\_SN\_DUPLICATE\_USERNAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_SN\_DUPLICATE\_USERNAME

    -   ### ADD\_USER\_SN\_INSUFFICIENT\_PRIVILEGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_SN\_INSUFFICIENT\_PRIVILEGE

    -   ### ADD\_USER\_SN\_INVALID\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_SN\_INVALID\_USER

    -   ### ADD\_USER\_SN\_TEMP\_PWD\_GENERIC\_EMAIL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_SN\_TEMP\_PWD\_GENERIC\_EMAIL\_ERROR

    -   ### ADD\_USER\_SN\_TEMP\_PWD\_USER\_EMAIL\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_SN\_TEMP\_PWD\_USER\_EMAIL\_INVALID

    -   ### ADD\_USER\_SN\_PASSWORD\_COMPLEXITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_SN\_PASSWORD\_COMPLEXITY

    -   ### ADD\_USER\_INVALID\_TITLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_USER\_INVALID\_TITLE

    -   ### DEACTIVATE\_USER\_SN\_UNSUPPORTED\_ADMINISTRATOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEACTIVATE\_USER\_SN\_UNSUPPORTED\_ADMINISTRATOR

    -   ### QUERY\_RULE\_NAME\_NOT\_UNIQUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_NAME\_NOT\_UNIQUE

    -   ### QUERY\_RULE\_ENTITY\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_ENTITY\_PERMISSIONS

    -   ### QUERY\_RULE\_LITERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_LITERAL\_ERROR

    -   ### QUERY\_RULE\_INVALID\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_INVALID\_EXPRESSION

    -   ### QUERY\_RULE\_SAVE\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_SAVE\_PERMISSIONS

    -   ### QUERY\_RULE\_LOAD\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_LOAD\_FAILED

    -   ### QUERY\_RULE\_PARAM\_COUNT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_PARAM\_COUNT\_ERROR

    -   ### QUERY\_RULE\_PARAM\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_PARAM\_TYPE\_ERROR

    -   ### QUERY\_RULE\_UUID\_MAPPING\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_UUID\_MAPPING\_FAILED

    -   ### QUERY\_RULE\_ENTITY\_LOOKUP\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_ENTITY\_LOOKUP\_FAILED

    -   ### QUERY\_RULE\_ACCESS\_STORE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_ACCESS\_STORE\_FAILED

    -   ### QUERY\_RULE\_FILTER\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_FILTER\_ERROR

    -   ### QUERY\_RULE\_OUTPUT\_TOO\_BIG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_OUTPUT\_TOO\_BIG

    -   ### QUERY\_RULE\_OUTPUT\_CONVERT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_OUTPUT\_CONVERT\_FAILED

    -   ### QUERY\_RULE\_CONNECTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_CONNECTION\_ERROR

    -   ### QUERY\_RULE\_UNKNOWN\_SAVE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_UNKNOWN\_SAVE\_ERROR

    -   ### QUERY\_RULE\_UNKNOWN\_RUNTIME\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_UNKNOWN\_RUNTIME\_ERROR

    -   ### QUERY\_RULE\_RETRIEVE\_ROLE\_SET\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_RETRIEVE\_ROLE\_SET\_FAILED

    -   ### QUERY\_RULE\_UPDATE\_ROLE\_SET\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_UPDATE\_ROLE\_SET\_FAILED

    -   ### QUERY\_RULE\_CANNOT\_CHANGE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_CANNOT\_CHANGE\_NAME

    -   ### QUERY\_RULE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_NOT\_FOUND

    -   ### QUERY\_RULE\_PARAM\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_PARAM\_NULL

    -   ### QUERY\_RULE\_INVALID\_XML

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_INVALID\_XML

    -   ### QUERY\_RULE\_SORT\_PROPERTY\_NOT\_PRIMITIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_SORT\_PROPERTY\_NOT\_PRIMITIVE

    -   ### QUERY\_RULE\_SORT\_PROPERTY\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_SORT\_PROPERTY\_DOES\_NOT\_EXIST

    -   ### QUERY\_RULE\_ARRAY\_PARAM\_ELEMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RULE\_ARRAY\_PARAM\_ELEMENT\_NULL

    -   ### DT\_PLUGIN\_INCORRECT\_XML

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DT\_PLUGIN\_INCORRECT\_XML

    -   ### DT\_PLUGIN\_CLASSES\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DT\_PLUGIN\_CLASSES\_NOT\_FOUND

    -   ### DT\_PLUGIN\_VERSION\_UNKNOWN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DT\_PLUGIN\_VERSION\_UNKNOWN

    -   ### DT\_PLUGIN\_VERSION\_NOT\_INCREMENTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DT\_PLUGIN\_VERSION\_NOT\_INCREMENTED

    -   ### POJO\_DT\_IMPORT\_CANNOT\_GENERATE\_XSDS\_FROM\_CLASSES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POJO\_DT\_IMPORT\_CANNOT\_GENERATE\_XSDS\_FROM\_CLASSES

    -   ### POJO\_DT\_IMPORT\_CANNOT\_GENERATE\_XSDS\_FROM\_PACKAGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POJO\_DT\_IMPORT\_CANNOT\_GENERATE\_XSDS\_FROM\_PACKAGES

    -   ### POJO\_DT\_IMPORT\_CANNOT\_IMPORT\_XSDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POJO\_DT\_IMPORT\_CANNOT\_IMPORT\_XSDS

    -   ### POJO\_UNSUPPORTED\_JPA\_ANNOTATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POJO\_UNSUPPORTED\_JPA\_ANNOTATION

    -   ### DATA\_STORE\_CONFIGS\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIGS\_NOT\_FOUND

    -   ### DATA\_STORE\_CONFIG\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_NOT\_FOUND

    -   ### READ\_DATA\_STORE\_BY\_UUID\_INVALID\_DATA\_STORE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") READ\_DATA\_STORE\_BY\_UUID\_INVALID\_DATA\_STORE

    -   ### DATA\_STORE\_CONFIG\_NO\_PUBLISHED\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_NO\_PUBLISHED\_VERSION

    -   ### DATA\_STORE\_CONFIG\_ENTITY\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_ENTITY\_NOT\_FOUND

    -   ### DATA\_STORE\_CONFIG\_ENTITY\_NOT\_FOUND\_IN\_LATEST\_PUBLISHED\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_ENTITY\_NOT\_FOUND\_IN\_LATEST\_PUBLISHED\_VERSION

    -   ### DATA\_STORE\_CONFIGS\_CANNOT\_VALIDATE\_SCHEMA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIGS\_CANNOT\_VALIDATE\_SCHEMA

    -   ### DATA\_STORE\_CONFIGS\_CANNOT\_GENERATE\_DDL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIGS\_CANNOT\_GENERATE\_DDL

    -   ### DATA\_STORE\_CONFIG\_NO\_EMF\_DEFINITION\_FOR\_TYPES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_NO\_EMF\_DEFINITION\_FOR\_TYPES

    -   ### DATA\_STORE\_CONFIGS\_CANNOT\_EXECUTE\_DDL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIGS\_CANNOT\_EXECUTE\_DDL

    -   ### DATA\_STORE\_CONFIG\_NOT\_PUBLISHABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_NOT\_PUBLISHABLE

    -   ### DATA\_STORE\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_DUPLICATE\_NAME

    -   ### DATA\_STORE\_CONFIG\_NAME\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_NAME\_EMPTY

    -   ### DATA\_STORE\_CONFIG\_NAME\_WHITESPACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_NAME\_WHITESPACE

    -   ### DATA\_STORE\_CONFIG\_DATASOURCE\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_CONFIG\_DATASOURCE\_EMPTY

    -   ### ENTITY\_CONFIG\_NAME\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENTITY\_CONFIG\_NAME\_EMPTY

    -   ### ENTITY\_CONFIG\_NAME\_WHITESPACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENTITY\_CONFIG\_NAME\_WHITESPACE

    -   ### ENTITY\_CONFIG\_BAD\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENTITY\_CONFIG\_BAD\_UUID

    -   ### ENTITY\_CONFIG\_TYPE\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENTITY\_CONFIG\_TYPE\_EMPTY

    -   ### ENTITY\_CONFIG\_TYPE\_DUPLICATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENTITY\_CONFIG\_TYPE\_DUPLICATE

    -   ### DS\_ENTITY\_LOCK\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DS\_ENTITY\_LOCK\_ERROR

    -   ### DS\_ENTITIES\_LOCK\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DS\_ENTITIES\_LOCK\_ERROR

    -   ### DATA\_STORE\_SECURITY\_NOT\_INHERITABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_STORE\_SECURITY\_NOT\_INHERITABLE

    -   ### UNABLE\_TO\_DETERMINE\_DATABASE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNABLE\_TO\_DETERMINE\_DATABASE\_TYPE

    -   ### IX\_INACCESSIBLE\_DATA\_SOURCE\_FOR\_DATASTORE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_INACCESSIBLE\_DATA\_SOURCE\_FOR\_DATASTORE

    -   ### LICENSING\_INVALID\_LICENSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LICENSING\_INVALID\_LICENSE

    -   ### LICENSING\_DUPLICATE\_LICENSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LICENSING\_DUPLICATE\_LICENSE

    -   ### LICENSING\_APPLY\_INSUFFICIENT\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LICENSING\_APPLY\_INSUFFICIENT\_PERMISSIONS

    -   ### LICENSING\_VIEW\_INSUFFICIENT\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LICENSING\_VIEW\_INSUFFICIENT\_PERMISSIONS

    -   ### ANALYTIS\_REPORT\_MAX\_SIZE\_K

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_REPORT\_MAX\_SIZE\_K

    -   ### ANALYTIS\_REPORT\_MAX\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_REPORT\_MAX\_SIZE

    -   ### ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_GENERIC\_K

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_GENERIC\_K

    -   ### ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_GENERIC

    -   ### ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_INVALID\_AGGREGATION\_K

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_INVALID\_AGGREGATION\_K

    -   ### ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_INVALID\_AGGREGATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_REPORT\_UNSUPPORTED\_SPECIFICATION\_INVALID\_AGGREGATION

    -   ### RDBMS\_DATA\_SOURCE\_CONNECTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_DATA\_SOURCE\_CONNECTION\_ERROR

    -   ### RDBMS\_PRIMARY\_DATA\_SOURCE\_CONNECTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_PRIMARY\_DATA\_SOURCE\_CONNECTION\_ERROR

    -   ### RDBMS\_PRIMARY\_DATA\_SOURCE\_NOT\_CONFIGURED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_PRIMARY\_DATA\_SOURCE\_NOT\_CONFIGURED

    -   ### RDBMS\_PRIMARY\_DATA\_SOURCE\_CONFIGURATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_PRIMARY\_DATA\_SOURCE\_CONFIGURATION\_ERROR

    -   ### RDBMS\_SCHEMA\_PASSWORD\_DECRYPTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_SCHEMA\_PASSWORD\_DECRYPTION\_ERROR

    -   ### RDBMS\_DATA\_SOURCE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_DATA\_SOURCE\_NOT\_FOUND

    -   ### EDP\_API\_MALFORMED\_REQUEST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_MALFORMED\_REQUEST

    -   ### EDP\_API\_INVALID\_CONTENT\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_INVALID\_CONTENT\_TYPE

    -   ### EDP\_API\_INVALID\_URI\_PATH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_INVALID\_URI\_PATH

    -   ### EDP\_API\_MISSING\_PASSWORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_MISSING\_PASSWORD

    -   ### EDP\_API\_INVALID\_HTTP\_METHOD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_INVALID\_HTTP\_METHOD

    -   ### EDP\_PASSWORD\_API\_SAVE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_PASSWORD\_API\_SAVE\_EXCEPTION

    -   ### EDP\_API\_PASSWORD\_FAILS\_REQS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_PASSWORD\_FAILS\_REQS

    -   ### EDP\_API\_USERNAME\_FAILS\_REQS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_USERNAME\_FAILS\_REQS

    -   ### EDP\_API\_INVALID\_SCHEMA\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_INVALID\_SCHEMA\_NAME

    -   ### EDP\_API\_TABLES\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_TABLES\_NOT\_FOUND

    -   ### EDP\_PERMISSIONS\_API\_SAVE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_PERMISSIONS\_API\_SAVE\_EXCEPTION

    -   ### EDP\_API\_TABLES\_NOT\_PROVIDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_TABLES\_NOT\_PROVIDED

    -   ### EDP\_API\_PARAMETER\_NOT\_PROVIDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_PARAMETER\_NOT\_PROVIDED

    -   ### EDP\_API\_ALL\_TABLE\_UPDATES\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EDP\_API\_ALL\_TABLE\_UPDATES\_FAILED

    -   ### SCHEMA\_WIDE\_PERMISSIONS\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SCHEMA\_WIDE\_PERMISSIONS\_NOT\_ALLOWED

    -   ### POST\_TO\_FEED\_GENERAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POST\_TO\_FEED\_GENERAL

    -   ### POST\_TO\_FEED\_INVALID\_ACTION\_PM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POST\_TO\_FEED\_INVALID\_ACTION\_PM

    -   ### POST\_TO\_FEED\_INVALID\_GROUP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POST\_TO\_FEED\_INVALID\_GROUP

    -   ### POST\_TO\_FEED\_INVALID\_ICON\_DOCUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POST\_TO\_FEED\_INVALID\_ICON\_DOCUMENT

    -   ### POST\_COMMENT\_TO\_FEED\_GENERAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") POST\_COMMENT\_TO\_FEED\_GENERAL

    -   ### TEMPO\_ENGINE\_GENERAL\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_GENERAL\_FAILURE

    -   ### TEMPO\_ENGINE\_DATA\_SOURCE\_NOT\_CONFIGURED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_DATA\_SOURCE\_NOT\_CONFIGURED

    -   ### TEMPO\_ENGINE\_ALREADY\_PARENTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ALREADY\_PARENTED

    -   ### TEMPO\_ENGINE\_ALREADY\_PERSISTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ALREADY\_PERSISTED

    -   ### TEMPO\_ENGINE\_BAD\_TIMESTAMP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_BAD\_TIMESTAMP

    -   ### TEMPO\_ENGINE\_AUTHOR\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_AUTHOR\_MISSING

    -   ### TEMPO\_ENGINE\_AUTHOR\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_AUTHOR\_TOO\_LONG

    -   ### TEMPO\_ENGINE\_BODYTEXT\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_BODYTEXT\_MISSING

    -   ### TEMPO\_ENGINE\_BODYTEXT\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_BODYTEXT\_TOO\_LONG

    -   ### TEMPO\_ENGINE\_FEED\_ENTRY\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_FEED\_ENTRY\_DOES\_NOT\_EXIST

    -   ### TEMPO\_ENGINE\_ENTRY\_NOT\_ACCESSIBLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ENTRY\_NOT\_ACCESSIBLE

    -   ### TEMPO\_ENGINE\_ACTION\_LABEL\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ACTION\_LABEL\_TOO\_LONG

    -   ### TEMPO\_ENGINE\_ACTION\_SUMMARY\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ACTION\_SUMMARY\_TOO\_LONG

    -   ### TEMPO\_ENGINE\_ACTION\_INSTRUCTIONS\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ACTION\_INSTRUCTIONS\_TOO\_LONG

    -   ### TEMPO\_ENGINE\_SOURCE\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_SOURCE\_TOO\_LONG

    -   ### TEMPO\_ENGINE\_ADD\_ENTRY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ADD\_ENTRY\_FAILED

    -   ### TEMPO\_ENGINE\_ADD\_COMMENT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ADD\_COMMENT\_FAILED

    -   ### TEMPO\_ENGINE\_GET\_ENTRY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_GET\_ENTRY\_FAILED

    -   ### TEMPO\_ENGINE\_QUERY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_QUERY\_FAILED

    -   ### TEMPO\_ENGINE\_DELETE\_ENTRY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_DELETE\_ENTRY\_FAILED

    -   ### TEMPO\_ENGINE\_FEED\_ENTRY\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_FEED\_ENTRY\_INSUFFICIENT\_PRIVILEGES

    -   ### TEMPO\_ENGINE\_ADD\_PARTICIPANTS\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ADD\_PARTICIPANTS\_FAILED

    -   ### TEMPO\_ENGINE\_GET\_FEED\_BY\_UUID\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_GET\_FEED\_BY\_UUID\_FAILED

    -   ### TEMPO\_ENGINE\_ADD\_SUBSCRIPTION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_ADD\_SUBSCRIPTION\_FAILED

    -   ### TEMPO\_ENGINE\_REMOVE\_SUBSCRIPTION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_REMOVE\_SUBSCRIPTION\_FAILED

    -   ### TEMPO\_ENGINE\_FEED\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_FEED\_NOT\_FOUND

    -   ### TEMPO\_ENGINE\_FEED\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_FEED\_INSUFFICIENT\_PRIVILEGES

    -   ### TEMPO\_ENGINE\_FEED\_REQUIRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_FEED\_REQUIRED

    -   ### TEMPO\_ENGINE\_CLOSE\_SOCIAL\_TASK\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_CLOSE\_SOCIAL\_TASK\_FAILED

    -   ### TEMPO\_ENGINE\_SOCIAL\_TASK\_REQUIRES\_ASSIGNEE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_SOCIAL\_TASK\_REQUIRES\_ASSIGNEE

    -   ### TEMPO\_ENGINE\_SOCIAL\_TASK\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_SOCIAL\_TASK\_DOES\_NOT\_EXIST

    -   ### TEMPO\_ENGINE\_SOCIAL\_TASK\_NOT\_ACCESSIBLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_SOCIAL\_TASK\_NOT\_ACCESSIBLE

    -   ### TEMPO\_ENGINE\_SOCIAL\_TASK\_ALREADY\_CLOSED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_SOCIAL\_TASK\_ALREADY\_CLOSED

    -   ### TEMPO\_ENGINE\_INVALID\_FILE\_ATTACHMENTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_ENGINE\_INVALID\_FILE\_ATTACHMENTS

    -   ### UNRECOGNIZABLE\_THUMBNAIL\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNRECOGNIZABLE\_THUMBNAIL\_TYPE

    -   ### ENTRY\_DELETION\_INSUFFICENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENTRY\_DELETION\_INSUFFICENT\_PRIVILEGES

    -   ### ENTRY\_DELETION\_HAS\_COMMENTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENTRY\_DELETION\_HAS\_COMMENTS

    -   ### ANALYTIS\_RESULT\_PAGE\_MAX\_SIZE\_K

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_RESULT\_PAGE\_MAX\_SIZE\_K

    -   ### ANALYTIS\_RESULT\_PAGE\_MAX\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ANALYTIS\_RESULT\_PAGE\_MAX\_SIZE

    -   ### INVALID\_STATUS\_K

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_STATUS\_K

    -   ### INVALID\_STATUS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_STATUS

    -   ### APPIAN\_SCRIPTING\_FN\_INVALID\_STATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPIAN\_SCRIPTING\_FN\_INVALID\_STATE

    -   ### TEMPO\_FEEDS\_GENERAL\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_FEEDS\_GENERAL\_FAILURE

    -   ### TEMPO\_FEEDS\_DELETE\_NOTHING\_SELECTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_FEEDS\_DELETE\_NOTHING\_SELECTED

    -   ### TEMPO\_FEEDS\_DELETE\_GENERAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_FEEDS\_DELETE\_GENERAL

    -   ### TEMPO\_FEEDS\_SECURITY\_UPDATE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEMPO\_FEEDS\_SECURITY\_UPDATE\_FAILED

    -   ### WEB\_API\_AUTHENTICATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_AUTHENTICATION\_ERROR

    -   ### WEB\_API\_LOCKED\_ACCOUNT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_LOCKED\_ACCOUNT\_ERROR

    -   ### WEB\_API\_TEMPORARY\_PASSWORD\_EXPIRED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_TEMPORARY\_PASSWORD\_EXPIRED\_ERROR

    -   ### WEB\_API\_BAD\_CREDENTIALS\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_BAD\_CREDENTIALS\_ERROR

    -   ### WEB\_API\_TEMPORARY\_PASSWORD\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_TEMPORARY\_PASSWORD\_ERROR

    -   ### WEB\_API\_CREDENTIALS\_EXPIRED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_CREDENTIALS\_EXPIRED\_ERROR

    -   ### WEB\_API\_EXISTING\_SESSION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_EXISTING\_SESSION\_ERROR

        Used when a webapi is accessed both using a Key and JSESSION cookie

    -   ### WEB\_API\_MOBILE\_NEWER\_CLIENT\_VERSION\_REQUIRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_API\_MOBILE\_NEWER\_CLIENT\_VERSION\_REQUIRED

    -   ### MOBILE\_APP\_ID\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MOBILE\_APP\_ID\_NOT\_ALLOWED

    -   ### AUTHZ\_USER\_IS\_NOT\_IN\_ANY\_ROLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AUTHZ\_USER\_IS\_NOT\_IN\_ANY\_ROLE

    -   ### AUTHZ\_ACTION\_NOT\_ALLOWED\_FOR\_ANY\_ROLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AUTHZ\_ACTION\_NOT\_ALLOWED\_FOR\_ANY\_ROLE

    -   ### AUTHZ\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AUTHZ\_INSUFFICIENT\_PRIVILEGES

    -   ### AUTHZ\_INSUFFICIENT\_PRIVILEGES\_FOR\_THIS\_UI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AUTHZ\_INSUFFICIENT\_PRIVILEGES\_FOR\_THIS\_UI

    -   ### EXPECT\_UNABLE\_TO\_ACCEPT\_TASK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPECT\_UNABLE\_TO\_ACCEPT\_TASK

    -   ### EXPECT\_UNABLE\_TO\_ACCEPT\_TASK\_AS\_PROCESS\_NOT\_ACTIVE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPECT\_UNABLE\_TO\_ACCEPT\_TASK\_AS\_PROCESS\_NOT\_ACTIVE\_ERROR

    -   ### RDBMS\_SN\_RESULTSET\_VALUE\_NOT\_COMPATIBLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_SN\_RESULTSET\_VALUE\_NOT\_COMPATIBLE

    -   ### RDBMS\_SN\_LOAD\_DATA\_GEN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_SN\_LOAD\_DATA\_GEN\_ERROR

    -   ### RDBMS\_SN\_INVALID\_LOAD\_DATA\_PATH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_SN\_INVALID\_LOAD\_DATA\_PATH

    -   ### RDBMS\_SN\_INVALID\_DROP\_DATABASE\_COMMAND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDBMS\_SN\_INVALID\_DROP\_DATABASE\_COMMAND

    -   ### BACKGROUND\_ACTION\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BACKGROUND\_ACTION\_GENERIC\_ERROR

    -   ### BACKGROUND\_ACTION\_URL\_FORBIDDEN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BACKGROUND\_ACTION\_URL\_FORBIDDEN

    -   ### BACKGROUND\_ACTION\_URL\_SELF\_FORWARD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BACKGROUND\_ACTION\_URL\_SELF\_FORWARD

    -   ### FORM\_RENDER\_COLLAB\_DOCUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORM\_RENDER\_COLLAB\_DOCUMENT

    -   ### FORM\_RUNTIME\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORM\_RUNTIME\_MISMATCH

    -   ### WEB\_SECURITY\_NULL\_BYTE\_REQUEST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_SECURITY\_NULL\_BYTE\_REQUEST

    -   ### WEB\_SECURITY\_UNSUPPORTED\_METHOD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_SECURITY\_UNSUPPORTED\_METHOD

    -   ### INVALID\_TYPE\_PROPERTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_TYPE\_PROPERTY

    -   ### INVALID\_DOT\_NOTATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_DOT\_NOTATION

    -   ### PAGING\_CONFIGURATION\_START\_INDEX\_TOO\_SMALL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAGING\_CONFIGURATION\_START\_INDEX\_TOO\_SMALL

    -   ### DATATYPE\_FIELD\_COMPARATOR\_SORT\_PROPERTY\_NOT\_PRIMITIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATATYPE\_FIELD\_COMPARATOR\_SORT\_PROPERTY\_NOT\_PRIMITIVE

    -   ### DATATYPE\_FIELD\_COMPARATOR\_SORT\_PROPERTIES\_DIFFERENT\_TYPES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATATYPE\_FIELD\_COMPARATOR\_SORT\_PROPERTIES\_DIFFERENT\_TYPES

    -   ### APPIANWEBMVC\_ACTION\_CLASS\_NOT\_DEFINED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPIANWEBMVC\_ACTION\_CLASS\_NOT\_DEFINED

    -   ### EXPRESSION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPRESSION\_ERROR

    -   ### EXPRESSION\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPRESSION\_INVALID

    -   ### LOOPING\_FUNCTION\_NON\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LOOPING\_FUNCTION\_NON\_LIST

    -   ### LOOPING\_FUNCTION\_NON\_RULE\_OF\_FUNCTION\_DOMAIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LOOPING\_FUNCTION\_NON\_RULE\_OF\_FUNCTION\_DOMAIN

    -   ### KEYWORD\_DUPLICATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYWORD\_DUPLICATE

    -   ### KEYWORD\_MIXED\_WITH\_NON\_KEYWORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYWORD\_MIXED\_WITH\_NON\_KEYWORD

    -   ### KEYWORD\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYWORD\_UNSUPPORTED

    -   ### KEYWORD\_DUPLICATE\_LOCAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYWORD\_DUPLICATE\_LOCAL

    -   ### SAVE\_OPERATOR\_LEFT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAVE\_OPERATOR\_LEFT

    -   ### SAVE\_OPERATOR\_RIGHT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAVE\_OPERATOR\_RIGHT

    -   ### CANNOT\_DEREFERENCE\_SELF\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_DEREFERENCE\_SELF\_REFERENCE

    -   ### CANNOT\_DEREFERENCE\_TOO\_MANY\_LEVELS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_DEREFERENCE\_TOO\_MANY\_LEVELS

    -   ### UNSAFE\_URI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNSAFE\_URI

    -   ### CANNOT\_USE\_THIS\_RULE\_INSIDE\_LOOPING\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_USE\_THIS\_RULE\_INSIDE\_LOOPING\_FUNCTION

    -   ### LOAD\_VARIABLE\_INSIDE\_LOOPING\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LOAD\_VARIABLE\_INSIDE\_LOOPING\_FUNCTION

    -   ### INVALID\_LOCAL\_VARIABLE\_INSIDE\_LOOPING\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_LOCAL\_VARIABLE\_INSIDE\_LOOPING\_FUNCTION

    -   ### INVALID\_LOAD\_STATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_LOAD\_STATE

    -   ### INVALID\_CHART\_COLOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_CHART\_COLOR

    -   ### SAVE\_OPERATOR\_RUNTIME\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAVE\_OPERATOR\_RUNTIME\_ERROR

    -   ### INVALID\_SAVE\_INTO

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SAVE\_INTO

    -   ### INVALID\_SAVE\_BINDING\_IN\_RIGHT\_SIDE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SAVE\_BINDING\_IN\_RIGHT\_SIDE

    -   ### INVALID\_SAVE\_BINDING\_IN\_LEFT\_SIDE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SAVE\_BINDING\_IN\_LEFT\_SIDE

    -   ### INVALID\_SAVE\_BINDING\_IN\_FIRST\_ARGUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SAVE\_BINDING\_IN\_FIRST\_ARGUMENT

    -   ### INVALID\_SAVE\_INTO\_WITH\_BINDING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SAVE\_INTO\_WITH\_BINDING

    -   ### LOOPING\_FUNCTION\_NON\_LIST\_REDUCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LOOPING\_FUNCTION\_NON\_LIST\_REDUCE

    -   ### PARAMETER\_NOT\_CONTEXT\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PARAMETER\_NOT\_CONTEXT\_REFERENCE

    -   ### TRANSACTIONAL\_REACTION\_BEGIN\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSACTIONAL\_REACTION\_BEGIN\_FAILED

    -   ### TRANSACTIONAL\_REACTION\_COMMIT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSACTIONAL\_REACTION\_COMMIT\_FAILED

    -   ### TRANSACTIONAL\_REACTION\_ROLLBACK\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSACTIONAL\_REACTION\_ROLLBACK\_FAILED

    -   ### EXPRESSION\_ERROR\_HIDDEN\_FUNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPRESSION\_ERROR\_HIDDEN\_FUNC

    -   ### KEYWORD\_REQUIRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYWORD\_REQUIRED

    -   ### INVALID\_KEYWORD\_COMBINATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_KEYWORD\_COMBINATION

    -   ### MISSING\_KEYWORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MISSING\_KEYWORD

    -   ### INVALID\_SAVE\_INTO\_LOCAL\_VAR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SAVE\_INTO\_LOCAL\_VAR

    -   ### INVALID\_DOMAIN\_LOCAL\_VAR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_DOMAIN\_LOCAL\_VAR

    -   ### KEYWORD\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYWORD\_INVALID

    -   ### INVALID\_EXPLICIT\_DEPENDENCIES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_EXPLICIT\_DEPENDENCIES

    -   ### REFRESH\_VARIABLE\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REFRESH\_VARIABLE\_NOT\_ALLOWED

    -   ### INVALID\_SAVE\_INTO\_INTERVAL\_LOCAL\_VAR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SAVE\_INTO\_INTERVAL\_LOCAL\_VAR

    -   ### CANNOT\_USE\_ID\_REFERABLE\_AS\_LOCAL\_VAR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_USE\_ID\_REFERABLE\_AS\_LOCAL\_VAR

    -   ### REFRESH\_ALWAYS\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REFRESH\_ALWAYS\_NOT\_ALLOWED

    -   ### INVALID\_LV\_REFRESH\_AFTER\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_LV\_REFRESH\_AFTER\_VALUE

    -   ### CANNOT\_USE\_DYNAMIC\_LV\_REFRESH\_AFTER\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_USE\_DYNAMIC\_LV\_REFRESH\_AFTER\_VALUE

    -   ### COMPONENT\_CANNOT\_USE\_DYNAMIC\_LV\_REFRESH\_AFTER\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") COMPONENT\_CANNOT\_USE\_DYNAMIC\_LV\_REFRESH\_AFTER\_VALUE

    -   ### CANNOT\_HAVE\_LOAD\_OR\_LOCAL\_VARIABLES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_HAVE\_LOAD\_OR\_LOCAL\_VARIABLES

    -   ### UPDATE\_DATA\_PARAM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_DATA\_PARAM\_TYPE

    -   ### UPDATE\_KEY\_PARAM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_KEY\_PARAM\_TYPE

    -   ### CANNOT\_HAVE\_GIVEN\_PARAMS\_WITH\_IGNORE\_IN\_SAVE\_MODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_HAVE\_GIVEN\_PARAMS\_WITH\_IGNORE\_IN\_SAVE\_MODE

    -   ### CAN\_ONLY\_ACCESS\_IGNORE\_IN\_SAVE\_MODE\_INSIDE\_SYSTEM\_RULE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CAN\_ONLY\_ACCESS\_IGNORE\_IN\_SAVE\_MODE\_INSIDE\_SYSTEM\_RULE

    -   ### ASYNC\_VARIABLE\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ASYNC\_VARIABLE\_NOT\_ALLOWED

    -   ### ASYNC\_VARIABLE\_EXECUTION\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ASYNC\_VARIABLE\_EXECUTION\_TIMEOUT

    -   ### PROCESS\_UPGRADE\_UNSUPPORTED\_ALERT\_RECIPIENTS\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_UPGRADE\_UNSUPPORTED\_ALERT\_RECIPIENTS\_EXPRESSION

    -   ### PROCESS\_UPGRADE\_INCOMPLETE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_UPGRADE\_INCOMPLETE

    -   ### PROCESS\_UPGRADE\_DATA\_TYPE\_EVOLUTION\_TRANSFORMATION\_ERRORS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_UPGRADE\_DATA\_TYPE\_EVOLUTION\_TRANSFORMATION\_ERRORS

    -   ### MISSING\_I18N\_BUNDLES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MISSING\_I18N\_BUNDLES

    -   ### RECORD\_SECURITY\_NOT\_ENABLED\_FOR\_ENTITY

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SECURITY\_NOT\_ENABLED\_FOR\_ENTITY

        Deprecated.

    -   ### RECORD\_SECURITY\_INVALID\_RECORD\_IDENTIFIER\_TYPE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SECURITY\_INVALID\_RECORD\_IDENTIFIER\_TYPE

        Deprecated.

    -   ### RECORD\_SECURITY\_REQUIRES\_DATA\_STORE\_ADMIN

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SECURITY\_REQUIRES\_DATA\_STORE\_ADMIN

        Deprecated.

    -   ### RECORD\_SECURITY\_REQUIRES\_EDITOR\_PERMISSION

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SECURITY\_REQUIRES\_EDITOR\_PERMISSION

        Deprecated.

    -   ### FROM\_JSON\_SERIALIZATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FROM\_JSON\_SERIALIZATION

    -   ### TO\_JSON\_SERIALIZATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TO\_JSON\_SERIALIZATION

    -   ### INVALID\_JSON\_OBJECT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_JSON\_OBJECT

    -   ### NULL\_JSON\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NULL\_JSON\_PARAMETER

    -   ### MULTIDIMENSIONAL\_ARRAYS\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MULTIDIMENSIONAL\_ARRAYS\_UNSUPPORTED

    -   ### TO\_JSON\_SERIALIZATION\_16\_1

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TO\_JSON\_SERIALIZATION\_16\_1

    -   ### INVALID\_JSON\_OBJECT\_WITHOUT\_FRAGMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_JSON\_OBJECT\_WITHOUT\_FRAGMENT

    -   ### QUERY\_VALIDATOR\_INVALID\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_FIELD

    -   ### QUERY\_VALIDATOR\_SORTING\_BLANK\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_SORTING\_BLANK\_FIELD

    -   ### QUERY\_VALIDATOR\_INVALID\_INDEXING\_MULTIPLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_INDEXING\_MULTIPLE

    -   ### QUERY\_VALIDATOR\_INVALID\_OPERATION\_SORTING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_OPERATION\_SORTING

    -   ### QUERY\_VALIDATOR\_INVALID\_OPERATION\_GROUPING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_OPERATION\_GROUPING

    -   ### QUERY\_VALIDATOR\_INVALID\_OPERATION\_AGGREGATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_OPERATION\_AGGREGATION

    -   ### QUERY\_VALIDATOR\_SORTING\_INVALID\_FIELD\_GROUPING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_SORTING\_INVALID\_FIELD\_GROUPING

    -   ### QUERY\_VALIDATOR\_INVALID\_AGGREGATION\_HEURISTIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_AGGREGATION\_HEURISTIC

    -   ### QUERY\_VALIDATOR\_ALIAS\_NOT\_UNIQUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_ALIAS\_NOT\_UNIQUE

    -   ### QUERY\_VALIDATOR\_INVALID\_ALIAS\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_ALIAS\_NAME

    -   ### QUERY\_VALIDATOR\_NO\_GROUP\_BY\_FIELDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_NO\_GROUP\_BY\_FIELDS

    -   ### QUERY\_VALIDATOR\_NULL\_PAGING\_INFO

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_NULL\_PAGING\_INFO

    -   ### QUERY\_VALIDATOR\_NULL\_OR\_EMPTY\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_NULL\_OR\_EMPTY\_EXPRESSION

    -   ### QUERY\_VALIDATOR\_CANNOT\_SORT\_BY\_MULTIPLE\_FIELDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_CANNOT\_SORT\_BY\_MULTIPLE\_FIELDS

    -   ### QUERY\_VALIDATOR\_NO\_FIELDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_NO\_FIELDS

    -   ### QUERY\_VALIDATOR\_FILTER\_CANNOT\_APPLY\_OPERATOR\_TO\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_CANNOT\_APPLY\_OPERATOR\_TO\_FIELD

    -   ### QUERY\_VALIDATOR\_FILTER\_INVALID\_OPERATOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_INVALID\_OPERATOR

    -   ### QUERY\_VALIDATOR\_FILTER\_BLANK\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_BLANK\_VALUE

    -   ### QUERY\_VALIDATOR\_FILTER\_ALIAS\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_ALIAS\_NOT\_ALLOWED

    -   ### QUERY\_VALIDATOR\_FILTER\_BLANK\_FIELD\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_BLANK\_FIELD\_NAME

    -   ### QUERY\_VALIDATOR\_FILTER\_INVALID\_FIELD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_INVALID\_FIELD\_TYPE

    -   ### QUERY\_VALIDATOR\_FILTER\_INVALID\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_INVALID\_EXPRESSION

    -   ### QUERY\_VALIDATOR\_FILTER\_LOGICAL\_EXPRESSION\_INVALID\_OPERATOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_LOGICAL\_EXPRESSION\_INVALID\_OPERATOR

    -   ### QUERY\_VALIDATOR\_FILTER\_LOGICAL\_EXPRESSION\_MISSING\_CRITERIA

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_LOGICAL\_EXPRESSION\_MISSING\_CRITERIA

        Deprecated.

        passing empty criteria to the "filters" parameter of queryLogicalExpression no longer results in an error.

    -   ### QUERY\_VALIDATOR\_FILTER\_BETWEEN\_INVALID\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_BETWEEN\_INVALID\_LIST

    -   ### QUERY\_RECORD\_CANNOT\_QUERY\_EXPRESSION\_BASED\_RECORDS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RECORD\_CANNOT\_QUERY\_EXPRESSION\_BASED\_RECORDS

        Deprecated.

        use [`RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS`](#RECORD_QUERY_CANNOT_QUERY_EXPRESSION_BASED_RECORDS) instead.

    -   ### QUERY\_VALIDATOR\_SEARCH\_NULL\_OR\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_SEARCH\_NULL\_OR\_EMPTY

    -   ### QUERY\_VALIDATOR\_GROUPING\_AND\_AGGREGATION\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_GROUPING\_AND\_AGGREGATION\_NOT\_SUPPORTED

    -   ### QUERY\_VALIDATOR\_SORTING\_INVALID\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_SORTING\_INVALID\_FIELD

    -   ### QUERY\_VALIDATOR\_GROUPBY\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_GROUPBY\_FIELD

    -   ### QUERY\_VALIDATOR\_SELECTION\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_SELECTION\_NOT\_SUPPORTED

    -   ### QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_SELECTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_SELECTION

    -   ### QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_FILTERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_FILTERS

    -   ### QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_SORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_SORT

    -   ### QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_USER\_FILTERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_USER\_FILTERS

    -   ### QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_DEFAULT\_FILTERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_INVALID\_RELATIONSHIP\_JOIN\_ON\_DEFAULT\_FILTERS

    -   ### QUERY\_VALIDATOR\_AND\_ALL\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_AND\_ALL\_NOT\_SUPPORTED

    -   ### RECORD\_QUERY\_AND\_ALL\_INVALID\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_AND\_ALL\_INVALID\_FIELD

    -   ### RECORD\_QUERY\_AND\_ALL\_MORE\_THAN\_ONE\_SHARED\_PATH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_AND\_ALL\_MORE\_THAN\_ONE\_SHARED\_PATH

    -   ### QUERY\_VALIDATOR\_FILTER\_CANNOT\_APPLY\_OPERATOR\_TO\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_FILTER\_CANNOT\_APPLY\_OPERATOR\_TO\_RELATIONSHIP

    -   ### QUERY\_VALIDATOR\_GROUPING\_SORT\_FILTER\_ON\_SECURED\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_VALIDATOR\_GROUPING\_SORT\_FILTER\_ON\_SECURED\_FIELD

    -   ### RECORD\_QUERY\_EXPRESSION\_MISSING\_FIELDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_EXPRESSION\_MISSING\_FIELDS

    -   ### RECORD\_QUERY\_EXPRESSION\_INVALID\_AGGREGATION\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_EXPRESSION\_INVALID\_AGGREGATION\_INPUT

    -   ### RECORD\_QUERY\_CANNOT\_QUERY\_EXPRESSION\_BASED\_RECORDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_CANNOT\_QUERY\_EXPRESSION\_BASED\_RECORDS

    -   ### RECORD\_QUERY\_NULL\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_NULL\_PARAMETER

    -   ### RECORD\_QUERY\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_INVALID\_TYPE

    -   ### RECORD\_QUERY\_CANNOT\_QUERY\_SYNC\_BACKED\_RECORDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_CANNOT\_QUERY\_SYNC\_BACKED\_RECORDS

    -   ### RECORD\_QUERY\_CANNOT\_QUERY\_RECORDS\_WITHOUT\_FIELD\_REFERENCES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_CANNOT\_QUERY\_RECORDS\_WITHOUT\_FIELD\_REFERENCES

    -   ### QUERY\_RECORD\_BY\_IDENTIFIER\_CANNOT\_QUERY\_RECORD\_WITHOUT\_FIELD\_REFERENCES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_RECORD\_BY\_IDENTIFIER\_CANNOT\_QUERY\_RECORD\_WITHOUT\_FIELD\_REFERENCES

    -   ### RECORD\_QUERY\_CANNOT\_QUERY\_NONSYNCED\_RECORDS\_FOR\_TRANSFORMATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_CANNOT\_QUERY\_NONSYNCED\_RECORDS\_FOR\_TRANSFORMATION

    -   ### RECORD\_QUERY\_TOO\_MANY\_QUERY\_CALLS\_FOR\_TRANSFORMATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_TOO\_MANY\_QUERY\_CALLS\_FOR\_TRANSFORMATION

    -   ### RECORD\_QUERY\_CANNOT\_QUERY\_IN\_LOOPING\_FUNCTION\_FOR\_TRANSFORMATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_CANNOT\_QUERY\_IN\_LOOPING\_FUNCTION\_FOR\_TRANSFORMATION

    -   ### RECORD\_QUERY\_CANNOT\_QUERY\_TRANSFORMATION\_RECORDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_CANNOT\_QUERY\_TRANSFORMATION\_RECORDS

    -   ### RECORD\_QUERY\_RECORD\_POWERED\_COMPONENT\_XL\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_RECORD\_POWERED\_COMPONENT\_XL\_TEXT

    -   ### RECORD\_QUERY\_AGGREGATION\_SORT\_XL\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_AGGREGATION\_SORT\_XL\_TEXT

    -   ### RECORD\_QUERY\_FILTER\_XL\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_FILTER\_XL\_TEXT

    -   ### RECORD\_QUERY\_ONE\_TO\_MANY\_XL\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_ONE\_TO\_MANY\_XL\_TEXT

    -   ### RECORD\_QUERY\_RELATED\_RECORD\_DATA\_SORT\_XL\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_RELATED\_RECORD\_DATA\_SORT\_XL\_TEXT

    -   ### RECORD\_QUERY\_CANNOT\_QUERY\_SYS\_DOC\_RT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_QUERY\_CANNOT\_QUERY\_SYS\_DOC\_RT

    -   ### RECORD\_CANNOT\_ACCESS\_SOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_ACCESS\_SOURCE

    -   ### RECORD\_TYPE\_INSUFFICIENT\_PRIVILEGES\_TEMP

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_INSUFFICIENT\_PRIVILEGES\_TEMP

        Deprecated.

        `ErrorCode.RECORD_TYPE_NOT_FOUND_INSUFFICIENT_PRIVILEGES`

    -   ### RECORD\_CANNOT\_RETRIEVE\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_RETRIEVE\_DATA

    -   ### RECORD\_TYPE\_INVALID\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_INVALID\_URL\_STUB

    -   ### RECORD\_TYPE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### RECORD\_TYPE\_DATA\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_DATA\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### RECORD\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### RECORD\_CANNOT\_DISPLAY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_DISPLAY

    -   ### RECORD\_INVALID\_LIST\_VIEW\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_INVALID\_LIST\_VIEW\_EXPRESSION

    -   ### RECORD\_TYPE\_RELATED\_ACTION\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_RELATED\_ACTION\_NOT\_FOUND

    -   ### RECORD\_UI\_INITIALIZATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UI\_INITIALIZATION

    -   ### RECORD\_UI\_HEADER

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UI\_HEADER

        Deprecated.

        see RECORD\_UI\_HEADER\_DETAIL

    -   ### RECORD\_UI\_DETAIL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UI\_DETAIL

        Deprecated.

        see RECORD\_UI\_HEADER\_DETAIL

    -   ### RECORD\_CANNOT\_ACCESS\_SOURCE\_PROCESS\_MODEL\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_ACCESS\_SOURCE\_PROCESS\_MODEL\_UUID

    -   ### RECORD\_CANNOT\_ACCESS\_DASHBOARD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_ACCESS\_DASHBOARD

    -   ### RECORD\_ITEM\_PROVIDER\_ERROR\_RESOLVING\_FACETS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_ITEM\_PROVIDER\_ERROR\_RESOLVING\_FACETS

    -   ### RECORD\_ITEM\_PROVIDER\_ERROR\_RETRIVING\_LIST\_VIEW\_DATA\_FOR\_FEED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_ITEM\_PROVIDER\_ERROR\_RETRIVING\_LIST\_VIEW\_DATA\_FOR\_FEED

    -   ### RECORD\_CANNOT\_EVALUATE\_FILTERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_EVALUATE\_FILTERS

    -   ### RECORD\_CANNOT\_EVALUATE\_FACETS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_EVALUATE\_FACETS

    -   ### RECORD\_UI\_HEADER\_DETAIL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UI\_HEADER\_DETAIL

    -   ### RECORD\_CANNOT\_EVALUATE\_FACET

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_EVALUATE\_FACET

    -   ### RECORD\_ONLY\_ONE\_FACET\_PER\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_ONLY\_ONE\_FACET\_PER\_EXPRESSION

    -   ### RECORD\_INVALID\_DEFAULT\_FILTER\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_INVALID\_DEFAULT\_FILTER\_TYPE

    -   ### RECORD\_CANNOT\_RETRIEVE\_DATA\_MISSING\_DATATYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_CANNOT\_RETRIEVE\_DATA\_MISSING\_DATATYPE

    -   ### RECORD\_LIST\_VIEW\_SRC\_EXPRESSION\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_LIST\_VIEW\_SRC\_EXPRESSION\_INVALID\_TYPE

    -   ### RECORD\_RECORD\_VIEW\_SRC\_EXPRESSION\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_RECORD\_VIEW\_SRC\_EXPRESSION\_INVALID\_TYPE

    -   ### RECORD\_RECORD\_VIEW\_SRC\_EXPRESSION\_INVALID\_DATA\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_RECORD\_VIEW\_SRC\_EXPRESSION\_INVALID\_DATA\_LENGTH

    -   ### RECORD\_SOURCE\_MISMATCHED\_DATASUBSET\_LENGTHS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SOURCE\_MISMATCHED\_DATASUBSET\_LENGTHS

    -   ### RECORD\_REFERENCE\_INVALID\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_REFERENCE\_INVALID\_UUID

    -   ### RECORD\_REFERENCE\_INVALID\_PROPERTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_REFERENCE\_INVALID\_PROPERTY

    -   ### RECORD\_LIST\_EVALUATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_LIST\_EVALUATION\_ERROR

    -   ### RECORD\_TYPE\_USER\_FILTER\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_USER\_FILTER\_NOT\_FOUND

    -   ### RECORD\_MODERN\_LIST\_VIEW\_SRC\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MODERN\_LIST\_VIEW\_SRC\_INVALID\_TYPE

    -   ### RECORD\_MODERN\_RECORD\_VIEW\_SRC\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MODERN\_RECORD\_VIEW\_SRC\_INVALID\_TYPE

    -   ### RECORD\_MODERN\_RECORD\_VIEW\_SRC\_INVALID\_DATA\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MODERN\_RECORD\_VIEW\_SRC\_INVALID\_DATA\_LENGTH

    -   ### RECORD\_PROXY\_TYPE\_CREATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_PROXY\_TYPE\_CREATION\_FAILED

    -   ### RECORD\_TYPE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_NOT\_FOUND

    -   ### RECORD\_TYPE\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_INSUFFICIENT\_PRIVILEGES

    -   ### RECORD\_TYPE\_INVALID\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_INVALID\_SYNC

    -   ### RECORD\_TYPE\_DATA\_RETRIEVAL\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_DATA\_RETRIEVAL\_UNEXPECTED\_ERROR

    -   ### RECORD\_FILTERS\_FIELD\_REFERENCE\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FILTERS\_FIELD\_REFERENCE\_INVALID

    -   ### RECORD\_FILTERS\_FIELD\_REFERENCE\_RECORD\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FILTERS\_FIELD\_REFERENCE\_RECORD\_TYPE\_MISMATCH

    -   ### RECORD\_FILTERS\_FIELD\_NOT\_RECORD\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FILTERS\_FIELD\_NOT\_RECORD\_FIELD

    -   ### GROUPING\_ON\_X\_TO\_MANY\_RELATIONSHIP\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPING\_ON\_X\_TO\_MANY\_RELATIONSHIP\_NOT\_SUPPORTED

    -   ### SORTING\_BY\_RELATED\_FIELD\_FROM\_X\_TO\_MANY\_RELATIONSHIP\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SORTING\_BY\_RELATED\_FIELD\_FROM\_X\_TO\_MANY\_RELATIONSHIP\_NOT\_SUPPORTED

    -   ### RECORD\_TYPE\_INVALID\_SYNC\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_INVALID\_SYNC\_GENERIC

    -   ### INVALID\_RECORD\_LEVEL\_SECURITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_RECORD\_LEVEL\_SECURITY

    -   ### RECORD\_TYPE\_INVALID\_SYNC\_ATTRIBUTE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_INVALID\_SYNC\_ATTRIBUTE

    -   ### FAILED\_TO\_GENERATE\_UNIQUE\_RECORD\_TYPE\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FAILED\_TO\_GENERATE\_UNIQUE\_RECORD\_TYPE\_URL\_STUB

    -   ### RECORD\_TYPE\_ACTION\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_ACTION\_NOT\_FOUND

    -   ### RECORD\_TYPE\_INVALID\_SYNC\_RELATED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_INVALID\_SYNC\_RELATED

    -   ### RECORD\_TYPE\_RECORD\_FIELD\_SECURITY\_PRECEDENT\_CUSTOM\_FIELDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_RECORD\_FIELD\_SECURITY\_PRECEDENT\_CUSTOM\_FIELDS

    -   ### APPLY\_VALIDATIONS\_CONTEXT\_PARAM\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLY\_VALIDATIONS\_CONTEXT\_PARAM\_NULL

    -   ### APPLY\_VALIDATIONS\_RECORD\_FIELD\_PARAM\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLY\_VALIDATIONS\_RECORD\_FIELD\_PARAM\_NULL

    -   ### APPLY\_VALIDATIONS\_RECORD\_FIELD\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLY\_VALIDATIONS\_RECORD\_FIELD\_INVALID\_TYPE

    -   ### APPLY\_VALIDATIONS\_CONTEXT\_PARAM\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLY\_VALIDATIONS\_CONTEXT\_PARAM\_INVALID\_TYPE

    -   ### APPLY\_VALIDATIONS\_RECORD\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLY\_VALIDATIONS\_RECORD\_TYPE\_MISMATCH

    -   ### APPLY\_VALIDATIONS\_FUNCTION\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLY\_VALIDATIONS\_FUNCTION\_NOT\_AVAILABLE

    -   ### APPLY\_VALIDATIONS\_INVALID\_RETURN\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLY\_VALIDATIONS\_INVALID\_RETURN\_TYPE

    -   ### CANNOT\_FOLLOW\_SELF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CANNOT\_FOLLOW\_SELF

    -   ### USER\_INSUFFICIENT\_PRIVILEGES\_TO\_ACCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") USER\_INSUFFICIENT\_PRIVILEGES\_TO\_ACCESS

    -   ### UNEXPECTED\_ADS\_QUERY\_ERROR\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNEXPECTED\_ADS\_QUERY\_ERROR\_GENERIC

    -   ### MW2DS\_MIXED\_DATA\_STORES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MW2DS\_MIXED\_DATA\_STORES

    -   ### MW2DS\_CANNOT\_RETRIEVE\_ENTITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MW2DS\_CANNOT\_RETRIEVE\_ENTITY

    -   ### MW2DS\_DATA\_SOURCE\_CONNECTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MW2DS\_DATA\_SOURCE\_CONNECTION

    -   ### MW2DS\_DURING\_WRITE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MW2DS\_DURING\_WRITE

    -   ### MW2DS\_WRITE\_PERMISSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MW2DS\_WRITE\_PERMISSION

    -   ### MW2DS\_ACCESS\_PERMISSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MW2DS\_ACCESS\_PERMISSION

    -   ### PASSWORD\_HASH\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PASSWORD\_HASH\_ERROR

    -   ### SALT\_RETRIEVAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SALT\_RETRIEVAL\_ERROR

    -   ### SALT\_INITIALIZATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SALT\_INITIALIZATION\_ERROR

    -   ### PASSWORD\_EXTERNALLY\_MANAGED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PASSWORD\_EXTERNALLY\_MANAGED

    -   ### PASSWORD\_MINIMUM\_AGE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PASSWORD\_MINIMUM\_AGE\_ERROR

    -   ### PASSWORDS\_PROPERTIES\_DELETION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PASSWORDS\_PROPERTIES\_DELETION\_ERROR

    -   ### CONFIGRUATION\_DECRYPTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONFIGRUATION\_DECRYPTION\_ERROR

    -   ### KEYSTORE\_INVALID\_MISSING\_FILE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYSTORE\_INVALID\_MISSING\_FILE

    -   ### KEYSTORE\_INVALID\_MISSING\_PASSWORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYSTORE\_INVALID\_MISSING\_PASSWORD

    -   ### KEYSTORE\_UNABLE\_TO\_INITIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYSTORE\_UNABLE\_TO\_INITIALIZE

    -   ### KEYSTORE\_INVALID\_CRYPTOGRAPHER\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYSTORE\_INVALID\_CRYPTOGRAPHER\_TYPE

    -   ### KEYSTORE\_UNABLE\_TO\_BUILD\_LOCK\_FILE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYSTORE\_UNABLE\_TO\_BUILD\_LOCK\_FILE

    -   ### KEYSTORE\_UNABLE\_TO\_GENERATE\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KEYSTORE\_UNABLE\_TO\_GENERATE\_KEY

    -   ### KUDOS\_GIVE\_SELF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") KUDOS\_GIVE\_SELF

    -   ### DFDS\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_GENERIC\_ERROR

    -   ### DFDS\_MIXED\_DATA\_STORES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_MIXED\_DATA\_STORES

    -   ### DFDS\_CANNOT\_RETRIEVE\_ENTITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_CANNOT\_RETRIEVE\_ENTITY

    -   ### DFDS\_DATA\_SOURCE\_CONNECTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_DATA\_SOURCE\_CONNECTION

    -   ### DFDS\_INSUFFICIENT\_PERMISSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_INSUFFICIENT\_PERMISSION

    -   ### DFDS\_NO\_PRIMARY\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_NO\_PRIMARY\_KEY

    -   ### DFDS\_NULL\_ENTITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_NULL\_ENTITY

    -   ### DFDS\_CANNOT\_CAST\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DFDS\_CANNOT\_CAST\_KEY

    -   ### CRYPTOGRAPHER\_INVALID\_DECRYPTION\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CRYPTOGRAPHER\_INVALID\_DECRYPTION\_KEY

    -   ### CRYPTOGRAPHER\_INVALID\_ENCRYPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CRYPTOGRAPHER\_INVALID\_ENCRYPTION

    -   ### CRYPTOGRAPHER\_INVALID\_DECRYPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CRYPTOGRAPHER\_INVALID\_DECRYPTION

    -   ### CRYPTOGRAPHER\_INVALID\_DECRYPTION\_NOT\_ENCRYPTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CRYPTOGRAPHER\_INVALID\_DECRYPTION\_NOT\_ENCRYPTED

    -   ### CRYPTOGRAPHER\_INVALID\_ENCRYPTION\_ALREADY\_ENCRYPTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CRYPTOGRAPHER\_INVALID\_ENCRYPTION\_ALREADY\_ENCRYPTED

    -   ### UI\_CONTAINER\_INVALID\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UI\_CONTAINER\_INVALID\_URL\_STUB

    -   ### UI\_CONTAINER\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UI\_CONTAINER\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### UI\_SERVICE\_CANNOT\_CREATE\_CONTEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UI\_SERVICE\_CANNOT\_CREATE\_CONTEXT

    -   ### UI\_SERVICE\_CANNOT\_INTERPRET\_CONTEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UI\_SERVICE\_CANNOT\_INTERPRET\_CONTEXT

    -   ### TO\_XML\_CANNOT\_CONVERT\_SYSTEM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TO\_XML\_CANNOT\_CONVERT\_SYSTEM\_TYPE

    -   ### TO\_JSON\_CANNOT\_CONVERT\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TO\_JSON\_CANNOT\_CONVERT\_TYPE

    -   ### TO\_EXPRESSION\_CANNOT\_CONVERT\_SYSTEM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TO\_EXPRESSION\_CANNOT\_CONVERT\_SYSTEM\_TYPE

    -   ### EXTERNAL\_SYSTEM\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### TYPE\_VALIDATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION

    -   ### TYPE\_VALIDATION\_COLUMN\_ARRAY\_LAYOUT\_COLUMNS\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_ARRAY\_LAYOUT\_COLUMNS\_NULL

    -   ### TYPE\_VALIDATION\_COLUMN\_ARRAY\_LAYOUT\_COLUMNS\_CONTAINING\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_ARRAY\_LAYOUT\_COLUMNS\_CONTAINING\_NULL

    -   ### TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_NULL

    -   ### TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_CONTAINING\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_CONTAINING\_NULL

    -   ### TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_FORM\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_FORM\_LAYOUT

    -   ### TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_ARRAY\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_ARRAY\_LAYOUT

    -   ### TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_LAYOUT

    -   ### TYPE\_VALIDATION\_SECTION\_LAYOUT\_CONTAINS\_SECTION\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_SECTION\_LAYOUT\_CONTAINS\_SECTION\_LAYOUT

    -   ### TYPE\_VALIDATION\_GRID\_COLUMN\_ALIGNMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_COLUMN\_ALIGNMENT

    -   ### TYPE\_VALIDATION\_GRID\_NULL\_COLUMNS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_NULL\_COLUMNS

    -   ### TYPE\_VALIDATION\_GRID\_NULL\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_NULL\_VALUE

    -   ### TYPE\_VALIDATION\_GRID\_INVALID\_VALUE\_START\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_INVALID\_VALUE\_START\_INDEX

    -   ### TYPE\_VALIDATION\_GRID\_INVALID\_VALUE\_BATCH\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_INVALID\_VALUE\_BATCH\_SIZE

    -   ### TYPE\_VALIDATION\_GRID\_INVALID\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_INVALID\_DATA

    -   ### TYPE\_VALIDATION\_GRID\_INVALID\_TOTAL\_COUNT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_INVALID\_TOTAL\_COUNT

    -   ### TYPE\_VALIDATION\_GRID\_INVALID\_VALUE\_AND\_TOTAL\_COUNT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_INVALID\_VALUE\_AND\_TOTAL\_COUNT

    -   ### TYPE\_VALIDATION\_GRID\_VALUE\_START\_INDEX\_AND\_BATCH\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_VALUE\_START\_INDEX\_AND\_BATCH\_SIZE

    -   ### TYPE\_VALIDATION\_GRID\_MORE\_DATA\_THAN\_BATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_MORE\_DATA\_THAN\_BATCH

    -   ### SAIL\_VALIDATION\_STACKING\_INVALID\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_STACKING\_INVALID\_DATA

    -   ### SAIL\_VALIDATION\_LINE\_CHART\_INVALID\_Y\_MIN\_MAX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_LINE\_CHART\_INVALID\_Y\_MIN\_MAX

    -   ### TYPE\_VALIDATION\_GRID\_INVALID\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_INVALID\_VALUE

    -   ### TYPE\_VALIDATION\_GRID\_INVALID\_COLUMNS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_INVALID\_COLUMNS

    -   ### TYPE\_VALIDATION\_GRID\_COLUMN\_INVALID\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_COLUMN\_INVALID\_DATA

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGES\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGES\_NULL

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGE\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGE\_NULL

    -   ### SAIL\_VALIDATION\_SAFE\_IMAGE\_URI\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_SAFE\_IMAGE\_URI\_NULL

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE\_V1

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE\_V1

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGE\_TYPE

    -   ### TYPE\_VALIDATION\_LINK\_NULL\_TASK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINK\_NULL\_TASK

    -   ### TYPE\_VALIDATION\_LINK\_NULL\_PROCESS\_MODEL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINK\_NULL\_PROCESS\_MODEL

    -   ### TYPE\_VALIDATION\_GRID\_LINK\_NULL\_URI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_LINK\_NULL\_URI

    -   ### TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_CONTAINING\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_CONTAINING\_NULL

    -   ### TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_FORM\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_FORM\_LAYOUT

    -   ### TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_ARRAY\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_ARRAY\_LAYOUT

    -   ### TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_COLUMN\_LAYOUT

    -   ### TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_NON\_UI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_NON\_UI

    -   ### TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_NON\_UI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_NON\_UI

    -   ### TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_ILLEGAL\_UI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_LAYOUT\_CONTENTS\_ILLEGAL\_UI

    -   ### TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_ILLEGAL\_UI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_INJECTED\_COLUMN\_LAYOUT\_CONTENTS\_ILLEGAL\_UI

    -   ### SAIL\_VALIDATION\_COLUMN\_CHART\_INVALID\_Y\_MIN\_MAX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_COLUMN\_CHART\_INVALID\_Y\_MIN\_MAX

    -   ### SAIL\_VALIDATION\_BAR\_CHART\_INVALID\_Y\_MIN\_MAX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_BAR\_CHART\_INVALID\_Y\_MIN\_MAX

    -   ### TYPE\_VALIDATION\_LINK\_NULL\_LINK\_ARRAY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINK\_NULL\_LINK\_ARRAY

    -   ### TYPE\_VALIDATION\_LINK\_NULL\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINK\_NULL\_LINK

    -   ### TYPE\_VALIDATION\_LINK\_NULL\_URI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINK\_NULL\_URI

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_MORE\_THAN\_ONE\_ROW\_FOR\_HEADER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_MORE\_THAN\_ONE\_ROW\_FOR\_HEADER

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_ROW\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_ROW\_SIZE

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_EXPECTED\_ROW\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_EXPECTED\_ROW\_LAYOUT

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_UNSUPPORTED\_COMPONENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_UNSUPPORTED\_COMPONENT

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_CHECKBOX\_ID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_CHECKBOX\_ID\_TYPE

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_GRIDCOLUMNWIDTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_GRIDCOLUMNWIDTH

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_GRIDCOLUMNWIDTH\_FOR\_THUMBNAIL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_GRIDCOLUMNWIDTH\_FOR\_THUMBNAIL

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_GRIDCOLUMNWIDTH\_FOR\_GALLERY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_INVALID\_GRIDCOLUMNWIDTH\_FOR\_GALLERY

    -   ### TYPE\_VALIDATION\_GRIDLAYOUT\_HEADER\_TEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRIDLAYOUT\_HEADER\_TEXT

    -   ### RELATED\_ACTION\_INVALID\_CONTEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RELATED\_ACTION\_INVALID\_CONTEXT

    -   ### EXTERNAL\_SYSTEM\_CANT\_RETRIEVE\_SYSTEM\_SECURED\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_CANT\_RETRIEVE\_SYSTEM\_SECURED\_VALUE

    -   ### EXTERNAL\_SYSTEM\_CANT\_RETRIEVE\_USER\_SECURED\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_CANT\_RETRIEVE\_USER\_SECURED\_VALUE

    -   ### EXTERNAL\_SYSTEM\_USER\_SEC\_VAL\_REQUIRES\_APPIAN\_AUTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_USER\_SEC\_VAL\_REQUIRES\_APPIAN\_AUTH

    -   ### NOT\_ACCEPTABLE\_HTTP\_406

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOT\_ACCEPTABLE\_HTTP\_406

    -   ### SAIL\_VAL\_CHECKBOX\_VALUE\_CONTAINS\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_CHECKBOX\_VALUE\_CONTAINS\_NULL

    -   ### SAIL\_VAL\_CHECKBOX\_VALUE\_VALID\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_CHECKBOX\_VALUE\_VALID\_INDEX

    -   ### SAIL\_VAL\_MULTI\_DROPDOWN\_VALUE\_CONTAINS\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_MULTI\_DROPDOWN\_VALUE\_CONTAINS\_NULL

    -   ### SAIL\_VAL\_MULTI\_DROPDOWN\_VALUE\_VALID\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_MULTI\_DROPDOWN\_VALUE\_VALID\_INDEX

    -   ### SAIL\_VAL\_SIMPLE\_DROPDOWN\_VALUE\_CONTAINS\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_SIMPLE\_DROPDOWN\_VALUE\_CONTAINS\_NULL

    -   ### SAIL\_VAL\_SIMPLE\_DROPDOWN\_VALUE\_VALID\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_SIMPLE\_DROPDOWN\_VALUE\_VALID\_INDEX

    -   ### SAIL\_VAL\_RADIO\_BUTTON\_VALUE\_VALID\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_RADIO\_BUTTON\_VALUE\_VALID\_INDEX

    -   ### SAIL\_VALIDATION\_MILESTONE\_FIELD\_INVALID\_STEPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_MILESTONE\_FIELD\_INVALID\_STEPS

    -   ### SAIL\_VALIDATION\_MILESTONE\_FIELD\_INVALID\_ACTIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_MILESTONE\_FIELD\_INVALID\_ACTIVE

    -   ### TYPE\_VALIDATION\_MILESTONE\_FIELD\_INVALID\_LINK\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MILESTONE\_FIELD\_INVALID\_LINK\_TYPE

    -   ### TYPE\_VALIDATION\_MILESTONE\_FIELD\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MILESTONE\_FIELD\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### SAIL\_VALIDATION\_MILESTONE\_FIELD\_LINKS\_EXCEEDS\_STEPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_MILESTONE\_FIELD\_LINKS\_EXCEEDS\_STEPS

    -   ### CONFIGURATION\_MOBILE\_PASSCODE\_REQUIRED\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONFIGURATION\_MOBILE\_PASSCODE\_REQUIRED\_INVALID

    -   ### TYPE\_VALIDATION\_BUTTON\_WIDGET\_INVALID\_STYLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_BUTTON\_WIDGET\_INVALID\_STYLE

    -   ### TYPE\_VALIDATION\_BUTTON\_LAYOUT\_PRIMARY\_BUTTONS\_CONTAINING\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_BUTTON\_LAYOUT\_PRIMARY\_BUTTONS\_CONTAINING\_NULL

    -   ### TYPE\_VALIDATION\_BUTTON\_LAYOUT\_SECONDARY\_BUTTONS\_CONTAINING\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_BUTTON\_LAYOUT\_SECONDARY\_BUTTONS\_CONTAINING\_NULL

    -   ### TASK\_URL\_DECRYPTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TASK\_URL\_DECRYPTION\_ERROR

    -   ### OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_TASK\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_TASK\_ID

    -   ### OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_RECORD\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_RECORD\_ID

    -   ### OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_PROCESS\_MODEL\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_PROCESS\_MODEL\_ID

    -   ### EXTERNAL\_SYSTEM\_CONFIGURATION\_INVALID\_EXT\_SYS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_CONFIGURATION\_INVALID\_EXT\_SYS

    -   ### EXTERNAL\_SYSTEM\_CONFIGURATION\_INVALID\_ATTR\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_CONFIGURATION\_INVALID\_ATTR\_NAME

    -   ### PLUGIN\_SECURITY\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PLUGIN\_SECURITY\_EXCEPTION

    -   ### PLUGIN\_METHOD\_SECURITY\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PLUGIN\_METHOD\_SECURITY\_EXCEPTION

    -   ### EXTERNAL\_SYSTEM\_CONFIGURATION\_ATTR\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_CONFIGURATION\_ATTR\_DOES\_NOT\_EXIST

    -   ### NOTIFICATION\_ERROR\_TOO\_MANY\_RECIPIENTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOTIFICATION\_ERROR\_TOO\_MANY\_RECIPIENTS

    -   ### TYPE\_VALIDATION\_BAR\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_BAR\_INVALID\_LINK

    -   ### TYPE\_VALIDATION\_COLUMN\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMN\_INVALID\_LINK

    -   ### TYPE\_VALIDATION\_LINE\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINE\_INVALID\_LINK

    -   ### TYPE\_VALIDATION\_PIE\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_PIE\_INVALID\_LINK

    -   ### PARTICIPANTS\_INVALID\_ENTRY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PARTICIPANTS\_INVALID\_ENTRY

    -   ### GROUP\_MEMBERSHIP\_CLEARING\_ERROR\_TOO\_MANY\_USERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUP\_MEMBERSHIP\_CLEARING\_ERROR\_TOO\_MANY\_USERS

    -   ### INVALID\_REFRESH\_AFTER\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_REFRESH\_AFTER\_VALUE

    -   ### SAIL\_VAL\_INVALID\_LABEL\_POSITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_INVALID\_LABEL\_POSITION

    -   ### SAIL\_VAL\_INVALID\_HEIGHT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_INVALID\_HEIGHT

    -   ### SAIL\_VAL\_INVALID\_CHOICE\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VAL\_INVALID\_CHOICE\_LAYOUT

    -   ### SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SYSTEM\_FOLDER\_TEMPO\_ATTACHMENTS\_CREATION\_ERROR

    -   ### SYSTEM\_FOLDER\_COVER\_PHOTOS\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SYSTEM\_FOLDER\_COVER\_PHOTOS\_CREATION\_ERROR

    -   ### SYSTEM\_FOLDER\_RECORD\_TYPES\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SYSTEM\_FOLDER\_RECORD\_TYPES\_CREATION\_ERROR

    -   ### TYPE\_VALIDATION\_DATEPICKERFIELD\_INVALID\_VALUE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_DATEPICKERFIELD\_INVALID\_VALUE\_TYPE

    -   ### TYPE\_VALIDATION\_DATETIMEPICKERFIELD\_INVALID\_VALUE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_DATETIMEPICKERFIELD\_INVALID\_VALUE\_TYPE

    -   ### CONVERT\_TO\_SAIL\_RULE\_INSUFFICIENT\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONVERT\_TO\_SAIL\_RULE\_INSUFFICIENT\_GENERIC

    -   ### CONVERT\_TO\_SAIL\_RULE\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONVERT\_TO\_SAIL\_RULE\_INSUFFICIENT\_PRIVILEGES

    -   ### CONVERT\_TO\_SAIL\_RULE\_INVALID\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONVERT\_TO\_SAIL\_RULE\_INVALID\_ID

    -   ### CONVERT\_TO\_SAIL\_RULE\_INVALID\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONVERT\_TO\_SAIL\_RULE\_INVALID\_VERSION

    -   ### CONVERT\_TO\_SAIL\_RULE\_INVALID\_RULE\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONVERT\_TO\_SAIL\_RULE\_INVALID\_RULE\_INPUT

    -   ### EXPR\_DESIGNER\_INVALID\_URL\_RULE\_IDENTIFIER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_INVALID\_URL\_RULE\_IDENTIFIER

    -   ### EXPR\_DESIGNER\_INVALID\_URL\_FOLDER\_IDENTIFIER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_INVALID\_URL\_FOLDER\_IDENTIFIER

    -   ### EXPR\_DESIGNER\_EMPTY\_RULE\_IDENTIFIER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_EMPTY\_RULE\_IDENTIFIER

    -   ### EXPR\_DESIGNER\_INSUFFICIENT\_PRIVILEGES\_RULE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_INSUFFICIENT\_PRIVILEGES\_RULE

    -   ### EXPR\_DESIGNER\_INSUFFICIENT\_PRIVILEGES\_FOLDER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_INSUFFICIENT\_PRIVILEGES\_FOLDER

    -   ### EXPR\_DESIGNER\_RULENAME\_NOT\_UNIQUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_RULENAME\_NOT\_UNIQUE

    -   ### EXPR\_DESIGNER\_EXPIRED\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_EXPIRED\_CONTENT

    -   ### EXPR\_DESIGNER\_NON\_UNIQUE\_RULE\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPR\_DESIGNER\_NON\_UNIQUE\_RULE\_ID

    -   ### TYPE\_VALIDATION\_GRID\_NULL\_IDENTIFIERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_NULL\_IDENTIFIERS

    -   ### TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_INCLUDES\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_INCLUDES\_NULL

    -   ### TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_GREATER\_THAN\_BATCH\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_GREATER\_THAN\_BATCH\_SIZE

    -   ### TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_INVALID\_ENTRY\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_INVALID\_ENTRY\_TYPE

    -   ### TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_COUNT\_NOT\_EQUAL\_ROW\_COUNT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_IDENTIFIERS\_COUNT\_NOT\_EQUAL\_ROW\_COUNT

    -   ### TYPE\_VALIDATION\_GRID\_SELECTED\_INCLUDES\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_SELECTED\_INCLUDES\_NULL

    -   ### TYPE\_VALIDATION\_GRID\_SELECTED\_INVALID\_ENTRY\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_SELECTED\_INVALID\_ENTRY\_TYPE

    -   ### TYPE\_VALIDATION\_GRID\_LAYOUT\_COLUMN\_MULTIPLE\_COMPONENTS\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_LAYOUT\_COLUMN\_MULTIPLE\_COMPONENTS\_UNSUPPORTED

    -   ### TYPE\_VALIDATION\_GRID\_LAYOUT\_COLUMN\_UNSUPPORTED\_COMPONENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_LAYOUT\_COLUMN\_UNSUPPORTED\_COMPONENT

    -   ### TYPE\_VALIDATION\_GRID\_LAYOUT\_COLUMN\_INVALID\_COMPONENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_LAYOUT\_COLUMN\_INVALID\_COMPONENT

    -   ### TYPE\_VALIDATION\_EXPR\_DESIGNER\_HEADER\_COLUMN\_ARRAY\_NULL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_EXPR\_DESIGNER\_HEADER\_COLUMN\_ARRAY\_NULL

        Deprecated.

        Type no longer exists

    -   ### SAIL\_VALIDATION\_DOCUMENT\_IMAGE\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_DOCUMENT\_IMAGE\_DOCUMENT\_NULL

    -   ### OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_CONTENT\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OPAQUE\_URL\_BUILDER\_ERROR\_OPAQUING\_CONTENT\_ID

    -   ### TYPE\_VALIDATION\_IMAGE\_LINK\_IS\_NONEMPTY\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_IMAGE\_LINK\_IS\_NONEMPTY\_LIST

    -   ### TYPE\_VALIDATION\_INVALID\_IMAGE\_LINK\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_INVALID\_IMAGE\_LINK\_TYPE

    -   ### IMAGE\_FIELD\_THUMBNAIL\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IMAGE\_FIELD\_THUMBNAIL\_LINK

    -   ### IMAGE\_FIELD\_DOCUMENT\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IMAGE\_FIELD\_DOCUMENT\_LINK\_DOCUMENT\_NULL

    -   ### IMAGE\_FIELD\_TASK\_LINK\_TASK\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IMAGE\_FIELD\_TASK\_LINK\_TASK\_NULL

    -   ### IMAGE\_FIELD\_SAFE\_LINK\_URI\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IMAGE\_FIELD\_SAFE\_LINK\_URI\_NULL

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE\_IN\_GRID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE\_IN\_GRID

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGE\_COUNT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_IMAGE\_COUNT

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_MULTIPLE\_SIZES\_IN\_GRID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_MULTIPLE\_SIZES\_IN\_GRID

    -   ### SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE\_IN\_GRID\_V1

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_IMAGE\_GALLERY\_SIZE\_IN\_GRID\_V1

    -   ### TYPE\_VALIDATION\_ANYLINK\_LINKS\_INCLUDES\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_ANYLINK\_LINKS\_INCLUDES\_NULL

    -   ### TYPE\_VALIDATION\_ANYLINK\_INVALID\_LINK\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_ANYLINK\_INVALID\_LINK\_TYPE

    -   ### TYPE\_VALIDATION\_GRID\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_ANYLINKFIELD\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_ANYLINKFIELD\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_BARCHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_BARCHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_COLUMNCHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_COLUMNCHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_LINECHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINECHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_PIECHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_PIECHART\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_LINKEDITEM\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_LINKEDITEM\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_MENULAYOUT\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MENULAYOUT\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_PICKERFIELD\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_PICKERFIELD\_DOCUMENT\_DOWNLOAD\_LINK\_DOCUMENT\_NULL

    -   ### TYPE\_VALIDATION\_GRID\_TEXT\_COLUMN\_INVALID\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_TEXT\_COLUMN\_INVALID\_DATA

    -   ### TYPE\_VALIDATION\_GRID\_COLUMN\_TEXT\_LINK\_NULL\_TASK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_COLUMN\_TEXT\_LINK\_NULL\_TASK

    -   ### TYPE\_VALIDATION\_GRID\_COLUMN\_TEXT\_LINK\_NULL\_URI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_GRID\_COLUMN\_TEXT\_LINK\_NULL\_URI

    -   ### BIND\_ONLY\_ALLOWED\_IN\_LOAD\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BIND\_ONLY\_ALLOWED\_IN\_LOAD\_FUNCTION

    -   ### BIND\_FAILED\_MULTIPLE\_WRITE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BIND\_FAILED\_MULTIPLE\_WRITE

    -   ### BIND\_FAILED\_WRITE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BIND\_FAILED\_WRITE

    -   ### BIND\_FAILED\_RESULT\_OF\_GET\_IS\_BOUND\_VARIABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BIND\_FAILED\_RESULT\_OF\_GET\_IS\_BOUND\_VARIABLE

    -   ### BIND\_FAILED\_TO\_EVALUATE\_GET

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BIND\_FAILED\_TO\_EVALUATE\_GET

    -   ### BIND\_FAILED\_TO\_EVALUATE\_SET\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BIND\_FAILED\_TO\_EVALUATE\_SET\_REFERENCE

    -   ### SCS\_KEY\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SCS\_KEY\_EMPTY

    -   ### SCS\_KEY\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SCS\_KEY\_EXCEPTION

    -   ### SAIL\_APPLICATION\_INVALID\_APP\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_APPLICATION\_INVALID\_APP\_URL\_STUB

    -   ### CUSTOM\_BRANDING\_IMAGES\_FOLDER\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CUSTOM\_BRANDING\_IMAGES\_FOLDER\_CREATION\_ERROR

    -   ### CUSTOM\_BRANDING\_IMAGE\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CUSTOM\_BRANDING\_IMAGE\_CREATION\_ERROR

    -   ### TYPE\_VALIDATION\_SELECTABLE\_ITEM\_LIST\_FIELD\_INVALID\_CHOICES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_SELECTABLE\_ITEM\_LIST\_FIELD\_INVALID\_CHOICES

    -   ### TYPE\_VALIDATION\_SELECTABLE\_ITEM\_LIST\_FIELD\_INVALID\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_SELECTABLE\_ITEM\_LIST\_FIELD\_INVALID\_VALUE

    -   ### UNSUPPORTED\_CHILD\_NODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNSUPPORTED\_CHILD\_NODE

    -   ### ADD\_FOLLOWERS\_SS\_SC\_PERMISSIONS\_GROUPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_FOLLOWERS\_SS\_SC\_PERMISSIONS\_GROUPS

    -   ### ADD\_FOLLOWERS\_SS\_SC\_PERMISSIONS\_USERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_FOLLOWERS\_SS\_SC\_PERMISSIONS\_USERS

    -   ### ADD\_FOLLOWERS\_SS\_INVALID\_PEOPLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_FOLLOWERS\_SS\_INVALID\_PEOPLE

    -   ### ADD\_FOLLOWERS\_SS\_FOLLOWERS\_PERMISSIONS\_FOLLOWEES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_FOLLOWERS\_SS\_FOLLOWERS\_PERMISSIONS\_FOLLOWEES

    -   ### ADD\_FOLLOWERS\_SS\_SC\_PERMISSIONS\_FOLLOWERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_FOLLOWERS\_SS\_SC\_PERMISSIONS\_FOLLOWERS

    -   ### ADD\_FOLLOWERS\_SS\_SC\_AND\_FOLLOWERS\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_FOLLOWERS\_SS\_SC\_AND\_FOLLOWERS\_PERMISSIONS

    -   ### ADD\_FOLLOWERS\_SS\_SC\_DEACTIVATED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_FOLLOWERS\_SS\_SC\_DEACTIVATED

    -   ### FOLLOW\_USERS\_SS\_SC\_PERMISSIONS\_USERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FOLLOW\_USERS\_SS\_SC\_PERMISSIONS\_USERS

    -   ### FOLLOW\_USERS\_SS\_SC\_DEACTIVATED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FOLLOW\_USERS\_SS\_SC\_DEACTIVATED

    -   ### FOLLOW\_RECORDS\_SS\_SC\_PERMISSIONS\_USERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FOLLOW\_RECORDS\_SS\_SC\_PERMISSIONS\_USERS

    -   ### TYPE\_VALIDATION\_MASTER\_DETAIL\_LAYOUT\_NULL\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MASTER\_DETAIL\_LAYOUT\_NULL\_FIELD

    -   ### EXTERNAL\_SYSTEM\_CREATE\_WRITER\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_CREATE\_WRITER\_ERROR

    -   ### EXTERNAL\_SYSTEM\_UPDATE\_WRITER\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_UPDATE\_WRITER\_ERROR

    -   ### EXTERNAL\_SYSTEM\_DELETE\_WRITER\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_DELETE\_WRITER\_ERROR

    -   ### ADMIN\_CONSOLE\_PLUGIN\_INSUFFICIENT\_PRIVILEGES\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_PLUGIN\_INSUFFICIENT\_PRIVILEGES\_ERROR

    -   ### EXTERNAL\_SYSTEM\_TEST\_CONNECTION\_INVALID\_KEY\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_SYSTEM\_TEST\_CONNECTION\_INVALID\_KEY\_ERROR

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_IMAGES\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_IMAGES\_NULL

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_IMAGE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_IMAGE\_TYPE

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_DOCUMENT\_IMAGE\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_DOCUMENT\_IMAGE\_DOCUMENT\_NULL

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SAFE\_IMAGE\_URI\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SAFE\_IMAGE\_URI\_NULL

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SIZE\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SIZE\_INVALID

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SIZE\_INVALID\_V1

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SIZE\_INVALID\_V1

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_LINK\_IS\_NONEMPTY\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_LINK\_IS\_NONEMPTY\_LIST

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_INVALID\_LINK\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_INVALID\_LINK\_TYPE

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_THUMBNAIL\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_THUMBNAIL\_LINK

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_DOCUMENT\_LINK\_DOCUMENT\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_DOCUMENT\_LINK\_DOCUMENT\_NULL

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_TASK\_LINK\_TASK\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_TASK\_LINK\_TASK\_NULL

    -   ### SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SAFE\_LINK\_URI\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_GRID\_IMAGE\_COLUMN\_SAFE\_LINK\_URI\_NULL

    -   ### MISPLACED\_USER\_SUMMARY\_COMPONENT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MISPLACED\_USER\_SUMMARY\_COMPONENT\_ERROR

    -   ### SAIL\_INVALID\_ALIGN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_INVALID\_ALIGN

    -   ### IMPACT\_ANALYSIS\_INVALID\_DESIGNER\_OBJECT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IMPACT\_ANALYSIS\_INVALID\_DESIGNER\_OBJECT

    -   ### IMPACT\_ANALYSIS\_UNSUPPORTED\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IMPACT\_ANALYSIS\_UNSUPPORTED\_TYPE

    -   ### COULD\_NOT\_RETRIVE\_RECORD\_DASHBOARD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") COULD\_NOT\_RETRIVE\_RECORD\_DASHBOARD

    -   ### ENCRYPTED\_TEXTFIELD\_ENCRYPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENCRYPTED\_TEXTFIELD\_ENCRYPTION

    -   ### ENCRYPTED\_TEXTFIELD\_DECRYPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENCRYPTED\_TEXTFIELD\_DECRYPTION

    -   ### ENCRYPTIONAPI\_SECURITY\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENCRYPTIONAPI\_SECURITY\_EXCEPTION

    -   ### ENCRYPTED\_TEXT\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENCRYPTED\_TEXT\_NOT\_SUPPORTED

    -   ### QUERY\_ENTITY\_ENTITY\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_ENTITY\_ENTITY\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### QUERY\_ENTITY\_COULD\_NOT\_RETRIEVE\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_ENTITY\_COULD\_NOT\_RETRIEVE\_DATA

    -   ### QUERY\_ENTITY\_ENTITY\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_PORTALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_ENTITY\_ENTITY\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_PORTALS

    -   ### SYS\_APP\_IMPORT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SYS\_APP\_IMPORT\_FAILED

    -   ### TV\_TO\_ECORE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TV\_TO\_ECORE\_ERROR

    -   ### TV\_TO\_ECORE\_DUPLICATE\_FIELDS\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TV\_TO\_ECORE\_DUPLICATE\_FIELDS\_UNSUPPORTED

    -   ### ECORE\_TO\_TV\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ECORE\_TO\_TV\_ERROR

    -   ### ECORE\_TO\_TV\_DUPLICATE\_FIELDS\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ECORE\_TO\_TV\_DUPLICATE\_FIELDS\_UNSUPPORTED

    -   ### APPIAN\_OBJECT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPIAN\_OBJECT\_ERROR

    -   ### APPIAN\_TYPE\_CAST\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPIAN\_TYPE\_CAST\_EXCEPTION

    -   ### DECRYPT\_OPAQUE\_URL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECRYPT\_OPAQUE\_URL\_ERROR

    -   ### ENCRYPT\_OPAQUE\_URL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENCRYPT\_OPAQUE\_URL\_ERROR

    -   ### ENCRYPT\_OPAQUE\_URL\_ERROR\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ENCRYPT\_OPAQUE\_URL\_ERROR\_ID

    -   ### HIERARCHY\_FIELD\_INVALID\_ANCESTRY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_INVALID\_ANCESTRY

    -   ### HIERARCHY\_FIELD\_NODE\_INVALID\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_NODE\_INVALID\_ID

    -   ### HIERARCHY\_FIELD\_NODE\_DUPLICATE\_ID

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_NODE\_DUPLICATE\_ID

        Deprecated.

    -   ### HIERARCHY\_FIELD\_NODE\_INVALID\_IMAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_NODE\_INVALID\_IMAGE

    -   ### HIERARCHY\_FIELD\_NODE\_INVALID\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_NODE\_INVALID\_NAME

    -   ### HIERARCHY\_FIELD\_NODE\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_NODE\_INVALID\_LINK

    -   ### HIERARCHY\_FIELD\_CHILD\_INVALID\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_CHILD\_INVALID\_ID

    -   ### HIERARCHY\_FIELD\_CHILD\_DUPLICATE\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_CHILD\_DUPLICATE\_ID

    -   ### HIERARCHY\_FIELD\_CHILD\_INVALID\_IMAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_CHILD\_INVALID\_IMAGE

    -   ### HIERARCHY\_FIELD\_CHILD\_INVALID\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_CHILD\_INVALID\_NAME

    -   ### HIERARCHY\_FIELD\_CHILD\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_CHILD\_INVALID\_LINK

    -   ### HIERARCHY\_FIELD\_INVALID\_LAYOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HIERARCHY\_FIELD\_INVALID\_LAYOUT

    -   ### TYPE\_VALIDATION\_MENULAYOUT\_LINKS\_INCLUDES\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MENULAYOUT\_LINKS\_INCLUDES\_NULL

    -   ### TYPE\_VALIDATION\_MENULAYOUT\_INVALID\_LINK\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MENULAYOUT\_INVALID\_LINK\_TYPE

    -   ### TYPE\_VALIDATION\_MENULAYOUT\_INSERT\_DIVIDER\_AFTER\_INDICES\_WITHOUT\_CONTENTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MENULAYOUT\_INSERT\_DIVIDER\_AFTER\_INDICES\_WITHOUT\_CONTENTS

    -   ### TYPE\_VALIDATION\_MENULAYOUT\_INVALID\_INSERT\_DIVIDER\_AFTER\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_MENULAYOUT\_INVALID\_INSERT\_DIVIDER\_AFTER\_INDEX

    -   ### APP\_DESIGNER\_APPLICATION\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_APPLICATION\_CREATION\_ERROR

    -   ### APP\_DESIGNER\_INVALID\_APP\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_INVALID\_APP\_URL\_STUB

    -   ### APP\_DESIGNER\_IMPORT\_ZIP\_FILE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_IMPORT\_ZIP\_FILE\_ERROR

    -   ### APP\_DESIGNER\_APPLICATION\_ADD\_PRIVILEGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_APPLICATION\_ADD\_PRIVILEGE

    -   ### APP\_DESIGNER\_APPLICATION\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_APPLICATION\_NOT\_FOUND

    -   ### APP\_DESIGNER\_APPLICATION\_ADD\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_APPLICATION\_ADD\_UNAVAILABLE

    -   ### APP\_DESIGNER\_MISSING\_DEPENDENCIES\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_MISSING\_DEPENDENCIES\_ERROR

    -   ### APP\_DESIGNER\_ACTION\_OBJECT\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_OBJECT\_DOES\_NOT\_EXIST

    -   ### APP\_DESIGNER\_ACTION\_PERMISSION\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_PERMISSION\_DENIED

    -   ### APP\_DESIGNER\_FEED\_CREATION\_ERROR\_INVALID\_ARGUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_FEED\_CREATION\_ERROR\_INVALID\_ARGUMENT

    -   ### APP\_DESIGNER\_FOLDER\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_FOLDER\_NOT\_FOUND

    -   ### APP\_DESIGNER\_FOLDER\_ACCESS\_PERMISSION\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_FOLDER\_ACCESS\_PERMISSION\_DENIED

    -   ### APP\_DESIGNER\_SET\_APPLICATION\_SECURITY\_PERMISSION\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_SET\_APPLICATION\_SECURITY\_PERMISSION\_DENIED

    -   ### APP\_DESIGNER\_SET\_APPLICATION\_SECURITY\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_SET\_APPLICATION\_SECURITY\_DOES\_NOT\_EXIST

    -   ### APP\_DESIGNER\_UPDATE\_APPLICATION\_PERMISSION\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_UPDATE\_APPLICATION\_PERMISSION\_DENIED

    -   ### APP\_DESIGNER\_GROUP\_TYPE\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_GROUP\_TYPE\_DUPLICATE\_NAME

    -   ### APP\_DESIGNER\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_DUPLICATE\_NAME

    -   ### APP\_DESIGNER\_SET\_ACTIONS\_APPLICATION\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_SET\_ACTIONS\_APPLICATION\_UNAVAILABLE

    -   ### APP\_DESIGNER\_SET\_ACTIONS\_PERMISSION\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_SET\_ACTIONS\_PERMISSION\_DENIED

    -   ### APP\_DESIGNER\_ACTION\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_UNEXPECTED\_ERROR

    -   ### APP\_DESIGNER\_ACTION\_CANNOT\_MOVE\_UPLOADED\_FILE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_CANNOT\_MOVE\_UPLOADED\_FILE

    -   ### APP\_DESIGNER\_APPLICATION\_REMOVE\_PRIVILEGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_APPLICATION\_REMOVE\_PRIVILEGE

    -   ### APP\_DESIGNER\_APPLICATION\_REMOVE\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_APPLICATION\_REMOVE\_UNAVAILABLE

    -   ### APP\_DESIGNER\_ACTION\_OBJECT\_TO\_DUPLICATE\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_OBJECT\_TO\_DUPLICATE\_NOT\_AVAILABLE

    -   ### APP\_DESIGNER\_ADD\_ASSOCIATED\_APPLICATIONS\_PRIVILEGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ADD\_ASSOCIATED\_APPLICATIONS\_PRIVILEGE

    -   ### APP\_DESIGNER\_ADD\_ASSOCIATED\_APPLICATIONS\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ADD\_ASSOCIATED\_APPLICATIONS\_UNAVAILABLE

    -   ### APP\_DESIGNER\_MISSING\_IDENTIFIER\_APPLICATION\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_MISSING\_IDENTIFIER\_APPLICATION\_NOT\_FOUND

    -   ### APP\_DESIGNER\_NAME\_CANNOT\_BE\_NULL\_OR\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_NAME\_CANNOT\_BE\_NULL\_OR\_EMPTY

    -   ### APP\_DESIGNER\_FOLDER\_MODIFY\_PERMISSION\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_FOLDER\_MODIFY\_PERMISSION\_DENIED

    -   ### APP\_DESIGNER\_FOLDER\_VIEW\_MOVE\_PARTIAL\_SUCCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_FOLDER\_VIEW\_MOVE\_PARTIAL\_SUCCESS

    -   ### APP\_DESIGNER\_DOCUMENT\_MODIFY\_PERMISSION\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_DOCUMENT\_MODIFY\_PERMISSION\_DENIED

    -   ### APP\_DESIGNER\_ACTION\_CANNOT\_MOVE\_UPLOADED\_FILES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_CANNOT\_MOVE\_UPLOADED\_FILES

    -   ### APP\_DESIGNER\_ACTION\_CANNOT\_ACCESS\_DOCUMENT\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_CANNOT\_ACCESS\_DOCUMENT\_VERSION

    -   ### APP\_DESIGNER\_ACTION\_CANNOT\_ACCESS\_CONSTANT\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_ACTION\_CANNOT\_ACCESS\_CONSTANT\_VERSION

    -   ### APP\_DESIGNER\_INVALID\_GROUP\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_INVALID\_GROUP\_ID

    -   ### APP\_DESIGNER\_MEMBERSHIP\_RULES\_UPDATE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_MEMBERSHIP\_RULES\_UPDATE\_FAILED

    -   ### APP\_DESIGNER\_MEMBERSHIP\_RULES\_UPDATE\_INVALID\_GROUP\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_DESIGNER\_MEMBERSHIP\_RULES\_UPDATE\_INVALID\_GROUP\_TYPE

    -   ### ID\_DESIGN\_VIEW\_NONEXISTENT\_PARAM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ID\_DESIGN\_VIEW\_NONEXISTENT\_PARAM

    -   ### ID\_DESIGN\_VIEW\_NONEXISTENT\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ID\_DESIGN\_VIEW\_NONEXISTENT\_FUNCTION

    -   ### ID\_DESIGN\_VIEW\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ID\_DESIGN\_VIEW\_UNEXPECTED\_ERROR

    -   ### ID\_DESIGN\_VIEW\_NONEXISTENT\_RULE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ID\_DESIGN\_VIEW\_NONEXISTENT\_RULE

    -   ### ID\_DESIGN\_VIEW\_INCORRECT\_NUMBER\_OF\_PARAMETERS\_FOR\_RULE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ID\_DESIGN\_VIEW\_INCORRECT\_NUMBER\_OF\_PARAMETERS\_FOR\_RULE

    -   ### ID\_DESIGN\_VIEW\_INCORRECT\_NUMBER\_OF\_PARAMETERS\_FOR\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ID\_DESIGN\_VIEW\_INCORRECT\_NUMBER\_OF\_PARAMETERS\_FOR\_FUNCTION

    -   ### TYPE\_VALIDATION\_TOOLBAR\_LAYOUT\_BUTTONS\_INCLUDES\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_TOOLBAR\_LAYOUT\_BUTTONS\_INCLUDES\_NULL

    -   ### TYPE\_VALIDATION\_TOOLBAR\_LAYOUT\_INVALID\_BUTTON\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_TOOLBAR\_LAYOUT\_INVALID\_BUTTON\_TYPE

    -   ### TYPE\_VALIDATION\_APPLICATION\_HEADER\_LAYOUT\_INCLUDES\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_APPLICATION\_HEADER\_LAYOUT\_INCLUDES\_INVALID\_TYPE

    -   ### ELASTICSEARCH\_NOT\_RUNNING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ELASTICSEARCH\_NOT\_RUNNING

    -   ### QPA\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_GENERIC\_ERROR

    -   ### QPA\_UNSUPPORTED\_REPORT\_CONTEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_UNSUPPORTED\_REPORT\_CONTEXT

    -   ### QPA\_NULL\_REPORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_NULL\_REPORT

    -   ### QPA\_INVALID\_REPORT\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_INVALID\_REPORT\_ID

    -   ### QPA\_NOT\_A\_REPORT\_REPORT\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_NOT\_A\_REPORT\_REPORT\_ID

    -   ### QPA\_INVALID\_BATCH\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_INVALID\_BATCH\_SIZE

    -   ### QPA\_MULTIPLE\_NON\_NULL\_CONTEXTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_MULTIPLE\_NON\_NULL\_CONTEXTS

    -   ### QPA\_UNNECESSARY\_CONTEXT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_UNNECESSARY\_CONTEXT

    -   ### QPA\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QPA\_TIMEOUT

    -   ### WEBAPI\_DUPLICATE\_ALIAS\_METHOD\_ENDPOINT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_DUPLICATE\_ALIAS\_METHOD\_ENDPOINT

    -   ### WEBAPI\_DUPLICATE\_NAME\_ENDPOINT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_DUPLICATE\_NAME\_ENDPOINT

    -   ### WEBAPI\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### WEBAPI\_MUST\_RETURN\_WEB\_API\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_MUST\_RETURN\_WEB\_API\_RESPONSE

    -   ### WEBAPI\_RETURNED\_EMPTY\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_RETURNED\_EMPTY\_RESPONSE

    -   ### WEBAPI\_INVALID\_HEADER\_SET

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_INVALID\_HEADER\_SET

    -   ### WEBAPI\_METHOD\_DOES\_NOT\_SUPPORT\_REACTIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_METHOD\_DOES\_NOT\_SUPPORT\_REACTIONS

    -   ### WEBAPI\_RESPONSE\_WITH\_DOCUMENT\_AND\_BODY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEBAPI\_RESPONSE\_WITH\_DOCUMENT\_AND\_BODY

    -   ### SITE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### SITE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_NONAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_NONAME

    -   ### SITE\_INVALID\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_INVALID\_URL\_STUB

    -   ### SITE\_RULE\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_RULE\_INVALID

    -   ### SITE\_NON\_UNIQUE\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_NON\_UNIQUE\_URL\_STUB

    -   ### SITE\_PROCESS\_MODEL\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_PROCESS\_MODEL\_INSUFFICIENT\_PRIVILEGES

    -   ### SITE\_TITLE\_EVALUATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_TITLE\_EVALUATION\_ERROR

    -   ### SITE\_INVALID\_PAGE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_INVALID\_PAGE\_ERROR

    -   ### ADS\_MIGRATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADS\_MIGRATION\_ERROR

    -   ### SITE\_INVALID\_URL\_STUB\_NO\_DETAILS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SITE\_INVALID\_URL\_STUB\_NO\_DETAILS

    -   ### NESTEDCHOICE\_MISSING\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NESTEDCHOICE\_MISSING\_ID

    -   ### NESTEDCHOICE\_DUPLICATE\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NESTEDCHOICE\_DUPLICATE\_ID

    -   ### WEB\_RESPONSE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WEB\_RESPONSE\_ERROR

    -   ### UPDATE\_FIRST\_NAME\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_FIRST\_NAME\_DISABLED

    -   ### UPDATE\_MIDDLE\_NAME\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_MIDDLE\_NAME\_DISABLED

    -   ### UPDATE\_LAST\_NAME\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_LAST\_NAME\_DISABLED

    -   ### UPDATE\_EMAIL\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_EMAIL\_DISABLED

    -   ### UPDATE\_OFFICE\_PHONE\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_OFFICE\_PHONE\_DISABLED

    -   ### UPDATE\_MOBILE\_PHONE\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_MOBILE\_PHONE\_DISABLED

    -   ### UPDATE\_CITY\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_CITY\_DISABLED

    -   ### UPDATE\_STATE\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_STATE\_DISABLED

    -   ### UPDATE\_COUNTRY\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_COUNTRY\_DISABLED

    -   ### UPDATE\_SUPERVISOR\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_SUPERVISOR\_DISABLED

    -   ### UPDATE\_ADDRESS\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_ADDRESS\_DISABLED

    -   ### UPDATE\_ZIPCODE\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_ZIPCODE\_DISABLED

    -   ### UPDATE\_DISPLAY\_NAME\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_DISPLAY\_NAME\_DISABLED

    -   ### UPDATE\_TITLE\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_TITLE\_DISABLED

    -   ### UPDATE\_BLURB\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UPDATE\_BLURB\_DISABLED

    -   ### SAIL\_VALIDATION\_VIDEO\_NULL\_SOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_VIDEO\_NULL\_SOURCE

    -   ### ADMIN\_CONSOLE\_MIGRATION\_FAILED\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_MIGRATION\_FAILED\_GENERIC\_ERROR

    -   ### MIGRATION\_FAILED\_LDAP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MIGRATION\_FAILED\_LDAP

    -   ### MIGRATION\_FAILED\_LDAP\_DUPLICATE\_BASEDN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MIGRATION\_FAILED\_LDAP\_DUPLICATE\_BASEDN

    -   ### MIGRATION\_FAILED\_LDAP\_MISSING\_REQUIRED\_PROPERTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MIGRATION\_FAILED\_LDAP\_MISSING\_REQUIRED\_PROPERTY

    -   ### MIGRATION\_FAILED\_LDAP\_MALFORMED\_URI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MIGRATION\_FAILED\_LDAP\_MALFORMED\_URI

    -   ### MIGRATION\_FAILED\_LDAP\_BASE\_DNS\_DO\_NOT\_MATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MIGRATION\_FAILED\_LDAP\_BASE\_DNS\_DO\_NOT\_MATCH

    -   ### SAML\_FAILED\_TO\_MOVE\_IDP\_METADATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAML\_FAILED\_TO\_MOVE\_IDP\_METADATA

    -   ### MIGRATION\_FAILED\_SAML\_INVALID\_GROUP\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MIGRATION\_FAILED\_SAML\_INVALID\_GROUP\_ID

    -   ### MULTIPLE\_IDP\_MIGRATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MULTIPLE\_IDP\_MIGRATION\_FAILED

    -   ### IDP\_METADATA\_EXPIRATION\_MIGRATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IDP\_METADATA\_EXPIRATION\_MIGRATION\_FAILED

    -   ### SAIL\_VALIDATION\_TOGGLE\_WIDGET\_CHOICE\_ICON\_IDENTIFIER\_NULL\_OR\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_TOGGLE\_WIDGET\_CHOICE\_ICON\_IDENTIFIER\_NULL\_OR\_EMPTY

    -   ### SAIL\_VALIDATION\_TOGGLE\_WIDGET\_CHOICE\_ICON\_IDENTIFIER\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_TOGGLE\_WIDGET\_CHOICE\_ICON\_IDENTIFIER\_INVALID

    -   ### SAIL\_VALIDATION\_TOGGLE\_WIDGET\_CHOICE\_LABEL\_TOOLTIPS\_ICON\_IDENTIFIERS\_DIFFERENT\_COUNTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_TOGGLE\_WIDGET\_CHOICE\_LABEL\_TOOLTIPS\_ICON\_IDENTIFIERS\_DIFFERENT\_COUNTS

    -   ### SAIL\_VALIDATION\_TOGGLE\_WIDGET\_VALUE\_INVALID\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAIL\_VALIDATION\_TOGGLE\_WIDGET\_VALUE\_INVALID\_INDEX

    -   ### TIMEZONE\_NOT\_SET\_TO\_GMT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TIMEZONE\_NOT\_SET\_TO\_GMT

    -   ### TYPE\_VALIDATION\_PICKERFIELD\_INVALID\_LINK\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TYPE\_VALIDATION\_PICKERFIELD\_INVALID\_LINK\_TYPE

    -   ### EXPRESSION\_VALIDATION\_EXPRESSION\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPRESSION\_VALIDATION\_EXPRESSION\_TOO\_LONG

    -   ### LIST\_VIEW\_EXPR\_VALIDATION\_EXPR\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LIST\_VIEW\_EXPR\_VALIDATION\_EXPR\_TOO\_LONG

    -   ### PROCESS\_MODEL\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MODEL\_INSUFFICIENT\_PRIVILEGES

    -   ### PROCESS\_MODEL\_NO\_START\_FORM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MODEL\_NO\_START\_FORM

    -   ### EMBEDDED\_SAIL\_OPTION\_VALIDATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EMBEDDED\_SAIL\_OPTION\_VALIDATION

    -   ### EMBEDDED\_TASK\_NON\_SAIL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EMBEDDED\_TASK\_NON\_SAIL

    -   ### EMBEDDED\_INVALID\_RECORD\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EMBEDDED\_INVALID\_RECORD\_ID

    -   ### FONT\_AWESOME\_INVALID\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FONT\_AWESOME\_INVALID\_ID

    -   ### FONT\_AWESOME\_INVALID\_CLASS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FONT\_AWESOME\_INVALID\_CLASS

    -   ### TEST\_SERVICE\_NO\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_NO\_PERMISSIONS

    -   ### TEST\_SERVICE\_NON\_DESIGNER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_NON\_DESIGNER

    -   ### TEST\_SERVICE\_NON\_APPLICATION\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_NON\_APPLICATION\_UUID

    -   ### TEST\_SERVICE\_INVALID\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_INVALID\_UUID

    -   ### TEST\_SERVICE\_NULL\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_NULL\_PARAMETER

    -   ### TEST\_SERVICE\_INVALID\_JOB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_INVALID\_JOB

    -   ### TEST\_SERVICE\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_TIMEOUT

    -   ### TEST\_SERVICE\_INVALID\_APP\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_INVALID\_APP\_UUID

    -   ### TEST\_SERVICE\_INVALID\_ID\_TEST\_RUN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_INVALID\_ID\_TEST\_RUN

    -   ### TEST\_SERVICE\_INVALID\_ID\_TEST\_STATUS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TEST\_SERVICE\_INVALID\_ID\_TEST\_STATUS

    -   ### RECORD\_GRID\_TITLE\_EVAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_GRID\_TITLE\_EVAL\_ERROR

    -   ### ADMIN\_CONSOLE\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_INSUFFICIENT\_PRIVILEGES

    -   ### ADMIN\_CONSOLE\_INSUFFICIENT\_PRIVILEGES\_SERVICE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_INSUFFICIENT\_PRIVILEGES\_SERVICE

    -   ### ADMIN\_CONSOLE\_GROUP\_LANDING\_EMPTY\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_GROUP\_LANDING\_EMPTY\_URL

    -   ### ADMIN\_CONSOLE\_GROUP\_LANDING\_INVALID\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_GROUP\_LANDING\_INVALID\_URL

    -   ### ADMIN\_CONSOLE\_GROUP\_LANDING\_EMPTY\_GROUPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_GROUP\_LANDING\_EMPTY\_GROUPS

    -   ### ADMIN\_CONSOLE\_GROUP\_LANDING\_APPS\_DESIGNER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_GROUP\_LANDING\_APPS\_DESIGNER

    -   ### ADMIN\_CONSOLE\_GROUP\_LANDING\_DUPLICATE\_GROUPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_GROUP\_LANDING\_DUPLICATE\_GROUPS

    -   ### ADMIN\_CONSOLE\_INVALID\_EXTENSION\_LIST\_CONTAINS\_PERIODS\_BLACKLIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_INVALID\_EXTENSION\_LIST\_CONTAINS\_PERIODS\_BLACKLIST

    -   ### ADMIN\_CONSOLE\_INVALID\_EXTENSION\_LIST\_CONTAINS\_PERIODS\_WHITELIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_INVALID\_EXTENSION\_LIST\_CONTAINS\_PERIODS\_WHITELIST

    -   ### ADMIN\_CONSOLE\_INVALID\_EXTENSION\_LIST\_CONTAINS\_DUPLICATES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADMIN\_CONSOLE\_INVALID\_EXTENSION\_LIST\_CONTAINS\_DUPLICATES

    -   ### BUNDLED\_APPS\_MIGRATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BUNDLED\_APPS\_MIGRATION\_ERROR

    -   ### RECORD\_PICKER\_INVALID\_RECORD\_TYPE\_RULE\_BACKED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_PICKER\_INVALID\_RECORD\_TYPE\_RULE\_BACKED

    -   ### BOOTSTRAP\_SYSTEM\_ADMINS\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BOOTSTRAP\_SYSTEM\_ADMINS\_EXIST

    -   ### BOOTSTRAP\_EXISTING\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BOOTSTRAP\_EXISTING\_USER

    -   ### BOOTSTRAP\_INVALID\_USERNAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BOOTSTRAP\_INVALID\_USERNAME

    -   ### BOOTSTRAP\_INVALID\_FIRST\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BOOTSTRAP\_INVALID\_FIRST\_NAME

    -   ### BOOTSTRAP\_INVALID\_LAST\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BOOTSTRAP\_INVALID\_LAST\_NAME

    -   ### BOOTSTRAP\_INVALID\_EMAIL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BOOTSTRAP\_INVALID\_EMAIL

    -   ### BOOTSTRAP\_INVALID\_PASSWORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") BOOTSTRAP\_INVALID\_PASSWORD

    -   ### QUICKAPPS\_DATASOURCE\_MISSING\_PERM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUICKAPPS\_DATASOURCE\_MISSING\_PERM

    -   ### QUICKAPPS\_DATASOURCE\_MISSING\_PERM\_CLEANUP\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUICKAPPS\_DATASOURCE\_MISSING\_PERM\_CLEANUP\_FAILED

    -   ### QUICKAPPS\_DATASOURCE\_GENERAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUICKAPPS\_DATASOURCE\_GENERAL

    -   ### QUICKAPPS\_APP\_BUILDER\_DATASOURCE\_MISSING\_PERM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUICKAPPS\_APP\_BUILDER\_DATASOURCE\_MISSING\_PERM

    -   ### QUICKAPPS\_APP\_BUILDER\_DATASOURCE\_MISSING\_PERM\_CLEANUP\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUICKAPPS\_APP\_BUILDER\_DATASOURCE\_MISSING\_PERM\_CLEANUP\_FAILED

    -   ### CDT\_FROM\_DATASOURCE\_CONNECTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CDT\_FROM\_DATASOURCE\_CONNECTION\_ERROR

    -   ### CDT\_FROM\_DATASOURCE\_TABLE\_NOT\_FOUND\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CDT\_FROM\_DATASOURCE\_TABLE\_NOT\_FOUND\_ERROR

    -   ### CDT\_FROM\_DATASOURCE\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CDT\_FROM\_DATASOURCE\_CREATION\_ERROR

    -   ### CDT\_FROM\_DATASOURCE\_PUBLISHING\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CDT\_FROM\_DATASOURCE\_PUBLISHING\_ERROR

    -   ### CDT\_FROM\_DATASOURCE\_UNKNOWN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CDT\_FROM\_DATASOURCE\_UNKNOWN\_ERROR

    -   ### CDT\_FROM\_DATASOURCE\_SCHEMA\_UPDATE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CDT\_FROM\_DATASOURCE\_SCHEMA\_UPDATE\_ERROR

    -   ### RULE\_MAPPING\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_EMPTY

    -   ### RULE\_MAPPING\_NOTHING\_CALLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_NOTHING\_CALLED

    -   ### RULE\_MAPPING\_CALLED\_SYSRULE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_CALLED\_SYSRULE

    -   ### RULE\_MAPPING\_CALLED\_FN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_CALLED\_FN

    -   ### RULE\_MAPPING\_CALLED\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_CALLED\_INVALID

    -   ### RULE\_MAPPING\_MISSING\_INTERFACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_MISSING\_INTERFACE

    -   ### RULE\_MAPPING\_CALLED\_PLAIN\_RULE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_CALLED\_PLAIN\_RULE

    -   ### RULE\_MAPPING\_CANT\_LEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_CANT\_LEX

    -   ### RULE\_MAPPING\_CANT\_PARSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_CANT\_PARSE

    -   ### RULE\_MAPPING\_POSITIONAL\_CALL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_POSITIONAL\_CALL

    -   ### RULE\_MAPPING\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_GENERAL\_ERROR

    -   ### NEW\_INTERFACE\_INVALID\_RULENAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_INVALID\_RULENAME

    -   ### NEW\_INTERFACE\_DUPLICATE\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_DUPLICATE\_INPUTS

    -   ### NEW\_INTERFACE\_INVALID\_INPUT\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_INVALID\_INPUT\_NAME

    -   ### NEW\_INTERFACE\_EMPTY\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_EMPTY\_NAME

    -   ### NEW\_INTERFACE\_NO\_FOLDER\_PROVIDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_NO\_FOLDER\_PROVIDED

    -   ### NEW\_INTERFACE\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_GENERAL\_ERROR

    -   ### NEW\_INTERFACE\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_DUPLICATE\_NAME

    -   ### RULE\_MAPPING\_INSUFFICIENT\_PERMISSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_INSUFFICIENT\_PERMISSION

    -   ### NEW\_INTERFACE\_NO\_APPLICATION\_PROVIDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_NO\_APPLICATION\_PROVIDED

    -   ### NEW\_INTERFACE\_APPLICATION\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_APPLICATION\_INVALID

    -   ### NEW\_INTERFACE\_UNABLE\_TO\_ADD\_TO\_APP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTERFACE\_UNABLE\_TO\_ADD\_TO\_APP

    -   ### INTERFACE\_MAPPINGS\_TYPE\_CHANGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INTERFACE\_MAPPINGS\_TYPE\_CHANGE

    -   ### INTERFACE\_MAPPINGS\_DELETED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INTERFACE\_MAPPINGS\_DELETED

    -   ### INTERFACE\_DELETED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INTERFACE\_DELETED

    -   ### INVALID\_IDENTIFIER\_TOKEN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_IDENTIFIER\_TOKEN

    -   ### RULE\_MAPPING\_MISSING\_INTEGRATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RULE\_MAPPING\_MISSING\_INTEGRATION

    -   ### INTEGRATION\_MAPPINGS\_DELETED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INTEGRATION\_MAPPINGS\_DELETED

    -   ### INTEGRATION\_DELETED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INTEGRATION\_DELETED

    -   ### OUTBOUND\_INTEGRATION\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OUTBOUND\_INTEGRATION\_GENERIC\_ERROR

    -   ### OUTBOUND\_INTEGRATION\_UNABLE\_TO\_PROCESS\_REQUEST\_BODY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OUTBOUND\_INTEGRATION\_UNABLE\_TO\_PROCESS\_REQUEST\_BODY

    -   ### OUTBOUND\_INTEGRATION\_UNABLE\_TO\_PROCESS\_RESPONSE\_BODY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OUTBOUND\_INTEGRATION\_UNABLE\_TO\_PROCESS\_RESPONSE\_BODY

    -   ### OUTBOUND\_INTEGRATION\_REQUEST\_BODY\_SIZE\_THRESHOLD\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OUTBOUND\_INTEGRATION\_REQUEST\_BODY\_SIZE\_THRESHOLD\_EXCEEDED

    -   ### OUTBOUND\_INTEGRATION\_RESPONSE\_BODY\_SIZE\_THRESHOLD\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OUTBOUND\_INTEGRATION\_RESPONSE\_BODY\_SIZE\_THRESHOLD\_EXCEEDED

    -   ### OUTBOUND\_INTEGRATION\_MISSING\_PROPERTY\_CREATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OUTBOUND\_INTEGRATION\_MISSING\_PROPERTY\_CREATE

    -   ### OUTBOUND\_INTEGRATION\_MISSING\_PROPERTY\_UPDATE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OUTBOUND\_INTEGRATION\_MISSING\_PROPERTY\_UPDATE

        Deprecated.

        outboundintegration ix create exception

    -   ### NEW\_INTEGRATION\_INVALID\_RULENAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_INVALID\_RULENAME

    -   ### NEW\_INTEGRATION\_DUPLICATE\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_DUPLICATE\_INPUTS

    -   ### NEW\_INTEGRATION\_INVALID\_INPUT\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_INVALID\_INPUT\_NAME

    -   ### NEW\_INTEGRATION\_EMPTY\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_EMPTY\_NAME

    -   ### NEW\_INTEGRATION\_NO\_FOLDER\_PROVIDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_NO\_FOLDER\_PROVIDED

    -   ### NEW\_INTEGRATION\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_GENERAL\_ERROR

    -   ### NEW\_INTEGRATION\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_DUPLICATE\_NAME

    -   ### NEW\_INTEGRATION\_NO\_APPLICATION\_PROVIDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_NO\_APPLICATION\_PROVIDED

    -   ### NEW\_INTEGRATION\_APPLICATION\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_APPLICATION\_INVALID

    -   ### NEW\_INTEGRATION\_UNABLE\_TO\_ADD\_TO\_APP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_INTEGRATION\_UNABLE\_TO\_ADD\_TO\_APP

    -   ### SAVE\_OUTBOUND\_INTEGRATION\_EXCEED\_SIZE\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAVE\_OUTBOUND\_INTEGRATION\_EXCEED\_SIZE\_LIMIT

    -   ### DECISION\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_GENERIC\_ERROR

    -   ### DECISION\_BETWEEN\_BOUNDS\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_BETWEEN\_BOUNDS\_INVALID

    -   ### DECISION\_INPUT\_EXPR\_INCORRECT\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_INPUT\_EXPR\_INCORRECT\_TYPE

    -   ### DECISION\_INPUT\_EXPR\_EMPTY\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_INPUT\_EXPR\_EMPTY\_LIST

    -   ### DECISION\_INPUT\_EXPR\_DUPLICATE\_VALUES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_INPUT\_EXPR\_DUPLICATE\_VALUES

    -   ### DECISION\_INPUT\_EXPR\_CHAR\_LENGTH\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_INPUT\_EXPR\_CHAR\_LENGTH\_INVALID

    -   ### DECISION\_INPUT\_NULL\_OR\_EMPTY\_VALUE\_NOT\_ALLOWED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_INPUT\_NULL\_OR\_EMPTY\_VALUE\_NOT\_ALLOWED

    -   ### DECISION\_DEFINITION\_NOT\_UNIQUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_DEFINITION\_NOT\_UNIQUE

    -   ### DECISION\_INPUT\_LITERAL\_DUPLICATE\_VALUES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_INPUT\_LITERAL\_DUPLICATE\_VALUES

    -   ### DECISION\_INPUT\_BOUNDS\_TOO\_CLOSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_INPUT\_BOUNDS\_TOO\_CLOSE

    -   ### DECISION\_FROM\_BOUNDS\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_FROM\_BOUNDS\_INVALID

    -   ### DECISION\_EXEC\_RUNTIME\_VALUE\_REQUIRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECISION\_EXEC\_RUNTIME\_VALUE\_REQUIRED

    -   ### APP\_TOKEN\_INVALID\_PLATFORM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_TOKEN\_INVALID\_PLATFORM

    -   ### APP\_TOKEN\_MISSING\_DEVICE\_TOKEN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_TOKEN\_MISSING\_DEVICE\_TOKEN

    -   ### APP\_TOKEN\_MISSING\_PUBLIC\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_TOKEN\_MISSING\_PUBLIC\_KEY

    -   ### INVALID\_ENCRYPTION\_ALGORITHM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_ENCRYPTION\_ALGORITHM

    -   ### PUSH\_NOTIFICATION\_ENCRYPTION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PUSH\_NOTIFICATION\_ENCRYPTION\_FAILED

    -   ### APP\_TOKEN\_DEREGISTRATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APP\_TOKEN\_DEREGISTRATION\_FAILED

    -   ### INVALID\_PUSH\_NOFICICATIONS\_TEST\_MODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_PUSH\_NOFICICATIONS\_TEST\_MODE

    -   ### NOTIFICATIONS\_DISABLED\_IN\_ADMIN\_CONSOLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOTIFICATIONS\_DISABLED\_IN\_ADMIN\_CONSOLE

    -   ### OBJECT\_BEING\_EDITED\_BY\_ANOTHER\_USER\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OBJECT\_BEING\_EDITED\_BY\_ANOTHER\_USER\_NAME

    -   ### CONNECTED\_SYSTEM\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_GENERIC\_ERROR

    -   ### CONNECTED\_SYSTEM\_READ\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_READ\_EXCEPTION

    -   ### CONNECTED\_SYSTEM\_SAVE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_SAVE\_EXCEPTION

    -   ### CONNECTED\_SYSTEM\_MISSING\_PROPERTY\_CREATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_MISSING\_PROPERTY\_CREATE

    -   ### CONNECTED\_SYSTEM\_INVALID\_PROPERTY\_CREATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_INVALID\_PROPERTY\_CREATE

    -   ### CSTF\_INVALID\_CAST\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CSTF\_INVALID\_CAST\_EXCEPTION

    -   ### CONNECTED\_SYSTEM\_INVALID\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_INVALID\_URL

    -   ### CONNECTED\_SYSTEM\_INVALID\_VALUE\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_INVALID\_VALUE\_TOO\_LONG

    -   ### CONNECTED\_SYSTEM\_INVALID\_REGION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_INVALID\_REGION

    -   ### CONNECTED\_SYSTEM\_FATAL\_MIGRATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_FATAL\_MIGRATION\_ERROR

    -   ### CONNECTED\_SYSTEM\_GENERIC\_MALFORMED\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_GENERIC\_MALFORMED\_URL

    -   ### CONNECTED\_SYSTEM\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_NOT\_FOUND

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_PROPERTY\_CREATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_PROPERTY\_CREATE

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_URL

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_VALUE\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_VALUE\_TOO\_LONG

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_REGION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_REGION

    -   ### CONNECTED\_SYSTEM\_API\_MALFORMED\_REQUEST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_MALFORMED\_REQUEST

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_CONTENT\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_CONTENT\_TYPE

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_URI\_PATH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_URI\_PATH

    -   ### CONNECTED\_SYSTEM\_API\_MISSING\_PROPERTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_MISSING\_PROPERTY

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_HTTP\_METHOD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_HTTP\_METHOD

    -   ### CONNECTED\_SYSTEM\_API\_INVALID\_VALUE\_FORMAT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_SYSTEM\_API\_INVALID\_VALUE\_FORMAT

    -   ### PRETTYPRINT\_TYPEDVALUE\_IS\_HIDDEN\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRETTYPRINT\_TYPEDVALUE\_IS\_HIDDEN\_TYPE

    -   ### DATA\_EXPORT\_DOCUMENT\_NAME\_INVALID\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DOCUMENT\_NAME\_INVALID\_LENGTH

    -   ### DATA\_EXPORT\_DOCUMENT\_DESCRIPTION\_INVALID\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DOCUMENT\_DESCRIPTION\_INVALID\_LENGTH

    -   ### DATA\_EXPORT\_DOCUMENT\_NO\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DOCUMENT\_NO\_NAME

    -   ### DATA\_EXPORT\_DOCUMENT\_FOLDER\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DOCUMENT\_FOLDER\_INVALID

    -   ### DATA\_EXPORT\_DOCUMENT\_NAME\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DOCUMENT\_NAME\_EMPTY

    -   ### DATA\_EXPORT\_QUERY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_QUERY\_FAILED

    -   ### DATA\_EXPORT\_DATA\_SOURCE\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DATA\_SOURCE\_MISSING

    -   ### DATA\_EXPORT\_UPDATE\_INVALID\_DOCUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_UPDATE\_INVALID\_DOCUMENT

    -   ### DATA\_EXPORT\_DOCUMENT\_NAME\_AND\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DOCUMENT\_NAME\_AND\_UPDATE

    -   ### DATA\_EXPORT\_FILTER\_OR\_SELECTION\_INVALID\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_FILTER\_OR\_SELECTION\_INVALID\_FIELD

    -   ### DATA\_EXPORT\_FILTER\_AND\_LOGICAL\_EXPRESSION\_SELECTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_FILTER\_AND\_LOGICAL\_EXPRESSION\_SELECTED

    -   ### DATA\_EXPORT\_SHEET\_NAME\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_SHEET\_NAME\_TOO\_LONG

    -   ### DATA\_EXPORT\_SHEET\_NUMBER\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_SHEET\_NUMBER\_DOES\_NOT\_EXIST

    -   ### DATA\_EXPORT\_SHEET\_NUMBER\_NOT\_POSITIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_SHEET\_NUMBER\_NOT\_POSITIVE

    -   ### DATA\_EXPORT\_STARTING\_CELL\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_STARTING\_CELL\_INVALID

    -   ### DATA\_EXPORT\_EMAIL\_SUBJECT\_OR\_MESSAGE\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_EMAIL\_SUBJECT\_OR\_MESSAGE\_MISSING

    -   ### DATA\_EXPORT\_EMPTY\_EMAIL\_GROUP\_RECIPIENTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_EMPTY\_EMAIL\_GROUP\_RECIPIENTS

    -   ### DATA\_EXPORT\_INVALID\_EMAIL\_RECIPIENT\_OR\_GROUP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_INVALID\_EMAIL\_RECIPIENT\_OR\_GROUP

    -   ### DATA\_EXPORT\_SELECTION\_AND\_AGGREGATION\_SELECTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_SELECTION\_AND\_AGGREGATION\_SELECTED

    -   ### DATA\_EXPORT\_INVALID\_FILTERS\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_INVALID\_FILTERS\_INPUT

    -   ### DATA\_EXPORT\_MISSING\_CUSTOM\_HEADER\_CELLS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_MISSING\_CUSTOM\_HEADER\_CELLS

    -   ### DATA\_EXPORT\_MISSING\_CUSTOM\_HEADER\_VALUES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_MISSING\_CUSTOM\_HEADER\_VALUES

    -   ### DATA\_EXPORT\_MISMATCHED\_LIST\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_MISMATCHED\_LIST\_LENGTH

    -   ### DATA\_EXPORT\_INVALID\_CUSTOM\_HEADER\_CELL\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_INVALID\_CUSTOM\_HEADER\_CELL\_REFERENCE

    -   ### DATA\_EXPORT\_OVERWRITTEN\_CUSTOM\_CELL\_LOCATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_OVERWRITTEN\_CUSTOM\_CELL\_LOCATION

    -   ### DATA\_EXPORT\_OUT\_OF\_MEMORY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_OUT\_OF\_MEMORY

    -   ### DATA\_EXPORT\_DATA\_SOURCE\_CONNECTION\_ISSUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DATA\_SOURCE\_CONNECTION\_ISSUE

    -   ### DATA\_EXPORT\_INVALID\_CSV\_DELIMITER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_INVALID\_CSV\_DELIMITER

    -   ### DATA\_EXPORT\_INVALID\_OUTPUT\_FORMAT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_INVALID\_OUTPUT\_FORMAT

    -   ### DATA\_EXPORT\_INVALID\_DOCUMENT\_TO\_UPDATE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_INVALID\_DOCUMENT\_TO\_UPDATE\_TYPE

    -   ### DATA\_EXPORT\_SHEET\_NAME\_ALREADY\_EXISTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_SHEET\_NAME\_ALREADY\_EXISTS

    -   ### DATA\_EXPORT\_SAVE\_IN\_FOLDER\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_SAVE\_IN\_FOLDER\_MISSING

    -   ### DATA\_EXPORT\_MISSING\_CUSTOM\_CELL\_POSITIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_MISSING\_CUSTOM\_CELL\_POSITIONS

    -   ### DATA\_EXPORT\_MISSING\_CUSTOM\_CELL\_VALUES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_MISSING\_CUSTOM\_CELL\_VALUES

    -   ### DATA\_EXPORT\_MISMATCHED\_CUSTOM\_CELL\_POSITIONS\_VALUES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_MISMATCHED\_CUSTOM\_CELL\_POSITIONS\_VALUES

    -   ### DATA\_EXPORT\_INVALID\_CUSTOM\_CELL\_POSITION\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_INVALID\_CUSTOM\_CELL\_POSITION\_REFERENCE

    -   ### DATA\_EXPORT\_OVERWRITTEN\_CUSTOM\_CELL\_POSITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_OVERWRITTEN\_CUSTOM\_CELL\_POSITION

    -   ### DATA\_EXPORT\_COLUMN\_LIMIT\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_COLUMN\_LIMIT\_EXCEEDED

    -   ### DATA\_EXPORT\_DOCUMENT\_LOCKED\_BY\_PROCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DOCUMENT\_LOCKED\_BY\_PROCESS

    -   ### DATA\_EXPORT\_UNNAMED\_DOCUMENT\_LOCKED\_BY\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_UNNAMED\_DOCUMENT\_LOCKED\_BY\_USER

    -   ### DATA\_EXPORT\_NAMED\_DOCUMENT\_LOCKED\_BY\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_NAMED\_DOCUMENT\_LOCKED\_BY\_USER

    -   ### DATA\_EXPORT\_CDT\_FIELD\_NOT\_PRESENT\_IN\_EXPRESSION\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_CDT\_FIELD\_NOT\_PRESENT\_IN\_EXPRESSION\_DATA

    -   ### DATA\_EXPORT\_NUM\_IDENTIFIERS\_DIFFERS\_FROM\_NUM\_EXPRESSION\_ROWS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_NUM\_IDENTIFIERS\_DIFFERS\_FROM\_NUM\_EXPRESSION\_ROWS

    -   ### DATA\_EXPORT\_NEGATIVE\_TOTAL\_COUNT\_IN\_RECORD\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_NEGATIVE\_TOTAL\_COUNT\_IN\_RECORD\_LIST

    -   ### DATA\_EXPORT\_DATA\_DENSITY\_TOO\_HIGH

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_DATA\_DENSITY\_TOO\_HIGH

        Deprecated.

        Used in 17.4 and 18.1 only

    -   ### DATA\_EXPORT\_EXCEEDED\_MIN\_INFLATE\_RATIO

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_EXCEEDED\_MIN\_INFLATE\_RATIO

    -   ### DATA\_EXPORT\_EXCEEDED\_MAX\_ENTRY\_SIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_EXCEEDED\_MAX\_ENTRY\_SIZE

    -   ### DATA\_EXPORT\_RECORD\_SOURCE\_EXPRESSION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_RECORD\_SOURCE\_EXPRESSION\_ERROR

    -   ### DATA\_EXPORT\_CANT\_LOAD\_PROCESS\_REPORT\_DOC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_CANT\_LOAD\_PROCESS\_REPORT\_DOC\_ERROR

    -   ### DATA\_EXPORT\_NO\_PROCESS\_REPORT\_DOC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_NO\_PROCESS\_REPORT\_DOC\_ERROR

    -   ### DATA\_EXPORT\_PROCESS\_RECORD\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_PROCESS\_RECORD\_TIMEOUT

    -   ### DATA\_EXPORT\_EXPRESSION\_RECORD\_FAILED\_DEFAULT\_BATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_EXPRESSION\_RECORD\_FAILED\_DEFAULT\_BATCH

    -   ### DATA\_EXPORT\_GENERIC\_PROCESS\_QUERY\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_GENERIC\_PROCESS\_QUERY\_ERROR

    -   ### DATA\_EXPORT\_GENERIC\_INPUT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_GENERIC\_INPUT\_ERROR

        Generic error with an input provided to Data Export.

    -   ### DATA\_EXPORT\_GENERIC\_DOCUMENT\_TO\_UPDATE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_GENERIC\_DOCUMENT\_TO\_UPDATE\_ERROR

        Generic error with the provided Document To Update.

    -   ### DATA\_EXPORT\_GENERIC\_WRITE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_GENERIC\_WRITE\_ERROR

        Generic error with document creation during export.

    -   ### DATA\_EXPORT\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_GENERIC\_ERROR

        Generic error during export. Only used when a more specific error message cannot reasonably be used.

    -   ### DATA\_EXPORT\_RECORD\_CANNOT\_RETRIEVE\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_RECORD\_CANNOT\_RETRIEVE\_DATA

    -   ### DATA\_EXPORT\_REPORT\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_REPORT\_MISSING

    -   ### DATA\_EXPORT\_CSV\_QUOTE\_PARSE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_CSV\_QUOTE\_PARSE\_ERROR

    -   ### DATA\_EXPORT\_RECORD\_HEADER\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_RECORD\_HEADER\_ERROR

    -   ### DATA\_EXPORT\_RECORD\_SYNC\_COMPLETED\_DURING\_EXPORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_RECORD\_SYNC\_COMPLETED\_DURING\_EXPORT

    -   ### DATA\_EXPORT\_NULL\_PRIMARY\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_EXPORT\_NULL\_PRIMARY\_KEY

    -   ### START\_PROCESS\_LINK\_PROCESS\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") START\_PROCESS\_LINK\_PROCESS\_ERROR

    -   ### PATCH\_DATA\_SERVER\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PATCH\_DATA\_SERVER\_UNAVAILABLE

    -   ### DESIGN\_OBJECT\_SCHEMA\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_OBJECT\_SCHEMA\_ERROR

    -   ### INVALID\_PROCESS\_SELECTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_PROCESS\_SELECTED

    -   ### EXPRESSION\_DEBUGGING\_ERROR\_OCCURRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPRESSION\_DEBUGGING\_ERROR\_OCCURRED

    -   ### EXPRESSION\_DEBUGGING\_INVALID\_LINE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXPRESSION\_DEBUGGING\_INVALID\_LINE

    -   ### INSUFFICIENT\_RESOURCE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INSUFFICIENT\_RESOURCE\_ERROR

    -   ### GROUPS\_BY\_TYPE\_GROUP\_TYPE\_PARAMETER\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_TYPE\_GROUP\_TYPE\_PARAMETER\_MISSING

    -   ### GROUPS\_BY\_TYPE\_GROUP\_TYPE\_PARAMETER\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_TYPE\_GROUP\_TYPE\_PARAMETER\_NULL

    -   ### GROUPS\_BY\_TYPE\_GROUP\_TYPE\_PARAMETER\_WRONG\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_TYPE\_GROUP\_TYPE\_PARAMETER\_WRONG\_TYPE

    -   ### GROUPS\_BY\_TYPE\_GROUP\_TYPE\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_TYPE\_GROUP\_TYPE\_DOES\_NOT\_EXIST

    -   ### PEOPLE\_FUNCTIONS\_START\_INDEX\_TOO\_SMALL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PEOPLE\_FUNCTIONS\_START\_INDEX\_TOO\_SMALL

    -   ### PEOPLE\_FUNCTIONS\_BATCH\_SIZE\_TOO\_SMALL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PEOPLE\_FUNCTIONS\_BATCH\_SIZE\_TOO\_SMALL

    -   ### PEOPLE\_FUNCTIONS\_BATCH\_SIZE\_TOO\_LARGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PEOPLE\_FUNCTIONS\_BATCH\_SIZE\_TOO\_LARGE

    -   ### PEOPLE\_FUNCTIONS\_PAGING\_INFO\_PARAMETER\_WRONG\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PEOPLE\_FUNCTIONS\_PAGING\_INFO\_PARAMETER\_WRONG\_TYPE

    -   ### GROUPS\_BY\_TYPE\_TOO\_MANY\_GROUP\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_TYPE\_TOO\_MANY\_GROUP\_TYPE

    -   ### GROUPS\_BY\_NAME\_MISSING\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_NAME\_MISSING\_PARAMETER

    -   ### GROUPS\_BY\_NAME\_INVALID\_PARAMETER\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_NAME\_INVALID\_PARAMETER\_TYPE

    -   ### GROUPS\_BY\_NAME\_NULL\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_NAME\_NULL\_PARAMETER

    -   ### GROUPS\_BY\_NAME\_TOO\_MANY\_NAMES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_BY\_NAME\_TOO\_MANY\_NAMES

    -   ### GROUP\_MEMBERS\_GROUP\_PARAMETER\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUP\_MEMBERS\_GROUP\_PARAMETER\_MISSING

    -   ### GROUP\_MEMBERS\_GROUP\_PARAMETER\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUP\_MEMBERS\_GROUP\_PARAMETER\_NULL

    -   ### GROUP\_MEMBERS\_GROUP\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUP\_MEMBERS\_GROUP\_DOES\_NOT\_EXIST

    -   ### GROUP\_MEMBERS\_GROUP\_INSUFFICIENT\_PERMISSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUP\_MEMBERS\_GROUP\_INSUFFICIENT\_PERMISSION

    -   ### GROUP\_MEMBERS\_SORT\_FIELD\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUP\_MEMBERS\_SORT\_FIELD\_DOES\_NOT\_EXIST

    -   ### GROUPS\_MEMBERS\_TOO\_MANY\_GROUPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_MEMBERS\_TOO\_MANY\_GROUPS

    -   ### GROUPS\_MEMBERS\_GROUP\_PARAMETER\_WRONG\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_MEMBERS\_GROUP\_PARAMETER\_WRONG\_TYPE

    -   ### GROUPS\_MEMBERS\_DIRECT\_PARAMETER\_WRONG\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_MEMBERS\_DIRECT\_PARAMETER\_WRONG\_TYPE

    -   ### GROUPS\_MEMBERS\_MEMBERSHIP\_TYPE\_PARAMETER\_WRONG\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_MEMBERS\_MEMBERSHIP\_TYPE\_PARAMETER\_WRONG\_TYPE

    -   ### GROUPS\_MEMBERS\_MEMBERSHIP\_TYPE\_PARAMETER\_INVALID\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_MEMBERS\_MEMBERSHIP\_TYPE\_PARAMETER\_INVALID\_VALUE

    -   ### IS\_USER\_MEMBER\_OF\_GROUP\_TOO\_MANY\_USERNAMES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IS\_USER\_MEMBER\_OF\_GROUP\_TOO\_MANY\_USERNAMES

    -   ### IS\_USER\_MEMBER\_OF\_GROUP\_INVALID\_USER\_PARAMETER\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IS\_USER\_MEMBER\_OF\_GROUP\_INVALID\_USER\_PARAMETER\_TYPE

    -   ### IS\_USER\_MEMBER\_OF\_GROUP\_INVALID\_GROUP\_PARAMETER\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IS\_USER\_MEMBER\_OF\_GROUP\_INVALID\_GROUP\_PARAMETER\_TYPE

    -   ### DOES\_GROUP\_EXIST\_MISSING\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOES\_GROUP\_EXIST\_MISSING\_PARAMETER

    -   ### DOES\_GROUP\_EXIST\_TOO\_MANY\_PARAMETERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOES\_GROUP\_EXIST\_TOO\_MANY\_PARAMETERS

    -   ### DOES\_GROUP\_EXIST\_INVALID\_PARAMETER\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOES\_GROUP\_EXIST\_INVALID\_PARAMETER\_TYPE

    -   ### GROUPS\_FOR\_USER\_TOO\_MANY\_USERNAMES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_FOR\_USER\_TOO\_MANY\_USERNAMES

    -   ### GROUPS\_FOR\_USER\_INVALID\_USER\_PARAMETER\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_FOR\_USER\_INVALID\_USER\_PARAMETER\_TYPE

    -   ### GROUPS\_FOR\_USER\_INVALID\_RELATIONSHIP\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_FOR\_USER\_INVALID\_RELATIONSHIP\_TYPE

    -   ### GROUPS\_FOR\_USER\_INVALID\_RELATIONSHIP\_TYPE\_DATATYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_FOR\_USER\_INVALID\_RELATIONSHIP\_TYPE\_DATATYPE

    -   ### GROUPS\_FOR\_USER\_INVALID\_CUSTOM\_GROUP\_TYPES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_FOR\_USER\_INVALID\_CUSTOM\_GROUP\_TYPES

    -   ### GROUPS\_FOR\_USER\_INVALID\_CUSTOM\_GROUP\_TYPES\_DATATYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_FOR\_USER\_INVALID\_CUSTOM\_GROUP\_TYPES\_DATATYPE

    -   ### GROUPS\_FOR\_USER\_INVALID\_GROUP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUPS\_FOR\_USER\_INVALID\_GROUP

    -   ### GET\_PROCESS\_MODEL\_MONITORING\_DATA\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GET\_PROCESS\_MODEL\_MONITORING\_DATA\_TIMEOUT

    -   ### GET\_PROCESS\_MODEL\_MONITORING\_DATA\_KPI\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GET\_PROCESS\_MODEL\_MONITORING\_DATA\_KPI\_TIMEOUT

    -   ### RENAMEUSER\_NOT\_SYSADMIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_NOT\_SYSADMIN

    -   ### RENAMEUSER\_NULL\_INPUT\_ARRAY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_NULL\_INPUT\_ARRAY

    -   ### RENAMEUSER\_MISMATCHED\_INPUT\_ARRAYS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_MISMATCHED\_INPUT\_ARRAYS

    -   ### RENAMEUSER\_DUPLICATE\_NEW\_USERNAMES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_DUPLICATE\_NEW\_USERNAMES

    -   ### RENAMEUSER\_DUPLICATE\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_DUPLICATE\_UUIDS

    -   ### RENAMEUSER\_INVALID\_NEW\_USERNAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_INVALID\_NEW\_USERNAME

    -   ### RENAMEUSER\_NONEXISTENT\_USER\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_NONEXISTENT\_USER\_UUID

    -   ### RENAMEUSER\_NON\_UNIQUE\_NEW\_USERNAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_NON\_UNIQUE\_NEW\_USERNAME

    -   ### RENAMEUSER\_INVALID\_USER\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_INVALID\_USER\_UUID

    -   ### RENAMEUSER\_NONEXISTENT\_USERNAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_NONEXISTENT\_USERNAME

    -   ### RENAMEUSER\_NONEXISTENT\_USERNAME\_TOO\_MANY\_TO\_LOG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_NONEXISTENT\_USERNAME\_TOO\_MANY\_TO\_LOG

    -   ### RENAMEUSER\_INVALID\_USER\_UUID\_CANNOT\_BE\_RENAMED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_INVALID\_USER\_UUID\_CANNOT\_BE\_RENAMED

    -   ### RENAMEUSER\_SELF\_RENAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_SELF\_RENAME

    -   ### RENAMEUSER\_NULL\_USER\_RENAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RENAMEUSER\_NULL\_USER\_RENAME

    -   ### PMM\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PMM\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### PMM\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PMM\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

    -   ### PMM\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PMM\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

    -   ### PMM\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PMM\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

    -   ### PMM\_CONNECTED\_ENVIRONMENT\_PROCESSMEMORYCALC\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PMM\_CONNECTED\_ENVIRONMENT\_PROCESSMEMORYCALC\_DISABLED

    -   ### RPT\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPT\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

    -   ### RPT\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPT\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

    -   ### RPT\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPT\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

    -   ### RPT\_CONNECTED\_ENVIRONMENT\_CANT\_CONVERT\_TO\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPT\_CONNECTED\_ENVIRONMENT\_CANT\_CONVERT\_TO\_VALUE

    -   ### RPT\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPT\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### URT\_METRICS\_OBJECT\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_METRICS\_OBJECT\_DOES\_NOT\_EXIST

    -   ### URT\_CANNOT\_GENERATE\_PERFORMANCE\_VIEW

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_CANNOT\_GENERATE\_PERFORMANCE\_VIEW

    -   ### READ\_PROCESS\_REPORT\_BY\_UUID\_INVALID\_PROCESS\_REPORT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") READ\_PROCESS\_REPORT\_BY\_UUID\_INVALID\_PROCESS\_REPORT

    -   ### URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

    -   ### URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

    -   ### URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

    -   ### URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_URT\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_URT\_DISABLED

    -   ### URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

    -   ### URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_ENDPOINTS\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

    -   ### URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

    -   ### URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

    -   ### URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_TIMES\_FOR\_ENDPOINT\_CONNECTED\_ENVIRONMENT\_UNEXPECTED\_ERROR

    -   ### URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

    -   ### URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

    -   ### URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

    -   ### URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

    -   ### URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_PERFORMANCE\_VIEW\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_CANT\_DESERIALIZE

    -   ### URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_MISSING\_ERROR\_CODE

    -   ### URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_INVALID\_ERROR\_CODE

    -   ### URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URT\_COLLECTION\_DISABLED\_CONNECTED\_ENVIRONMENT\_UNEXPECTED\_ERROR

    -   ### START\_HEALTH\_CHECK\_NOT\_AUTHORIZED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") START\_HEALTH\_CHECK\_NOT\_AUTHORIZED

    -   ### START\_HEALTH\_CHECK\_BAD\_ENVIRONMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") START\_HEALTH\_CHECK\_BAD\_ENVIRONMENT

    -   ### START\_HEALTH\_CHECK\_PLUGIN\_INSTALLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") START\_HEALTH\_CHECK\_PLUGIN\_INSTALLED

    -   ### HEALTH\_CHECK\_SETUP\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HEALTH\_CHECK\_SETUP\_ERROR

    -   ### IX\_HEALTHCHECK\_PROPERTY\_NOT\_BOOLEAN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_HEALTHCHECK\_PROPERTY\_NOT\_BOOLEAN

    -   ### IX\_HEALTHCHECK\_PROPERTY\_NOT\_VALID\_DATETIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_HEALTHCHECK\_PROPERTY\_NOT\_VALID\_DATETIME

    -   ### IX\_HEALTHCHECK\_PROPERTY\_NOT\_VALID\_FREQUENCY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_HEALTHCHECK\_PROPERTY\_NOT\_VALID\_FREQUENCY

    -   ### IX\_HEALTHCHECK\_PROPERTY\_NOT\_VALID\_AUTOMATIC\_UPLOAD\_TRUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_HEALTHCHECK\_PROPERTY\_NOT\_VALID\_AUTOMATIC\_UPLOAD\_TRUE

    -   ### HEALTH\_CHECK\_ZIP\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HEALTH\_CHECK\_ZIP\_ERROR

    -   ### HEALTH\_CHECK\_FORUM\_CREDENTIALS\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HEALTH\_CHECK\_FORUM\_CREDENTIALS\_ERROR

    -   ### HEALTH\_CHECK\_FORUM\_TIMEOUT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HEALTH\_CHECK\_FORUM\_TIMEOUT\_ERROR

    -   ### HEALTH\_CHECK\_FORUM\_DOWN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HEALTH\_CHECK\_FORUM\_DOWN\_ERROR

    -   ### DATA\_ANALYSIS\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_ANALYSIS\_GENERAL\_ERROR

    -   ### DATA\_COLLECTION\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DATA\_COLLECTION\_GENERAL\_ERROR

    -   ### HEALTH\_CHECK\_FORUM\_BAD\_GATEWAY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HEALTH\_CHECK\_FORUM\_BAD\_GATEWAY

    -   ### ZIPPING\_COLLECTION\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ZIPPING\_COLLECTION\_GENERAL\_ERROR

    -   ### DOWNLOAD\_ZIP\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOWNLOAD\_ZIP\_GENERAL\_ERROR

    -   ### REVIEW\_DATA\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REVIEW\_DATA\_GENERAL\_ERROR

    -   ### WAITING\_ON\_ANALYSIS\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WAITING\_ON\_ANALYSIS\_GENERAL\_ERROR

    -   ### VIEW\_REPORT\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") VIEW\_REPORT\_GENERAL\_ERROR

    -   ### HEALTH\_CHECK\_GENERAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") HEALTH\_CHECK\_GENERAL\_ERROR

    -   ### LAST\_HEALTH\_CHECK\_FUNCTION\_INSUFFICIENT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LAST\_HEALTH\_CHECK\_FUNCTION\_INSUFFICIENT\_ERROR

    -   ### LAST\_HEALTH\_CHECK\_FUNCTION\_NOT\_SETUP\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LAST\_HEALTH\_CHECK\_FUNCTION\_NOT\_SETUP\_ERROR

    -   ### LAST\_HEALTH\_CHECK\_FUNCTION\_NOT\_SETUP\_NOT\_SYS\_ADMIN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LAST\_HEALTH\_CHECK\_FUNCTION\_NOT\_SETUP\_NOT\_SYS\_ADMIN\_ERROR

    -   ### RECORD\_DATA\_SYNC\_NON\_SYNCED\_RECORD\_TYPE\_SOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_NON\_SYNCED\_RECORD\_TYPE\_SOURCE

    -   ### RECORD\_SYNC\_ERROR

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_ERROR

        Deprecated.

    -   ### RECORD\_DATA\_SYNC\_MODEL\_CHANGED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_MODEL\_CHANGED

    -   ### RECORD\_DATA\_SYNC\_EXCEEDS\_REPLICA\_ROW\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_EXCEEDS\_REPLICA\_ROW\_LIMIT

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_NO\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_NO\_RESPONSE

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_BATCH\_READ\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_BATCH\_READ\_FAILED

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_BAD\_CREDENTIALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_BAD\_CREDENTIALS

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_SCHEMA\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_SCHEMA\_MISMATCH

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_EXPRESSION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_EXPRESSION\_ERROR

    -   ### RECORD\_DATA\_SYNC\_TARGET\_BATCH\_WRITE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_TARGET\_BATCH\_WRITE\_FAILED

    -   ### RECORD\_DATA\_SYNC\_TARGET\_ROW\_TOO\_BIG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_TARGET\_ROW\_TOO\_BIG

    -   ### RECORD\_DATA\_SYNC\_TARGET\_INVALID\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_TARGET\_INVALID\_VALUE

    -   ### RECORD\_DATA\_SYNC\_TARGET\_SYSTEM\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_TARGET\_SYSTEM\_FAILURE

    -   ### RECORD\_DATA\_SYNC\_TARGET\_DISK\_FULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_TARGET\_DISK\_FULL

    -   ### RECORD\_DATA\_SYNC\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_GENERIC\_ERROR

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_GENERIC\_ERROR

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_TABLE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_TABLE\_NOT\_FOUND

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_COLUMN\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_COLUMN\_NOT\_FOUND

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_COLUMN\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_COLUMN\_TYPE\_MISMATCH

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_PRIMARY\_KEY\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_PRIMARY\_KEY\_MISMATCH

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_UNIQUE\_CONSTRAINT\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_UNIQUE\_CONSTRAINT\_MISMATCH

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_INVALID\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_INVALID\_VALUE

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_DATA\_NULL\_PK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_DATA\_NULL\_PK

    -   ### RECORD\_DATA\_SYNC\_TOO\_MANY\_ROWS\_UPDATED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_TOO\_MANY\_ROWS\_UPDATED

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_INVALID\_VALUE\_ZERO\_DATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_INVALID\_VALUE\_ZERO\_DATE

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_INVALID\_VALUE\_ZERO\_DATE\_TIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_INVALID\_VALUE\_ZERO\_DATE\_TIME

    -   ### RECORD\_DATA\_SYNC\_INVALID\_SOURCE\_FILTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_INVALID\_SOURCE\_FILTER

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_EXPRESSION\_BATCH\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_EXPRESSION\_BATCH\_ERROR

    -   ### RECORD\_DATA\_SYNC\_EXCEEDS\_MAX\_SYNC\_DURATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_EXCEEDS\_MAX\_SYNC\_DURATION

    -   ### RECORD\_DATA\_SYNC\_NON\_UNIQUE\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_NON\_UNIQUE\_VALUE

    -   ### RECORD\_DATA\_SYNC\_VALUE\_EXCEEDS\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_VALUE\_EXCEEDS\_LENGTH

    -   ### RECORD\_DATA\_SYNC\_GET\_BY\_ID\_EXPRESSION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_GET\_BY\_ID\_EXPRESSION\_ERROR

    -   ### RECORD\_DATA\_SYNC\_SOURCE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_SOURCE\_NOT\_FOUND

    -   ### RECORD\_DATA\_SYNC\_REAPER\_EXECUTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_REAPER\_EXECUTED

    -   ### RECORD\_DATA\_SYNC\_UNIQUE\_KEY\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_UNIQUE\_KEY\_EXCEPTION

    -   ### RECORD\_DATA\_SYNC\_BINGE\_POST\_PROCESSING\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_BINGE\_POST\_PROCESSING\_ERROR

    -   ### RECORD\_DATA\_SYNC\_ROLLING\_SYNC\_FIELD\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_ROLLING\_SYNC\_FIELD\_INVALID

    -   ### RECORD\_DATA\_SYNC\_ACTIVE\_SYNC\_CANCELED\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_ACTIVE\_SYNC\_CANCELED\_EXCEPTION

    -   ### RECORD\_DATA\_SYNC\_INVALID\_SYNC\_FILTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_INVALID\_SYNC\_FILTER

    -   ### RECORD\_DATA\_SYNC\_RELATED\_RECORD\_RELATIONSHIP\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_RELATED\_RECORD\_RELATIONSHIP\_INVALID

    -   ### RECORD\_DATA\_SYNC\_RELATED\_RECORD\_SYNC\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_RELATED\_RECORD\_SYNC\_INVALID

    -   ### RECORD\_DATA\_SYNC\_RELATED\_RECORD\_SYNC\_FIELD\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_RELATED\_RECORD\_SYNC\_FIELD\_INVALID

    -   ### RECORD\_DATA\_SYNC\_STRING\_COLUMN\_SIZE\_EXCEEDED\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_STRING\_COLUMN\_SIZE\_EXCEEDED\_EXCEPTION

    -   ### RECORD\_DATA\_SYNC\_STRING\_COLUMN\_SIZE\_EXCEEDED\_NO\_FIELD\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_STRING\_COLUMN\_SIZE\_EXCEEDED\_NO\_FIELD\_EXCEPTION

    -   ### RECORD\_DATA\_SYNC\_RESERVATION\_CLAIM\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_RESERVATION\_CLAIM\_FAILED

    -   ### RECORD\_DATA\_SYNC\_BRANCH\_NOT\_OPENED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_BRANCH\_NOT\_OPENED

        Deprecated.

    -   ### RECORD\_DATA\_SYNC\_INVALID\_DATETIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_INVALID\_DATETIME

    -   ### RECORD\_DATA\_SYNC\_BRANCH\_TIMEOUT\_INCR\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_BRANCH\_TIMEOUT\_INCR\_SYNC

    -   ### RECORD\_DATA\_SYNC\_NO\_EXISTING\_FULL\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_NO\_EXISTING\_FULL\_SYNC

    -   ### RECORD\_DATA\_SYNC\_NO\_INC\_SYNC\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_NO\_INC\_SYNC\_EXPRESSION

    -   ### RECORD\_DATA\_SYNC\_TO\_MANY\_RRSF\_RECORDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_TO\_MANY\_RRSF\_RECORDS

    -   ### RECORD\_DATA\_SYNC\_CONCURRENT\_BULK\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DATA\_SYNC\_CONCURRENT\_BULK\_SYNC

    -   ### INVALID\_STRING\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_STRING\_INDEX

    -   ### INVALID\_VARIANT\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_VARIANT\_INDEX

    -   ### INVALID\_INDEX\_OUT\_OF\_BOUNDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_INDEX\_OUT\_OF\_BOUNDS

    -   ### INVALID\_OPERATION\_INSERT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_OPERATION\_INSERT

    -   ### INVALID\_OPERATION\_EMPTY\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_OPERATION\_EMPTY\_VALUE

    -   ### INVALID\_OPERATION\_NULL\_INDEX

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_OPERATION\_NULL\_INDEX

    -   ### INVALID\_INDEX\_INTO\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_INDEX\_INTO\_TYPE

    -   ### INVALID\_FIELD\_ADDRESSABLE\_UPDATE\_LIST\_INDEXING\_SCALAR\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_FIELD\_ADDRESSABLE\_UPDATE\_LIST\_INDEXING\_SCALAR\_VALUE

    -   ### INVALID\_FIELD\_ADDRESSABLE\_LIST\_UPDATE\_INDICES\_NOT\_BIJECTIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_FIELD\_ADDRESSABLE\_LIST\_UPDATE\_INDICES\_NOT\_BIJECTIVE

    -   ### INVALID\_MAP\_UPDATE\_VALUE\_ASSIGN\_VALUE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_UPDATE\_VALUE\_ASSIGN\_VALUE\_MISMATCH

    -   ### INVALID\_MAP\_INDEX\_NULL\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_INDEX\_NULL\_LIST

    -   ### INVALID\_MAP\_OPERATION\_INVALID\_INDEX\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_OPERATION\_INVALID\_INDEX\_TYPE

    -   ### INVALID\_MAP\_OPERATION\_BROKEN\_INDEX\_CHAIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_OPERATION\_BROKEN\_INDEX\_CHAIN

    -   ### INVALID\_MAP\_OPERATION\_BROKEN\_INDEX\_CHAIN\_DUE\_TO\_NESTED\_PROPERTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_OPERATION\_BROKEN\_INDEX\_CHAIN\_DUE\_TO\_NESTED\_PROPERTY

    -   ### INVALID\_MAP\_ARRAY\_OPERATION\_INDEX\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_ARRAY\_OPERATION\_INDEX\_TYPE

    -   ### MAP\_ARRAY\_UPDATE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MAP\_ARRAY\_UPDATE\_ERROR

    -   ### INVALID\_MAP\_ARRAY\_UPDATE\_LIST\_INDEXING\_SCALAR\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_ARRAY\_UPDATE\_LIST\_INDEXING\_SCALAR\_VALUE

    -   ### INVALID\_MAP\_ARRAY\_UPDATE\_LIST\_INDEXING\_NOT\_BIJECTIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_ARRAY\_UPDATE\_LIST\_INDEXING\_NOT\_BIJECTIVE

    -   ### INVALID\_MAP\_ARRAY\_UPDATE\_SCALAR\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_ARRAY\_UPDATE\_SCALAR\_VALUE

    -   ### INVALID\_MAP\_ARRAY\_OPERATION\_INDEX\_NULL\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_MAP\_ARRAY\_OPERATION\_INDEX\_NULL\_VALUE

    -   ### DESIGN\_DEPLOYMENT\_GENERIC\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_GENERIC\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_TIMEOUT

    -   ### DESIGN\_DEPLOYMENT\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_DISABLED

    -   ### DESIGN\_DEPLOYMENT\_MESSAGE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_MESSAGE\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_DDL\_SQL\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_DDL\_SQL\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_DDL\_DATASOURCE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_DDL\_DATASOURCE\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_IMPORT\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_IMPORT\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_INVALID\_PACKAGE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_INVALID\_PACKAGE\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_INVALID\_SECONDARY\_PACKAGE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_INVALID\_SECONDARY\_PACKAGE\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_INVALID\_ICF\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_INVALID\_ICF\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_INVALID\_LOG\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_INVALID\_LOG\_EXCEPTION

    -   ### DESIGN\_DEPLOYMENT\_EXECUTE\_DB\_SCRIPTS\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_EXECUTE\_DB\_SCRIPTS\_DISABLED

    -   ### DESIGN\_DEPLOYMENT\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_INSUFFICIENT\_PRIVILEGES

    -   ### DESIGN\_DEPLOYMENT\_REVIEW\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_REVIEW\_INSUFFICIENT\_PRIVILEGES

    -   ### DESIGN\_DEPLOYMENT\_INVALID\_STATUS\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_INVALID\_STATUS\_UPDATE

    -   ### DESIGN\_DEPLOYMENT\_REUSE\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_REUSE\_INSUFFICIENT\_PRIVILEGES

    -   ### DESIGN\_DEPLOYMENT\_DEPLOY\_AS\_USER\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_DEPLOY\_AS\_USER\_PRIVILEGES

    -   ### DESIGN\_DEPLOYMENT\_MISSING\_DEPLOY\_AS\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_MISSING\_DEPLOY\_AS\_USER

    -   ### DESIGN\_DEPLOYMENT\_DEPLOY\_PLUGINS\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_DEPLOY\_PLUGINS\_DISABLED

    -   ### DESIGN\_DEPLOYMENT\_INVALID\_PLUGIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_INVALID\_PLUGIN

    -   ### DESIGN\_DEPLOYMENT\_UNSUPPORTED\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_UNSUPPORTED\_TYPE

    -   ### DESIGN\_DEPLOYMENT\_UNREADABLE\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_UNREADABLE\_RESPONSE

    -   ### DESIGN\_DEPLOYMENT\_REQUEST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_REQUEST\_ERROR

    -   ### DESIGN\_DEPLOYMENT\_EMPTY\_PACKAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_EMPTY\_PACKAGE

    -   ### DESIGN\_DEPLOYMENT\_MULTIPLE\_DATA\_SOURCES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_MULTIPLE\_DATA\_SOURCES

    -   ### DESIGN\_DEPLOYMENT\_NO\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_NO\_DATA

    -   ### DESIGN\_DEPLOYMENT\_NO\_DATA\_INCLUDING\_ADMIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_NO\_DATA\_INCLUDING\_ADMIN

    -   ### SAVING\_USER\_FILTERS\_SERVER\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SAVING\_USER\_FILTERS\_SERVER\_UNAVAILABLE

    -   ### USER\_FILTER\_HAS\_EXPRESSION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") USER\_FILTER\_HAS\_EXPRESSION\_ERROR

    -   ### NO\_UUID\_CAST\_TO\_RECORD\_REFERENCE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NO\_UUID\_CAST\_TO\_RECORD\_REFERENCE\_TYPE

    -   ### RECORD\_SYNC\_ERROR\_RECORD\_TYPE\_HAS\_MULTIPLE\_SOURCES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_ERROR\_RECORD\_TYPE\_HAS\_MULTIPLE\_SOURCES

    -   ### RECORD\_SYNC\_ERROR\_COULD\_NOT\_FIND\_RECORD\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_ERROR\_COULD\_NOT\_FIND\_RECORD\_ID

    -   ### DOC\_EXTRACT\_NO\_LOOKUP\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_NO\_LOOKUP\_PERMISSIONS

    -   ### DOC\_EXTRACT\_NO\_RESULT\_LOOKUP\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_NO\_RESULT\_LOOKUP\_PERMISSIONS

    -   ### DOC\_RECONCILE\_NO\_RESULT\_LOOKUP\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_RECONCILE\_NO\_RESULT\_LOOKUP\_PERMISSIONS

    -   ### DOC\_EXTRACT\_JOB\_IN\_PROGRESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_JOB\_IN\_PROGRESS

    -   ### DOC\_EXTRACT\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_GENERIC

    -   ### DOC\_EXTRACT\_JOB\_ERRORED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_JOB\_ERRORED

    -   ### DOC\_EXTRACT\_CREDENTIALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_CREDENTIALS

    -   ### DOC\_EXTRACT\_JOBLESS\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_JOBLESS\_GENERIC

    -   ### DOC\_EXTRACT\_CLIENT\_PDF\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_CLIENT\_PDF\_ERROR

    -   ### DOC\_EXTRACT\_INVALID\_TYPE\_NUMBER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_INVALID\_TYPE\_NUMBER

    -   ### DOC\_EXTRACT\_INVALID\_DOC\_EXTRACTION\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_INVALID\_DOC\_EXTRACTION\_ID

    -   ### DOC\_EXTRACT\_ACCESS\_TOKEN\_ERRORED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_ACCESS\_TOKEN\_ERRORED

    -   ### DOC\_INTERPRETED\_NO\_RESULT\_LOOKUP\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_INTERPRETED\_NO\_RESULT\_LOOKUP\_PERMISSIONS

    -   ### DOC\_EXTRACT\_IX\_INVALID\_PROPERTY\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_IX\_INVALID\_PROPERTY\_VALUE

    -   ### DOC\_EXTRACT\_INVALID\_DOC\_EXTRACTION\_ID\_CLASS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_INVALID\_DOC\_EXTRACTION\_ID\_CLASS

    -   ### DOC\_EXTRACT\_ERROR\_RETRIEVING\_EXTRACTION\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_ERROR\_RETRIEVING\_EXTRACTION\_ID

    -   ### DOC\_EXTRACT\_ERROR\_AI\_SKILL\_TURNED\_OFF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOC\_EXTRACT\_ERROR\_AI\_SKILL\_TURNED\_OFF

    -   ### AI\_SKILL\_GENERATIVE\_AI\_INPUT\_DELETED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AI\_SKILL\_GENERATIVE\_AI\_INPUT\_DELETED

    -   ### AI\_SKILL\_GENERATIVE\_AI\_DELETED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AI\_SKILL\_GENERATIVE\_AI\_DELETED

    -   ### AI\_AGENT\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AI\_AGENT\_NOT\_FOUND

    -   ### AI\_AGENT\_RUN\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AI\_AGENT\_RUN\_NOT\_FOUND

    -   ### AI\_AGENT\_RUN\_STEP\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") AI\_AGENT\_RUN\_STEP\_NOT\_FOUND

    -   ### RPA\_UNKNOWN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_UNKNOWN\_ERROR

    -   ### RPA\_NO\_AUTHENTICATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_NO\_AUTHENTICATION

    -   ### RPA\_MALFORMED\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_MALFORMED\_JSON

    -   ### RPA\_INVALID\_OBJECT\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_INVALID\_OBJECT\_TYPE

    -   ### RPA\_REQUEST\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_REQUEST\_NOT\_SUPPORTED

    -   ### RPA\_USER\_UUID\_HEADER\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_USER\_UUID\_HEADER\_NOT\_FOUND

    -   ### RPA\_INVALID\_USER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_INVALID\_USER

    -   ### RPA\_PROCESS\_MODEL\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_PROCESS\_MODEL\_NOT\_FOUND

    -   ### RPA\_EXPRESSION\_RULE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EXPRESSION\_RULE\_NOT\_FOUND

    -   ### RPA\_PROCESS\_PARAM\_CAST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_PROCESS\_PARAM\_CAST\_ERROR

    -   ### RPA\_RULE\_PARAM\_CAST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_RULE\_PARAM\_CAST\_ERROR

    -   ### RPA\_REQUIRED\_PARAM\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_REQUIRED\_PARAM\_NOT\_FOUND

    -   ### RPA\_INVALID\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_INVALID\_JSON

    -   ### RPA\_UUID\_NOT\_FOUND\_IN\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_UUID\_NOT\_FOUND\_IN\_JSON

    -   ### RPA\_PARAM\_NOT\_FOUND\_IN\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_PARAM\_NOT\_FOUND\_IN\_JSON

    -   ### RPA\_NO\_PRIVILEGE\_INITIATE\_PROCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_NO\_PRIVILEGE\_INITIATE\_PROCESS

    -   ### RPA\_DOC\_NAME\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOC\_NAME\_NOT\_FOUND

    -   ### RPA\_DOC\_FOLDER\_UUID\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOC\_FOLDER\_UUID\_NOT\_FOUND

    -   ### RPA\_DOC\_FOLDER\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOC\_FOLDER\_NOT\_FOUND

    -   ### RPA\_DOC\_SAVING\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOC\_SAVING\_ERROR

    -   ### RPA\_DOC\_TOO\_LARGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOC\_TOO\_LARGE

    -   ### RPA\_DOC\_VIRUS\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOC\_VIRUS\_FOUND

    -   ### RPA\_SEARCH\_PHRASE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_SEARCH\_PHRASE\_NOT\_FOUND

    -   ### RPA\_UUID\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_UUID\_NOT\_FOUND

    -   ### RPA\_LIST\_PARAM\_PROCESS\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_LIST\_PARAM\_PROCESS\_NOT\_FOUND

    -   ### RPA\_LIST\_PARAM\_RULE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_LIST\_PARAM\_RULE\_NOT\_FOUND

    -   ### RPA\_NO\_PRIVILEGE\_LIST\_PARAMS\_PM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_NO\_PRIVILEGE\_LIST\_PARAMS\_PM

    -   ### RPA\_EVALUATION\_JSON\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_JSON\_INVALID

    -   ### RPA\_EVALUATION\_EXPRESSION\_SYNTAX\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_EXPRESSION\_SYNTAX\_INVALID

    -   ### RPA\_EVALUATION\_EXPRESSION\_EVALUATION\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_EXPRESSION\_EVALUATION\_EXCEPTION

    -   ### RPA\_EVALUATION\_BINDINGS\_NOT\_BASE\_64

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_BINDINGS\_NOT\_BASE\_64

    -   ### RPA\_EVALUATION\_BINDINGS\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_BINDINGS\_INVALID

    -   ### RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_NOT\_DICTIONARY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_NOT\_DICTIONARY

    -   ### RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_NOT\_VALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_NOT\_VALID\_TYPE

    -   ### RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_ICT\_UNSUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_ICT\_UNSUPPORTED

    -   ### RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_MISSING\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_MISSING\_KEY

    -   ### RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_DATATYPE\_MISSING\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_DATATYPE\_MISSING\_UUID

    -   ### RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_CDT\_NOT\_MAP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_CDT\_NOT\_MAP

    -   ### RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_CDT\_IO\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_WORKFLOW\_BINDINGS\_CDT\_IO\_EXCEPTION

    -   ### RPA\_EVALUATION\_CONDITIONAL\_MUST\_CAST\_TO\_STRING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_CONDITIONAL\_MUST\_CAST\_TO\_STRING

    -   ### RPA\_EVALUATION\_INVALID\_ENDPOINT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_EVALUATION\_INVALID\_ENDPOINT

    -   ### RPA\_DATATYPE\_IDENTIFIER\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DATATYPE\_IDENTIFIER\_NOT\_FOUND

    -   ### RPA\_DATATYPE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DATATYPE\_NOT\_FOUND

    -   ### RPA\_DOC\_FOLDER\_ID\_NOT\_VALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOC\_FOLDER\_ID\_NOT\_VALID

    -   ### RPA\_DOMAIN\_NOT\_VALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOMAIN\_NOT\_VALID

    -   ### RPA\_DOMAIN\_PV

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_DOMAIN\_PV

    -   ### RPA\_USER\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_USER\_NOT\_FOUND

        Error codes for retrieving user role maps

    -   ### RPA\_INSUFFICIENT\_PRIVILEGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_INSUFFICIENT\_PRIVILEGE

        Error codes for retrieving user role maps

    -   ### GROUP\_NOT\_SPECIFIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") GROUP\_NOT\_SPECIFIED

        Error codes for retrieving group role map

    -   ### EXTERNALIZE\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNALIZE\_INVALID\_TYPE

    -   ### INTERNALIZE\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INTERNALIZE\_INVALID\_TYPE

    -   ### COMPRESSION\_LIMIT\_REACHED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") COMPRESSION\_LIMIT\_REACHED

    -   ### USER\_FRIENDLY\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") USER\_FRIENDLY\_ERROR

    -   ### DTO\_TO\_JAVA\_BEAN\_CONVERTER\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DTO\_TO\_JAVA\_BEAN\_CONVERTER\_NOT\_FOUND

    -   ### RECORD\_MAP\_INVALID\_INDEX\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_INVALID\_INDEX\_TYPE

    -   ### RECORD\_MAP\_INVALID\_INDEX\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_INVALID\_INDEX\_VALUE

    -   ### RECORD\_MAP\_KEYWORDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_KEYWORDS

    -   ### RECORD\_MAP\_TYPE\_RECORD\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_TYPE\_RECORD\_NOT\_FOUND

    -   ### RECORD\_MAP\_TYPE\_FIELD\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_TYPE\_FIELD\_NOT\_FOUND

    -   ### RECORD\_MAP\_TYPE\_INVALID\_KEYWORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_TYPE\_INVALID\_KEYWORD\_TYPE

    -   ### RECORD\_MAP\_INDEX\_LIST\_OF\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_INDEX\_LIST\_OF\_LIST

    -   ### RECORD\_MAP\_INDEX\_INVALID\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_INDEX\_INVALID\_FIELD

    -   ### RECORD\_MAP\_INDEX\_INVALID\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_INDEX\_INVALID\_RELATIONSHIP

    -   ### RECORD\_MAP\_INDEX\_INVALID\_SEARCH\_RESULT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MAP\_INDEX\_INVALID\_SEARCH\_RESULT

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_JSON

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_MAX\_TYPEFACES\_NUMBER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_MAX\_TYPEFACES\_NUMBER

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_TYPEFACE\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_TYPEFACE\_KEY

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_MULTIPLE\_ACTIVE\_TYPEFACES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_MULTIPLE\_ACTIVE\_TYPEFACES

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_MAX\_LANGUAGE\_GROUP\_NUMBER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_MAX\_LANGUAGE\_GROUP\_NUMBER

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_URL

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_ACTIVE\_IS\_NOT\_BOOLEAN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_ACTIVE\_IS\_NOT\_BOOLEAN

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_ILLEGAL\_FONT\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_ILLEGAL\_FONT\_NAME

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_FONT\_WEIGHT\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_FONT\_WEIGHT\_KEY

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_LANGUAGE\_GROUP\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_INVALID\_LANGUAGE\_GROUP\_KEY

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_TYPEFACE\_NAME\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_TYPEFACE\_NAME\_LENGTH

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_URL\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_EXCEED\_URL\_LENGTH

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_KEY\_NOT\_WRAPPED\_IN\_QUOTES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_KEY\_NOT\_WRAPPED\_IN\_QUOTES

    -   ### IX\_TYPEFACE\_PROPERTY\_CONFIGS\_TYPEFACE\_NAME\_NOT\_WRAPPED\_IN\_QUOTES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_TYPEFACE\_PROPERTY\_CONFIGS\_TYPEFACE\_NAME\_NOT\_WRAPPED\_IN\_QUOTES

    -   ### RECORD\_SYNC\_MONITOR\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_MISSING\_ERROR\_CODE

    -   ### RECORD\_SYNC\_MONITOR\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_INVALID\_ERROR\_CODE

    -   ### FEATURE\_FLAG\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FEATURE\_FLAG\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### FEATURE\_FLAG\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_NONAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FEATURE\_FLAG\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_NONAME

    -   ### FEATURE\_FLAG\_NON\_UNIQUE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FEATURE\_FLAG\_NON\_UNIQUE\_NAME

    -   ### FEATURE\_FLAG\_INVALID\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FEATURE\_FLAG\_INVALID\_NAME

    -   ### RPA\_SMART\_SERVICE\_RUNTIME\_INCORRECT\_CS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_SMART\_SERVICE\_RUNTIME\_INCORRECT\_CS

    -   ### RPA\_SMART\_SERVICE\_RUNTIME\_INCORRECT\_INTEGRATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_SMART\_SERVICE\_RUNTIME\_INCORRECT\_INTEGRATION

    -   ### RPA\_SMART\_SERVICE\_RUNTIME\_INTEGRATION\_DNE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_SMART\_SERVICE\_RUNTIME\_INTEGRATION\_DNE

    -   ### RPA\_SMART\_SERVICE\_DESIGN\_INCORRECT\_CS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_SMART\_SERVICE\_DESIGN\_INCORRECT\_CS

    -   ### RPA\_SMART\_SERVICE\_DESIGN\_INCORRECT\_INTEGRATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_SMART\_SERVICE\_DESIGN\_INCORRECT\_INTEGRATION

    -   ### RPA\_SMART\_SERVICE\_DESIGN\_INTEGRATION\_DNE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RPA\_SMART\_SERVICE\_DESIGN\_INTEGRATION\_DNE

    -   ### NOTIFICATION\_ERROR\_INVALID\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOTIFICATION\_ERROR\_INVALID\_LINK

    -   ### NOTIFICATION\_ERROR\_EMPTY\_NULL\_TITLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOTIFICATION\_ERROR\_EMPTY\_NULL\_TITLE

    -   ### NOTIFICATION\_ERROR\_EMPTY\_NULL\_RECIPIENTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOTIFICATION\_ERROR\_EMPTY\_NULL\_RECIPIENTS

    -   ### NOTIFICATION\_ERROR\_NULL\_LINK

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOTIFICATION\_ERROR\_NULL\_LINK

    -   ### NOTIFICATION\_ERROR\_ADMIN\_CONFIG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NOTIFICATION\_ERROR\_ADMIN\_CONFIG

    -   ### UNREFERENCED\_OBJECTS\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNREFERENCED\_OBJECTS\_GENERIC\_ERROR

    -   ### LIST\_TYPE\_ARGUMENT\_TYPE\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LIST\_TYPE\_ARGUMENT\_TYPE\_INVALID

    -   ### LIST\_TYPE\_ARGUMENT\_CANNOT\_BE\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") LIST\_TYPE\_ARGUMENT\_CANNOT\_BE\_LIST

    -   ### INVALID\_TYPE\_IN\_PLUGIN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_TYPE\_IN\_PLUGIN

    -   ### RECORD\_SYNC\_MONITOR\_MAIN\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_MAIN\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

    -   ### RECORD\_SYNC\_MONITOR\_MAIN\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_MAIN\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### RECORD\_SYNC\_MONITOR\_ALERTS\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_ALERTS\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

    -   ### RECORD\_SYNC\_MONITOR\_ALERTS\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_ALERTS\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### RECORD\_SYNC\_MONITOR\_DETAIL\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_DETAIL\_CONNECTED\_ENVIRONMENT\_QUERY\_FAILURE

    -   ### RECORD\_SYNC\_MONITOR\_DETAIL\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_DETAIL\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### RECORD\_SYNC\_MONITOR\_ROW\_LIMIT\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_SYNC\_MONITOR\_ROW\_LIMIT\_CONNECTED\_ENVIRONMENT\_INVALID\_RESPONSE

    -   ### CONNECTED\_ENVIRONMENT\_RESPONSE\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_ENVIRONMENT\_RESPONSE\_CANT\_DESERIALIZE

    -   ### CONNECTED\_ENVIRONMENT\_RESPONSE\_MISSING\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_ENVIRONMENT\_RESPONSE\_MISSING\_ERROR\_CODE

    -   ### CONNECTED\_ENVIRONMENT\_RESPONSE\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONNECTED\_ENVIRONMENT\_RESPONSE\_INVALID\_ERROR\_CODE

    -   ### SXBR\_BATCH\_LIMIT\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_BATCH\_LIMIT\_EXCEEDED

    -   ### SXBR\_BLOCKED\_FUNCTIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_BLOCKED\_FUNCTIONS

    -   ### SXBR\_INVALID\_RULE\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_INVALID\_RULE\_INPUT

    -   ### SXBR\_RESULT\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_RESULT\_INVALID\_TYPE

    -   ### SXBR\_SAME\_DATA\_ACROSS\_BATCHES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_SAME\_DATA\_ACROSS\_BATCHES

    -   ### SXBR\_DUPLICATE\_PK\_WITHIN\_BATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_DUPLICATE\_PK\_WITHIN\_BATCH

    -   ### SXBR\_INTEGRATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_INTEGRATION\_ERROR

    -   ### SXBR\_BLOCKED\_FUNCTIONS\_PARTIAL\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_BLOCKED\_FUNCTIONS\_PARTIAL\_SYNC

    -   ### SXBR\_EXTRA\_IDS\_FROM\_PARTIAL\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_EXTRA\_IDS\_FROM\_PARTIAL\_SYNC

    -   ### SXBR\_RESULT\_INVALID\_TYPE\_PARTIAL\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_RESULT\_INVALID\_TYPE\_PARTIAL\_SYNC

    -   ### SXBR\_INTEGRATION\_ERROR\_PARTIAL\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_INTEGRATION\_ERROR\_PARTIAL\_SYNC

    -   ### SXBR\_BLOCKED\_FUNCTIONS\_RELAXED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_BLOCKED\_FUNCTIONS\_RELAXED

    -   ### SXBR\_TRANSFORMATION\_BLOCKED\_FUNCTIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_TRANSFORMATION\_BLOCKED\_FUNCTIONS

    -   ### SXBR\_INVALID\_TRANSFORMATION\_RETURN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_INVALID\_TRANSFORMATION\_RETURN

    -   ### SXBR\_INVALID\_TRANSFORMATION\_RULE\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_INVALID\_TRANSFORMATION\_RULE\_INPUT

    -   ### SXBR\_NON\_SYSTEM\_RULE\_SOURCE\_CONTEXT\_BINDING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_NON\_SYSTEM\_RULE\_SOURCE\_CONTEXT\_BINDING

    -   ### SXBR\_INVALID\_RULE\_INPUT\_PAGING\_WITH\_LAST\_SYNC\_TIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_INVALID\_RULE\_INPUT\_PAGING\_WITH\_LAST\_SYNC\_TIME

    -   ### SXBR\_INVALID\_RULE\_INPUT\_NO\_PAGING\_WITH\_LAST\_SYNC\_TIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SXBR\_INVALID\_RULE\_INPUT\_NO\_PAGING\_WITH\_LAST\_SYNC\_TIME

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_GENERIC\_ERROR

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_DISALLOWED\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_DISALLOWED\_FUNCTION

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_RULES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_RULES

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_CONSTANTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_CONSTANTS

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FIELD\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FIELD\_REFERENCE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_RELATED\_RECORD\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_RELATED\_RECORD\_FIELD

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_RECORD\_FIELD\_FROM\_OTHER\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_RECORD\_FIELD\_FROM\_OTHER\_RECORD\_TYPE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_CUSTOM\_FIELD\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_CUSTOM\_FIELD\_REFERENCE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_INVALID\_FIELD\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_INVALID\_FIELD\_REFERENCE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_INSUFFICIENT\_PRIVILEGES

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_INVALID

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_TARGET\_RECORD\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_TARGET\_RECORD\_TYPE\_MISMATCH

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FIELD\_REFERENCE\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FIELD\_REFERENCE\_INVALID

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_INVALID\_STRUCTURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_INVALID\_STRUCTURE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_WRITE\_TIME\_TODAY\_NOW

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_WRITE\_TIME\_TODAY\_NOW

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_WRITE\_TIME\_CF\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_WRITE\_TIME\_CF\_FUNCTION

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_WRITE\_TIME\_RELATED\_RECORD\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_WRITE\_TIME\_RELATED\_RECORD\_FIELD

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_RECORD\_VARIABLE\_QUERY\_TIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_RECORD\_VARIABLE\_QUERY\_TIME

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FIELD\_REFERENCE\_QUERY\_TIME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FIELD\_REFERENCE\_QUERY\_TIME

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_MISSING\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_MISSING\_PARAMETER

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_MULTIPLE\_VALUES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_MULTIPLE\_VALUES

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_ONE\_TO\_MANY\_DISALLOWED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_ONE\_TO\_MANY\_DISALLOWED\_ERROR

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_INVALID\_PARAM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_INVALID\_PARAM\_TYPE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_CONFLICTING\_PARAM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_DEFAULT\_VALUE\_CONFLICTING\_PARAM\_TYPE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_INVALID\_PARAM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_INVALID\_PARAM\_TYPE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_CONFLICTING\_PARAM\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_CONFLICTING\_PARAM\_TYPE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_WHEN\_TRUE\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_WHEN\_TRUE\_INVALID\_TYPE

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_VALUE\_LITERAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_MATCH\_VALUE\_LITERAL

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_NESTED\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_NESTED\_INSUFFICIENT\_PRIVILEGES

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_VALUE\_BETWEEN\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_VALUE\_BETWEEN\_LENGTH

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_VALUE\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_VALUE\_TYPE\_MISMATCH

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_VALUE\_IN\_NOT\_IN\_SCALAR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_VALUE\_IN\_NOT\_IN\_SCALAR

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_DISALLOWED\_RLS\_FUNCTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_DISALLOWED\_RLS\_FUNCTION

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_NESTED\_INSUFFICIENT\_RECORD\_FIELD\_SECURITY\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_FILTER\_FIELD\_NESTED\_INSUFFICIENT\_RECORD\_FIELD\_SECURITY\_PRIVILEGES

    -   ### RECORD\_TYPE\_CUSTOM\_FIELD\_XL\_TEXT\_FIELD\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_CUSTOM\_FIELD\_XL\_TEXT\_FIELD\_ERROR

    -   ### CUSTOM\_FIELD\_EVALUATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CUSTOM\_FIELD\_EVALUATION\_ERROR

    -   ### CUSTOM\_FIELD\_MAX\_NESTING\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CUSTOM\_FIELD\_MAX\_NESTING\_ERROR

    -   ### CUSTOM\_FIELD\_CIRCULAR\_REFERENCE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CUSTOM\_FIELD\_CIRCULAR\_REFERENCE\_ERROR

    -   ### CUSTOM\_FIELD\_NESTED\_MATCH\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CUSTOM\_FIELD\_NESTED\_MATCH\_ERROR

    -   ### CUSTOM\_FIELD\_MATCH\_IN\_MEASURE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CUSTOM\_FIELD\_MATCH\_IN\_MEASURE\_ERROR

    -   ### INBOUND\_AUTHENTICATION\_FUNCTION\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INBOUND\_AUTHENTICATION\_FUNCTION\_INSUFFICIENT\_PRIVILEGES

        Inbound Authentication Function Insufficient Access

    -   ### INTERFACE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INTERFACE\_NOT\_FOUND

    -   ### EXTERNAL\_DEPLOYMENT\_NOT\_ENABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_NOT\_ENABLED

    -   ### EXTERNAL\_DEPLOYMENT\_AUTHENTICATE\_AS\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_AUTHENTICATE\_AS\_INVALID

    -   ### EXTERNAL\_DEPLOYMENT\_SERVICE\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_SERVICE\_UNAVAILABLE

    -   ### EXTERNAL\_INSPECT\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_INSPECT\_UNAVAILABLE

    -   ### EXTERNAL\_DEPLOYMENT\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_GENERIC\_ERROR

    -   ### EXTERNAL\_INSPECT\_INVALID\_SUMMARY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_INSPECT\_INVALID\_SUMMARY

    -   ### EXTERNAL\_INSPECT\_INVALID\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_INSPECT\_INVALID\_UUID

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_UUID

    -   ### EXTERNAL\_DEPLOYMENT\_DDL\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_DDL\_DISABLED

    -   ### EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETER

    -   ### EXTERNAL\_DEPLOYMENT\_PARAMETER\_MAX\_SIZE\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_PARAMETER\_MAX\_SIZE\_EXCEEDED

    -   ### EXTERNAL\_DEPLOYMENT\_REQUIRED\_DDL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_REQUIRED\_DDL

    -   ### EXTERNAL\_DEPLOYMENT\_REQUIRED\_DATASOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_REQUIRED\_DATASOURCE

    -   ### EXTERNAL\_DEPLOYMENT\_TOTAL\_FILE\_MAX\_SIZE\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_TOTAL\_FILE\_MAX\_SIZE\_EXCEEDED

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_DDL\_ORDER\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_DDL\_ORDER\_ID

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_DDL\_SEQUENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_DDL\_SEQUENCE

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_FILE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_FILE\_NAME

    -   ### EXTERNAL\_DEPLOYMENT\_FILE\_MAX\_SIZE\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_FILE\_MAX\_SIZE\_EXCEEDED

    -   ### EXTERNAL\_DEPLOYMENT\_INCORRECT\_MEDIA\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INCORRECT\_MEDIA\_TYPE

    -   ### EXTERNAL\_DEPLOYMENT\_DDL\_DUPLICATE\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_DDL\_DUPLICATE\_KEY

    -   ### EXTERNAL\_DEPLOYMENT\_UNSUPPORTED\_PARAMETERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_UNSUPPORTED\_PARAMETERS

    -   ### EXTERNAL\_DEPLOYMENT\_REQUEST\_PARAMETERS\_NOT\_IN\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_REQUEST\_PARAMETERS\_NOT\_IN\_JSON

    -   ### EXTERNAL\_DEPLOYMENT\_TOO\_MANY\_FILES\_WITH\_THE\_SAME\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_TOO\_MANY\_FILES\_WITH\_THE\_SAME\_NAME

    -   ### EXTERNAL\_DEPLOYMENT\_JSON\_BODY\_NOT\_SPECIFIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_JSON\_BODY\_NOT\_SPECIFIED

    -   ### EXTERNAL\_DEPLOYMENT\_MULTIPLE\_JSON\_BODIES\_SPECIFIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_MULTIPLE\_JSON\_BODIES\_SPECIFIED

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_CHARS\_IN\_NAME\_PARAM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_CHARS\_IN\_NAME\_PARAM

    -   ### EXTERNAL\_DEPLOYMENT\_BLANK\_NAME\_PARAM\_AFTER\_SANITIZATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_BLANK\_NAME\_PARAM\_AFTER\_SANITIZATION

    -   ### EXTERNAL\_EXPORT\_NOT\_ENABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_NOT\_ENABLED

    -   ### EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETERS

    -   ### EXTERNAL\_DEPLOYMENT\_PLUGIN\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_PLUGIN\_DISABLED

    -   ### EXTERNAL\_DEPLOYMENT\_PLUGIN\_KEY\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_PLUGIN\_KEY\_NOT\_FOUND

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_PLUGIN\_EXTENSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_PLUGIN\_EXTENSION

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_PLUGIN\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_PLUGIN\_NAME

    -   ### EXTERNAL\_DEPLOYMENT\_ADMIN\_CONSOLE\_SETTINGS\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_ADMIN\_CONSOLE\_SETTINGS\_DISABLED

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_UUID\_PARAM\_AFTER\_SANITIZATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_UUID\_PARAM\_AFTER\_SANITIZATION

    -   ### EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETERS\_WITH\_PLUGINS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETERS\_WITH\_PLUGINS

    -   ### EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETERS\_WITH\_ADMIN\_SETTINGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_REQUIRED\_PARAMETERS\_WITH\_ADMIN\_SETTINGS

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_APPLICATION\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_APPLICATION\_UUID

    -   ### EXTERNAL\_INSPECT\_REQUIRED\_PARAMETERS\_WITH\_ADMIN\_SETTINGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_INSPECT\_REQUIRED\_PARAMETERS\_WITH\_ADMIN\_SETTINGS

    -   ### EXTERNAL\_DEPLOYMENT\_ADMIN\_SETTINGS\_IN\_PACKAGE\_FILE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_ADMIN\_SETTINGS\_IN\_PACKAGE\_FILE

    -   ### EXTERNAL\_DEPLOYMENT\_NO\_ADMIN\_SETTINGS\_IN\_ADMIN\_SETTINGS\_FILE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_NO\_ADMIN\_SETTINGS\_IN\_ADMIN\_SETTINGS\_FILE

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_CHARS\_IN\_PACKAGE\_FILE\_NAME\_PARAM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_CHARS\_IN\_PACKAGE\_FILE\_NAME\_PARAM

    -   ### EXTERNAL\_EXPORT\_SERVICE\_UNAVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_SERVICE\_UNAVAILABLE

    -   ### EXTERNAL\_EXPORT\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_INVALID\_TYPE

    -   ### EXTERNAL\_EXPORT\_TOO\_MANY\_PACKAGE\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_TOO\_MANY\_PACKAGE\_UUIDS

    -   ### EXTERNAL\_EXPORT\_ILLEGAL\_NON\_ARRAY\_FOR\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_ILLEGAL\_NON\_ARRAY\_FOR\_UUIDS

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_APPLICATION\_UUID\_FOR\_REGULAR\_ACCOUNT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_APPLICATION\_UUID\_FOR\_REGULAR\_ACCOUNT

    -   ### EXTERNAL\_EXPORT\_INVALID\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_INVALID\_UUID

    -   ### EXTERNAL\_EXPORT\_INVALID\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_INVALID\_UUIDS

    -   ### EXTERNAL\_EXPORT\_EMPTY\_PACKAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_EMPTY\_PACKAGE

    -   ### EXTERNAL\_DEPLOYMENT\_INVALID\_SYNTAX\_FOR\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_DEPLOYMENT\_INVALID\_SYNTAX\_FOR\_UUIDS

    -   ### EXTERNAL\_EXPORT\_TOO\_MANY\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_TOO\_MANY\_UUIDS

    -   ### EXTERNAL\_EXPORT\_INVALID\_CONTENT\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EXTERNAL\_EXPORT\_INVALID\_CONTENT\_TYPE

    -   ### DEPLOYMENT\_HISTORY\_EXPORT\_ACCESS\_DENIED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEPLOYMENT\_HISTORY\_EXPORT\_ACCESS\_DENIED

    -   ### DEFAULT\_VALUE\_NO\_VALUE\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEFAULT\_VALUE\_NO\_VALUE\_PARAMETER

    -   ### DEFAULT\_VALUE\_NO\_DEFAULT\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEFAULT\_VALUE\_NO\_DEFAULT\_PARAMETER

    -   ### DEFAULT\_VALUE\_DUPLICATE\_VALUE\_PARAMETERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEFAULT\_VALUE\_DUPLICATE\_VALUE\_PARAMETERS

    -   ### DEFAULT\_VALUE\_DUPLICATE\_HANDLE\_ASYNC\_PARAMETERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DEFAULT\_VALUE\_DUPLICATE\_HANDLE\_ASYNC\_PARAMETERS

    -   ### APPLICATION\_PREFIX\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_PREFIX\_TOO\_LONG

    -   ### APPLICATION\_PREFIX\_INVALID\_CHARACTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_PREFIX\_INVALID\_CHARACTER

    -   ### APPLICATION\_PREFIX\_ONLY\_NUMBERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_PREFIX\_ONLY\_NUMBERS

    -   ### OBJECT\_TEMPLATE\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OBJECT\_TEMPLATE\_GENERIC

    -   ### DYNAMIC\_OFFLINE\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_GENERIC

    -   ### DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_FOLDER\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_FOLDER\_ERROR

    -   ### DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_NOT\_FOUND

    -   ### DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_NOT\_STORED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_NOT\_STORED

    -   ### DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_NOT\_BUILT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_RULE\_BUNDLE\_NOT\_BUILT

    -   ### DYNAMIC\_OFFLINE\_RUNTIME\_BUNDLE\_FOLDER\_RETRIEVAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_RUNTIME\_BUNDLE\_FOLDER\_RETRIEVAL\_ERROR

    -   ### DYNAMIC\_OFFLINE\_RUNTIME\_BUNDLE\_OVERRIDE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_RUNTIME\_BUNDLE\_OVERRIDE\_ERROR

    -   ### DYNAMIC\_OFFLINE\_CALENDAR\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DYNAMIC\_OFFLINE\_CALENDAR\_MISMATCH

    -   ### APPLICATION\_DOCUMENTATION\_ITEM\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_DOCUMENTATION\_ITEM\_NOT\_FOUND

    -   ### APPLICATION\_DOCUMENTATION\_MAX\_ITEMS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") APPLICATION\_DOCUMENTATION\_MAX\_ITEMS

    -   ### EVALUATION\_EPOCH\_OVERFLOW

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") EVALUATION\_EPOCH\_OVERFLOW

    -   ### RECORD\_FROM\_SCRATCH\_BAD\_DATA\_SOURCE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FROM\_SCRATCH\_BAD\_DATA\_SOURCE

        Deprecated.

    -   ### RECORD\_FROM\_SCRATCH\_DOCUMENT\_PERSIST\_ERROR

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FROM\_SCRATCH\_DOCUMENT\_PERSIST\_ERROR

        Deprecated.

    -   ### RECORD\_FROM\_SCRATCH\_FAILED\_TO\_GET\_UNIQUE\_NAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FROM\_SCRATCH\_FAILED\_TO\_GET\_UNIQUE\_NAME

        Deprecated.

    -   ### RECORD\_FROM\_SCRATCH\_CANT\_HAVE\_NULL\_TABLE\_NAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FROM\_SCRATCH\_CANT\_HAVE\_NULL\_TABLE\_NAME

        Deprecated.

    -   ### RECORD\_FROM\_SCRATCH\_TABLE\_CREATION\_UNSUCCESFUL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FROM\_SCRATCH\_TABLE\_CREATION\_UNSUCCESFUL

        Deprecated.

    -   ### RECORD\_FROM\_SCRATCH\_TABLE\_PUBLISH\_ERROR

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FROM\_SCRATCH\_TABLE\_PUBLISH\_ERROR

        Deprecated.

    -   ### CODELESS\_DATA\_MODELING\_INCORRECT\_DATA\_CONFIGURATION

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODELESS\_DATA\_MODELING\_INCORRECT\_DATA\_CONFIGURATION

        Deprecated.

    -   ### CODELESS\_DATA\_MODELING\_SQL\_NOT\_PRESENT\_ERROR

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODELESS\_DATA\_MODELING\_SQL\_NOT\_PRESENT\_ERROR

        Deprecated.

    -   ### CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_FETCH\_COLUMNS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_FETCH\_COLUMNS

        Deprecated.

    -   ### CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_PERMISSION

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_PERMISSION

        Deprecated.

    -   ### CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_TABLE\_EXISTS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_TABLE\_EXISTS

        Deprecated.

    -   ### CODELESS\_DATA\_MODELING\_NON\_MATCHING\_FIELDS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODELESS\_DATA\_MODELING\_NON\_MATCHING\_FIELDS

        Deprecated.

    -   ### CODELESS\_DATA\_MODELING\_PARTIAL\_SQL\_FAILURE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODELESS\_DATA\_MODELING\_PARTIAL\_SQL\_FAILURE

        Deprecated.

    -   ### PORTALS\_INVALID\_DATA\_SOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_INVALID\_DATA\_SOURCE

    -   ### PORTALS\_INVALID\_DATA\_STORE\_PERMISSIONS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_INVALID\_DATA\_STORE\_PERMISSIONS

    -   ### PORTALS\_QUERY\_DATA\_SOURCE\_CONNECTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_QUERY\_DATA\_SOURCE\_CONNECTION\_ERROR

    -   ### PORTALS\_QUERY\_DATA\_SOURCE\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_QUERY\_DATA\_SOURCE\_GENERIC\_ERROR

    -   ### PORTALS\_INVALID\_FILE\_MOVER\_REQUEST\_CONTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_INVALID\_FILE\_MOVER\_REQUEST\_CONTENT

    -   ### PORTALS\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_INVALID\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_ENVIRONMENT\_SPECIFIC\_CONSTANT\_INVALID\_TYPE

    -   ### PORTALS\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### PORTALS\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_NONAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES\_NONAME

    -   ### PORTALS\_NON\_UNIQUE\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_NON\_UNIQUE\_URL\_STUB

    -   ### PORTALS\_INVALID\_URL\_STUB

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_INVALID\_URL\_STUB

    -   ### PORTALS\_INVALID\_DATA\_SOURCE\_CREDENTIALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_INVALID\_DATA\_SOURCE\_CREDENTIALS

    -   ### IX\_PORTAL\_PROPERTY\_NOT\_BOOLEAN

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") IX\_PORTAL\_PROPERTY\_NOT\_BOOLEAN

    -   ### PORTALS\_INVALID\_RECAPTCHA\_CREDENTIALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_INVALID\_RECAPTCHA\_CREDENTIALS

    -   ### PORTALS\_GET\_DOCUMENT\_PROPERTIES\_LCP\_BUSY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_GET\_DOCUMENT\_PROPERTIES\_LCP\_BUSY

    -   ### PORTALS\_NO\_SERVICE\_ACCOUNT\_CONFIGURED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_NO\_SERVICE\_ACCOUNT\_CONFIGURED

    -   ### PORTALS\_PUBLISH\_INFO\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_PUBLISH\_INFO\_NOT\_FOUND

    -   ### PORTALS\_SERVICE\_ACCOUNT\_SUGGEST\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_SERVICE\_ACCOUNT\_SUGGEST\_FAILED

    -   ### PORTALS\_PAGE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_PAGE\_NOT\_FOUND

    -   ### PORTALS\_INTERFACE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_INTERFACE\_NOT\_FOUND

    -   ### PORTALS\_QUERY\_RECORD\_CONNECTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_QUERY\_RECORD\_CONNECTION\_ERROR

    -   ### PORTALS\_NOT\_ENABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_NOT\_ENABLED

    -   ### UNSUCCESSFUL\_FILE\_SUBMISSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNSUCCESSFUL\_FILE\_SUBMISSION

    -   ### PORTALS\_START\_PROCESS\_LCP\_BUSY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_START\_PROCESS\_LCP\_BUSY

    -   ### PORTALS\_QUERY\_RECORD\_VERSION\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_QUERY\_RECORD\_VERSION\_MISMATCH

    -   ### PORTALS\_QUERY\_RECORD\_TYPE\_LCP\_BUSY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_QUERY\_RECORD\_TYPE\_LCP\_BUSY

    -   ### PORTALS\_NOT\_ENABLED\_QUERY\_RECORD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_NOT\_ENABLED\_QUERY\_RECORD

    -   ### PORTALS\_RECORD\_ACTIONS\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_RECORD\_ACTIONS\_NOT\_SUPPORTED

    -   ### PORTALS\_RECORD\_LINKS\_NOT\_SUPPORTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_RECORD\_LINKS\_NOT\_SUPPORTED

    -   ### PORTALS\_GRID\_DATA\_EXPORT\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_GRID\_DATA\_EXPORT\_FAILURE

    -   ### PORTALS\_BINDINGS\_OUT\_OF\_DATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTALS\_BINDINGS\_OUT\_OF\_DATE

    -   ### DKIM\_INVALID\_KEY\_PAIR\_GENERATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DKIM\_INVALID\_KEY\_PAIR\_GENERATION

    -   ### DKIM\_INVALID\_PRIVATE\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DKIM\_INVALID\_PRIVATE\_KEY

    -   ### DKIM\_INVALID\_PUBLIC\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DKIM\_INVALID\_PUBLIC\_KEY

    -   ### DKIM\_CONFIGURATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DKIM\_CONFIGURATION\_ERROR

    -   ### CONFIG\_OBJECT\_RESOURCE\_CANNOT\_BE\_PARSED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONFIG\_OBJECT\_RESOURCE\_CANNOT\_BE\_PARSED

    -   ### CONFIG\_OBJECT\_CANNOT\_BE\_INITIALIZED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONFIG\_OBJECT\_CANNOT\_BE\_INITIALIZED

    -   ### RECORD\_MUTATION\_WRONG\_INPUT\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_WRONG\_INPUT\_TYPE

    -   ### RECORD\_MUTATION\_NULL\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_NULL\_INPUT

    -   ### RECORD\_MUTATION\_EMPTY\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_EMPTY\_INPUT

    -   ### RECORD\_DELETE\_NO\_PK\_INPUT

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DELETE\_NO\_PK\_INPUT

        Deprecated.

    -   ### RECORD\_MUTATION\_INVALID\_RECORD\_TYPE\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_INVALID\_RECORD\_TYPE\_INPUT

    -   ### RECORD\_MUTATION\_INPUT\_SYNC\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_INPUT\_SYNC\_INVALID

    -   ### RECORD\_UPDATE\_INPUT\_TOO\_MANY\_ROWS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INPUT\_TOO\_MANY\_ROWS

    -   ### RECORD\_DELETE\_INPUT\_TOO\_MANY\_ROWS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DELETE\_INPUT\_TOO\_MANY\_ROWS

    -   ### RECORD\_MUTATION\_RECORD\_INPUT\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_RECORD\_INPUT\_DOES\_NOT\_EXIST

    -   ### RECORD\_MUTATION\_FIELD\_CAST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_FIELD\_CAST\_ERROR

    -   ### RECORD\_MUTATION\_DUPLICATE\_RECORD\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_DUPLICATE\_RECORD\_ID

    -   ### RECORD\_MUTATION\_MULTIPLE\_DATA\_SOURCES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_MULTIPLE\_DATA\_SOURCES

    -   ### RECORD\_MUTATION\_SOURCE\_COLUMN\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_SOURCE\_COLUMN\_NOT\_FOUND

    -   ### RECORD\_MUTATION\_SOURCE\_COLUMN\_TYPE\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_SOURCE\_COLUMN\_TYPE\_MISMATCH

    -   ### RECORD\_MUTATION\_SOURCE\_PRIMARY\_KEY\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_SOURCE\_PRIMARY\_KEY\_MISMATCH

    -   ### RECORD\_MUTATION\_UNIQUENESS\_CONSTRAINT\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_UNIQUENESS\_CONSTRAINT\_MISMATCH

    -   ### RECORD\_MUTATION\_SOURCE\_SCHEMA\_MISMATCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_SOURCE\_SCHEMA\_MISMATCH

    -   ### RECORD\_MUTATION\_TABLE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_TABLE\_NOT\_FOUND

    -   ### RECORD\_MUTATION\_MULTIPLE\_RECORD\_TYPES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_MULTIPLE\_RECORD\_TYPES

    -   ### RECORD\_MUTATION\_SEQUENCE\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_MUTATION\_SEQUENCE\_NOT\_AVAILABLE

    -   ### RECORD\_UPDATE\_INPUT\_TOO\_MANY\_TRAVERSED\_ROWS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INPUT\_TOO\_MANY\_TRAVERSED\_ROWS

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_TYPE

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_RELATIONSHIP

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_TYPE\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_TYPE\_RECORD\_TYPE

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_TYPE\_RECORD\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_TYPE\_RECORD\_RELATIONSHIP

    -   ### RECORD\_UPDATE\_EVENT\_RECORD\_TYPE\_NOT\_SYNCED\_OR\_RDBMS\_BACKED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_EVENT\_RECORD\_TYPE\_NOT\_SYNCED\_OR\_RDBMS\_BACKED

    -   ### RECORD\_UPDATE\_EVENT\_TYPE\_RECORD\_TYPE\_NOT\_SYNCED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_EVENT\_TYPE\_RECORD\_TYPE\_NOT\_SYNCED

    -   ### RECORD\_UPDATE\_EVENT\_RECORD\_TYPE\_INVALID\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_EVENT\_RECORD\_TYPE\_INVALID\_SYNC

    -   ### RECORD\_UPDATE\_EVENT\_TYPE\_RECORD\_TYPE\_INVALID\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_EVENT\_TYPE\_RECORD\_TYPE\_INVALID\_SYNC

    -   ### RECORD\_UPDATE\_EVENT\_RECORD\_AND\_BASE\_RECORD\_DIFFERENT\_SOURCES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_EVENT\_RECORD\_AND\_BASE\_RECORD\_DIFFERENT\_SOURCES

    -   ### RECORD\_UPDATE\_EVENTS\_NOT\_CONFIGURED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_EVENTS\_NOT\_CONFIGURED

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_RELATIONSHIP\_JOIN\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_RELATIONSHIP\_JOIN\_FIELD

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_RELATIONSHIP\_SOURCE\_FIELD\_NOT\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_RELATIONSHIP\_SOURCE\_FIELD\_NOT\_ID

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_TIMESTAMP\_FIELD\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_TIMESTAMP\_FIELD\_MISSING

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_USER\_FIELD\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_USER\_FIELD\_MISSING

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_ACTIVITY\_ID\_FIELD\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_ACTIVITY\_ID\_FIELD\_MISSING

    -   ### RECORD\_UPDATE\_EMPTY\_RECORD\_MAP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_EMPTY\_RECORD\_MAP

    -   ### RECORD\_UPDATE\_MULTIPLE\_BASE\_RECORD\_TYPES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_MULTIPLE\_BASE\_RECORD\_TYPES

    -   ### RECORD\_UPDATE\_RECORD\_TYPE\_NOT\_SYNCED\_OR\_RDMBS\_BACKED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_RECORD\_TYPE\_NOT\_SYNCED\_OR\_RDMBS\_BACKED

    -   ### RECORD\_UPDATE\_RECORD\_TYPE\_SYNC\_INVALID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_RECORD\_TYPE\_SYNC\_INVALID

    -   ### RECORD\_UPDATE\_RECORD\_TYPE\_DIFFERENT\_SOURCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_RECORD\_TYPE\_DIFFERENT\_SOURCE

    -   ### RECORD\_UPDATE\_PAST\_NON\_CASCADING\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_PAST\_NON\_CASCADING\_RELATIONSHIP

    -   ### RECORD\_UPDATE\_CONFLICTING\_FIELD\_CHANGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_CONFLICTING\_FIELD\_CHANGE

    -   ### RECORD\_UPDATE\_CONFLICTING\_RELATIONSHIP\_CHANGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_CONFLICTING\_RELATIONSHIP\_CHANGE

    -   ### RECORD\_UPDATE\_INVALID\_PRIMARY\_KEY\_CHANGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_PRIMARY\_KEY\_CHANGE

    -   ### RECORD\_UPDATE\_INVALID\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_RELATIONSHIP

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_AUTOMATION\_TYPE\_FIELD\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_AUTOMATION\_TYPE\_FIELD\_MISSING

    -   ### RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_AUTOMATION\_TYPE\_FIELD\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_INVALID\_EVENT\_RECORD\_AUTOMATION\_TYPE\_FIELD\_NULL

    -   ### RECORD\_UPDATE\_MISSING\_UK\_RELATIONSHIP\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_UPDATE\_MISSING\_UK\_RELATIONSHIP\_FIELD

    -   ### RECORD\_WRITE\_SOURCE\_NO\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_WRITE\_SOURCE\_NO\_RESPONSE

    -   ### RECORD\_WRITE\_SOURCE\_BAD\_CREDENTIALS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_WRITE\_SOURCE\_BAD\_CREDENTIALS

    -   ### RECORD\_WRITE\_SOURCE\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_WRITE\_SOURCE\_GENERIC\_ERROR

    -   ### RECORD\_WRITE\_DATA\_INTEGRITY\_VIOLATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_WRITE\_DATA\_INTEGRITY\_VIOLATION

    -   ### PAS\_DEFAULT\_REQUEST\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DEFAULT\_REQUEST\_FAILED

    -   ### PAS\_DEFAULT\_CREATE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DEFAULT\_CREATE\_FAILED

    -   ### PAS\_DEFAULT\_UPDATE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DEFAULT\_UPDATE\_FAILED

    -   ### PAS\_DEFAULT\_DELETE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DEFAULT\_DELETE\_FAILED

    -   ### PAS\_SET\_PUBLIC\_KEY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_SET\_PUBLIC\_KEY\_FAILED

    -   ### PAS\_GET\_PUBLIC\_KEY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_GET\_PUBLIC\_KEY\_FAILED

    -   ### PAS\_CREATE\_ECR\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_CREATE\_ECR\_FAILED

    -   ### PAS\_GET\_ECR\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_GET\_ECR\_FAILED

    -   ### PAS\_GET\_S3\_ZIP\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_GET\_S3\_ZIP\_FAILED

    -   ### PAS\_UPLOAD\_S3\_ZIP\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_UPLOAD\_S3\_ZIP\_FAILED

    -   ### PAS\_DELETE\_S3\_ZIP\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DELETE\_S3\_ZIP\_FAILED

    -   ### PAS\_RUN\_CODEBUILD\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_RUN\_CODEBUILD\_FAILED

    -   ### PAS\_DATABASE\_WRITE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DATABASE\_WRITE\_FAILED

    -   ### PAS\_DATABASE\_READ\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DATABASE\_READ\_FAILED

    -   ### PAS\_DATABASE\_GET\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DATABASE\_GET\_FAILED

    -   ### PAS\_DATABASE\_UPDATE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DATABASE\_UPDATE\_FAILED

    -   ### PAS\_PORTALS\_LIMIT\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_PORTALS\_LIMIT\_EXCEEDED

    -   ### PAS\_PORTALS\_CREATE\_TRANSACTION\_CONFLICT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_PORTALS\_CREATE\_TRANSACTION\_CONFLICT

    -   ### PAS\_GET\_LIBRARY\_VERSION\_OVERRIDE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_GET\_LIBRARY\_VERSION\_OVERRIDE\_FAILED

    -   ### PAS\_MISSING\_AUTHORIZATION\_HEADER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_MISSING\_AUTHORIZATION\_HEADER

    -   ### PAS\_AUTHORIZATION\_FAILED\_FOR\_REQUEST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_AUTHORIZATION\_FAILED\_FOR\_REQUEST

    -   ### PAS\_DELETE\_RESOURCES\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DELETE\_RESOURCES\_FAILED

    -   ### PAS\_DELETE\_RESOURCES\_FAILED\_PARAMS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DELETE\_RESOURCES\_FAILED\_PARAMS

    -   ### PAS\_DELETE\_PUBLIC\_KEY\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DELETE\_PUBLIC\_KEY\_FAILED

    -   ### PAS\_DELETE\_ECR\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DELETE\_ECR\_FAILED

    -   ### PAS\_RESPONSE\_STATUS\_413

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_RESPONSE\_STATUS\_413

    -   ### PAS\_RESPONSE\_STATUS\_429

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_RESPONSE\_STATUS\_429

    -   ### PAS\_REQUEST\_PROTOCOL\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_REQUEST\_PROTOCOL\_EXCEPTION

    -   ### PAS\_REQUEST\_IO\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_REQUEST\_IO\_EXCEPTION

    -   ### PAS\_REQUEST\_BAD\_URI

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_REQUEST\_BAD\_URI

    -   ### PAS\_REQUEST\_UNEXPECTED\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_REQUEST\_UNEXPECTED\_EXCEPTION

    -   ### PAS\_GENERIC\_REQUEST\_FAILURE\_WITH\_STATUS\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_GENERIC\_REQUEST\_FAILURE\_WITH\_STATUS\_CODE

    -   ### PAS\_CREATE\_FAILED\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_CREATE\_FAILED\_GENERIC\_ERROR

    -   ### PAS\_UPDATE\_FAILED\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_UPDATE\_FAILED\_GENERIC\_ERROR

    -   ### PAS\_DELETE\_FAILED\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DELETE\_FAILED\_GENERIC\_ERROR

    -   ### PAS\_INVALID\_APP\_ICON\_FORMAT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_INVALID\_APP\_ICON\_FORMAT\_ERROR

    -   ### PAS\_PORTAL\_MGMT\_FT\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_PORTAL\_MGMT\_FT\_DISABLED

    -   ### PAS\_NO\_EXISTING\_PRIVATE\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_NO\_EXISTING\_PRIVATE\_KEY

    -   ### PAS\_NULL\_SITE\_ID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_NULL\_SITE\_ID

    -   ### PAS\_DEFAULT\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_DEFAULT\_FAILED

    -   ### PAS\_PORTAL\_ALREADY\_EXISTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_PORTAL\_ALREADY\_EXISTS

    -   ### PAS\_INVALID\_LOGO\_IMAGE\_FILE\_EXTENSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_INVALID\_LOGO\_IMAGE\_FILE\_EXTENSION

    -   ### PAS\_GET\_PORTAL\_METRICS\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_GET\_PORTAL\_METRICS\_FAILED

    -   ### PAS\_INVALID\_TIME\_RANGE\_FOR\_GET\_PORTAL\_METRICS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_INVALID\_TIME\_RANGE\_FOR\_GET\_PORTAL\_METRICS

    -   ### PAS\_BUNDLE\_MIGRATING\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_BUNDLE\_MIGRATING\_GENERIC\_ERROR

    -   ### PAS\_INVALID\_HOSTNAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_INVALID\_HOSTNAME

    -   ### PAS\_GET\_PORTAL\_MONITORING\_VIEW\_METRICS\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_GET\_PORTAL\_MONITORING\_VIEW\_METRICS\_FAILED

    -   ### PAS\_RESPONSE\_STATUS\_413\_NO\_PRECEDENTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_RESPONSE\_STATUS\_413\_NO\_PRECEDENTS

    -   ### PAS\_RESPONSE\_STATUS\_409\_PORTAL\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PAS\_RESPONSE\_STATUS\_409\_PORTAL\_NOT\_FOUND

    -   ### PLUGIN\_MANAGEMENT\_GENERIC\_REVERT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PLUGIN\_MANAGEMENT\_GENERIC\_REVERT\_ERROR

    -   ### PLUGIN\_MANAGEMENT\_NO\_BACKUP\_FOR\_REVERT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PLUGIN\_MANAGEMENT\_NO\_BACKUP\_FOR\_REVERT\_ERROR

    -   ### PLUGIN\_MANAGEMENT\_FAILED\_TO\_DELETE\_BACKUP\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PLUGIN\_MANAGEMENT\_FAILED\_TO\_DELETE\_BACKUP\_ERROR

    -   ### PLUGIN\_MANAGEMENT\_FAILED\_TO\_DELETE\_PLUGIN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PLUGIN\_MANAGEMENT\_FAILED\_TO\_DELETE\_PLUGIN\_ERROR

    -   ### PLUGIN\_MANAGEMENT\_DEPLOY\_INVALID\_API\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PLUGIN\_MANAGEMENT\_DEPLOY\_INVALID\_API\_ERROR

    -   ### PROCESS\_MINING\_SYNERGY\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_GENERIC\_ERROR

    -   ### PROCESS\_MINING\_SYNERGY\_ERROR\_WHILE\_CHECKING\_MEMBERSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_ERROR\_WHILE\_CHECKING\_MEMBERSHIP

    -   ### PROCESS\_MINING\_SYNERGY\_SYSTEM\_ROLE\_INSUFFICIENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_SYSTEM\_ROLE\_INSUFFICIENT

    -   ### PROCESS\_MINING\_SYNERGY\_APP\_GENERATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_APP\_GENERATION\_ERROR

    -   ### PROCESS\_MINING\_SYNERGY\_APP\_GENERATION\_MISSING\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_APP\_GENERATION\_MISSING\_NAME

    -   ### PROCESS\_MINING\_SYNERGY\_EXPECTED\_OBJECT\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_EXPECTED\_OBJECT\_MISSING

    -   ### PROCESS\_MINING\_SYNERGY\_ERROR\_QUERYING\_GENERATED\_OBJECTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_ERROR\_QUERYING\_GENERATED\_OBJECTS

    -   ### PROCESS\_MINING\_SYNERGY\_PROCESS\_MODEL\_CREATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_PROCESS\_MODEL\_CREATION\_ERROR

    -   ### PROCESS\_MINING\_SYNERGY\_PROCESS\_BAD\_UPLOAD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_PROCESS\_BAD\_UPLOAD

    -   ### PROCESS\_MINING\_SYNERGY\_PROCESS\_MODEL\_CONVERSION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_PROCESS\_MODEL\_CONVERSION\_ERROR

    -   ### PROCESS\_MINING\_SYNERGY\_BPMN\_FILE\_TOO\_LARGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_SYNERGY\_BPMN\_FILE\_TOO\_LARGE

    -   ### RDO\_OBJECT\_NOT\_FOUND\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_OBJECT\_NOT\_FOUND\_ERROR

    -   ### RDO\_FORBIDDEN\_OBJECT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_FORBIDDEN\_OBJECT\_ERROR

    -   ### RDO\_UNAUTHORIZED\_ACCESS\_OBJECT\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_UNAUTHORIZED\_ACCESS\_OBJECT\_ERROR

    -   ### RDO\_OBJECT\_UNKNOWN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_OBJECT\_UNKNOWN\_ERROR

    -   ### RDO\_CLONE\_EXCEPTION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_CLONE\_EXCEPTION

    -   ### RDO\_IX\_CANT\_DESERIALIZE\_RDO\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_IX\_CANT\_DESERIALIZE\_RDO\_JSON

    -   ### RDO\_IX\_MISSING\_RDO\_JSON

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_IX\_MISSING\_RDO\_JSON

    -   ### RDO\_IX\_REMOTE\_SERVICE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RDO\_IX\_REMOTE\_SERVICE\_ERROR

    -   ### DSCS\_PLUGIN\_ACCESS\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DSCS\_PLUGIN\_ACCESS\_ERROR

    -   ### DSCS\_PLUGIN\_DSCS\_ID\_PARSE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DSCS\_PLUGIN\_DSCS\_ID\_PARSE\_ERROR

    -   ### DOCUMENT\_DOWNLOAD\_ERROR\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOCUMENT\_DOWNLOAD\_ERROR\_GENERIC

    -   ### DOCUMENT\_INFO\_ERROR\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOCUMENT\_INFO\_ERROR\_GENERIC

    -   ### DOCUMENT\_INFO\_ERROR\_NOT\_AUTHORIZED\_FOR\_DOCUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOCUMENT\_INFO\_ERROR\_NOT\_AUTHORIZED\_FOR\_DOCUMENT

    -   ### DOCUMENT\_NOT\_FOUND\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOCUMENT\_NOT\_FOUND\_ERROR

    -   ### PHONE\_NUMBER\_FUNCTIONS\_INVALID\_COUNTRY\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PHONE\_NUMBER\_FUNCTIONS\_INVALID\_COUNTRY\_CODE

    -   ### FORMAT\_PHONE\_NUMBER\_INVALID\_OUTPUT\_FORMAT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FORMAT\_PHONE\_NUMBER\_INVALID\_OUTPUT\_FORMAT

    -   ### ADD\_SUBTRACT\_DATETIME\_START\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_START\_NULL

    -   ### ADD\_SUBTRACT\_DATETIME\_START\_LIST\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_START\_LIST\_NULL

    -   ### ADD\_SUBTRACT\_DATETIME\_CAST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_CAST\_ERROR

    -   ### ADD\_SUBTRACT\_DATETIME\_ADD\_NEGATIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_ADD\_NEGATIVE

    -   ### ADD\_SUBTRACT\_DATETIME\_SUBTRACT\_NEGATIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_SUBTRACT\_NEGATIVE

    -   ### ADD\_SUBTRACT\_DATETIME\_ADD\_TOO\_DISTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_ADD\_TOO\_DISTANT

    -   ### ADD\_SUBTRACT\_DATETIME\_SUBTRACT\_TOO\_DISTANT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_SUBTRACT\_TOO\_DISTANT

    -   ### ADD\_SUBTRACT\_DATETIME\_PROCESS\_CAL\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ADD\_SUBTRACT\_DATETIME\_PROCESS\_CAL\_NOT\_FOUND

    -   ### CODE\_PARAM\_NULL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CODE\_PARAM\_NULL

    -   ### CURRENCY\_PARAMS\_CAST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CURRENCY\_PARAMS\_CAST\_ERROR

    -   ### CURRENCY\_INVALID\_CODE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CURRENCY\_INVALID\_CODE\_ERROR

    -   ### DECIMAL\_VALUE\_LIMIT\_EXCEED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DECIMAL\_VALUE\_LIMIT\_EXCEED

    -   ### CURRENCY\_INVALID\_FORMAT\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CURRENCY\_INVALID\_FORMAT\_TYPE\_ERROR

    -   ### CURRENCY\_INVALID\_FORMAT\_VALUE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CURRENCY\_INVALID\_FORMAT\_VALUE\_ERROR

    -   ### CURRENCY\_INDICATOR\_ALIGNMENT\_INVALID\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CURRENCY\_INDICATOR\_ALIGNMENT\_INVALID\_TYPE\_ERROR

    -   ### CURRENCY\_INDICATOR\_ALIGNMENT\_INVALID\_VALUE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CURRENCY\_INDICATOR\_ALIGNMENT\_INVALID\_VALUE\_ERROR

    -   ### PRTL\_API\_KEY\_GENERATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_API\_KEY\_GENERATION

    -   ### PRTL\_ASSET\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_ASSET\_NOT\_FOUND

    -   ### PRTL\_DATA\_SOURCES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_DATA\_SOURCES

    -   ### PRTL\_DATA\_SOURCES\_CAN\_VIEW\_ALL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_DATA\_SOURCES\_CAN\_VIEW\_ALL

    -   ### PRTL\_DATA\_SOURCES\_CANNOT\_VIEW\_ANY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_DATA\_SOURCES\_CANNOT\_VIEW\_ANY

    -   ### PRTL\_DATA\_STORE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_DATA\_STORE

    -   ### PRTL\_EXPORT\_PRECEDENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_EXPORT\_PRECEDENT

    -   ### PRTL\_FAIL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_FAIL

    -   ### PRTL\_SERVICE\_ACCOUNT\_DOCUMENT\_USER\_CAN\_SEE\_ALL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_SERVICE\_ACCOUNT\_DOCUMENT\_USER\_CAN\_SEE\_ALL

    -   ### PRTL\_SERVICE\_ACCOUNT\_DOCUMENT\_USER\_CAN\_SEE\_SOME\_BUT\_NOT\_ALL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_SERVICE\_ACCOUNT\_DOCUMENT\_USER\_CAN\_SEE\_SOME\_BUT\_NOT\_ALL

    -   ### PRTL\_SERVICE\_ACCOUNT\_DOCUMENT\_USER\_CANNOT\_SEE\_ANY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_SERVICE\_ACCOUNT\_DOCUMENT\_USER\_CANNOT\_SEE\_ANY

    -   ### PRTL\_SERVICE\_ACCOUNT\_DOCUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_SERVICE\_ACCOUNT\_DOCUMENT

    -   ### PRTL\_SERVICE\_ACCOUNT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_SERVICE\_ACCOUNT

    -   ### PRTL\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_UNEXPECTED\_ERROR

    -   ### PRTL\_UNPUBLISH\_UNEXPECTED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_UNPUBLISH\_UNEXPECTED\_ERROR

    -   ### PRTL\_UNPUBLISH\_USER\_ACCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_UNPUBLISH\_USER\_ACCESS

    -   ### PRTL\_UNPUBLISH\_FAIL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_UNPUBLISH\_FAIL

    -   ### PRTL\_USER\_ACCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_USER\_ACCESS

    -   ### PRTL\_MIXED\_PROCESS\_MODEL\_PERMISSIONS\_PLURAL\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_MIXED\_PROCESS\_MODEL\_PERMISSIONS\_PLURAL\_ERROR\_KEY

    -   ### PRTL\_MIXED\_PROCESS\_MODEL\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_MIXED\_PROCESS\_MODEL\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

    -   ### PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_PLURAL\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_PLURAL\_ERROR\_KEY

    -   ### PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

    -   ### PRTL\_NO\_USER\_SELECTED\_PROCESS\_MODEL\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_USER\_SELECTED\_PROCESS\_MODEL\_ERROR\_KEY

    -   ### PRTL\_NO\_USER\_SELECTED\_PROCESS\_MODEL\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_USER\_SELECTED\_PROCESS\_MODEL\_SINGULAR\_ERROR\_KEY

    -   ### PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_PLURAL\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_PLURAL\_ERROR\_KEY

    -   ### PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_PROCESS\_MODEL\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

    -   ### PRTL\_SERVICE\_ACCOUNT\_INACTIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_SERVICE\_ACCOUNT\_INACTIVE

    -   ### PRTL\_NO\_PAGE\_CONFIGURED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_PAGE\_CONFIGURED

    -   ### PRTL\_INTERFACE\_HAS\_RULE\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_INTERFACE\_HAS\_RULE\_INPUTS

    -   ### PRTL\_MIXED\_RECORD\_TYPE\_PERMISSIONS\_PLURAL\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_MIXED\_RECORD\_TYPE\_PERMISSIONS\_PLURAL\_ERROR\_KEY

    -   ### PRTL\_MIXED\_RECORD\_TYPE\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_MIXED\_RECORD\_TYPE\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

    -   ### PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_PLURAL\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_PLURAL\_ERROR\_KEY

    -   ### PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

    -   ### PRTL\_NO\_USER\_SELECTED\_RECORD\_TYPE\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_USER\_SELECTED\_RECORD\_TYPE\_ERROR\_KEY

    -   ### PRTL\_NO\_USER\_SELECTED\_RECORD\_TYPE\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_NO\_USER\_SELECTED\_RECORD\_TYPE\_SINGULAR\_ERROR\_KEY

    -   ### PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_PLURAL\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_PLURAL\_ERROR\_KEY

    -   ### PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_YES\_DESIGNER\_NO\_SERVICE\_ACCOUNT\_RECORD\_TYPE\_PERMISSIONS\_SINGULAR\_ERROR\_KEY

    -   ### DESIGN\_DEPLOYMENT\_NON\_EXISTENT\_PLUGIN\_ZIP\_DOC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DESIGN\_DEPLOYMENT\_NON\_EXISTENT\_PLUGIN\_ZIP\_DOC

    -   ### TRANSLATION\_SET\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_SET\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### PRIMARY\_TRANSLATED\_TEXT\_NOT\_EMPTY\_OR\_CONTAINS\_WHITESPACES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRIMARY\_TRANSLATED\_TEXT\_NOT\_EMPTY\_OR\_CONTAINS\_WHITESPACES

    -   ### INVALID\_TRANSLATION\_STRING\_VERSION\_NUM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_TRANSLATION\_STRING\_VERSION\_NUM

    -   ### TRANSLATION\_STRING\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### TRANSLATION\_STRING\_IMPORT\_MISMATCH\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_MISMATCH\_UUID

    -   ### TRANSLATION\_STRING\_IMPORT\_STRING\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_STRING\_LIMIT

    -   ### TRANSLATION\_STRING\_IMPORT\_CHARACTER\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_CHARACTER\_LIMIT

    -   ### TRANSLATION\_STRING\_IMPORT\_BAD\_EXTENSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_BAD\_EXTENSION

    -   ### TRANSLATION\_STRING\_IMPORT\_FILE\_EMPTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_FILE\_EMPTY

    -   ### TRANSLATION\_STRING\_IMPORT\_DESCRIPTION\_NOTES\_CHARACTER\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_DESCRIPTION\_NOTES\_CHARACTER\_LIMIT

    -   ### TRANSLATION\_STRING\_IMPORT\_MISSING\_PRIMARY\_LOCALE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_MISSING\_PRIMARY\_LOCALE

    -   ### TRANSLATION\_STRING\_IMPORT\_MISSING\_HEADERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_IMPORT\_MISSING\_HEADERS

    -   ### TRANSLATION\_STRING\_MISSING\_PRIMARY\_LOCALE\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_MISSING\_PRIMARY\_LOCALE\_VALUE

    -   ### INVALID\_TRANSLATION\_VARIABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_TRANSLATION\_VARIABLE

    -   ### TRANSLATION\_VARIABLE\_NOT\_DEFINED\_IN\_PRIMARY\_LOCALE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_VARIABLE\_NOT\_DEFINED\_IN\_PRIMARY\_LOCALE

    -   ### NEW\_TRANSLATION\_VARIABLE\_FOUND\_IN\_IMPORT\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NEW\_TRANSLATION\_VARIABLE\_FOUND\_IN\_IMPORT\_UPDATE

    -   ### TRANSLATION\_VARIABLE\_MISSING\_IN\_PRIMARY\_LOCALE\_UPDATE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_VARIABLE\_MISSING\_IN\_PRIMARY\_LOCALE\_UPDATE

    -   ### TRANSLATION\_STRING\_KEY\_NOT\_VARIABLE\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_KEY\_NOT\_VARIABLE\_REFERENCE

    -   ### TRANSLATION\_STRING\_KEY\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_KEY\_NOT\_AVAILABLE

    -   ### TRANSLATION\_STRING\_VARIABLES\_LIMIT\_VALIDATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_STRING\_VARIABLES\_LIMIT\_VALIDATION

    -   ### TRANSLATION\_UNABLE\_TO\_MOVE\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") TRANSLATION\_UNABLE\_TO\_MOVE\_FAILURE

    -   ### PORTAL\_DATA\_DOWNLOADER\_GET\_S3\_ZIP\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTAL\_DATA\_DOWNLOADER\_GET\_S3\_ZIP\_FAILURE

    -   ### PORTAL\_DATA\_DOWNLOADER\_FETCH\_TVM\_CREDENTIALS\_FAILURE\_GENERIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTAL\_DATA\_DOWNLOADER\_FETCH\_TVM\_CREDENTIALS\_FAILURE\_GENERIC

    -   ### PORTAL\_DATA\_DOWNLOADER\_FETCH\_TVM\_CREDENTIALS\_FAILURE\_EMPTY\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTAL\_DATA\_DOWNLOADER\_FETCH\_TVM\_CREDENTIALS\_FAILURE\_EMPTY\_RESPONSE

    -   ### PORTAL\_DATA\_DOWNLOADER\_FETCH\_TVM\_CREDENTIALS\_FAILURE\_MALFORMED\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTAL\_DATA\_DOWNLOADER\_FETCH\_TVM\_CREDENTIALS\_FAILURE\_MALFORMED\_RESPONSE

    -   ### PROCESS\_MINING\_NO\_INSTANCE\_URL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_NO\_INSTANCE\_URL

    -   ### PROCESS\_MINING\_BAD\_ADMIN\_CONFIG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_BAD\_ADMIN\_CONFIG

    -   ### PROCESS\_MINING\_FAILED\_TO\_COMMUNICATE\_TO\_SERVER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_FAILED\_TO\_COMMUNICATE\_TO\_SERVER

    -   ### PROCESS\_MINING\_RECORD\_EVENTS\_CONFIGURATION\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_RECORD\_EVENTS\_CONFIGURATION\_NOT\_FOUND

    -   ### PROCESS\_MINING\_RECORD\_EVENTS\_ERROR\_READING\_RECORD\_TYPE\_CONFIG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_MINING\_RECORD\_EVENTS\_ERROR\_READING\_RECORD\_TYPE\_CONFIG

    -   ### MINING\_PROCESS\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### MINING\_PROCESS\_NOT\_DATA\_STEWARD\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_NOT\_DATA\_STEWARD\_INSUFFICIENT\_PRIVILEGES

    -   ### MINING\_PROCESS\_FAILED\_TO\_UPDATE\_PROCESS\_PROPERTIES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_FAILED\_TO\_UPDATE\_PROCESS\_PROPERTIES

    -   ### MINING\_PROCESS\_FAILED\_TO\_DELETE\_PROCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_FAILED\_TO\_DELETE\_PROCESS

    -   ### MINING\_PROCESS\_DEPENDENCY\_MIGRATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_DEPENDENCY\_MIGRATION\_ERROR

    -   ### MINING\_PROCESS\_MISSING\_CASE\_TO\_EVENT\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_MISSING\_CASE\_TO\_EVENT\_RELATIONSHIP

    -   ### MINING\_PROCESS\_GENERIC\_UPDATE\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_GENERIC\_UPDATE\_FAILURE

    -   ### MINING\_PROCESS\_RESERVED\_FIELD\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_RESERVED\_FIELD\_NAME

    -   ### MINING\_PROCESS\_ACTION\_FIELD\_TOO\_UNIQUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_ACTION\_FIELD\_TOO\_UNIQUE

    -   ### MINING\_PROCESS\_TOO\_MANY\_CASE\_TO\_EVENT\_RELATIONSHIPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_TOO\_MANY\_CASE\_TO\_EVENT\_RELATIONSHIPS

    -   ### MINING\_PROCESS\_SYNC\_FAILED\_BECAUSE\_NO\_RECORD\_DATA

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_SYNC\_FAILED\_BECAUSE\_NO\_RECORD\_DATA

    -   ### MINING\_PROCESS\_DUPLICATE\_FIELD\_NAMES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_DUPLICATE\_FIELD\_NAMES

    -   ### MINING\_PROCESS\_MISSING\_NON\_CASE\_TO\_EVENT\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_MISSING\_NON\_CASE\_TO\_EVENT\_RELATIONSHIP

    -   ### MINING\_PROCESS\_MISSING\_CASE\_OR\_EVENT\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_MISSING\_CASE\_OR\_EVENT\_RECORD\_TYPE

    -   ### MINING\_PROCESS\_MISSING\_RELATED\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_MISSING\_RELATED\_RECORD\_TYPE

    -   ### MINING\_PROCESS\_MISSING\_RECORD\_FIELDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_MISSING\_RECORD\_FIELDS

    -   ### MINING\_PROCESS\_BAD\_SEMANTIC\_MAPPINGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_BAD\_SEMANTIC\_MAPPINGS

    -   ### MINING\_PROCESS\_MISSING\_REQUIRED\_SEMANTIC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_MISSING\_REQUIRED\_SEMANTIC

    -   ### MINING\_PROCESS\_BROKEN\_ANALYST\_CUSTOM\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_BROKEN\_ANALYST\_CUSTOM\_FIELD

    -   ### MINING\_PROCESS\_WRONG\_CASE\_FIELD\_ON\_CASE\_TO\_EVENT\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_WRONG\_CASE\_FIELD\_ON\_CASE\_TO\_EVENT\_RELATIONSHIP

    -   ### MINING\_PROCESS\_WRONG\_EVENT\_FIELD\_ON\_CASE\_TO\_EVENT\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_WRONG\_EVENT\_FIELD\_ON\_CASE\_TO\_EVENT\_RELATIONSHIP

    -   ### MINING\_PROCESS\_GENERIC\_CREATE\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_GENERIC\_CREATE\_FAILURE

    -   ### MINING\_PROCESS\_BROKEN\_PROCESS\_FILTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_BROKEN\_PROCESS\_FILTER

    -   ### MINING\_PROCESS\_POLLING\_TIMEOUT\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_POLLING\_TIMEOUT\_FAILURE

    -   ### MINING\_PROCESS\_FAILED\_TO\_UPDATE\_INACTIVITY\_TIMEOUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_PROCESS\_FAILED\_TO\_UPDATE\_INACTIVITY\_TIMEOUT

    -   ### REGEX\_NULL\_PATTERN\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REGEX\_NULL\_PATTERN\_ERROR

    -   ### REGEX\_PATTERN\_INCORRECT\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REGEX\_PATTERN\_INCORRECT\_TYPE\_ERROR

    -   ### REGEX\_TEXT\_INCORRECT\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REGEX\_TEXT\_INCORRECT\_TYPE\_ERROR

    -   ### REGEX\_EXACT\_MATCH\_INCORRECT\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REGEX\_EXACT\_MATCH\_INCORRECT\_TYPE\_ERROR

    -   ### REGEX\_CASE\_SENSITIVE\_INCORRECT\_TYPE\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") REGEX\_CASE\_SENSITIVE\_INCORRECT\_TYPE\_ERROR

    -   ### PRTL\_SERVICE\_ACCOUNT\_PORTAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PRTL\_SERVICE\_ACCOUNT\_PORTAL

    -   ### URL\_DEFAULT\_VALUE\_ERROR\_KEY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_DEFAULT\_VALUE\_ERROR\_KEY

    -   ### URL\_FOR\_PORTAL\_INVALID\_PORTAL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_INVALID\_PORTAL

    -   ### URL\_FOR\_PORTAL\_PAGE\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_PAGE\_MISSING

    -   ### URL\_FOR\_PORTAL\_TOO\_MANY\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_TOO\_MANY\_INPUTS

    -   ### URL\_FOR\_PORTAL\_PLAINTEXT\_NOT\_ENABLED\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_PLAINTEXT\_NOT\_ENABLED\_INPUTS

    -   ### URL\_FOR\_PORTAL\_INPUT\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_INPUT\_TOO\_LONG

    -   ### URL\_FOR\_PORTAL\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_FAILURE

    -   ### URL\_FOR\_PORTAL\_NO\_PORTAL\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_NO\_PORTAL\_REFERENCE

    -   ### URL\_FOR\_PORTAL\_INVALID\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_INVALID\_INPUTS

    -   ### URL\_FOR\_PORTAL\_INVALID\_PORTAL\_PAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_INVALID\_PORTAL\_PAGE

    -   ### URL\_FOR\_PORTAL\_INVALID\_GROUP\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_INVALID\_GROUP\_REFERENCE

    -   ### URL\_FOR\_PORTAL\_LOCALE\_NOT\_IN\_ENABLED\_LIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PORTAL\_LOCALE\_NOT\_IN\_ENABLED\_LIST

    -   ### PORTAL\_URL\_WITH\_LOCALE\_NOT\_AVAILABLE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PORTAL\_URL\_WITH\_LOCALE\_NOT\_AVAILABLE

    -   ### URL\_FOR\_PAGE\_ERROR\_OCCURRED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PAGE\_ERROR\_OCCURRED

    -   ### URL\_FOR\_PAGE\_DECRYPTION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_PAGE\_DECRYPTION\_ERROR

    -   ### OPEN\_API\_IX\_INVALID\_PROPERTY\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") OPEN\_API\_IX\_INVALID\_PROPERTY\_VALUE

    -   ### URL\_FOR\_SITE\_INVALID\_SITE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_INVALID\_SITE

    -   ### URL\_FOR\_SITE\_PAGE\_MISSING

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_PAGE\_MISSING

    -   ### URL\_FOR\_SITE\_TOO\_MANY\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_TOO\_MANY\_INPUTS

    -   ### URL\_FOR\_SITE\_PLAINTEXT\_NOT\_ENABLED\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_PLAINTEXT\_NOT\_ENABLED\_INPUTS

    -   ### URL\_FOR\_SITE\_INPUT\_TOO\_LONG

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_INPUT\_TOO\_LONG

    -   ### URL\_FOR\_SITE\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_FAILURE

    -   ### URL\_FOR\_SITE\_NO\_SITE\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_NO\_SITE\_REFERENCE

    -   ### URL\_FOR\_SITE\_INVALID\_INPUTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_INVALID\_INPUTS

    -   ### URL\_FOR\_SITE\_INVALID\_SITE\_PAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_INVALID\_SITE\_PAGE

    -   ### URL\_FOR\_SITE\_INVALID\_GROUP\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_INVALID\_GROUP\_REFERENCE

    -   ### URL\_FOR\_SITE\_NON\_INTERFACE\_PAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_SITE\_NON\_INTERFACE\_PAGE

    -   ### RECORD\_LINK\_INVALID\_TARGET\_LOCATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_LINK\_INVALID\_TARGET\_LOCATION

    -   ### RECORD\_LINK\_INVALID\_TARGET\_LOCATION\_SITE\_PAGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_LINK\_INVALID\_TARGET\_LOCATION\_SITE\_PAGE

    -   ### URL\_FOR\_RECORD\_INVALID\_RECORD\_TYPE\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_RECORD\_INVALID\_RECORD\_TYPE\_LENGTH

    -   ### URL\_FOR\_RECORD\_INVALID\_TARGET\_LOCATION\_LENGTH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_RECORD\_INVALID\_TARGET\_LOCATION\_LENGTH

    -   ### URL\_FOR\_RECORD\_INVALID\_TARGET\_LOCATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_RECORD\_INVALID\_TARGET\_LOCATION

    -   ### URL\_FOR\_RECORD\_RECORD\_IDS\_REQUIRED\_FOR\_SITE\_PAGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_RECORD\_RECORD\_IDS\_REQUIRED\_FOR\_SITE\_PAGES

    -   ### URL\_FOR\_RECORD\_INVALID\_RECORD\_TYPE\_REFERENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_RECORD\_INVALID\_RECORD\_TYPE\_REFERENCE

    -   ### URL\_FOR\_RECORD\_MISSING\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_RECORD\_MISSING\_PARAMETER

    -   ### URL\_FOR\_RECORD\_INVALID\_LIST\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") URL\_FOR\_RECORD\_INVALID\_LIST\_VALUE

    -   ### SSA\_LIBRARY\_OBJECT\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SSA\_LIBRARY\_OBJECT\_NOT\_FOUND

    -   ### SSA\_MINING\_KPI\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SSA\_MINING\_KPI\_NOT\_FOUND

    -   ### MFA\_GROUP\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MFA\_GROUP\_NOT\_FOUND

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_QUERY\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_QUERY\_FAILURE

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_INVALID\_RESPONSE

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_CANT\_DESERIALIZE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_CANT\_DESERIALIZE

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_INVALID\_ERROR\_CODE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_INVALID\_ERROR\_CODE

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DISABLED

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_INVALID\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_SUMMARY\_INVALID\_INPUT

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DETAILS\_QUERY\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DETAILS\_QUERY\_FAILURE

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DETAILS\_INVALID\_RESPONSE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DETAILS\_INVALID\_RESPONSE

    -   ### QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DETAILS\_INVALID\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") QUERY\_PERFORMANCE\_MONITOR\_CONNECTED\_ENVIRONMENT\_DETAILS\_INVALID\_INPUT

    -   ### DOCUMENT\_CHAT\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") DOCUMENT\_CHAT\_INSUFFICIENT\_PRIVILEGES

    -   ### MINING\_RECIPE\_FEATURE\_DISABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_FEATURE\_DISABLED

    -   ### MINING\_RECIPE\_VALIDATION\_JSON\_SYNTAX\_PROBLEM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_JSON\_SYNTAX\_PROBLEM

    -   ### MINING\_RECIPE\_VALIDATION\_GENERIC\_PROBLEM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_GENERIC\_PROBLEM

    -   ### MINING\_RECIPE\_VALIDATION\_UNEXPECTED\_FIELDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_UNEXPECTED\_FIELDS

    -   ### MINING\_RECIPE\_VALIDATION\_MISSING\_REQUIRED\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_MISSING\_REQUIRED\_FIELD

    -   ### MINING\_RECIPE\_VALIDATION\_NOT\_A\_JSON\_PRIMITIVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_NOT\_A\_JSON\_PRIMITIVE

    -   ### MINING\_RECIPE\_VALIDATION\_NOT\_A\_JSON\_ARRAY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_NOT\_A\_JSON\_ARRAY

    -   ### MINING\_RECIPE\_PROVISIONING\_GENERIC\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_PROVISIONING\_GENERIC\_FAILURE

    -   ### MINING\_RECIPE\_PROVISIONING\_FAILED\_TO\_SYNC

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_PROVISIONING\_FAILED\_TO\_SYNC

    -   ### MINING\_RECIPE\_VALIDATION\_BAD\_VERSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_BAD\_VERSION

    -   ### MINING\_RECIPE\_VALIDATION\_TOO\_MANY\_USERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_TOO\_MANY\_USERS

    -   ### MINING\_RECIPE\_VALIDATION\_NOT\_COMMUNITY\_EDITION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_NOT\_COMMUNITY\_EDITION

    -   ### MINING\_RECIPE\_PROVISIONING\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_PROVISIONING\_DUPLICATE\_NAME

    -   ### MINING\_KPI\_VALIDATION\_TOO\_MANY\_KPIS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_TOO\_MANY\_KPIS

    -   ### MINING\_KPI\_VALIDATION\_REQUIRES\_DUAL\_TIMESTAMPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_REQUIRES\_DUAL\_TIMESTAMPS

    -   ### MINING\_KPI\_VALIDATION\_NONEXISTING\_VIEW\_NAMES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_NONEXISTING\_VIEW\_NAMES

    -   ### MINING\_RECIPE\_VALIDATION\_UNRECOGNIZED\_ENUM\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_UNRECOGNIZED\_ENUM\_VALUE

    -   ### MINING\_RECIPE\_VALIDATION\_CONTAINS\_VIEWER\_ANALYST\_OVERLAP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_CONTAINS\_VIEWER\_ANALYST\_OVERLAP

    -   ### MINING\_RECIPE\_VALIDATION\_DUPLICATE\_USERS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_DUPLICATE\_USERS

    -   ### MINING\_KPI\_VALIDATION\_SLA\_KPI\_DURATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_SLA\_KPI\_DURATION

    -   ### MINING\_KPI\_VALIDATION\_IS\_DIRECT\_FOLLOWER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_IS\_DIRECT\_FOLLOWER

    -   ### MINING\_KPI\_VALIDATION\_CATEGORICAL\_ATTRIBUTE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_CATEGORICAL\_ATTRIBUTE

    -   ### MINING\_KPI\_VALIDATION\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_DUPLICATE\_NAME

    -   ### MINING\_KPI\_VALIDATION\_DURATION\_KPI\_DURATION\_MEASURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_DURATION\_KPI\_DURATION\_MEASURE

    -   ### MINING\_VIEW\_VALIDATION\_DUPLICATE\_VIEW\_NAMES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_VIEW\_VALIDATION\_DUPLICATE\_VIEW\_NAMES

    -   ### MINING\_VIEW\_VALIDATION\_TOO\_MANY\_VIEWS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_VIEW\_VALIDATION\_TOO\_MANY\_VIEWS

    -   ### MINING\_VIEW\_VALIDATION\_NAME\_SIZE\_LIMIT\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_VIEW\_VALIDATION\_NAME\_SIZE\_LIMIT\_EXCEEDED

    -   ### MINING\_VIEW\_VALIDATION\_RESERVED\_VIEW\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_VIEW\_VALIDATION\_RESERVED\_VIEW\_NAME

    -   ### MINING\_VIEW\_VALIDATION\_ATTRIBUTE\_FILTER\_LIMIT\_EXCEEDED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_VIEW\_VALIDATION\_ATTRIBUTE\_FILTER\_LIMIT\_EXCEEDED

    -   ### MINING\_RECIPE\_VALIDATION\_USERS\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_USERS\_DOES\_NOT\_EXIST

    -   ### MINING\_KPI\_VALIDATION\_COUNT\_KPI\_ATTRIBUTE\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_COUNT\_KPI\_ATTRIBUTE\_VALUE

    -   ### MINING\_KPI\_VALIDATION\_COUNT\_AGGREGATION\_ATTRIBUTE\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_KPI\_VALIDATION\_COUNT\_AGGREGATION\_ATTRIBUTE\_VALUE

    -   ### MINING\_RECIPE\_VALIDATION\_NONEXISTENT\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_NONEXISTENT\_RECORD\_TYPE

    -   ### MINING\_RECIPE\_VALIDATION\_NONEXISTENT\_RECORD\_TYPE\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_NONEXISTENT\_RECORD\_TYPE\_RELATIONSHIP

    -   ### MINING\_RECIPE\_VALIDATION\_NONEXISTENT\_RECORD\_TYPE\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_NONEXISTENT\_RECORD\_TYPE\_FIELD

    -   ### MINING\_RECIPE\_VALIDATION\_INVALID\_RECORD\_TYPE\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_INVALID\_RECORD\_TYPE\_RELATIONSHIP

    -   ### MINING\_RECIPE\_VALIDATION\_COUNT\_KPI\_OPTION\_CASES\_WITH\_SEQUENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_COUNT\_KPI\_OPTION\_CASES\_WITH\_SEQUENCE

    -   ### MINING\_RECIPE\_VALIDATION\_COUNT\_KPI\_OPTION\_CASES\_WITH\_ACTIVITY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_COUNT\_KPI\_OPTION\_CASES\_WITH\_ACTIVITY

    -   ### MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_EXACTLY\_ONE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_EXACTLY\_ONE

    -   ### MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_START\_OR\_END

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_START\_OR\_END

    -   ### MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_AT\_MOST\_ONE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_AT\_MOST\_ONE

    -   ### MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_NONE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_MAP\_TO\_VALUE\_MUST\_HAVE\_NONE

    -   ### MINING\_RECIPE\_VALIDATION\_INVALID\_CASE\_TO\_EVENT\_RELATIONSHIP

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_INVALID\_CASE\_TO\_EVENT\_RELATIONSHIP

    -   ### MINING\_RECIPE\_VALIDATION\_TOO\_MANY\_GROUPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_TOO\_MANY\_GROUPS

    -   ### MINING\_RECIPE\_VALIDATION\_DUPLICATE\_GROUPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_DUPLICATE\_GROUPS

    -   ### MINING\_RECIPE\_VALIDATION\_GROUPS\_DOES\_NOT\_EXIST

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_GROUPS\_DOES\_NOT\_EXIST

    -   ### MINING\_RECIPE\_VALIDATION\_CONTAINS\_VIEWER\_ANALYST\_OVERLAP\_GROUPS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_CONTAINS\_VIEWER\_ANALYST\_OVERLAP\_GROUPS

    -   ### MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_TOO\_MANY\_ACTIVITY\_DATA\_CFGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_TOO\_MANY\_ACTIVITY\_DATA\_CFGS

    -   ### MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_DUPLICATE\_ACTIVITY\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_DUPLICATE\_ACTIVITY\_NAME

    -   ### MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_SPECIFIC\_ACTIVITIES\_DEFINED\_FOR\_INVALID\_EXPECTED\_SEQUENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_SPECIFIC\_ACTIVITIES\_DEFINED\_FOR\_INVALID\_EXPECTED\_SEQUENCE

    -   ### MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_SPECIFIC\_ACTIVITIES\_DEFINED\_FOR\_MISSING\_EXPECTED\_SEQUENCE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_SPECIFIC\_ACTIVITIES\_DEFINED\_FOR\_MISSING\_EXPECTED\_SEQUENCE

    -   ### MINING\_RECIPE\_VALIDATION\_DUPLICATE\_EXCLUDED\_FIELD\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_DUPLICATE\_EXCLUDED\_FIELD\_UUID

    -   ### MINING\_RECIPE\_VALIDATION\_TOO\_MANY\_EXCLUDED\_FIELD\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_TOO\_MANY\_EXCLUDED\_FIELD\_UUIDS

    -   ### MINING\_RECIPE\_VALIDATION\_FIELD\_OVERRIDE\_OVERLAPS\_EXCLUDED\_FIELD\_UUIDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_FIELD\_OVERRIDE\_OVERLAPS\_EXCLUDED\_FIELD\_UUIDS

    -   ### MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_NEGATIVE\_COSTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_EXEC\_DASHBOARD\_CFG\_VALIDATION\_NEGATIVE\_COSTS

    -   ### MINING\_RECIPE\_VALIDATION\_NUMBER\_FORMAT\_PROBLEM

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_NUMBER\_FORMAT\_PROBLEM

    -   ### MINING\_RECIPE\_VALIDATION\_DECIMAL\_MULTIPLE\_POINTS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_DECIMAL\_MULTIPLE\_POINTS

    -   ### MINING\_RECIPE\_VALIDATION\_KPI\_MULTIPLE\_THRESHOLDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_KPI\_MULTIPLE\_THRESHOLDS

    -   ### MINING\_RECIPE\_VALIDATION\_KPI\_DOES\_NOT\_SUPPORT\_THRESHOLD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_KPI\_DOES\_NOT\_SUPPORT\_THRESHOLD

    -   ### MINING\_RECIPE\_VALIDATION\_THRESHOLD\_FT\_OFF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_THRESHOLD\_FT\_OFF

    -   ### MINING\_RECIPE\_VALIDATION\_VERSION\_2\_VIOLATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_VERSION\_2\_VIOLATION

    -   ### MINING\_RECIPE\_VALIDATION\_VERSION\_1\_KPIS\_UNDER\_VIEWS\_VIOLATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_VERSION\_1\_KPIS\_UNDER\_VIEWS\_VIOLATION

    -   ### MINING\_RECIPE\_VERSION\_1\_INVALID\_PROPERTY\_VIOLATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VERSION\_1\_INVALID\_PROPERTY\_VIOLATION

    -   ### MINING\_RECIPE\_VALIDATION\_ALERT\_FREQUENCY\_FT\_OFF

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MINING\_RECIPE\_VALIDATION\_ALERT\_FREQUENCY\_FT\_OFF

    -   ### PROCESS\_HQ\_RECORD\_TYPE\_MIGRATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_HQ\_RECORD\_TYPE\_MIGRATION\_ERROR

    -   ### MSG\_INTEGRATION\_TOPIC\_CREATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MSG\_INTEGRATION\_TOPIC\_CREATION\_FAILED

    -   ### MSG\_INTEGRATION\_LISTENER\_CREATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MSG\_INTEGRATION\_LISTENER\_CREATION\_FAILED

    -   ### MSG\_INTEGRATION\_PRODUCER\_CREATION\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MSG\_INTEGRATION\_PRODUCER\_CREATION\_FAILED

    -   ### MSG\_INTEGRATION\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MSG\_INTEGRATION\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### MSG\_EXECUTOR\_ACTIVATION\_STATUS\_CHANGE\_FAILED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MSG\_EXECUTOR\_ACTIVATION\_STATUS\_CHANGE\_FAILED

    -   ### RECORD\_FIELD\_METADATA\_CALL\_ARGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FIELD\_METADATA\_CALL\_ARGS

    -   ### RECORD\_FIELD\_METADATA\_INVALID\_ARGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FIELD\_METADATA\_INVALID\_ARGS

    -   ### RECORD\_FIELD\_METADATA\_MISSING\_INTERFACE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_FIELD\_METADATA\_MISSING\_INTERFACE

    -   ### CONTROL\_PANEL\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### CONTROL\_PANEL\_INVALID\_REF\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_INVALID\_REF\_TYPE

    -   ### CONTROL\_PANEL\_INVALID\_REF\_CONSTRUCTOR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_INVALID\_REF\_CONSTRUCTOR

    -   ### CONTROL\_PANEL\_NOT\_ENABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_NOT\_ENABLED

    -   ### CONTROL\_PANEL\_TIER\_ITEM\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_TIER\_ITEM\_NOT\_FOUND

    -   ### CONTROL\_PANEL\_TIER\_ITEM\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_TIER\_ITEM\_INSUFFICIENT\_PRIVILEGES

    -   ### CONTROL\_PANEL\_TIER\_ITEM\_PARENT\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_TIER\_ITEM\_PARENT\_INSUFFICIENT\_PRIVILEGES

    -   ### CONTROL\_PANEL\_TIER\_ITEM\_CONTROL\_PANEL\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_TIER\_ITEM\_CONTROL\_PANEL\_INSUFFICIENT\_PRIVILEGES

    -   ### CONTROL\_PANEL\_TIER\_ITEM\_PARENT\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_TIER\_ITEM\_PARENT\_NOT\_FOUND

    -   ### CONTROL\_PANEL\_TIER\_ITEM\_CONTROL\_PANEL\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_TIER\_ITEM\_CONTROL\_PANEL\_NOT\_FOUND

    -   ### CONTROL\_PANEL\_IX\_INVALID\_INTERFACE\_INTENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_IX\_INVALID\_INTERFACE\_INTENT

    -   ### CONTROL\_PANEL\_IX\_INVALID\_CUSTOM\_CONFIG\_SCOPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_IX\_INVALID\_CUSTOM\_CONFIG\_SCOPE

    -   ### PROCESS\_HQ\_MINING\_KPI\_DUPLICATE\_NAME

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") PROCESS\_HQ\_MINING\_KPI\_DUPLICATE\_NAME

    -   ### MESSAGE\_EXECUTOR\_GENERIC\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_GENERIC\_ERROR

        Message Executor / Message Integration Error Codes /\*\* @since

    -   ### MESSAGE\_EXECUTOR\_NOT\_ENABLED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_NOT\_ENABLED

    -   ### MESSAGE\_EXECUTOR\_DESERIALIZATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_DESERIALIZATION\_ERROR

    -   ### MESSAGE\_EXECUTOR\_FILTER\_INVALID\_RETURN\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_FILTER\_INVALID\_RETURN\_TYPE

    -   ### MESSAGE\_EXECUTOR\_INVALID\_OBJECT\_ACCESS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_INVALID\_OBJECT\_ACCESS

    -   ### MESSAGE\_EXECUTOR\_MSG\_EVAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_MSG\_EVAL\_ERROR

    -   ### MESSAGE\_EXECUTOR\_FILTER\_EVAL\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_FILTER\_EVAL\_ERROR

    -   ### MESSAGE\_EXECUTOR\_MSG\_SIZE\_EXCEEDED\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_MSG\_SIZE\_EXCEEDED\_ERROR

    -   ### MESSAGE\_EXECUTOR\_START\_TEST\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MESSAGE\_EXECUTOR\_START\_TEST\_ERROR

    -   ### INVALID\_SEARCH\_RESULT\_FIELD\_FOR\_FILTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_SEARCH\_RESULT\_FIELD\_FOR\_FILTER

    -   ### WRONG\_FILTER\_OPERATOR\_FOR\_SIMILARITY\_SCORE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") WRONG\_FILTER\_OPERATOR\_FOR\_SIMILARITY\_SCORE

    -   ### SEMANTIC\_SEARCH\_RECORD\_TYPE\_NOT\_SYNCED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SEMANTIC\_SEARCH\_RECORD\_TYPE\_NOT\_SYNCED

    -   ### UNEXPECTED\_SEMANTIC\_SEARCH\_VALIDATION\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNEXPECTED\_SEMANTIC\_SEARCH\_VALIDATION\_ERROR

    -   ### NON\_INDEXABLE\_RECORD\_FIELD\_SEARCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NON\_INDEXABLE\_RECORD\_FIELD\_SEARCH

    -   ### FAILED\_RECORD\_FIELD\_RETRIEVAL\_FOR\_NAME\_RESOLVER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") FAILED\_RECORD\_FIELD\_RETRIEVAL\_FOR\_NAME\_RESOLVER

    -   ### SEARCH\_RESULT\_SORT\_NOT\_ON\_SIMILARITY\_SCORE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SEARCH\_RESULT\_SORT\_NOT\_ON\_SIMILARITY\_SCORE

    -   ### SORTING\_BY\_X\_TO\_MANY\_RELATED\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SORTING\_BY\_X\_TO\_MANY\_RELATED\_FIELD

    -   ### SEARCH\_IN\_AGGREGATION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SEARCH\_IN\_AGGREGATION

    -   ### SEARCH\_FILTER\_ON\_SEARCH\_RESULT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SEARCH\_FILTER\_ON\_SEARCH\_RESULT

    -   ### SEARCH\_RESULT\_FILTER\_IN\_OR\_LOGICAL\_EXPRESSION

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SEARCH\_RESULT\_FILTER\_IN\_OR\_LOGICAL\_EXPRESSION

    -   ### SEARCH\_RESULT\_USE\_IN\_FILTER\_WITHOUT\_SEARCH\_FILTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SEARCH\_RESULT\_USE\_IN\_FILTER\_WITHOUT\_SEARCH\_FILTER

    -   ### INVALID\_BATCH\_SIZE\_WITH\_SEARCH

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_BATCH\_SIZE\_WITH\_SEARCH

    -   ### MORE\_THAN\_ONE\_SEARCH\_FILTER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MORE\_THAN\_ONE\_SEARCH\_FILTER

    -   ### MULTIPLE\_COMBINED\_SIMILARITY\_SCORES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") MULTIPLE\_COMBINED\_SIMILARITY\_SCORES

    -   ### NESTED\_COMBINED\_SIMILARITY\_SCORE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") NESTED\_COMBINED\_SIMILARITY\_SCORE

    -   ### UNEXPECTED\_SEMANTIC\_SEARCH\_RUNTIME\_ERROR

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") UNEXPECTED\_SEMANTIC\_SEARCH\_RUNTIME\_ERROR

    -   ### SEARCH\_RESULT\_SORT\_ON\_SEARCH\_MATCHES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SEARCH\_RESULT\_SORT\_ON\_SEARCH\_MATCHES

    -   ### RSS\_FAILED\_TO\_INDEX\_RECORDS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_FAILED\_TO\_INDEX\_RECORDS

    -   ### RSS\_FAILED\_TO\_GET\_INDEX\_STATUS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_FAILED\_TO\_GET\_INDEX\_STATUS

    -   ### RSS\_OVER\_INDEX\_ROW\_LIMIT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_OVER\_INDEX\_ROW\_LIMIT

    -   ### RSS\_FAILED\_TO\_UPLOAD\_RECORD\_DOCUMENT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_FAILED\_TO\_UPLOAD\_RECORD\_DOCUMENT

    -   ### RSS\_DOCUMENT\_TOO\_LARGE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_DOCUMENT\_TOO\_LARGE

    -   ### RSS\_INVALID\_DOCUMENT\_FILE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_INVALID\_DOCUMENT\_FILE\_TYPE

    -   ### RSS\_GENERIC\_INDEXING\_FAILURE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_GENERIC\_INDEXING\_FAILURE

    -   ### RSS\_INVALID\_INDEX\_SEARCH\_QUERY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RSS\_INVALID\_INDEX\_SEARCH\_QUERY

    -   ### RECORD\_DOCUMENT\_FOLDER\_INVALID\_RECORD\_TYPE\_INPUT

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DOCUMENT\_FOLDER\_INVALID\_RECORD\_TYPE\_INPUT

    -   ### RECORD\_DOCUMENT\_FOLDER\_RECORD\_TYPE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DOCUMENT\_FOLDER\_RECORD\_TYPE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES

    -   ### RECORD\_DOCUMENT\_FOLDER\_NON\_DOCUMENT\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DOCUMENT\_FOLDER\_NON\_DOCUMENT\_RECORD\_TYPE

    -   ### SYSTEM\_DOCUMENT\_RECORD\_TYPE\_NOT\_FOUND

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") SYSTEM\_DOCUMENT\_RECORD\_TYPE\_NOT\_FOUND

    -   ### RECORD\_DOCUMENT\_KNOWLEDGE\_CENTER\_INVALID\_MOVE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_DOCUMENT\_KNOWLEDGE\_CENTER\_INVALID\_MOVE

    -   ### INVALID\_START\_VALUE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") INVALID\_START\_VALUE

        isBetween Error Codes /\*\* @since

    -   ### CONTROL\_PANEL\_LOR\_INVALID\_PRIMARY\_RECORD\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_LOR\_INVALID\_PRIMARY\_RECORD\_TYPE

    -   ### CONTROL\_PANEL\_LOR\_INVALID\_RECORD\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_LOR\_INVALID\_RECORD\_PARAMETER

    -   ### CONTROL\_PANEL\_LOR\_INVALID\_CONTROL\_PANEL\_RECORDS\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_LOR\_INVALID\_CONTROL\_PANEL\_RECORDS\_PARAMETER

    -   ### CONTROL\_PANEL\_LOR\_INVALID\_PARAMETER

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_LOR\_INVALID\_PARAMETER

    -   ### CONTROL\_PANEL\_LOR\_INVALID\_SELECTION\_DESIGNATOR\_FIELD

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_LOR\_INVALID\_SELECTION\_DESIGNATOR\_FIELD

    -   ### CONTROL\_PANEL\_LOR\_INVALID\_CPTI\_UUID

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_LOR\_INVALID\_CPTI\_UUID

    -   ### CONTROL\_PANEL\_LOR\_INVALID\_INTERFACE\_TYPE

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_LOR\_INVALID\_INTERFACE\_TYPE

    -   ### CONTROL\_PANEL\_INTERFACE\_TYPE\_LOR\_INVALID\_CONTROL\_PANEL

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") CONTROL\_PANEL\_INTERFACE\_TYPE\_LOR\_INVALID\_CONTROL\_PANEL

    -   ### RECORD\_TYPE\_PROPERTIES\_CALL\_ARGS

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_PROPERTIES\_CALL\_ARGS

    -   ### RECORD\_TYPE\_PROPERTIES\_CALL\_NON\_CONSTRUCTED

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_PROPERTIES\_CALL\_NON\_CONSTRUCTED

    -   ### RECORD\_TYPE\_PROPERTIES\_UNSUPPORTED\_PROPERTY

        public static final [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") RECORD\_TYPE\_PROPERTIES\_UNSUPPORTED\_PROPERTY

-   ## Constructor Details

    -   ### ErrorCode

        protected ErrorCode()

        For GWT serialization