---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ValidationCode.html
original_path: api/com/appiancorp/suiteapi/common/ValidationCode.html
version: "25.3"
title: "Class ValidationCode"
page_id: "api/com/appiancorp/suiteapi/common/ValidationCode"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ValidationCode

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.exceptions.AppianErrorCode](../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

com.appiancorp.suiteapi.common.ValidationCode

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ValidationCode extends [AppianErrorCode](../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.ValidationCode)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class com.appiancorp.exceptions.[AppianErrorCode](../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

    `[AppianErrorCode.InvalidErrorCode](../../exceptions/AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[EXPRESSION_ERROR](#EXPRESSION_ERROR)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_DESTINATION_DOCUMENT_EMPTY](#FILE_UPLOAD_DESTINATION_DOCUMENT_EMPTY)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_DESTINATION_DOCUMENT_EXTENSION_NOT_EQUAL](#FILE_UPLOAD_DESTINATION_DOCUMENT_EXTENSION_NOT_EQUAL)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_DESTINATION_DOCUMENT_INVALID](#FILE_UPLOAD_DESTINATION_DOCUMENT_INVALID)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_DESTINATION_DOCUMENT_PRIVILEGES](#FILE_UPLOAD_DESTINATION_DOCUMENT_PRIVILEGES)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_DESTINATION_FOLDER_INVALID](#FILE_UPLOAD_DESTINATION_FOLDER_INVALID)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_DESTINATION_FOLDER_PRIVILEGES](#FILE_UPLOAD_DESTINATION_FOLDER_PRIVILEGES)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_GENERIC_ERROR](#FILE_UPLOAD_GENERIC_ERROR)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FILE_UPLOAD_UPLOADED_FILE_DOESNT_EXIST](#FILE_UPLOAD_UPLOADED_FILE_DOESNT_EXIST)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[FORMS_IMPORT_INVALID_TYPE_REF](#FORMS_IMPORT_INVALID_TYPE_REF)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[GENERIC_SYNCED_RECORD_TYPE_VALIDATION](#GENERIC_SYNCED_RECORD_TYPE_VALIDATION)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[GENERIC_VALIDATION_ERROR](#GENERIC_VALIDATION_ERROR)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_DEACTIVATED_TYPE_REF](#IX_DEACTIVATED_TYPE_REF)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_DEPRECATED_IMPORT_PARAMETER](#IX_DEPRECATED_IMPORT_PARAMETER)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_GROUP_RULES_IGNORED](#IX_GROUP_RULES_IGNORED)`

    Deprecated.

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_GROUP_TYPE_ATTR_DEFAULT_VALUE_INGORED](#IX_GROUP_TYPE_ATTR_DEFAULT_VALUE_INGORED)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_INSPECT_DATA_STORE_SCHEMA_VALIDATION_ITEM](#IX_INSPECT_DATA_STORE_SCHEMA_VALIDATION_ITEM)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_MULTIPLE_TYPES_IN_XSD](#IX_MULTIPLE_TYPES_IN_XSD)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_NON_ESC_IN_IMPORT_CUSTOMIZATION_FILE](#IX_NON_ESC_IN_IMPORT_CUSTOMIZATION_FILE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_NOT_IN_PACKAGE_DATA_STORE_SCHEMA_VALIDATION_ITEM](#IX_NOT_IN_PACKAGE_DATA_STORE_SCHEMA_VALIDATION_ITEM)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_OBJECT_IMPORT_MALFORMED_PARAMETER](#IX_OBJECT_IMPORT_MALFORMED_PARAMETER)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_OBJECT_IMPORT_UNEXPECTED_PARAMETER](#IX_OBJECT_IMPORT_UNEXPECTED_PARAMETER)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_OVERWRITE_RECORD_ACTION_AND_USER_FILTER_UUIDS](#IX_OVERWRITE_RECORD_ACTION_AND_USER_FILTER_UUIDS)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_OVERWRITE_RECORD_ACTION_UUID](#IX_OVERWRITE_RECORD_ACTION_UUID)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_OVERWRITE_USER_FILTER_UUID](#IX_OVERWRITE_USER_FILTER_UUID)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_PORTLET_PARAMS_CLEARED_NO_HELPER](#IX_PORTLET_PARAMS_CLEARED_NO_HELPER)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_REF_CLEARED_ON_EXPORT_UNSUPPORTED_TYPE](#IX_REF_CLEARED_ON_EXPORT_UNSUPPORTED_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_REF_INVALID_FORM_ELEMENT_VALUE](#IX_REF_INVALID_FORM_ELEMENT_VALUE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_STRUCTURAL_COMPARISON_FAILURE](#IX_STRUCTURAL_COMPARISON_FAILURE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[IX_TYPE_XSD_NOT_AVAILABLE](#IX_TYPE_XSD_NOT_AVAILABLE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[LICENSING_EMPTY_LICENSE](#LICENSING_EMPTY_LICENSE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[NOT_A_SYNCED_RECORD_TYPE](#NOT_A_SYNCED_RECORD_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[POJO_CANNOT_READ_JPA_ANNOTATIONS](#POJO_CANNOT_READ_JPA_ANNOTATIONS)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[POJO_UNSUPPORTED_JPA_ANNOTATION_ARGUMENT](#POJO_UNSUPPORTED_JPA_ANNOTATION_ARGUMENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_BAD_NAME](#QUERY_RULE_BAD_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_DATASTORE_NOT_FOUND](#QUERY_RULE_DATASTORE_NOT_FOUND)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ENTITY_NO_TYPE](#QUERY_RULE_ENTITY_NO_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ENTITY_NOT_FOUND](#QUERY_RULE_ENTITY_NOT_FOUND)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ENTITY_NOT_PUBLISHED](#QUERY_RULE_ENTITY_NOT_PUBLISHED)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ENTITY_PERMISSIONS](#QUERY_RULE_ENTITY_PERMISSIONS)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_BAD_EXPRESSION](#QUERY_RULE_FILTER_BAD_EXPRESSION)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_BAD_LITERAL](#QUERY_RULE_FILTER_BAD_LITERAL)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_BAD_OP](#QUERY_RULE_FILTER_BAD_OP)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_BAD_PARAM](#QUERY_RULE_FILTER_BAD_PARAM)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_BAD_PATH](#QUERY_RULE_FILTER_BAD_PATH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_ENTITY_TYPE_MISMATCH](#QUERY_RULE_FILTER_ENTITY_TYPE_MISMATCH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_MISSING_OP](#QUERY_RULE_FILTER_MISSING_OP)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_MISSING_PATH](#QUERY_RULE_FILTER_MISSING_PATH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_MISSING_VALUE](#QUERY_RULE_FILTER_MISSING_VALUE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_PARAM_TYPE_MISMATCH](#QUERY_RULE_FILTER_PARAM_TYPE_MISMATCH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_UNVERIFIED_OP](#QUERY_RULE_FILTER_UNVERIFIED_OP)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FILTER_UNVERIFIED_PATH](#QUERY_RULE_FILTER_UNVERIFIED_PATH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FOLDER_ERROR](#QUERY_RULE_FOLDER_ERROR)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_FOLDER_INVALID](#QUERY_RULE_FOLDER_INVALID)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_MISSING_ENTITY](#QUERY_RULE_MISSING_ENTITY)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_MISSING_FOLDER](#QUERY_RULE_MISSING_FOLDER)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_MISSING_NAME](#QUERY_RULE_MISSING_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_NAME_COLLISION_FUNCTION](#QUERY_RULE_NAME_COLLISION_FUNCTION)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ORDER_BAD_PATH](#QUERY_RULE_ORDER_BAD_PATH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ORDER_BY_LIST](#QUERY_RULE_ORDER_BY_LIST)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ORDER_ENTITY_TYPE_MISMATCH](#QUERY_RULE_ORDER_ENTITY_TYPE_MISMATCH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ORDER_MISSING_PATH](#QUERY_RULE_ORDER_MISSING_PATH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_ORDER_UNVERIFIED_PATH](#QUERY_RULE_ORDER_UNVERIFIED_PATH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_PARAM_BAD_NAME](#QUERY_RULE_PARAM_BAD_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_PARAM_BAD_TYPE](#QUERY_RULE_PARAM_BAD_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_PARAM_MISSING_NAME](#QUERY_RULE_PARAM_MISSING_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_PARAM_MISSING_TYPE](#QUERY_RULE_PARAM_MISSING_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[QUERY_RULE_PARAM_NOT_UNIQUE](#QUERY_RULE_PARAM_NOT_UNIQUE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[RDBMS_INVALID_DATA_SOURCE](#RDBMS_INVALID_DATA_SOURCE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[RDBMS_INVALID_DATA_SOURCE_SCHEMA](#RDBMS_INVALID_DATA_SOURCE_SCHEMA)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[RDBMS_INVALID_SECURITY_MAPPING_ANNOTATION](#RDBMS_INVALID_SECURITY_MAPPING_ANNOTATION)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[RDBMS_INVALID_TYPE_MAPPING_ANNOTATION](#RDBMS_INVALID_TYPE_MAPPING_ANNOTATION)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[RDBMS_NO_PRIMARY_KEY_FOR_SECURED_TYPE](#RDBMS_NO_PRIMARY_KEY_FOR_SECURED_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[RDBMS_SN_INSUFFICIENT_PRIVILEGES](#RDBMS_SN_INSUFFICIENT_PRIVILEGES)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_INVALID_SOURCE_FILTER](#SYNCED_RECORD_TYPE_INVALID_SOURCE_FILTER)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SCHEMA_MISMATCH](#SYNCED_RECORD_TYPE_SCHEMA_MISMATCH)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SCHEMA_MISMATCH_DATA_STORE_PRESENT](#SYNCED_RECORD_TYPE_SCHEMA_MISMATCH_DATA_STORE_PRESENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SCHEMA_MISMATCH_DDL_PRESENT](#SYNCED_RECORD_TYPE_SCHEMA_MISMATCH_DDL_PRESENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SCHEMA_MISMATCH_MULTIPLE_DATA_STORES_PRESENT](#SYNCED_RECORD_TYPE_SCHEMA_MISMATCH_MULTIPLE_DATA_STORES_PRESENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SOURCE_EXCEEDS_ROW_LIMIT](#SYNCED_RECORD_TYPE_SOURCE_EXCEEDS_ROW_LIMIT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND](#SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_CONNECTED_SYSTEM_PRESENT](#SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_CONNECTED_SYSTEM_PRESENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_DATA_STORE_PRESENT](#SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_DATA_STORE_PRESENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_DDL_PRESENT](#SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_DDL_PRESENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_MULTIPLE_DATA_STORES_PRESENT](#SYNCED_RECORD_TYPE_SOURCE_NOT_FOUND_MULTIPLE_DATA_STORES_PRESENT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS](#WS)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_SN_IMPORT_INSUFFICIENT_PRIVILEGES](#WS_SN_IMPORT_INSUFFICIENT_PRIVILEGES)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_SN_INSUFFICIENT_PRIVILEGES](#WS_SN_INSUFFICIENT_PRIVILEGES)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL](#WS_WSDL)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL_ENCODED_USAGE](#WS_WSDL_ENCODED_USAGE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL_MALFORMED_ENDPOINT_URL](#WS_WSDL_MALFORMED_ENDPOINT_URL)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL_MESSAGE_NO_NAME](#WS_WSDL_MESSAGE_NO_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL_UNRESOLVED_NS](#WS_WSDL_UNRESOLVED_NS)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL_UNSUPPORTED_MEP](#WS_WSDL_UNSUPPORTED_MEP)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL_UNSUPPORTED_POLICY_ASSERTION](#WS_WSDL_UNSUPPORTED_POLICY_ASSERTION)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[WS_WSDL_WS_POLICY](#WS_WSDL_WS_POLICY)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_DEACTIVATED_TYPE_REF](#XSD_DEACTIVATED_TYPE_REF)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IGNORE](#XSD_IGNORE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IGNORE_ANY_ATTRIBUTE](#XSD_IGNORE_ANY_ATTRIBUTE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IGNORE_DEFAULT_VALUE](#XSD_IGNORE_DEFAULT_VALUE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IGNORE_FACET](#XSD_IGNORE_FACET)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IMPORT](#XSD_IMPORT)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IMPORT_FAILED](#XSD_IMPORT_FAILED)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IMPORT_PRE_EXISTING_TYPE](#XSD_IMPORT_PRE_EXISTING_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IMPORT_PRE_EXISTING_TYPE_ERROR](#XSD_IMPORT_PRE_EXISTING_TYPE_ERROR)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IMPORT_PRE_EXISTING_TYPE_IDENTICAL](#XSD_IMPORT_PRE_EXISTING_TYPE_IDENTICAL)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_IMPORT_TYPE_DESIGNER_LOCKED](#XSD_IMPORT_TYPE_DESIGNER_LOCKED)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_INVALID_FIELD_NAME](#XSD_INVALID_FIELD_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_INVALID_TYPE_NAME](#XSD_INVALID_TYPE_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_MISSING_FIELD_NAME](#XSD_MISSING_FIELD_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_MISSING_FIELD_TYPE](#XSD_MISSING_FIELD_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_MISSING_TYPE_NAME](#XSD_MISSING_TYPE_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_NON_UNIQUE_FIELD_NAME](#XSD_NON_UNIQUE_FIELD_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_NON_UNIQUE_TYPE_NAME](#XSD_NON_UNIQUE_TYPE_NAME)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_UPDATE_ANONYMOUS_TYPE_REF](#XSD_UPDATE_ANONYMOUS_TYPE_REF)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_UPDATE_LIST_TO_NON_LIST](#XSD_UPDATE_LIST_TO_NON_LIST)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_UPDATE_VISIBLE_TYPE](#XSD_UPDATE_VISIBLE_TYPE)`

    `static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[XSD_VALIDATION](#XSD_VALIDATION)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[ValidationCode](#%3Cinit%3E\(\))()`

    For GWT serialization

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.exceptions.[AppianErrorCode](../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

    `[equals](../../exceptions/AppianErrorCode.html#equals\(java.lang.Object\)), [getCategory](../../exceptions/AppianErrorCode.html#getCategory\(\)), [getDetail](../../exceptions/AppianErrorCode.html#getDetail\(\)), [getMessage](../../exceptions/AppianErrorCode.html#getMessage\(com.appiancorp.suiteapi.common.exceptions.AppianErrorCodeFormatter,java.lang.Object...\)), [getMessageWithCode](../../exceptions/AppianErrorCode.html#getMessageWithCode\(com.appiancorp.suiteapi.common.exceptions.AppianErrorCodeFormatter,java.lang.Object...\)), [getNamespace](../../exceptions/AppianErrorCode.html#getNamespace\(\)), [getStaticMessage](../../exceptions/AppianErrorCode.html#getStaticMessage\(com.appiancorp.exceptions.AppianErrorCodeStaticMessageFormatter\)), [getTitle](../../exceptions/AppianErrorCode.html#getTitle\(com.appiancorp.exceptions.AppianErrorCodeTitleFormatter,java.lang.Object...\)), [hashCode](../../exceptions/AppianErrorCode.html#hashCode\(\)), [hasTitle](../../exceptions/AppianErrorCode.html#hasTitle\(\)), [toErrorCode](../../exceptions/AppianErrorCode.html#toErrorCode\(java.lang.String\)), [toString](../../exceptions/AppianErrorCode.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### GENERIC\_VALIDATION\_ERROR

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") GENERIC\_VALIDATION\_ERROR

    -   ### WS

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS

    -   ### WS\_WSDL

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL

    -   ### WS\_WSDL\_MALFORMED\_ENDPOINT\_URL

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL\_MALFORMED\_ENDPOINT\_URL

    -   ### WS\_WSDL\_UNSUPPORTED\_MEP

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL\_UNSUPPORTED\_MEP

    -   ### WS\_WSDL\_WS\_POLICY

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL\_WS\_POLICY

    -   ### WS\_WSDL\_UNRESOLVED\_NS

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL\_UNRESOLVED\_NS

    -   ### WS\_WSDL\_MESSAGE\_NO\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL\_MESSAGE\_NO\_NAME

    -   ### WS\_WSDL\_ENCODED\_USAGE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL\_ENCODED\_USAGE

    -   ### WS\_WSDL\_UNSUPPORTED\_POLICY\_ASSERTION

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_WSDL\_UNSUPPORTED\_POLICY\_ASSERTION

    -   ### XSD\_IMPORT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IMPORT

    -   ### XSD\_IMPORT\_PRE\_EXISTING\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IMPORT\_PRE\_EXISTING\_TYPE

    -   ### XSD\_IMPORT\_PRE\_EXISTING\_TYPE\_ERROR

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IMPORT\_PRE\_EXISTING\_TYPE\_ERROR

    -   ### XSD\_IMPORT\_PRE\_EXISTING\_TYPE\_IDENTICAL

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IMPORT\_PRE\_EXISTING\_TYPE\_IDENTICAL

    -   ### XSD\_IMPORT\_TYPE\_DESIGNER\_LOCKED

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IMPORT\_TYPE\_DESIGNER\_LOCKED

    -   ### XSD\_IGNORE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IGNORE

    -   ### XSD\_IGNORE\_DEFAULT\_VALUE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IGNORE\_DEFAULT\_VALUE

    -   ### XSD\_IGNORE\_FACET

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IGNORE\_FACET

    -   ### XSD\_IGNORE\_ANY\_ATTRIBUTE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IGNORE\_ANY\_ATTRIBUTE

    -   ### XSD\_VALIDATION

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_VALIDATION

    -   ### XSD\_MISSING\_TYPE\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_MISSING\_TYPE\_NAME

    -   ### XSD\_INVALID\_TYPE\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_INVALID\_TYPE\_NAME

    -   ### XSD\_NON\_UNIQUE\_TYPE\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_NON\_UNIQUE\_TYPE\_NAME

    -   ### XSD\_MISSING\_FIELD\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_MISSING\_FIELD\_NAME

    -   ### XSD\_INVALID\_FIELD\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_INVALID\_FIELD\_NAME

    -   ### XSD\_NON\_UNIQUE\_FIELD\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_NON\_UNIQUE\_FIELD\_NAME

    -   ### XSD\_MISSING\_FIELD\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_MISSING\_FIELD\_TYPE

    -   ### XSD\_IMPORT\_FAILED

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_IMPORT\_FAILED

    -   ### XSD\_DEACTIVATED\_TYPE\_REF

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_DEACTIVATED\_TYPE\_REF

    -   ### XSD\_UPDATE\_VISIBLE\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_UPDATE\_VISIBLE\_TYPE

    -   ### XSD\_UPDATE\_ANONYMOUS\_TYPE\_REF

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_UPDATE\_ANONYMOUS\_TYPE\_REF

    -   ### XSD\_UPDATE\_LIST\_TO\_NON\_LIST

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") XSD\_UPDATE\_LIST\_TO\_NON\_LIST

    -   ### FORMS\_IMPORT\_INVALID\_TYPE\_REF

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FORMS\_IMPORT\_INVALID\_TYPE\_REF

    -   ### IX\_GROUP\_TYPE\_ATTR\_DEFAULT\_VALUE\_INGORED

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_GROUP\_TYPE\_ATTR\_DEFAULT\_VALUE\_INGORED

    -   ### IX\_GROUP\_RULES\_IGNORED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_GROUP\_RULES\_IGNORED

        Deprecated.

    -   ### IX\_PORTLET\_PARAMS\_CLEARED\_NO\_HELPER

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_PORTLET\_PARAMS\_CLEARED\_NO\_HELPER

    -   ### IX\_REF\_CLEARED\_ON\_EXPORT\_UNSUPPORTED\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_REF\_CLEARED\_ON\_EXPORT\_UNSUPPORTED\_TYPE

    -   ### IX\_REF\_INVALID\_FORM\_ELEMENT\_VALUE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_REF\_INVALID\_FORM\_ELEMENT\_VALUE

    -   ### IX\_MULTIPLE\_TYPES\_IN\_XSD

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_MULTIPLE\_TYPES\_IN\_XSD

    -   ### IX\_DEACTIVATED\_TYPE\_REF

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_DEACTIVATED\_TYPE\_REF

    -   ### IX\_TYPE\_XSD\_NOT\_AVAILABLE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_TYPE\_XSD\_NOT\_AVAILABLE

    -   ### IX\_INSPECT\_DATA\_STORE\_SCHEMA\_VALIDATION\_ITEM

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_INSPECT\_DATA\_STORE\_SCHEMA\_VALIDATION\_ITEM

    -   ### IX\_NOT\_IN\_PACKAGE\_DATA\_STORE\_SCHEMA\_VALIDATION\_ITEM

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_NOT\_IN\_PACKAGE\_DATA\_STORE\_SCHEMA\_VALIDATION\_ITEM

    -   ### IX\_OBJECT\_IMPORT\_UNEXPECTED\_PARAMETER

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_OBJECT\_IMPORT\_UNEXPECTED\_PARAMETER

    -   ### IX\_OBJECT\_IMPORT\_MALFORMED\_PARAMETER

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_OBJECT\_IMPORT\_MALFORMED\_PARAMETER

    -   ### IX\_NON\_ESC\_IN\_IMPORT\_CUSTOMIZATION\_FILE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_NON\_ESC\_IN\_IMPORT\_CUSTOMIZATION\_FILE

    -   ### IX\_STRUCTURAL\_COMPARISON\_FAILURE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_STRUCTURAL\_COMPARISON\_FAILURE

    -   ### IX\_OVERWRITE\_RECORD\_ACTION\_UUID

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_OVERWRITE\_RECORD\_ACTION\_UUID

    -   ### IX\_OVERWRITE\_USER\_FILTER\_UUID

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_OVERWRITE\_USER\_FILTER\_UUID

    -   ### IX\_OVERWRITE\_RECORD\_ACTION\_AND\_USER\_FILTER\_UUIDS

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_OVERWRITE\_RECORD\_ACTION\_AND\_USER\_FILTER\_UUIDS

    -   ### IX\_DEPRECATED\_IMPORT\_PARAMETER

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") IX\_DEPRECATED\_IMPORT\_PARAMETER

    -   ### RDBMS\_INVALID\_DATA\_SOURCE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") RDBMS\_INVALID\_DATA\_SOURCE

    -   ### RDBMS\_INVALID\_TYPE\_MAPPING\_ANNOTATION

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") RDBMS\_INVALID\_TYPE\_MAPPING\_ANNOTATION

    -   ### RDBMS\_NO\_PRIMARY\_KEY\_FOR\_SECURED\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") RDBMS\_NO\_PRIMARY\_KEY\_FOR\_SECURED\_TYPE

    -   ### RDBMS\_INVALID\_SECURITY\_MAPPING\_ANNOTATION

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") RDBMS\_INVALID\_SECURITY\_MAPPING\_ANNOTATION

    -   ### RDBMS\_INVALID\_DATA\_SOURCE\_SCHEMA

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") RDBMS\_INVALID\_DATA\_SOURCE\_SCHEMA

    -   ### LICENSING\_EMPTY\_LICENSE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") LICENSING\_EMPTY\_LICENSE

    -   ### QUERY\_RULE\_MISSING\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_MISSING\_NAME

    -   ### QUERY\_RULE\_MISSING\_FOLDER

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_MISSING\_FOLDER

    -   ### QUERY\_RULE\_MISSING\_ENTITY

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_MISSING\_ENTITY

    -   ### QUERY\_RULE\_BAD\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_BAD\_NAME

    -   ### QUERY\_RULE\_DATASTORE\_NOT\_FOUND

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_DATASTORE\_NOT\_FOUND

    -   ### QUERY\_RULE\_ENTITY\_NOT\_FOUND

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ENTITY\_NOT\_FOUND

    -   ### QUERY\_RULE\_ENTITY\_NOT\_PUBLISHED

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ENTITY\_NOT\_PUBLISHED

    -   ### QUERY\_RULE\_ENTITY\_PERMISSIONS

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ENTITY\_PERMISSIONS

    -   ### QUERY\_RULE\_ENTITY\_NO\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ENTITY\_NO\_TYPE

    -   ### QUERY\_RULE\_PARAM\_MISSING\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_PARAM\_MISSING\_NAME

    -   ### QUERY\_RULE\_PARAM\_MISSING\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_PARAM\_MISSING\_TYPE

    -   ### QUERY\_RULE\_PARAM\_BAD\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_PARAM\_BAD\_TYPE

    -   ### QUERY\_RULE\_PARAM\_BAD\_NAME

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_PARAM\_BAD\_NAME

    -   ### QUERY\_RULE\_PARAM\_NOT\_UNIQUE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_PARAM\_NOT\_UNIQUE

    -   ### QUERY\_RULE\_FILTER\_MISSING\_PATH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_MISSING\_PATH

    -   ### QUERY\_RULE\_FILTER\_BAD\_PATH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_BAD\_PATH

    -   ### QUERY\_RULE\_FILTER\_UNVERIFIED\_PATH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_UNVERIFIED\_PATH

    -   ### QUERY\_RULE\_FILTER\_MISSING\_OP

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_MISSING\_OP

    -   ### QUERY\_RULE\_FILTER\_MISSING\_VALUE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_MISSING\_VALUE

    -   ### QUERY\_RULE\_FILTER\_BAD\_LITERAL

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_BAD\_LITERAL

    -   ### QUERY\_RULE\_FILTER\_BAD\_PARAM

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_BAD\_PARAM

    -   ### QUERY\_RULE\_FILTER\_BAD\_EXPRESSION

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_BAD\_EXPRESSION

    -   ### QUERY\_RULE\_FILTER\_ENTITY\_TYPE\_MISMATCH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_ENTITY\_TYPE\_MISMATCH

    -   ### QUERY\_RULE\_FILTER\_BAD\_OP

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_BAD\_OP

    -   ### QUERY\_RULE\_FILTER\_UNVERIFIED\_OP

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_UNVERIFIED\_OP

    -   ### QUERY\_RULE\_FILTER\_PARAM\_TYPE\_MISMATCH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FILTER\_PARAM\_TYPE\_MISMATCH

    -   ### QUERY\_RULE\_ORDER\_MISSING\_PATH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ORDER\_MISSING\_PATH

    -   ### QUERY\_RULE\_ORDER\_BAD\_PATH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ORDER\_BAD\_PATH

    -   ### QUERY\_RULE\_ORDER\_UNVERIFIED\_PATH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ORDER\_UNVERIFIED\_PATH

    -   ### QUERY\_RULE\_ORDER\_ENTITY\_TYPE\_MISMATCH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ORDER\_ENTITY\_TYPE\_MISMATCH

    -   ### QUERY\_RULE\_ORDER\_BY\_LIST

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_ORDER\_BY\_LIST

    -   ### QUERY\_RULE\_FOLDER\_ERROR

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FOLDER\_ERROR

    -   ### QUERY\_RULE\_FOLDER\_INVALID

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_FOLDER\_INVALID

    -   ### QUERY\_RULE\_NAME\_COLLISION\_FUNCTION

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") QUERY\_RULE\_NAME\_COLLISION\_FUNCTION

    -   ### RDBMS\_SN\_INSUFFICIENT\_PRIVILEGES

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") RDBMS\_SN\_INSUFFICIENT\_PRIVILEGES

    -   ### WS\_SN\_INSUFFICIENT\_PRIVILEGES

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_SN\_INSUFFICIENT\_PRIVILEGES

    -   ### WS\_SN\_IMPORT\_INSUFFICIENT\_PRIVILEGES

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") WS\_SN\_IMPORT\_INSUFFICIENT\_PRIVILEGES

    -   ### EXPRESSION\_ERROR

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") EXPRESSION\_ERROR

    -   ### POJO\_UNSUPPORTED\_JPA\_ANNOTATION\_ARGUMENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") POJO\_UNSUPPORTED\_JPA\_ANNOTATION\_ARGUMENT

    -   ### POJO\_CANNOT\_READ\_JPA\_ANNOTATIONS

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") POJO\_CANNOT\_READ\_JPA\_ANNOTATIONS

    -   ### GENERIC\_SYNCED\_RECORD\_TYPE\_VALIDATION

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") GENERIC\_SYNCED\_RECORD\_TYPE\_VALIDATION

    -   ### NOT\_A\_SYNCED\_RECORD\_TYPE

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") NOT\_A\_SYNCED\_RECORD\_TYPE

    -   ### SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND

    -   ### SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH

    -   ### SYNCED\_RECORD\_TYPE\_SOURCE\_EXCEEDS\_ROW\_LIMIT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SOURCE\_EXCEEDS\_ROW\_LIMIT

    -   ### SYNCED\_RECORD\_TYPE\_INVALID\_SOURCE\_FILTER

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_INVALID\_SOURCE\_FILTER

    -   ### SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_DDL\_PRESENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_DDL\_PRESENT

    -   ### SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_DATA\_STORE\_PRESENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_DATA\_STORE\_PRESENT

    -   ### SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_MULTIPLE\_DATA\_STORES\_PRESENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_MULTIPLE\_DATA\_STORES\_PRESENT

    -   ### SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH\_DDL\_PRESENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH\_DDL\_PRESENT

    -   ### SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH\_DATA\_STORE\_PRESENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH\_DATA\_STORE\_PRESENT

    -   ### SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH\_MULTIPLE\_DATA\_STORES\_PRESENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SCHEMA\_MISMATCH\_MULTIPLE\_DATA\_STORES\_PRESENT

    -   ### SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_CONNECTED\_SYSTEM\_PRESENT

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") SYNCED\_RECORD\_TYPE\_SOURCE\_NOT\_FOUND\_CONNECTED\_SYSTEM\_PRESENT

    -   ### FILE\_UPLOAD\_GENERIC\_ERROR

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_GENERIC\_ERROR

    -   ### FILE\_UPLOAD\_DESTINATION\_FOLDER\_INVALID

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_DESTINATION\_FOLDER\_INVALID

    -   ### FILE\_UPLOAD\_DESTINATION\_FOLDER\_PRIVILEGES

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_DESTINATION\_FOLDER\_PRIVILEGES

    -   ### FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_INVALID

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_INVALID

    -   ### FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_EXTENSION\_NOT\_EQUAL

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_EXTENSION\_NOT\_EQUAL

    -   ### FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_PRIVILEGES

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_PRIVILEGES

    -   ### FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_EMPTY

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_DESTINATION\_DOCUMENT\_EMPTY

    -   ### FILE\_UPLOAD\_UPLOADED\_FILE\_DOESNT\_EXIST

        public static final [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") FILE\_UPLOAD\_UPLOADED\_FILE\_DOESNT\_EXIST

-   ## Constructor Details

    -   ### ValidationCode

        protected ValidationCode()

        For GWT serialization