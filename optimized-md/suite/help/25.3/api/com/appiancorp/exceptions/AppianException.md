---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianException.html
original_path: api/com/appiancorp/exceptions/AppianException.html
version: "25.3"
title: "Class AppianException"
page_id: "api/com/appiancorp/exceptions/AppianException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Class AppianException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.exceptions.AppianException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ArchivedProcessException](../suiteapi/process/exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[ContentExpiredException](../suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[DatabaseOperationException](../suiteapi/common/exceptions/DatabaseOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[DuplicatePortletException](../suiteapi/common/exceptions/DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[DuplicateWebServiceNameException](../suiteapi/common/exceptions/DuplicateWebServiceNameException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[DuplicateWSRPProducerURLException](../suiteapi/portal/portlets/wsrp/consumer/DuplicateWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")`, `[ExpressionException](../suiteapi/common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[GroupIsAttributeException](../suiteapi/common/exceptions/GroupIsAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[GroupsExtantException](../suiteapi/common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[HasChildrenException](../suiteapi/content/exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[IllegalRecursionException](../suiteapi/content/exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[ImportException](../suiteapi/type/exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")`, `[IncompatibleArchivedVersionException](../suiteapi/process/exceptions/IncompatibleArchivedVersionException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InsufficientNameUniquenessException](../suiteapi/content/exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[InsufficientPrivilegesException](InsufficientPrivilegesException.html "class in com.appiancorp.exceptions")`, `[InvalidActivityClassParameterException](../suiteapi/process/exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidAdminException](../suiteapi/common/exceptions/InvalidAdminException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidApprovalStateException](../suiteapi/content/exceptions/InvalidApprovalStateException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[InvalidAttachmentException](../suiteapi/common/exceptions/InvalidAttachmentException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidAttributeException](../suiteapi/common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidAttributeValueException](../suiteapi/common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidCategoryException](../suiteapi/common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidCommunityException](../suiteapi/common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidContentException](../suiteapi/content/exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[InvalidDataFormatException](../suiteapi/common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidDependencyException](../suiteapi/common/exceptions/InvalidDependencyException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidDocumentException](../suiteapi/common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidEmailAddressException](../suiteapi/common/exceptions/InvalidEmailAddressException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidEscalationException](../suiteapi/common/exceptions/InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidEventException](../suiteapi/common/exceptions/InvalidEventException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidExceptionTypeException](../suiteapi/process/exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidExpressionException](../suiteapi/common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidFolderException](../suiteapi/common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidFolderException](../suiteapi/portal/portlets/links/InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")`, `[InvalidForumException](../suiteapi/common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidGroupException](../suiteapi/common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidGroupMessageException](../suiteapi/portal/portlets/groupmessage/InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")`, `[InvalidGroupTypeException](../suiteapi/common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidJMSDestinationException](../suiteapi/messaging/InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`, `[InvalidKnowledgeCenterException](../suiteapi/common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidLeaderMessageException](../suiteapi/portal/portlets/leadermessage/InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")`, `[InvalidLinkException](../suiteapi/portal/portlets/links/InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")`, `[InvalidLinkTypeException](../suiteapi/portal/portlets/links/InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")`, `[InvalidLocalObjectTypeException](../suiteapi/common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidLoginException](../suiteapi/common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidMemberException](../suiteapi/common/exceptions/InvalidMemberException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidMemberPolicyException](../suiteapi/common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidMessageException](../suiteapi/common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidMetadataRuleException](../suiteapi/common/exceptions/InvalidMetadataRuleException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNameException](../suiteapi/common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNodeException](../suiteapi/common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNodeMultiplicityException](../suiteapi/common/exceptions/InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNodeTypeLogicException](../suiteapi/common/exceptions/InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNodeTypeRecurringException](../suiteapi/common/exceptions/InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNoteException](../suiteapi/process/exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidNotificationException](../suiteapi/common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNotificationTypeException](../suiteapi/common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidObjectTypeIdException](../suiteapi/process/exceptions/InvalidObjectTypeIdException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidOperationException](../suiteapi/common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidPageException](../suiteapi/common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidParentException](../suiteapi/common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidPersonalContentException](../suiteapi/content/exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[InvalidPortletException](../suiteapi/common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidPortletTypeDefinitionException](../suiteapi/portal/InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")`, `[InvalidPortletTypeException](../suiteapi/common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidPortletTypeStateException](../suiteapi/portal/InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")`, `[InvalidPortletTypeStateFilterException](../suiteapi/portal/InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")`, `[InvalidPriorityException](../suiteapi/common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidProcessException](../suiteapi/process/exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidProcessModelException](../suiteapi/common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidProcessVariableNameException](../suiteapi/process/exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidRejectionStateException](../suiteapi/content/exceptions/InvalidRejectionStateException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[InvalidRoleException](../suiteapi/common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidScheduleTypeException](../suiteapi/common/exceptions/InvalidScheduleTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidSecurityMapException](../suiteapi/common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidStateException](../suiteapi/common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidSupervisorException](../suiteapi/common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidTaskException](../suiteapi/process/exceptions/InvalidTaskException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidThreadException](../suiteapi/common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidTitleException](../suiteapi/common/exceptions/InvalidTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidTypeMaskException](../suiteapi/content/exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[InvalidUuidException](../suiteapi/common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidVersionException](../suiteapi/common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidViewingPolicyException](../suiteapi/common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidWSRPProducerException](../suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")`, `[InvalidWSRPProducerURLException](../suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")`, `[InvalidZoneException](../suiteapi/common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[LockException](../suiteapi/common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[NonSystemTypesUnsupportedException](../suiteapi/type/exceptions/NonSystemTypesUnsupportedException.html "class in com.appiancorp.suiteapi.type.exceptions")`, `[NotEmptyException](../suiteapi/common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[NotesLimitException](../suiteapi/common/exceptions/NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[NotLockOwnerException](../suiteapi/content/exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[OutOfLinkTypesException](../suiteapi/portal/portlets/links/OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")`, `[PendingApprovalException](../suiteapi/content/exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[PortletSharingException](../suiteapi/common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[ProcessAttachmentsLimitException](../suiteapi/common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[RecursiveRelationshipException](../suiteapi/common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[ReportComplexityException](../suiteapi/process/exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[ReportSizeException](../suiteapi/process/exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[StorageLimitException](../suiteapi/common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[SystemAttributeException](../suiteapi/common/exceptions/SystemAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[SystemGroupException](../suiteapi/common/exceptions/SystemGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[SystemGroupTypeException](../suiteapi/common/exceptions/SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[TaskNavigationException](../suiteapi/process/exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[TooManyDocumentsException](../suiteapi/common/exceptions/TooManyDocumentsException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[UnsupportedAttributeTypeException](../suiteapi/common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[UnsupportedOperatorException](../suiteapi/common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[UnsupportedRelationshipException](../suiteapi/common/exceptions/UnsupportedRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[UnsupportedReportSpecificationException](../suiteapi/process/exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[UnsupportedRoleException](../suiteapi/common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[UnsupportedTitleException](../suiteapi/common/exceptions/UnsupportedTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[WriteException](../suiteapi/common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[WSImporterException](../suiteapi/process/exceptions/WSImporterException.html "class in com.appiancorp.suiteapi.process.exceptions")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class AppianException extends [AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

use [`AppianException`](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.AppianException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianException](#%3Cinit%3E\(\))()`

    Deprecated.

    Constructs a new `AppianException` with an empty string as its detail message.

    `[AppianException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Deprecated.

    `[AppianException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable\))([ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Deprecated.

    `[AppianException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable,java.lang.Object...\))([ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Deprecated.

    `[AppianException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)`

    Deprecated.

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    `[AppianException](#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Deprecated.

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    `[AppianException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Deprecated.

    Constructs a new `AppianException` as a wrapper around the `Throwable` passed in with a detail message of `(cause==null ?`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../suiteapi/common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../suiteapi/common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../suiteapi/common/exceptions/AppianException.html#getMessage\(\)), [toString](../suiteapi/common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AppianException

        public AppianException()

        Deprecated.

        Constructs a new `AppianException` with an empty string as its detail message.

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)

        Deprecated.

        this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    -   ### AppianException

        public AppianException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Deprecated.

        Constructs a new `AppianException` as a wrapper around the `Throwable` passed in with a detail message of `(cause==null ? "" : cause.toString())`.

        Parameters:

        `cause` - the cause, or the `Throwable` that caused this `AppianException` to get thrown

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Deprecated.

        this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException([ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Deprecated.

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException([ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Deprecated.

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException([ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Deprecated.