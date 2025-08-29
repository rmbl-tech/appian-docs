---
source_url: https://docs.appian.com/suite/help/25.3/api/index-all.html
original_path: api/index-all.html
version: "25.3"
part: 4/20
page_id: "api/index-all"
section: "C"
tags: ["appian","docs","v25.3"]
---


## C

[calculatePasswordStatus(UserProfile)](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html#calculatePasswordStatus\(com.appiancorp.suiteapi.personalization.UserProfile\)) - Static method in class com.appiancorp.suiteapi.security.auth.[AppianUserDetailsService](com/appiancorp/suiteapi/security/auth/AppianUserDetailsService.html "class in com.appiancorp.suiteapi.security.auth")

Calculates the password status using the Password Management feature configurations and the user metadata [`User.isTemporaryPassword()`](com/appiancorp/suiteapi/personalization/User.html#isTemporaryPassword\(\)) and [`User.getPasswordModified()`](com/appiancorp/suiteapi/personalization/User.html#getPasswordModified\(\)).

[CALENDAR\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#CALENDAR_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

key to obtain the calendar service

[CalendarDateElement](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar") - Class in [com.appiancorp.suiteapi.process.calendar](com/appiancorp/suiteapi/process/calendar/package-summary.html)

The `CalendarDateElement` is similar to the [`CalendarElement`](com/appiancorp/suiteapi/process/calendar/CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") but it has an additional field which specifies the specific day to which this element is applied.

[CalendarDateElement()](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.calendar.[CalendarDateElement](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")

Default constructor for a `CalendarDateElement`.

[CalendarDateElement(Date, int, int)](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html#%3Cinit%3E\(java.sql.Date,int,int\)) - Constructor for class com.appiancorp.suiteapi.process.calendar.[CalendarDateElement](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")

`CalendarDateElement` constructor which initializes the date of this element as well as the starting minute and duration in minutes.

[CalendarDateElement(Date, CalendarElement)](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html#%3Cinit%3E\(java.sql.Date,com.appiancorp.suiteapi.process.calendar.CalendarElement\)) - Constructor for class com.appiancorp.suiteapi.process.calendar.[CalendarDateElement](com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")

`CalendarDateElement` constructor which initializes the date of this element as well as the starting minute and duration in minutes.

[CalendarElement](com/appiancorp/suiteapi/process/calendar/CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") - Class in [com.appiancorp.suiteapi.process.calendar](com/appiancorp/suiteapi/process/calendar/package-summary.html)

The CalendarElement stores a start and end time, which is used by the WorkingCalendar to specify all start and end times per day.

[CalendarElement()](com/appiancorp/suiteapi/process/calendar/CalendarElement.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.calendar.[CalendarElement](com/appiancorp/suiteapi/process/calendar/CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")

Constructs an empty CalendarElement (0 for both values).

[CalendarElement(int, int)](com/appiancorp/suiteapi/process/calendar/CalendarElement.html#%3Cinit%3E\(int,int\)) - Constructor for class com.appiancorp.suiteapi.process.calendar.[CalendarElement](com/appiancorp/suiteapi/process/calendar/CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")

Constructs a CalendarElement with default values for the start minute and number of duration minutes.

[calendarFromTimestamp(Timestamp, TimeZone)](com/appiancorp/suiteapi/process/calendar/WorkingCalendar.html#calendarFromTimestamp\(java.sql.Timestamp,java.util.TimeZone\)) - Method in class com.appiancorp.suiteapi.process.calendar.[WorkingCalendar](com/appiancorp/suiteapi/process/calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

Create a Calendar from the given `java.sql.Timestamp`, adjusted for the configured TimeZone of the WorkingCalendar, or defaultTimeZone if none.

[CalendarService](com/appiancorp/suiteapi/process/CalendarService.html "interface in com.appiancorp.suiteapi.process") - Interface in [com.appiancorp.suiteapi.process](com/appiancorp/suiteapi/process/package-summary.html)

This service provides methods which retrieve and update calendars in the system.

[CalendarSetting](com/appiancorp/suiteapi/portal/CalendarSetting.html "class in com.appiancorp.suiteapi.portal") - Class in [com.appiancorp.suiteapi.portal](com/appiancorp/suiteapi/portal/package-summary.html)

[CalendarSetting()](com/appiancorp/suiteapi/portal/CalendarSetting.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.portal.[CalendarSetting](com/appiancorp/suiteapi/portal/CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

[CalendarSetting(String, String)](com/appiancorp/suiteapi/portal/CalendarSetting.html#%3Cinit%3E\(java.lang.String,java.lang.String\)) - Constructor for class com.appiancorp.suiteapi.portal.[CalendarSetting](com/appiancorp/suiteapi/portal/CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

[CAN\_ONLY\_ACCESS\_IGNORE\_IN\_SAVE\_MODE\_INSIDE\_SYSTEM\_RULE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CAN_ONLY_ACCESS_IGNORE_IN_SAVE_MODE_INSIDE_SYSTEM_RULE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[canAccess(IActionMapping, HttpServletRequest)](com/appiancorp/ap2/PortletUpdateAction.html#canAccess\(com.appiancorp.web.framework.kernel.main.IActionMapping,javax.servlet.http.HttpServletRequest\)) - Method in class com.appiancorp.ap2.[PortletUpdateAction](com/appiancorp/ap2/PortletUpdateAction.html "class in com.appiancorp.ap2")

Deprecated.

Checks if the user has update privileges on the `Portlet`.

[canAccess(IActionMapping, HttpServletRequest)](com/appiancorp/common/appianwebmvc/BaseAction.html#canAccess\(com.appiancorp.web.framework.kernel.main.IActionMapping,javax.servlet.http.HttpServletRequest\)) - Method in class com.appiancorp.common.appianwebmvc.[BaseAction](com/appiancorp/common/appianwebmvc/BaseAction.html "class in com.appiancorp.common.appianwebmvc")

Deprecated.

Returns whether the web user can execute this action.

[canAdministrate(Content\[\])](com/appiancorp/suiteapi/content/ContentService.html#canAdministrate\(com.appiancorp.suiteapi.content.Content%5B%5D\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user Administrate?

[canAdministrate(Long)](com/appiancorp/suiteapi/content/ContentService.html#canAdministrate\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user Administrate?

[canAdministrate(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#canAdministrate\(java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user Administrate?

[canAdministrate$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canAdministrate$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[cancelAllNodes(String\[\], Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelAllNodes\(java.lang.String%5B%5D,java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Cancel each given node in every applicable process.

[cancelAllNodes$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelAllNodes$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[cancelFunction(Long, String)](com/appiancorp/suiteapi/expression/ExpressionService.html#cancelFunction\(java.lang.Long,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.expression.[ExpressionService](com/appiancorp/suiteapi/expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")

Deprecated.

see ProcessDesignService.evaluateExpression; it handles the full expression lifecycle

[cancelFunction$UPDATES](com/appiancorp/suiteapi/expression/ExpressionService.html#cancelFunction$UPDATES) - Static variable in interface com.appiancorp.suiteapi.expression.[ExpressionService](com/appiancorp/suiteapi/expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")

[cancelProcess(Long, boolean)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelProcess\(java.lang.Long,boolean\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Cancels the specified process.

[cancelProcess$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelProcess$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[cancelProcesses(Long\[\], boolean)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelProcesses\(java.lang.Long%5B%5D,boolean\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Cancel a list of processes.

[cancelProcesses$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelProcesses$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[cancelStore(Long, String)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelStore\(java.lang.Long,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Cancel an external data store.

[cancelStore$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelStore$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[cancelTask(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelTask\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Cancels a given task

[cancelTask$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelTask$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[cancelTasks(Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelTasks\(java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Cancels a list of tasks.

[cancelTasks$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#cancelTasks$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[canCompleteActivity(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#canCompleteActivity\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Determines whether the specified activity can be completed by the user.

[canCompleteActivity$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#canCompleteActivity$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[canCompleteClone(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#canCompleteClone\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Indicates whether the current user can use [`ProcessExecutionService.completeClone(java.lang.Long, com.appiancorp.suiteapi.process.ActivityClassParameter[], com.appiancorp.suiteapi.process.ActivityReturnVariable[])`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#completeClone\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\)) on the given task to complete the activity.

[canCompleteClone$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#canCompleteClone$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[canEdit(Content\[\])](com/appiancorp/suiteapi/content/ContentService.html#canEdit\(com.appiancorp.suiteapi.content.Content%5B%5D\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user Edit?

[canEdit(Long)](com/appiancorp/suiteapi/content/ContentService.html#canEdit\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user Edit?

[canEdit(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#canEdit\(java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user Edit?

[canEdit$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canEdit$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[canEquals(Object)](com/appiancorp/common/query/AggregationColumn.html#canEquals\(java.lang.Object\)) - Method in class com.appiancorp.common.query.[AggregationColumn](com/appiancorp/common/query/AggregationColumn.html "class in com.appiancorp.common.query")

[canEquals(Object)](com/appiancorp/common/query/Column.html#canEquals\(java.lang.Object\)) - Method in class com.appiancorp.common.query.[Column](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query")

[canEquals(Object)](com/appiancorp/common/query/ColumnAlias.html#canEquals\(java.lang.Object\)) - Method in class com.appiancorp.common.query.[ColumnAlias](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query")

Checks if this instance can compare against the given object.

[canGroupAdministrate(Long\[\], Long)](com/appiancorp/suiteapi/content/ContentService.html#canGroupAdministrate\(java.lang.Long%5B%5D,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given Group Administrate?

[canGroupAdministrate(Long, Long)](com/appiancorp/suiteapi/content/ContentService.html#canGroupAdministrate\(java.lang.Long,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given Group Administrate?

[canGroupAdministrate$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canGroupAdministrate$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[canGroupAdministrateCommunity(Long, Long)](com/appiancorp/suiteapi/collaboration/CommunityService.html#canGroupAdministrateCommunity\(java.lang.Long,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Returns `true` if the specified `Group` is an administrator of the `Community`

[canGroupAdministrateCommunity$UPDATES](com/appiancorp/suiteapi/collaboration/CommunityService.html#canGroupAdministrateCommunity$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[canGroupEdit(Long\[\], Long)](com/appiancorp/suiteapi/content/ContentService.html#canGroupEdit\(java.lang.Long%5B%5D,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given Group Edit?

[canGroupEdit(Long, Long)](com/appiancorp/suiteapi/content/ContentService.html#canGroupEdit\(java.lang.Long,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given Group Edit?

[canGroupEdit$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canGroupEdit$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[canGroupView(Long\[\], Long)](com/appiancorp/suiteapi/content/ContentService.html#canGroupView\(java.lang.Long%5B%5D,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given Group View?

[canGroupView(Long, Long)](com/appiancorp/suiteapi/content/ContentService.html#canGroupView\(java.lang.Long,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given Group View?

[canGroupView$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canGroupView$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[canHandle(Throwable)](com/appiancorp/exceptions/ExceptionHandler.html#canHandle\(java.lang.Throwable\)) - Method in interface com.appiancorp.exceptions.[ExceptionHandler](com/appiancorp/exceptions/ExceptionHandler.html "interface in com.appiancorp.exceptions")

[CANNOT\_DEREFERENCE\_SELF\_REFERENCE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_DEREFERENCE_SELF_REFERENCE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANNOT\_DEREFERENCE\_TOO\_MANY\_LEVELS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_DEREFERENCE_TOO_MANY_LEVELS) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANNOT\_FOLLOW\_SELF](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_FOLLOW_SELF) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANNOT\_HAVE\_GIVEN\_PARAMS\_WITH\_IGNORE\_IN\_SAVE\_MODE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_HAVE_GIVEN_PARAMS_WITH_IGNORE_IN_SAVE_MODE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANNOT\_HAVE\_LOAD\_OR\_LOCAL\_VARIABLES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_HAVE_LOAD_OR_LOCAL_VARIABLES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANNOT\_USE\_DYNAMIC\_LV\_REFRESH\_AFTER\_VALUE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_USE_DYNAMIC_LV_REFRESH_AFTER_VALUE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANNOT\_USE\_ID\_REFERABLE\_AS\_LOCAL\_VAR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_USE_ID_REFERABLE_AS_LOCAL_VAR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANNOT\_USE\_THIS\_RULE\_INSIDE\_LOOPING\_FUNCTION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CANNOT_USE_THIS_RULE_INSIDE_LOOPING_FUNCTION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CANSEE](com/appiancorp/suiteapi/forums/ForumsSearchService.html#CANSEE) - Static variable in interface com.appiancorp.suiteapi.forums.[ForumsSearchService](com/appiancorp/suiteapi/forums/ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[CANTSEE](com/appiancorp/suiteapi/collaboration/CollaborationSearchService.html#CANTSEE) - Static variable in interface com.appiancorp.suiteapi.collaboration.[CollaborationSearchService](com/appiancorp/suiteapi/collaboration/CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[CANTSEE](com/appiancorp/suiteapi/forums/ForumsSearchService.html#CANTSEE) - Static variable in interface com.appiancorp.suiteapi.forums.[ForumsSearchService](com/appiancorp/suiteapi/forums/ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[CANTSEE](com/appiancorp/suiteapi/portal/PortalSearchService.html#CANTSEE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalSearchService](com/appiancorp/suiteapi/portal/PortalSearchService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Constant for indicating that the current user cannot see the page or portlet

[canUseGroupName(String, Long)](com/appiancorp/suiteapi/personalization/GroupService.html#canUseGroupName\(java.lang.String,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

Indicates whether a user can create a new group with the given name of the given group security type.

[canUseGroupName$UPDATES](com/appiancorp/suiteapi/personalization/GroupService.html#canUseGroupName$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

[canUserAdministrate(Long\[\], String)](com/appiancorp/suiteapi/content/ContentService.html#canUserAdministrate\(java.lang.Long%5B%5D,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given User Administrate?

[canUserAdministrate(Long, String)](com/appiancorp/suiteapi/content/ContentService.html#canUserAdministrate\(java.lang.Long,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given User Administrate?

[canUserAdministrate$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canUserAdministrate$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[canUserAdministrateCommunity(Long)](com/appiancorp/suiteapi/collaboration/CommunityService.html#canUserAdministrateCommunity\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Returns `true` if the current `User` is an administrator of the [`Community`](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration")

[canUserAdministrateCommunity$UPDATES](com/appiancorp/suiteapi/collaboration/CommunityService.html#canUserAdministrateCommunity$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[canUserEdit(Long\[\], String)](com/appiancorp/suiteapi/content/ContentService.html#canUserEdit\(java.lang.Long%5B%5D,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given User Edit?

[canUserEdit(Long, String)](com/appiancorp/suiteapi/content/ContentService.html#canUserEdit\(java.lang.Long,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given User Edit?

[canUserEdit$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canUserEdit$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[canUserView(Long\[\], String)](com/appiancorp/suiteapi/content/ContentService.html#canUserView\(java.lang.Long%5B%5D,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given User View?

[canUserView(Long, String)](com/appiancorp/suiteapi/content/ContentService.html#canUserView\(java.lang.Long,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can given User View?

[canUserView$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canUserView$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[canView(Content\[\])](com/appiancorp/suiteapi/content/ContentService.html#canView\(com.appiancorp.suiteapi.content.Content%5B%5D\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user View?

[canView(Long)](com/appiancorp/suiteapi/content/ContentService.html#canView\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user View?

[canView(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#canView\(java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Can current user View?

[canView$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#canView$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[CAPABILITY\_ALLOW\_TYPE\_DYNAMIC](com/appiancorp/suiteapi/process/forms/FormConfig.html#CAPABILITY_ALLOW_TYPE_DYNAMIC) - Static variable in class com.appiancorp.suiteapi.process.forms.[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

A Dynamic Form is Allowed.

[CAPABILITY\_ALLOW\_TYPE\_INTERNAL](com/appiancorp/suiteapi/process/forms/FormConfig.html#CAPABILITY_ALLOW_TYPE_INTERNAL) - Static variable in class com.appiancorp.suiteapi.process.forms.[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

An Internal Form is Allowed.

[CAPABILITY\_ALLOW\_TYPE\_JSP](com/appiancorp/suiteapi/process/forms/FormConfig.html#CAPABILITY_ALLOW_TYPE_JSP) - Static variable in class com.appiancorp.suiteapi.process.forms.[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

A JSP Form is Allowed.

[CAPABILITY\_ALLOW\_TYPE\_UI\_EXPRESSION](com/appiancorp/suiteapi/process/forms/FormConfig.html#CAPABILITY_ALLOW_TYPE_UI_EXPRESSION) - Static variable in class com.appiancorp.suiteapi.process.forms.[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

A Dynamic UI Form Expression is Allowed.

[CAPABILITY\_RENDER\_MOBILE](com/appiancorp/suiteapi/process/forms/FormConfig.html#CAPABILITY_RENDER_MOBILE) - Static variable in class com.appiancorp.suiteapi.process.forms.[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

Constant representing the capability of a form to be rendered in the Appian mobile UI.

[CAPABILITY\_RENDER\_WEB](com/appiancorp/suiteapi/process/forms/FormConfig.html#CAPABILITY_RENDER_WEB) - Static variable in class com.appiancorp.suiteapi.process.forms.[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

Constant representing the capability of a form to be rendered in the Appian web UI.

[CAPABILITY\_REQUIRE\_FORM](com/appiancorp/suiteapi/process/forms/FormConfig.html#CAPABILITY_REQUIRE_FORM) - Static variable in class com.appiancorp.suiteapi.process.forms.[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

There must be a form (absent form is not sufficient to be capable); otherwise, absent form is allowed for other types.

[cast(Long, TypedValue)](com/appiancorp/suiteapi/type/TypeService.html#cast\(java.lang.Long,com.appiancorp.suiteapi.type.TypedValue\)) - Method in interface com.appiancorp.suiteapi.type.[TypeService](com/appiancorp/suiteapi/type/TypeService.html "interface in com.appiancorp.suiteapi.type")

Cast a TypedValue to another type, if possible, returning the new TypedValue.

[cast$UPDATES](com/appiancorp/suiteapi/type/TypeService.html#cast$UPDATES) - Static variable in interface com.appiancorp.suiteapi.type.[TypeService](com/appiancorp/suiteapi/type/TypeService.html "interface in com.appiancorp.suiteapi.type")

[Category](com/appiancorp/suiteapi/expression/annotations/Category.html "annotation interface in com.appiancorp.suiteapi.expression.annotations") - Annotation Interface in [com.appiancorp.suiteapi.expression.annotations](com/appiancorp/suiteapi/expression/annotations/package-summary.html)

Defines the category in the expression editor in which the function annotated with this annotation should appear.

[CATEGORY\_TOP](com/appiancorp/suiteapi/portal/PageNavigationService.html#CATEGORY_TOP) - Static variable in interface com.appiancorp.suiteapi.portal.[PageNavigationService](com/appiancorp/suiteapi/portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant used to indicated that sorting hierarchical tree structures of portal pages starts at the top.

[cause](com/appiancorp/exceptions/AppianError.html#cause) - Variable in class com.appiancorp.exceptions.[AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions")

[CAUSE](com/appiancorp/exceptions/AppianError.html#CAUSE) - Static variable in class com.appiancorp.exceptions.[AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions")

[CDT\_FROM\_DATASOURCE\_CONNECTION\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CDT_FROM_DATASOURCE_CONNECTION_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CDT\_FROM\_DATASOURCE\_CREATION\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CDT_FROM_DATASOURCE_CREATION_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CDT\_FROM\_DATASOURCE\_PUBLISHING\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CDT_FROM_DATASOURCE_PUBLISHING_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CDT\_FROM\_DATASOURCE\_SCHEMA\_UPDATE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CDT_FROM_DATASOURCE_SCHEMA_UPDATE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CDT\_FROM\_DATASOURCE\_TABLE\_NOT\_FOUND\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CDT_FROM_DATASOURCE_TABLE_NOT_FOUND_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CDT\_FROM\_DATASOURCE\_UNKNOWN\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CDT_FROM_DATASOURCE_UNKNOWN_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_KC\_EXP\_DAYS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_KC_EXP_DAYS) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_KC\_EXP\_DAYS\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_KC_EXP_DAYS_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_KC\_EXP\_DAYS\_INVALID\_KC](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_KC_EXP_DAYS_INVALID_KC) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_KC\_EXP\_DAYS\_UPDATE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_KC_EXP_DAYS_UPDATE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_KC\_EXP\_DAYS\_UPDATE\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_KC_EXP_DAYS_UPDATE_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_USER\_PWD\_SN\_INSUFFICIENT\_PRIVILEGE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_USER_PWD_SN_INSUFFICIENT_PRIVILEGE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_USER\_PWD\_SN\_INVALID\_USER](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_USER_PWD_SN_INVALID_USER) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CHANGE\_USER\_PWD\_SN\_PASSWORD\_COMPLEXITY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CHANGE_USER_PWD_SN_PASSWORD_COMPLEXITY) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[changeAuthor(Long, String, String)](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#changeAuthor\(java.lang.Long,java.lang.String,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

Change the author of a draft/submission of a given miniwebsite portlet.

[changeAuthor$UPDATES](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#changeAuthor$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

 

[changedSSN(String, String)](com/appiancorp/suiteapi/personalization/UserValidationUtils.html#changedSSN\(java.lang.String,java.lang.String\)) - Static method in class com.appiancorp.suiteapi.personalization.[UserValidationUtils](com/appiancorp/suiteapi/personalization/UserValidationUtils.html "class in com.appiancorp.suiteapi.personalization")

Returns true if the given ssn is different from the ssn currently associated with the given username.

[changeGroupTypeOfGroup(Long, Long)](com/appiancorp/suiteapi/personalization/GroupService.html#changeGroupTypeOfGroup\(java.lang.Long,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

Changes the GroupType of a Group.

[changeGroupTypeOfGroup$UPDATES](com/appiancorp/suiteapi/personalization/GroupService.html#changeGroupTypeOfGroup$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

[changeGroupTypesOfGroups(Long\[\], Long\[\])](com/appiancorp/suiteapi/personalization/GroupService.html#changeGroupTypesOfGroups\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

Changes the GroupTypes of Groups.

[changeGroupTypesOfGroups$UPDATES](com/appiancorp/suiteapi/personalization/GroupService.html#changeGroupTypesOfGroups$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

[changeMiniApproval(Long, boolean)](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#changeMiniApproval\(java.lang.Long,boolean\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

Set whether or not changes to a given miniwebsite portlet will require approval by the channel administrator.

[changeMiniApproval$UPDATES](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#changeMiniApproval$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

 

[changeMwsPath(String, String)](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#changeMwsPath\(java.lang.String,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

Modify the path where mini website content is stored for existing mini websites.

[changeMwsPath$UPDATES](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#changeMwsPath$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

 

[changePageDescription(Long, String)](com/appiancorp/suiteapi/portal/PageService.html#changePageDescription\(java.lang.Long,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Changes the description of the specified page.

[changePageDescription$UPDATES](com/appiancorp/suiteapi/portal/PageService.html#changePageDescription$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[changePageTemplate(Long, String, int)](com/appiancorp/suiteapi/portal/PageService.html#changePageTemplate\(java.lang.Long,java.lang.String,int\)) - Method in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Attempts to lock the current draft for the specified page (i.e., put the page into draft state) and changes the template in the draft.

[changePageTemplate$UPDATES](com/appiancorp/suiteapi/portal/PageService.html#changePageTemplate$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[changePartitionPaths(String, String)](com/appiancorp/suiteapi/collaboration/AdministrationService.html#changePartitionPaths\(java.lang.String,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.collaboration.[AdministrationService](com/appiancorp/suiteapi/collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Changes where collaboration files are stored from one path to another.

[changePartitionPaths(String, String)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#changePartitionPaths\(java.lang.String,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

Changes where message texts are stored from one path to another.

[changePartitionPaths$UPDATES](com/appiancorp/suiteapi/collaboration/AdministrationService.html#changePartitionPaths$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[AdministrationService](com/appiancorp/suiteapi/collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[changePartitionPaths$UPDATES](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#changePartitionPaths$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[changeUserPassword(String, byte\[\], boolean)](com/appiancorp/suiteapi/personalization/UserService.html#changeUserPassword\(java.lang.String,byte%5B%5D,boolean\)) - Method in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

Change the user's password to the new provided password.

[changeUserPassword$UPDATES](com/appiancorp/suiteapi/personalization/UserService.html#changeUserPassword$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

[CHART\_COLOR](com/appiancorp/suiteapi/type/AppianType.html#CHART_COLOR) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[checkAccess(Long)](com/appiancorp/suiteapi/content/ContentService.html#checkAccess\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Returns the current user access to a content item.

[checkAccess(Long\[\])](com/appiancorp/suiteapi/content/ContentService.html#checkAccess\(java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Returns the current user access to a content items.

[checkAccess$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#checkAccess$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[checkActivityValidity(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#checkActivityValidity\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Determines whether the specified activity is valid.

[checkActivityValidity$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#checkActivityValidity$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[children()](com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html#children\(\)) - Method in class com.appiancorp.suiteapi.process.framework.[SafeActivityReturnVariable](com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")

If the type of the variable is BEAN, returns an array of ACP who are the fields of the bean.

[children()](com/appiancorp/suiteapi/process/TypedVariable.html#children\(\)) - Method in class com.appiancorp.suiteapi.process.[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

If the type of the variable is BEAN, returns an array of ACPs (Activity Class Parameters) that are the fields of the bean.

[CHILDREN](com/appiancorp/suiteapi/content/ContentConstants.html#CHILDREN) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Pass to [`ContentService.delete(Long[], Boolean)`](com/appiancorp/suiteapi/content/ContentService.html#delete\(java.lang.Long%5B%5D,java.lang.Boolean\)) or [`ContentService.deactivate$UPDATES`](com/appiancorp/suiteapi/content/ContentService.html#deactivate$UPDATES) to indicate that children should automatically be deleted or deactivated.

[CLASS\_APPIAN](com/appiancorp/suiteapi/process/TypeDescriptor.html#CLASS_APPIAN) - Static variable in class com.appiancorp.suiteapi.process.[TypeDescriptor](com/appiancorp/suiteapi/process/TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[CLASS\_NONE](com/appiancorp/suiteapi/process/TypeDescriptor.html#CLASS_NONE) - Static variable in class com.appiancorp.suiteapi.process.[TypeDescriptor](com/appiancorp/suiteapi/process/TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[CLASS\_PRIMARY](com/appiancorp/suiteapi/process/TypeDescriptor.html#CLASS_PRIMARY) - Static variable in class com.appiancorp.suiteapi.process.[TypeDescriptor](com/appiancorp/suiteapi/process/TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[classType$TRANSIENT](com/appiancorp/suiteapi/process/TypedVariable.html#classType$TRANSIENT) - Static variable in class com.appiancorp.suiteapi.process.[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[cleanseApprovals()](com/appiancorp/suiteapi/content/ContentService.html#cleanseApprovals\(\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Deprecated. 

[cleanseApprovals$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#cleanseApprovals$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[cleanseFavorites()](com/appiancorp/suiteapi/content/ContentService.html#cleanseFavorites\(\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Deprecated. 

[cleanseFavorites$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#cleanseFavorites$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[cleanUpPageReferences()](com/appiancorp/suiteapi/portal/PageNavigationService.html#cleanUpPageReferences\(\)) - Method in interface com.appiancorp.suiteapi.portal.[PageNavigationService](com/appiancorp/suiteapi/portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Deletes any references to invalid pages for that user or his member groups.

[cleanUpPageReferences$UPDATES](com/appiancorp/suiteapi/portal/PageNavigationService.html#cleanUpPageReferences$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PageNavigationService](com/appiancorp/suiteapi/portal/PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[clear()](com/appiancorp/suiteapi/common/BulkArrayConverter.html#clear\(\)) - Method in class com.appiancorp.suiteapi.common.[BulkArrayConverter](com/appiancorp/suiteapi/common/BulkArrayConverter.html "class in com.appiancorp.suiteapi.common")

Clears the state of converter so it can used for new array conversions.

[clear()](com/appiancorp/suiteapi/common/RoleMap.html#clear\(\)) - Method in class com.appiancorp.suiteapi.common.[RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Removes all roles and actors.

[clear()](com/appiancorp/suiteapi/common/SimpleValueMap.html#clear\(\)) - Method in class com.appiancorp.suiteapi.common.[SimpleValueMap](com/appiancorp/suiteapi/common/SimpleValueMap.html "class in com.appiancorp.suiteapi.common")

[clear()](com/appiancorp/suiteapi/process/ActivityClassParameter.html#clear\(\)) - Method in class com.appiancorp.suiteapi.process.[ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

Clear passwords.

[clearEncryptedSamlAssertion()](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html#clearEncryptedSamlAssertion\(\)) - Method in class com.appiancorp.suiteapi.security.auth.[AppianUserDetails](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")

Clear cached saml assertion once we are done consuming it.

[clearLog()](com/appiancorp/suiteapi/process/test/Controller.html#clearLog\(\)) - Method in class com.appiancorp.suiteapi.process.test.[Controller](com/appiancorp/suiteapi/process/test/Controller.html "class in com.appiancorp.suiteapi.process.test")

Clear the retrievable log.

[clearPasswordOnTransport](com/appiancorp/suiteapi/type/TypedValue.html#clearPasswordOnTransport) - Variable in class com.appiancorp.suiteapi.type.[TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")

[clearPasswordOnTransport()](com/appiancorp/suiteapi/type/TypedValue.html#clearPasswordOnTransport\(\)) - Method in class com.appiancorp.suiteapi.type.[TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")

Deprecated.

This is an internal method that will be removed from the public API.

[clearPasswordOnTransport(boolean)](com/appiancorp/suiteapi/process/ActivityClassParameter.html#clearPasswordOnTransport\(boolean\)) - Method in class com.appiancorp.suiteapi.process.[ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

This is an internal method that will be removed from the public API.

[clearPortletTarget(PortalRequest)](com/appiancorp/ap2/PortletUpdateAction.html#clearPortletTarget\(com.appiancorp.ap2.PortalRequest\)) - Static method in class com.appiancorp.ap2.[PortletUpdateAction](com/appiancorp/ap2/PortletUpdateAction.html "class in com.appiancorp.ap2")

Deprecated.

 

[clearPortletTarget(HttpServletRequest)](com/appiancorp/ap2/PortletUpdateAction.html#clearPortletTarget\(javax.servlet.http.HttpServletRequest\)) - Static method in class com.appiancorp.ap2.[PortletUpdateAction](com/appiancorp/ap2/PortletUpdateAction.html "class in com.appiancorp.ap2")

Deprecated.

Clears the portlet target action path, so that the next time the portlet is loaded it will use the default $t from its tiles config.

[clearProcessDiagramNoteIds(ProcessDiagram)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#clearProcessDiagramNoteIds\(com.appiancorp.suiteapi.process.ProcessDiagram\)) - Static method in class com.appiancorp.suiteapi.process.[ProcessModelFacade](com/appiancorp/suiteapi/process/ProcessModelFacade.html "class in com.appiancorp.suiteapi.process")

[clearValidationMessages()](com/appiancorp/suiteapi/process/ActivityClassParameter.html#clearValidationMessages\(\)) - Method in class com.appiancorp.suiteapi.process.[ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

[clearValidationMessages()](com/appiancorp/suiteapi/process/ProcessVariable.html#clearValidationMessages\(\)) - Method in class com.appiancorp.suiteapi.process.[ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")

Clears all validation messages from this process variable

[clearValidationMessages()](com/appiancorp/suiteapi/process/Validatable.html#clearValidationMessages\(\)) - Method in interface com.appiancorp.suiteapi.process.[Validatable](com/appiancorp/suiteapi/process/Validatable.html "interface in com.appiancorp.suiteapi.process")

Clears the collection of validation messages accumulated by this object.

[CLIENT\_CERTIFICATE\_IMPORT\_FAILED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CLIENT_CERTIFICATE_IMPORT_FAILED) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CLIENT\_CERTIFICATE\_INVALID\_PASSWORD](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CLIENT_CERTIFICATE_INVALID_PASSWORD) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CLIENT\_CERTIFICATE\_INVALID\_PEM\_FILE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CLIENT_CERTIFICATE_INVALID_PEM_FILE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CLIENT\_CERTIFICATE\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CLIENT_CERTIFICATE_NOT_FOUND_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CLIENT\_CERTIFICATE\_PEM\_ENCRYPED\_WITH\_UNSUPPORTED\_ALGORITHM](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CLIENT_CERTIFICATE_PEM_ENCRYPED_WITH_UNSUPPORTED_ALGORITHM) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CLIENT\_CERTIFICATE\_PEM\_MISSING\_CERTIFICATE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CLIENT_CERTIFICATE_PEM_MISSING_CERTIFICATE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CLIENT\_CERTIFICATE\_PEM\_MISSING\_PRIVATE\_KEY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CLIENT_CERTIFICATE_PEM_MISSING_PRIVATE_KEY) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[clone()](com/appiancorp/common/query/Aggregation.html#clone\(\)) - Method in class com.appiancorp.common.query.[Aggregation](com/appiancorp/common/query/Aggregation.html "class in com.appiancorp.common.query")

[clone()](com/appiancorp/common/query/Projection.html#clone\(\)) - Method in interface com.appiancorp.common.query.[Projection](com/appiancorp/common/query/Projection.html "interface in com.appiancorp.common.query")

Returns a new `Projection` containing the same data as this `Projection`.

[clone()](com/appiancorp/common/query/Selection.html#clone\(\)) - Method in class com.appiancorp.common.query.[Selection](com/appiancorp/common/query/Selection.html "class in com.appiancorp.common.query")

[clone()](com/appiancorp/suiteapi/applications/ApplicationAction.html#clone\(\)) - Method in class com.appiancorp.suiteapi.applications.[ApplicationAction](com/appiancorp/suiteapi/applications/ApplicationAction.html "class in com.appiancorp.suiteapi.applications")

[clone()](com/appiancorp/suiteapi/applications/ApplicationNavigationItem.html#clone\(\)) - Method in class com.appiancorp.suiteapi.applications.[ApplicationNavigationItem](com/appiancorp/suiteapi/applications/ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")

[clone()](com/appiancorp/suiteapi/collaboration/Community.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[Community](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[clone()](com/appiancorp/suiteapi/collaboration/Document.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[Document](com/appiancorp/suiteapi/collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[clone()](com/appiancorp/suiteapi/collaboration/DownloadStatistics.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[DownloadStatistics](com/appiancorp/suiteapi/collaboration/DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")

[clone()](com/appiancorp/suiteapi/collaboration/Folder.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[Folder](com/appiancorp/suiteapi/collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[clone()](com/appiancorp/suiteapi/collaboration/KnowledgeCenter.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[KnowledgeCenter](com/appiancorp/suiteapi/collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[clone()](com/appiancorp/suiteapi/collaboration/MenuTree.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[MenuTree](com/appiancorp/suiteapi/collaboration/MenuTree.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[clone()](com/appiancorp/suiteapi/collaboration/Statistics.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[Statistics](com/appiancorp/suiteapi/collaboration/Statistics.html "class in com.appiancorp.suiteapi.collaboration")

[clone()](com/appiancorp/suiteapi/collaboration/UploadStatistics.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[UploadStatistics](com/appiancorp/suiteapi/collaboration/UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")

[clone()](com/appiancorp/suiteapi/collaboration/UserSpace.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[UserSpace](com/appiancorp/suiteapi/collaboration/UserSpace.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[clone()](com/appiancorp/suiteapi/collaboration/UserStatistics.html#clone\(\)) - Method in class com.appiancorp.suiteapi.collaboration.[UserStatistics](com/appiancorp/suiteapi/collaboration/UserStatistics.html "class in com.appiancorp.suiteapi.collaboration")

[clone()](com/appiancorp/suiteapi/common/DeepCloneable.html#clone\(\)) - Method in interface com.appiancorp.suiteapi.common.[DeepCloneable](com/appiancorp/suiteapi/common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Clone this object using deep-copy semantics.

[clone()](com/appiancorp/suiteapi/common/LocaleString.html#clone\(\)) - Method in class com.appiancorp.suiteapi.common.[LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common")

Clone this LocaleString; the result will have its own locale sensitive map.

[clone()](com/appiancorp/suiteapi/common/LocalObject.html#clone\(\)) - Method in class com.appiancorp.suiteapi.common.[LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common")

Creates and returns a copy of this object.

[clone()](com/appiancorp/suiteapi/expression/FunctionCategory.html#clone\(\)) - Method in class com.appiancorp.suiteapi.expression.[FunctionCategory](com/appiancorp/suiteapi/expression/FunctionCategory.html "class in com.appiancorp.suiteapi.expression")

[clone()](com/appiancorp/suiteapi/portal/Contribution.html#clone\(\)) - Method in class com.appiancorp.suiteapi.portal.[Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

Creates and returns a copy of this object.

[clone()](com/appiancorp/suiteapi/portal/portlets/links/Link.html#clone\(\)) - Method in class com.appiancorp.suiteapi.portal.portlets.links.[Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

Creates and returns a copy of this object.

[clone()](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html#clone\(\)) - Method in class com.appiancorp.suiteapi.portal.portlets.links.[LinkType](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

Clone this object.

[clone()](com/appiancorp/suiteapi/process/ActivityClassParameter.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.[ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.[ActivityClassParameterSchema](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/ActivityReturnVariable.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.[ActivityReturnVariable](com/appiancorp/suiteapi/process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")

Clone this object

[clone()](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/analytics2/Column.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

[clone()](com/appiancorp/suiteapi/process/analytics2/DrillPath.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[DrillPath](com/appiancorp/suiteapi/process/analytics2/DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[ProcessReport](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")

Cloneable implementation - creates a deep copy the [`ProcessReport`](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2").

[clone()](com/appiancorp/suiteapi/process/analytics2/QuickFilter.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[QuickFilter](com/appiancorp/suiteapi/process/analytics2/QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/analytics2/QuickFilterItem.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[QuickFilterItem](com/appiancorp/suiteapi/process/analytics2/QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[SimpleColumnFilter](com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/analytics2/Threshold.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[Threshold](com/appiancorp/suiteapi/process/analytics2/Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")

[clone()](com/appiancorp/suiteapi/process/forms/DynamicForm.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.forms.[DynamicForm](com/appiancorp/suiteapi/process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/forms/FormElement.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.forms.[FormElement](com/appiancorp/suiteapi/process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/forms/Option.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.forms.[Option](com/appiancorp/suiteapi/process/forms/Option.html "class in com.appiancorp.suiteapi.process.forms")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/ProcessVariable.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.[ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")

Clone this object.

[clone()](com/appiancorp/suiteapi/process/ProcessVariableInstance.html#clone\(\)) - Method in class com.appiancorp.suiteapi.process.[ProcessVariableInstance](com/appiancorp/suiteapi/process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")

Clone this object.

[clone()](com/appiancorp/suiteapi/type/TypedValue.html#clone\(\)) - Method in class com.appiancorp.suiteapi.type.[TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")

Clone this object.

[close()](com/appiancorp/suiteapi/content/ContentOutputStream.html#close\(\)) - Method in class com.appiancorp.suiteapi.content.[ContentOutputStream](com/appiancorp/suiteapi/content/ContentOutputStream.html "class in com.appiancorp.suiteapi.content")

Deprecated.

Closes the stream.

[close()](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html#close\(\)) - Method in class com.appiancorp.suiteapi.content.[ContentUploadOutputStream](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content")

[closeAllConnections()](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#closeAllConnections\(\)) - Method in interface com.appiancorp.suiteapi.messaging.[JmsConnectionFactory](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

Closes all connections in the connection pool.

[code](com/appiancorp/exceptions/AppianError.html#code) - Variable in class com.appiancorp.exceptions.[AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions")

[CODE](com/appiancorp/exceptions/AppianError.html#CODE) - Static variable in class com.appiancorp.exceptions.[AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions")

[CODE\_INVALID](com/appiancorp/suiteapi/common/ResultList.html#CODE_INVALID) - Static variable in class com.appiancorp.suiteapi.common.[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Constant indicating that a particular result in the `ResultList` is invalid (typically, there is no entity in the database which corresponds to the given ID).

[CODE\_NO\_PERMISSION](com/appiancorp/suiteapi/common/ResultList.html#CODE_NO_PERMISSION) - Static variable in class com.appiancorp.suiteapi.common.[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Constant indicating that the user does not have sufficient privilege to view a particular result in the `ResultList`.

[CODE\_PARAM\_NULL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODE_PARAM_NULL) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CODE\_SUBPROCESS\_CANNOT\_PUBLISH](com/appiancorp/suiteapi/common/ResultList.html#CODE_SUBPROCESS_CANNOT_PUBLISH) - Static variable in class com.appiancorp.suiteapi.common.[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Constant indicating that user does not permission to publish a subprocess within the process model.

[CODE\_SUBPROCESS\_INVALID](com/appiancorp/suiteapi/common/ResultList.html#CODE_SUBPROCESS_INVALID) - Static variable in class com.appiancorp.suiteapi.common.[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Constant indicating that the subprocess within a process model is invalid and hence cannot be published.

[CODE\_VALID](com/appiancorp/suiteapi/common/ResultList.html#CODE_VALID) - Static variable in class com.appiancorp.suiteapi.common.[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Constant indicating that a particular result in the `ResultList` is valid.

[CODELESS\_DATA\_MODELING\_INCORRECT\_DATA\_CONFIGURATION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_INCORRECT_DATA_CONFIGURATION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

[CODELESS\_DATA\_MODELING\_NON\_MATCHING\_FIELDS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_NON_MATCHING_FIELDS) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

[CODELESS\_DATA\_MODELING\_PARTIAL\_SQL\_FAILURE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_PARTIAL_SQL_FAILURE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

[CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_PERMISSION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_PERMISSION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

[CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_CHECK\_TABLE\_EXISTS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_FAILED_TO_CHECK_TABLE_EXISTS) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

[CODELESS\_DATA\_MODELING\_SQL\_FAILED\_TO\_FETCH\_COLUMNS](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_FAILED_TO_FETCH_COLUMNS) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

[CODELESS\_DATA\_MODELING\_SQL\_NOT\_PRESENT\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CODELESS_DATA_MODELING_SQL_NOT_PRESENT_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

Deprecated.

[COL\_AGGREGATION\_AVG](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_AVG) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is AVG (Average).

[COL\_AGGREGATION\_AVG\_EXCLUDE\_NULL](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_AVG_EXCLUDE_NULL) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

use COL\_AGGREGATION\_AVG

[COL\_AGGREGATION\_CONCATENATE](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_CONCATENATE) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is CONCATENATE.

[COL\_AGGREGATION\_CONCATENATE\_WO\_REPEAT](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_CONCATENATE_WO_REPEAT) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is CONCATENATE\_WO\_REPEAT.

[COL\_AGGREGATION\_COUNT](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_COUNT) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is COUNT (Count).

[COL\_AGGREGATION\_GEOMEAN](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_GEOMEAN) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is GEOMEAN (Geometric Mean).

[COL\_AGGREGATION\_MAX](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_MAX) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is MAX (Maximum).

[COL\_AGGREGATION\_MEDIAN](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_MEDIAN) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

no longer used

[COL\_AGGREGATION\_MIN](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_MIN) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is MIN (Minimum).

[COL\_AGGREGATION\_MODE](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_MODE) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

no longer used

[COL\_AGGREGATION\_PERCENT\_FALSE](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_PERCENT_FALSE) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is PERCENT\_FALSE (The percent of all values which are false).

[COL\_AGGREGATION\_PERCENT\_TRUE](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_PERCENT_TRUE) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is PERCENT\_TRUE (The percent of all values which are true).

[COL\_AGGREGATION\_STDDEV](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_STDDEV) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is STDDEV (Standard Deviation).

[COL\_AGGREGATION\_SUM](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_SUM) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is SUM (Sum).

[COL\_AGGREGATION\_SUM\_EXCLUDE\_NULL](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_SUM_EXCLUDE_NULL) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

use COL\_AGGREGATION\_SUM

[COL\_AGGREGATION\_TYPES](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_TYPES) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

[COL\_AGGREGATION\_VAR](com/appiancorp/suiteapi/process/analytics2/Column.html#COL_AGGREGATION_VAR) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

A constant indicating that the column aggregation function is VAR (Variance).

[COLLAB\_ADMINISTRATION\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_ADMINISTRATION_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the collab administration service.

[COLLAB\_CODE\_CAN\_ADMINISTRATE](com/appiancorp/suiteapi/common/ResultList.html#COLLAB_CODE_CAN_ADMINISTRATE) - Static variable in class com.appiancorp.suiteapi.common.[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Constant used in the collaboration application, which indicates that the user has administrator privileges to a particular result in the `ResultList`.

[COLLAB\_CODE\_CAN\_EDIT](com/appiancorp/suiteapi/common/ResultList.html#COLLAB_CODE_CAN_EDIT) - Static variable in class com.appiancorp.suiteapi.common.[ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

Constant used in the collaboration application, which indicates that the user has editor privileges to a particular result in the `ResultList`.

[COLLAB\_COMMUNITY\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_COMMUNITY_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the collab community service.

[COLLAB\_DOCUMENT\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_DOCUMENT_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the document service.

[COLLAB\_FOLDER\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_FOLDER_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the folder service.

[COLLAB\_KNOWLEDGECENTER\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_KNOWLEDGECENTER_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the knowledgecenter service.

[COLLAB\_REPORTING\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_REPORTING_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the collab reporting service.

[COLLAB\_SEARCH\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_SEARCH_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the collab search service.

[COLLAB\_STATISTICS\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_STATISTICS_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the collab statistics service.

[COLLAB\_USER\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#COLLAB_USER_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the collab community service.

[COLLABORATION\_ACCESS\_APPROVED\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_ACCESS_APPROVED_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration access approved notification type This is used to send a notification of access approved for a knowledge center in collaboration

[COLLABORATION\_ACCESS\_DENIED\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_ACCESS_DENIED_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration access denied notification type This is used to send a notification of access denied to a a knowledge center in collaboration

[COLLABORATION\_ACCESS\_REQUEST\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_ACCESS_REQUEST_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration access requested notification type This is used to send a notification of requested access to a knowledge center in collaboration

[COLLABORATION\_APPROVED\_CHANGES\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_APPROVED_CHANGES_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration changes approved notification type This is used to send a notification of changes to a document approved in collaboration.

[COLLABORATION\_BASE](com/appiancorp/suiteapi/common/LocalObjectTypeMapping.html#COLLABORATION_BASE) - Static variable in class com.appiancorp.suiteapi.common.[LocalObjectTypeMapping](com/appiancorp/suiteapi/common/LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

[COLLABORATION\_COMMUNITY](com/appiancorp/suiteapi/process/TypeDescriptor.html#COLLABORATION_COMMUNITY) - Static variable in class com.appiancorp.suiteapi.process.[TypeDescriptor](com/appiancorp/suiteapi/process/TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[COLLABORATION\_DENIED\_CHANGES\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_DENIED_CHANGES_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration changes denied notification type This is used to send a notification of denial of changes to a document in collaboration.

[COLLABORATION\_EXPIRING\_FILES\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_EXPIRING_FILES_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration file expiration notification type This is used to send a notification of expiring files in collaboration

[COLLABORATION\_EXPORT\_COMPLETED\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_EXPORT_COMPLETED_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration export completed notification type This is used to send a notification when an export operation has completed

[COLLABORATION\_IMPORT\_COMPLETED\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_IMPORT_COMPLETED_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration import completed notification type This is used to send a notification when an import operation has completed

[COLLABORATION\_INVITATION\_ACCEPTED\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_INVITATION_ACCEPTED_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration invitation accepted notification type This is used to send a notification of acceptance of an invitation to a knowledge center in collaboration

[COLLABORATION\_INVITATION\_DECLINED\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_INVITATION_DECLINED_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration invitation declined notification type This is used to send a notification of declination of an invitation to a knowledge center in collaboration

[COLLABORATION\_INVITATION\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_INVITATION_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration invitation notification type This is used to send a notification of an invitation to a knowledge center in collaboration

[COLLABORATION\_NOTIFICATION\_APPLICATION](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_NOTIFICATION_APPLICATION) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant for the Collaboration application This is used to send notifications within collaboration

[COLLABORATION\_REQUEST\_CHANGES\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_REQUEST_CHANGES_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration request changes notification type This is used to send a notification to request approval of changes to a document in collaboration

[COLLABORATION\_SEND\_LINK\_NOTIFICATION\_TYPE](com/appiancorp/suiteapi/portal/PortalNotificationService.html#COLLABORATION_SEND_LINK_NOTIFICATION_TYPE) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

A constant corresponding to the collaboration send link notification type This is used to send a notification for links to documents in collaboration

[CollaborationRoleMap](com/appiancorp/suiteapi/collaboration/CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") - Class in [com.appiancorp.suiteapi.collaboration](com/appiancorp/suiteapi/collaboration/package-summary.html)

Deprecated.

Use the class [`ContentRoleMap`](com/appiancorp/suiteapi/content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") instead.

[CollaborationRoleMap()](com/appiancorp/suiteapi/collaboration/CollaborationRoleMap.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.collaboration.[CollaborationRoleMap](com/appiancorp/suiteapi/collaboration/CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[CollaborationSearchService](com/appiancorp/suiteapi/collaboration/CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration") - Interface in [com.appiancorp.suiteapi.collaboration](com/appiancorp/suiteapi/collaboration/package-summary.html)

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[CollaborationUserService](com/appiancorp/suiteapi/collaboration/CollaborationUserService.html "interface in com.appiancorp.suiteapi.collaboration") - Interface in [com.appiancorp.suiteapi.collaboration](com/appiancorp/suiteapi/collaboration/package-summary.html)

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[collapseToNull(T)](com/appiancorp/exceptions/AppianError.html#collapseToNull\(T\)) - Static method in class com.appiancorp.exceptions.[AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions")

If the given collection is `null`, or empty, or contains only `null` items, returns `null`.

[column(ColumnAlias)](com/appiancorp/common/query/QueryBuilderTools.Selector.html#column\(com.appiancorp.common.query.ColumnAlias\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Selector](com/appiancorp/common/query/QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")

Creates a projection with the given [`ColumnAlias`](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query").

[column(String)](com/appiancorp/common/query/QueryBuilderTools.Selector.html#column\(java.lang.String\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Selector](com/appiancorp/common/query/QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")

Creates a projection for the given field name.

[column(String, boolean)](com/appiancorp/common/query/QueryBuilderTools.Selector.html#column\(java.lang.String,boolean\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Selector](com/appiancorp/common/query/QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")

Creates a visible or hidden projection for the given field name

[column(String, String)](com/appiancorp/common/query/QueryBuilderTools.Selector.html#column\(java.lang.String,java.lang.String\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Selector](com/appiancorp/common/query/QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")

Creates a projection for the given field name.

[column(String, String, boolean)](com/appiancorp/common/query/QueryBuilderTools.Selector.html#column\(java.lang.String,java.lang.String,boolean\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Selector](com/appiancorp/common/query/QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")

Creates a visible or hidden projection for the given field name.

[Column](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query") - Class in [com.appiancorp.common.query](com/appiancorp/common/query/package-summary.html)

Immutable bean representing the column dot notation, its alias and its visibility (if it should be shown to the client or not).

[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2") - Class in [com.appiancorp.suiteapi.process.analytics2](com/appiancorp/suiteapi/process/analytics2/package-summary.html)

The `Column` bean contains information necessary to retrieve a column of data from the backend and display it properly.

[Column()](com/appiancorp/common/query/Column.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.common.query.[Column](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query")

Initializes a newly created `Column` object

[Column()](com/appiancorp/suiteapi/process/analytics2/Column.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

[Column(Column)](com/appiancorp/common/query/Column.html#%3Cinit%3E\(com.appiancorp.common.query.Column\)) - Constructor for class com.appiancorp.common.query.[Column](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query")

Copy constructor

[Column(Integer, String, String, boolean, String)](com/appiancorp/suiteapi/process/analytics2/Column.html#%3Cinit%3E\(java.lang.Integer,java.lang.String,java.lang.String,boolean,java.lang.String\)) - Constructor for class com.appiancorp.suiteapi.process.analytics2.[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

[Column(String, String, boolean)](com/appiancorp/common/query/Column.html#%3Cinit%3E\(java.lang.String,java.lang.String,boolean\)) - Constructor for class com.appiancorp.common.query.[Column](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query")

Constructs a new `Column` for a field with the given field name

[COLUMN\_ACTION\_REQUESTED](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_ACTION_REQUESTED) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Action Requested column.

[COLUMN\_ACTION\_REQUESTER](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_ACTION_REQUESTER) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Action Requester column.

[COLUMN\_ADMIN\_OWNER](com/appiancorp/suiteapi/process/ProcessRoleMap.html#COLUMN_ADMIN_OWNER) - Static variable in class com.appiancorp.suiteapi.process.[ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

[COLUMN\_ATTRIBUTES](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_ATTRIBUTES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Attributes column.

[COLUMN\_CHANGES\_REQUIRE\_APPROVAL](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_CHANGES_REQUIRE_APPROVAL) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Changes Require Approval column.

[COLUMN\_CREATED\_TIMESTAMP](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_CREATED_TIMESTAMP) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Created Timestamp column.

[COLUMN\_CREATOR](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_CREATOR) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Creator column.

[COLUMN\_DESCRIPTION](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_DESCRIPTION) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Description column.

[COLUMN\_EDITOR](com/appiancorp/suiteapi/process/ProcessRoleMap.html#COLUMN_EDITOR) - Static variable in class com.appiancorp.suiteapi.process.[ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

[COLUMN\_EXPIRATION\_DAYS](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_EXPIRATION_DAYS) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Expiration Days column.

[COLUMN\_EXPIRATION\_TIMESTAMP](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_EXPIRATION_TIMESTAMP) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Expiration Timestamp column.

[COLUMN\_EXPLICIT\_NONMEMBER](com/appiancorp/suiteapi/process/ProcessRoleMap.html#COLUMN_EXPLICIT_NONMEMBER) - Static variable in class com.appiancorp.suiteapi.process.[ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

[COLUMN\_EXTENSION](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_EXTENSION) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Extension column.

[COLUMN\_FORUM](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_FORUM) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Forum column.

[COLUMN\_FSID](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_FSID) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

FSID column.

[COLUMN\_FSID\_COUNT](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_FSID_COUNT) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

FSID count column.

[COLUMN\_ID](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_ID) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Id column.

[COLUMN\_INITIATOR](com/appiancorp/suiteapi/process/ProcessRoleMap.html#COLUMN_INITIATOR) - Static variable in class com.appiancorp.suiteapi.process.[ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

[COLUMN\_LOCKED\_BY](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_LOCKED_BY) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Locked by column.

[COLUMN\_LOG](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_LOG) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Log column.

[COLUMN\_LOG\_NAME](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_LOG_NAME) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Log Name column.

[COLUMN\_MANAGER](com/appiancorp/suiteapi/process/ProcessRoleMap.html#COLUMN_MANAGER) - Static variable in class com.appiancorp.suiteapi.process.[ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

[COLUMN\_METADATA\_IDS](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_METADATA_IDS) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Deprecated.

Use attributes to associate metadata instead.

[COLUMN\_NAME](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_NAME) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Name column.

[COLUMN\_NONE](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_NONE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Use this if you do not want a paging function to sort.

[COLUMN\_NUMBER\_OF\_VERSIONS](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_NUMBER_OF_VERSIONS) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Number of Versions column.

[COLUMN\_PARENT\_ID](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_PARENT_ID) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Parent Id column.

[COLUMN\_PARENT\_NAME](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_PARENT_NAME) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Parent Name column.

[COLUMN\_PARENT\_TYPE](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_PARENT_TYPE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Parent Type column.

[COLUMN\_PARTITION](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_PARTITION) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Partition column.

[COLUMN\_PARTITION\_NAME](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_PARTITION_NAME) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Partition Name column.

[COLUMN\_SECURITY](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_SECURITY) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Security column.

[COLUMN\_SIZE](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_SIZE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Size column.

[COLUMN\_STATE](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_STATE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

State column.

[COLUMN\_SUBTYPE](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_SUBTYPE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Subtype column.

[COLUMN\_TYPE](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_TYPE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Type column.

[COLUMN\_UPDATED\_TIMESTAMP](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_UPDATED_TIMESTAMP) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Updated Timestamp column.

[COLUMN\_UUID](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_UUID) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Uuid column.

[COLUMN\_VERSION\_ID](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_VERSION_ID) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Version Id column.

[COLUMN\_VERSIONS](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_VERSIONS) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Versions column.

[COLUMN\_VIEWER](com/appiancorp/suiteapi/process/ProcessRoleMap.html#COLUMN_VIEWER) - Static variable in class com.appiancorp.suiteapi.process.[ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

[COLUMN\_VISIBILITY](com/appiancorp/suiteapi/content/ContentConstants.html#COLUMN_VISIBILITY) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Visibility column.

[ColumnAlias](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query") - Class in [com.appiancorp.common.query](com/appiancorp/common/query/package-summary.html)

Immutable bean representing the column dot notation and it's alias.

[ColumnAlias()](com/appiancorp/common/query/ColumnAlias.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.common.query.[ColumnAlias](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query")

Initializes a newly created `ColumnAlias` object

[ColumnAlias(ColumnAlias)](com/appiancorp/common/query/ColumnAlias.html#%3Cinit%3E\(com.appiancorp.common.query.ColumnAlias\)) - Constructor for class com.appiancorp.common.query.[ColumnAlias](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query")

Copy constructor

[ColumnAlias(String, String)](com/appiancorp/common/query/ColumnAlias.html#%3Cinit%3E\(java.lang.String,java.lang.String\)) - Constructor for class com.appiancorp.common.query.[ColumnAlias](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query")

Constructs a new `ColumnAlias` for a field with the given alias name

[columnsIdChains](com/appiancorp/common/query/TypedValueQueryValidator.html#columnsIdChains) - Variable in class com.appiancorp.common.query.[TypedValueQueryValidator](com/appiancorp/common/query/TypedValueQueryValidator.html "class in com.appiancorp.common.query")

[com.appiancorp.ap2](com/appiancorp/ap2/package-summary.html) - package com.appiancorp.ap2

[com.appiancorp.common.appianwebmvc](com/appiancorp/common/appianwebmvc/package-summary.html) - package com.appiancorp.common.appianwebmvc

[com.appiancorp.common.query](com/appiancorp/common/query/package-summary.html) - package com.appiancorp.common.query

These classes are available as a preview of functionality that will be added to the supported public API in a future release.

[com.appiancorp.common.query.returns](com/appiancorp/common/query/returns/package-summary.html) - package com.appiancorp.common.query.returns

[com.appiancorp.exceptions](com/appiancorp/exceptions/package-summary.html) - package com.appiancorp.exceptions

[com.appiancorp.services](com/appiancorp/services/package-summary.html) - package com.appiancorp.services

[com.appiancorp.services.exceptions](com/appiancorp/services/exceptions/package-summary.html) - package com.appiancorp.services.exceptions

[com.appiancorp.suiteapi.administration](com/appiancorp/suiteapi/administration/package-summary.html) - package com.appiancorp.suiteapi.administration

Contains classes regarding the management of the administration console.

[com.appiancorp.suiteapi.applications](com/appiancorp/suiteapi/applications/package-summary.html) - package com.appiancorp.suiteapi.applications

[com.appiancorp.suiteapi.cfg](com/appiancorp/suiteapi/cfg/package-summary.html) - package com.appiancorp.suiteapi.cfg

[com.appiancorp.suiteapi.collaboration](com/appiancorp/suiteapi/collaboration/package-summary.html) - package com.appiancorp.suiteapi.collaboration

[com.appiancorp.suiteapi.common](com/appiancorp/suiteapi/common/package-summary.html) - package com.appiancorp.suiteapi.common

Classes and interfaces for working with data structures and concepts that are common throughout Appian.

[com.appiancorp.suiteapi.common.cli](com/appiancorp/suiteapi/common/cli/package-summary.html) - package com.appiancorp.suiteapi.common.cli

[com.appiancorp.suiteapi.common.exceptions](com/appiancorp/suiteapi/common/exceptions/package-summary.html) - package com.appiancorp.suiteapi.common.exceptions

[com.appiancorp.suiteapi.common.paging](com/appiancorp/suiteapi/common/paging/package-summary.html) - package com.appiancorp.suiteapi.common.paging

[com.appiancorp.suiteapi.common.spring.security](com/appiancorp/suiteapi/common/spring/security/package-summary.html) - package com.appiancorp.suiteapi.common.spring.security

[com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html) - package com.appiancorp.suiteapi.content

Provides access and modification functionality for content, which replaces collaboration and is more extensible (for instance, content is now also being used for rules).

[com.appiancorp.suiteapi.content.exceptions](com/appiancorp/suiteapi/content/exceptions/package-summary.html) - package com.appiancorp.suiteapi.content.exceptions

Contains exceptions that are thrown by [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content").

[com.appiancorp.suiteapi.encryption](com/appiancorp/suiteapi/encryption/package-summary.html) - package com.appiancorp.suiteapi.encryption

[com.appiancorp.suiteapi.expression](com/appiancorp/suiteapi/expression/package-summary.html) - package com.appiancorp.suiteapi.expression

[com.appiancorp.suiteapi.expression.annotations](com/appiancorp/suiteapi/expression/annotations/package-summary.html) - package com.appiancorp.suiteapi.expression.annotations

[com.appiancorp.suiteapi.forums](com/appiancorp/suiteapi/forums/package-summary.html) - package com.appiancorp.suiteapi.forums

[com.appiancorp.suiteapi.ix](com/appiancorp/suiteapi/ix/package-summary.html) - package com.appiancorp.suiteapi.ix

[com.appiancorp.suiteapi.ix.data.portlet](com/appiancorp/suiteapi/ix/data/portlet/package-summary.html) - package com.appiancorp.suiteapi.ix.data.portlet

[com.appiancorp.suiteapi.knowledge](com/appiancorp/suiteapi/knowledge/package-summary.html) - package com.appiancorp.suiteapi.knowledge

Provides knowledge (Documents) functionality.

[com.appiancorp.suiteapi.messaging](com/appiancorp/suiteapi/messaging/package-summary.html) - package com.appiancorp.suiteapi.messaging

Provides functionality for sending and receiving messages inside the Appian messaging framework.

[com.appiancorp.suiteapi.personalization](com/appiancorp/suiteapi/personalization/package-summary.html) - package com.appiancorp.suiteapi.personalization

[com.appiancorp.suiteapi.portal](com/appiancorp/suiteapi/portal/package-summary.html) - package com.appiancorp.suiteapi.portal

[com.appiancorp.suiteapi.portal.portlets.discussionthreads](com/appiancorp/suiteapi/portal/portlets/discussionthreads/package-summary.html) - package com.appiancorp.suiteapi.portal.portlets.discussionthreads

[com.appiancorp.suiteapi.portal.portlets.groupmessage](com/appiancorp/suiteapi/portal/portlets/groupmessage/package-summary.html) - package com.appiancorp.suiteapi.portal.portlets.groupmessage

[com.appiancorp.suiteapi.portal.portlets.leadermessage](com/appiancorp/suiteapi/portal/portlets/leadermessage/package-summary.html) - package com.appiancorp.suiteapi.portal.portlets.leadermessage

[com.appiancorp.suiteapi.portal.portlets.links](com/appiancorp/suiteapi/portal/portlets/links/package-summary.html) - package com.appiancorp.suiteapi.portal.portlets.links

[com.appiancorp.suiteapi.portal.portlets.miniwebsite](com/appiancorp/suiteapi/portal/portlets/miniwebsite/package-summary.html) - package com.appiancorp.suiteapi.portal.portlets.miniwebsite

[com.appiancorp.suiteapi.portal.portlets.wsrp.consumer](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/package-summary.html) - package com.appiancorp.suiteapi.portal.portlets.wsrp.consumer

[com.appiancorp.suiteapi.process](com/appiancorp/suiteapi/process/package-summary.html) - package com.appiancorp.suiteapi.process

[com.appiancorp.suiteapi.process.analytics2](com/appiancorp/suiteapi/process/analytics2/package-summary.html) - package com.appiancorp.suiteapi.process.analytics2

Provides functionality for querying the process engine for data about process models, processes, and tasks.

[com.appiancorp.suiteapi.process.calendar](com/appiancorp/suiteapi/process/calendar/package-summary.html) - package com.appiancorp.suiteapi.process.calendar

Contains classes handling the start and ent times for each day of the week..

[com.appiancorp.suiteapi.process.events](com/appiancorp/suiteapi/process/events/package-summary.html) - package com.appiancorp.suiteapi.process.events

Provides event trigger and producer functionality for Appian, which can be used to alter process flow and send and receive messages (including receiving e-mail messages).

[com.appiancorp.suiteapi.process.exceptions](com/appiancorp/suiteapi/process/exceptions/package-summary.html) - package com.appiancorp.suiteapi.process.exceptions

Contains exceptions related to processes.

[com.appiancorp.suiteapi.process.forms](com/appiancorp/suiteapi/process/forms/package-summary.html) - package com.appiancorp.suiteapi.process.forms

[com.appiancorp.suiteapi.process.framework](com/appiancorp/suiteapi/process/framework/package-summary.html) - package com.appiancorp.suiteapi.process.framework

[com.appiancorp.suiteapi.process.gui](com/appiancorp/suiteapi/process/gui/package-summary.html) - package com.appiancorp.suiteapi.process.gui

[com.appiancorp.suiteapi.process.history](com/appiancorp/suiteapi/process/history/package-summary.html) - package com.appiancorp.suiteapi.process.history

[com.appiancorp.suiteapi.process.history.options](com/appiancorp/suiteapi/process/history/options/package-summary.html) - package com.appiancorp.suiteapi.process.history.options

[com.appiancorp.suiteapi.process.palette](com/appiancorp/suiteapi/process/palette/package-summary.html) - package com.appiancorp.suiteapi.process.palette

[com.appiancorp.suiteapi.process.security](com/appiancorp/suiteapi/process/security/package-summary.html) - package com.appiancorp.suiteapi.process.security

[com.appiancorp.suiteapi.process.test](com/appiancorp/suiteapi/process/test/package-summary.html) - package com.appiancorp.suiteapi.process.test

[com.appiancorp.suiteapi.process.upgrade](com/appiancorp/suiteapi/process/upgrade/package-summary.html) - package com.appiancorp.suiteapi.process.upgrade

[com.appiancorp.suiteapi.process.webservices](com/appiancorp/suiteapi/process/webservices/package-summary.html) - package com.appiancorp.suiteapi.process.webservices

[com.appiancorp.suiteapi.rules](com/appiancorp/suiteapi/rules/package-summary.html) - package com.appiancorp.suiteapi.rules

Provides rules and constants functionality for use within expressions.

[com.appiancorp.suiteapi.security.auth](com/appiancorp/suiteapi/security/auth/package-summary.html) - package com.appiancorp.suiteapi.security.auth

[com.appiancorp.suiteapi.security.external](com/appiancorp/suiteapi/security/external/package-summary.html) - package com.appiancorp.suiteapi.security.external

[com.appiancorp.suiteapi.servlet](com/appiancorp/suiteapi/servlet/package-summary.html) - package com.appiancorp.suiteapi.servlet

[com.appiancorp.suiteapi.type](com/appiancorp/suiteapi/type/package-summary.html) - package com.appiancorp.suiteapi.type

[com.appiancorp.suiteapi.type.config](com/appiancorp/suiteapi/type/config/package-summary.html) - package com.appiancorp.suiteapi.type.config

[com.appiancorp.suiteapi.type.config.xsd](com/appiancorp/suiteapi/type/config/xsd/package-summary.html) - package com.appiancorp.suiteapi.type.config.xsd

[com.appiancorp.suiteapi.type.config.xsd.exceptions](com/appiancorp/suiteapi/type/config/xsd/exceptions/package-summary.html) - package com.appiancorp.suiteapi.type.config.xsd.exceptions

[com.appiancorp.suiteapi.type.exceptions](com/appiancorp/suiteapi/type/exceptions/package-summary.html) - package com.appiancorp.suiteapi.type.exceptions

[com.appiancorp.suiteapi.web.portal](com/appiancorp/suiteapi/web/portal/package-summary.html) - package com.appiancorp.suiteapi.web.portal

[com.appiancorp.type.system](com/appiancorp/type/system/package-summary.html) - package com.appiancorp.type.system

[commitUpdateUsernames()](com/appiancorp/suiteapi/collaboration/AdministrationService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.collaboration.[AdministrationService](com/appiancorp/suiteapi/collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/content/ContentService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/personalization/UserService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/portal/AdministrationService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.portal.[AdministrationService](com/appiancorp/suiteapi/portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/portal/PortalNotificationService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.process.analytics2.[ProcessAnalyticsService](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/process/ProcessDesignService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames()](com/appiancorp/suiteapi/process/ProcessExecutionService.html#commitUpdateUsernames\(\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](com/appiancorp/suiteapi/personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/collaboration/AdministrationService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[AdministrationService](com/appiancorp/suiteapi/collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/personalization/UserService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/portal/AdministrationService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[AdministrationService](com/appiancorp/suiteapi/portal/AdministrationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/portal/PortalNotificationService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PortalNotificationService](com/appiancorp/suiteapi/portal/PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

 

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.analytics2.[ProcessAnalyticsService](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/process/ProcessDesignService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

[commitUpdateUsernames$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#commitUpdateUsernames$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[Communication](com/appiancorp/suiteapi/process/palette/Communication.html "annotation interface in com.appiancorp.suiteapi.process.palette") - Annotation Interface in [com.appiancorp.suiteapi.process.palette](com/appiancorp/suiteapi/process/palette/package-summary.html)

Deprecated.

This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesCommunication`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesCommunication.html "annotation interface in com.appiancorp.suiteapi.process.palette")

[COMMUNICATION](com/appiancorp/suiteapi/process/palette/PaletteConstants.html#COMMUNICATION) - Static variable in class com.appiancorp.suiteapi.process.palette.[PaletteConstants](com/appiancorp/suiteapi/process/palette/PaletteConstants.html "class in com.appiancorp.suiteapi.process.palette")

This constant can be used on a custom smart service to designate that it should appear in the palette "Communication".

[Community](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration") - Class in [com.appiancorp.suiteapi.collaboration](com/appiancorp/suiteapi/collaboration/package-summary.html)

Deprecated.

Use the class [`Community`](com/appiancorp/suiteapi/knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge") instead.

[Community](com/appiancorp/suiteapi/knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge") - Class in [com.appiancorp.suiteapi.knowledge](com/appiancorp/suiteapi/knowledge/package-summary.html)

Represents a Knowledge community, which can contain [`KnowledgeCenter`](com/appiancorp/suiteapi/knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") and `Community` items.

[Community()](com/appiancorp/suiteapi/collaboration/Community.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.collaboration.[Community](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[Community()](com/appiancorp/suiteapi/knowledge/Community.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.knowledge.[Community](com/appiancorp/suiteapi/knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge")

Constructs a new community.

[COMMUNITY](com/appiancorp/suiteapi/type/AppianType.html#COMMUNITY) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[COMMUNITY\_ROOT](com/appiancorp/suiteapi/content/ContentConstants.html#COMMUNITY_ROOT) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Community RootID.

[CommunityDataType](com/appiancorp/suiteapi/knowledge/CommunityDataType.html "annotation interface in com.appiancorp.suiteapi.knowledge") - Annotation Interface in [com.appiancorp.suiteapi.knowledge](com/appiancorp/suiteapi/knowledge/package-summary.html)

Convenience annotation to indicate a value represents an Appian Object.

[CommunityKnowledgeCenter](com/appiancorp/suiteapi/knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") - Class in [com.appiancorp.suiteapi.knowledge](com/appiancorp/suiteapi/knowledge/package-summary.html)

Represents a community knowledge center, which is a knowledge center that other users can view.

[CommunityKnowledgeCenter()](com/appiancorp/suiteapi/knowledge/CommunityKnowledgeCenter.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.knowledge.[CommunityKnowledgeCenter](com/appiancorp/suiteapi/knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")

Constructs a new community knowledge center.

[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration") - Interface in [com.appiancorp.suiteapi.collaboration](com/appiancorp/suiteapi/collaboration/package-summary.html)

Deprecated.

Use the class [`ContentService`](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

[COMPANY\_NAME](com/appiancorp/suiteapi/applications/Application.Metadata.html#COMPANY_NAME) - Enum constant in enum class com.appiancorp.suiteapi.applications.[Application.Metadata](com/appiancorp/suiteapi/applications/Application.Metadata.html "enum class in com.appiancorp.suiteapi.applications")

[COMPANY\_URL](com/appiancorp/suiteapi/applications/Application.Metadata.html#COMPANY_URL) - Enum constant in enum class com.appiancorp.suiteapi.applications.[Application.Metadata](com/appiancorp/suiteapi/applications/Application.Metadata.html "enum class in com.appiancorp.suiteapi.applications")

[compareTimestamp(AuditHistoryRow)](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html#compareTimestamp\(com.appiancorp.suiteapi.process.history.AuditHistoryRow\)) - Method in class com.appiancorp.suiteapi.process.history.[AuditHistoryRow](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")

Comparison is based on timestamp, which is the secondary sort.

[compareTo(LocalObject)](com/appiancorp/suiteapi/common/LocalObject.html#compareTo\(com.appiancorp.suiteapi.common.LocalObject\)) - Method in class com.appiancorp.suiteapi.common.[LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common")

Compares the specified `LocalObject` with this `LocalObject` for ordering.

[compareTo(Role)](com/appiancorp/suiteapi/common/Role.html#compareTo\(com.appiancorp.suiteapi.common.Role\)) - Method in class com.appiancorp.suiteapi.common.[Role](com/appiancorp/suiteapi/common/Role.html "class in com.appiancorp.suiteapi.common")

[compareTo(Function)](com/appiancorp/suiteapi/expression/Function.html#compareTo\(com.appiancorp.suiteapi.expression.Function\)) - Method in class com.appiancorp.suiteapi.expression.[Function](com/appiancorp/suiteapi/expression/Function.html "class in com.appiancorp.suiteapi.expression")

[compareTo(AuditHistoryRow)](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html#compareTo\(com.appiancorp.suiteapi.process.history.AuditHistoryRow\)) - Method in class com.appiancorp.suiteapi.process.history.[AuditHistoryRow](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")

Comparison is based on order, with secondary sort of timestamp.

[compareTo(HistoryRecord.ProcessModelInfo)](com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html#compareTo\(com.appiancorp.suiteapi.process.HistoryRecord.ProcessModelInfo\)) - Method in class com.appiancorp.suiteapi.process.[HistoryRecord.ProcessModelInfo](com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")

Compare against another ProcessModelInfo.

[compareTo(Priority)](com/appiancorp/suiteapi/process/Priority.html#compareTo\(com.appiancorp.suiteapi.process.Priority\)) - Method in class com.appiancorp.suiteapi.process.[Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process")

Compares this priority with another priority

[compareTo(ProcessUpgrade)](com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.html#compareTo\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade\)) - Method in class com.appiancorp.suiteapi.process.upgrade.[ProcessUpgrade](com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")

Compares the specified object with this UpgradeProcessResult for order.

[compareTo(Object)](com/appiancorp/suiteapi/expression/FunctionCategory.html#compareTo\(java.lang.Object\)) - Method in class com.appiancorp.suiteapi.expression.[FunctionCategory](com/appiancorp/suiteapi/expression/FunctionCategory.html "class in com.appiancorp.suiteapi.expression")

[compareTo(Object)](com/appiancorp/suiteapi/process/ProcessVariable.html#compareTo\(java.lang.Object\)) - Method in class com.appiancorp.suiteapi.process.[ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")

[Comparisons](com/appiancorp/suiteapi/process/analytics2/Comparisons.html "class in com.appiancorp.suiteapi.process.analytics2") - Class in [com.appiancorp.suiteapi.process.analytics2](com/appiancorp/suiteapi/process/analytics2/package-summary.html)

Defines constants for logical comparisons between values.

[Comparisons()](com/appiancorp/suiteapi/process/analytics2/Comparisons.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.analytics2.[Comparisons](com/appiancorp/suiteapi/process/analytics2/Comparisons.html "class in com.appiancorp.suiteapi.process.analytics2")

[completeActivity(Long, ActivityReturnVariable\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#completeActivity\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Signals the completion of an activity not implemented within the process engine itself.

[completeActivity$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#completeActivity$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[completeClone(Long, ActivityClassParameter\[\], ActivityReturnVariable\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#completeClone\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Clones the given task (only a new id is assigned to the cloned task, everything else stays the same), and completes it using the passed inputs (i.e. calls execute or completeActivity).

[completeClone$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#completeClone$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[CompletedAheadOfScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2") - Class in [com.appiancorp.suiteapi.process.analytics2](com/appiancorp/suiteapi/process/analytics2/package-summary.html)

Deprecated.

this unused filter will be removed in a future release

[CompletedAheadOfScheduleFilter()](com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.analytics2.[CompletedAheadOfScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

 

[CompletedBehindScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2") - Class in [com.appiancorp.suiteapi.process.analytics2](com/appiancorp/suiteapi/process/analytics2/package-summary.html)

Deprecated.

this unused filter will be removed in a future release; use instead [`DueTodayFilter`](com/appiancorp/suiteapi/process/analytics2/DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2") as it returns the same results

[CompletedBehindScheduleFilter()](com/appiancorp/suiteapi/process/analytics2/CompletedBehindScheduleFilter.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.analytics2.[CompletedBehindScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

 

[CompletedFilter](com/appiancorp/suiteapi/process/analytics2/CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2") - Class in [com.appiancorp.suiteapi.process.analytics2](com/appiancorp/suiteapi/process/analytics2/package-summary.html)

Filter for completed tasks/processes: when this filter is added, only completed tasks/processes will be returned in the report.

[CompletedFilter()](com/appiancorp/suiteapi/process/analytics2/CompletedFilter.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.analytics2.[CompletedFilter](com/appiancorp/suiteapi/process/analytics2/CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

[completeOptions()](com/appiancorp/common/query/GenericFacet.GenericFacetBuilder.html#completeOptions\(\)) - Method in class com.appiancorp.common.query.[GenericFacet.GenericFacetBuilder](com/appiancorp/common/query/GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")

[completeOptions()](com/appiancorp/common/query/TypedValueFacet.TypedValueFacetBuilder.html#completeOptions\(\)) - Method in class com.appiancorp.common.query.[TypedValueFacet.TypedValueFacetBuilder](com/appiancorp/common/query/TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")

[completeOrPartialValue](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html#completeOrPartialValue) - Variable in class com.appiancorp.suiteapi.process.history.[AuditHistoryRow](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")

[completeStore(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#completeStore\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Complete an external data store.

[completeStore$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#completeStore$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[CompleteValue](com/appiancorp/suiteapi/process/history/CompleteValue.html "class in com.appiancorp.suiteapi.process.history") - Class in [com.appiancorp.suiteapi.process.history](com/appiancorp/suiteapi/process/history/package-summary.html)

CompleteValue Some AuditHistoryRows will have PartialValues, others will have CompleteValues.

[CompleteValue(TypedValue)](com/appiancorp/suiteapi/process/history/CompleteValue.html#%3Cinit%3E\(com.appiancorp.suiteapi.type.TypedValue\)) - Constructor for class com.appiancorp.suiteapi.process.history.[CompleteValue](com/appiancorp/suiteapi/process/history/CompleteValue.html "class in com.appiancorp.suiteapi.process.history")

Construct a CompleteValue from a TypedValue.

[COMPLEX\_RULE](com/appiancorp/suiteapi/process/events/Rule.html#COMPLEX_RULE) - Static variable in class com.appiancorp.suiteapi.process.events.[Rule](com/appiancorp/suiteapi/process/events/Rule.html "class in com.appiancorp.suiteapi.process.events")

Type code for a complex rule (can be any expression).

[COMPONENT\_CANNOT\_USE\_DYNAMIC\_LV\_REFRESH\_AFTER\_VALUE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#COMPONENT_CANNOT_USE_DYNAMIC_LV_REFRESH_AFTER_VALUE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CompositeSessionAuthenticationStrategy](com/appiancorp/suiteapi/common/spring/security/CompositeSessionAuthenticationStrategy.html "class in com.appiancorp.suiteapi.common.spring.security") - Class in [com.appiancorp.suiteapi.common.spring.security](com/appiancorp/suiteapi/common/spring/security/package-summary.html)

Allows multiple `SessionAuthenticationStrategy` implementations to be executed as a single `SessionAuthenticationStrategy`.

[CompositeSessionAuthenticationStrategy(List<SessionAuthenticationStrategy>)](com/appiancorp/suiteapi/common/spring/security/CompositeSessionAuthenticationStrategy.html#%3Cinit%3E\(java.util.List\)) - Constructor for class com.appiancorp.suiteapi.common.spring.security.[CompositeSessionAuthenticationStrategy](com/appiancorp/suiteapi/common/spring/security/CompositeSessionAuthenticationStrategy.html "class in com.appiancorp.suiteapi.common.spring.security")

Creates a new instance with the given delegate strategies which will be invoked when this strategy is executed.

[COMPRESSION\_LIMIT\_REACHED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#COMPRESSION_LIMIT_REACHED) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[computeDisplayString(ServiceContext)](com/appiancorp/suiteapi/process/TypedVariable.html#computeDisplayString\(com.appiancorp.services.ServiceContext\)) - Method in class com.appiancorp.suiteapi.process.[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

Use either [`TypedVariable.computeValueString(ServiceContext)`](com/appiancorp/suiteapi/process/TypedVariable.html#computeValueString\(com.appiancorp.services.ServiceContext\)), or [`TypedVariable.computeValueStringForUiOutput(ServiceContext, boolean, boolean)`](com/appiancorp/suiteapi/process/TypedVariable.html#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)). This is the same as `#computeValueString()` except that if the type is a `String[]`, the CSV for the array does have quotes around the individual strings in the array; for example, an array of users whose usernames are payton.manning and brett.favre would result in the string ""payton.manning","brett.favre"".

[computeDisplayString(AppianTypeCache)](com/appiancorp/suiteapi/process/TypedVariable.html#computeDisplayString\(com.appiancorp.suiteapi.process.AppianTypeCache\)) - Method in class com.appiancorp.suiteapi.process.[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

This is the same as `#computeDisplayString()`, except that the passed cache is used to get the display value (so that for an Appian Type, a user-friendly string is returned; for exmple, "Technology" instead of a number for a GROUP).

[computeValueString(ServiceContext)](com/appiancorp/suiteapi/process/TypedVariable.html#computeValueString\(com.appiancorp.services.ServiceContext\)) - Method in class com.appiancorp.suiteapi.process.[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

Computes the string representation of the value of this typed variable, which should be shown to the user.

[computeValueStringForUiOutput(ServiceContext, boolean, boolean)](com/appiancorp/suiteapi/process/TypedVariable.html#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)) - Method in class com.appiancorp.suiteapi.process.[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[concludeProcess()](com/appiancorp/suiteapi/process/test/ProcessController.html#concludeProcess\(\)) - Method in class com.appiancorp.suiteapi.process.test.[ProcessController](com/appiancorp/suiteapi/process/test/ProcessController.html "class in com.appiancorp.suiteapi.process.test")

Conclude process will return whenever the target process is no longer active.

[concludeProcess(long, TimeUnit)](com/appiancorp/suiteapi/process/test/ProcessController.html#concludeProcess\(long,java.util.concurrent.TimeUnit\)) - Method in class com.appiancorp.suiteapi.process.test.[ProcessController](com/appiancorp/suiteapi/process/test/ProcessController.html "class in com.appiancorp.suiteapi.process.test")

Conclude process will return whenever the target process is no longer active.

[Condition](com/appiancorp/suiteapi/personalization/Condition.html "class in com.appiancorp.suiteapi.personalization") - Class in [com.appiancorp.suiteapi.personalization](com/appiancorp/suiteapi/personalization/package-summary.html)

[Condition()](com/appiancorp/suiteapi/personalization/Condition.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.personalization.[Condition](com/appiancorp/suiteapi/personalization/Condition.html "class in com.appiancorp.suiteapi.personalization")

Default no-arg constructor.

[Condition(String, Integer, String)](com/appiancorp/suiteapi/personalization/Condition.html#%3Cinit%3E\(java.lang.String,java.lang.Integer,java.lang.String\)) - Constructor for class com.appiancorp.suiteapi.personalization.[Condition](com/appiancorp/suiteapi/personalization/Condition.html "class in com.appiancorp.suiteapi.personalization")

Constructor that receives the attribute name, operator id and the value for this condition.

[CONFIG\_OBJECT\_CANNOT\_BE\_INITIALIZED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONFIG_OBJECT_CANNOT_BE_INITIALIZED) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONFIG\_OBJECT\_RESOURCE\_CANNOT\_BE\_PARSED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONFIG_OBJECT_RESOURCE_CANNOT_BE_PARSED) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONFIGRUATION\_DECRYPTION\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONFIGRUATION_DECRYPTION_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[Configurable](com/appiancorp/suiteapi/common/cli/Configurable.html "interface in com.appiancorp.suiteapi.common.cli") - Interface in [com.appiancorp.suiteapi.common.cli](com/appiancorp/suiteapi/common/cli/package-summary.html)

[Configuration](com/appiancorp/suiteapi/common/Configuration.html "class in com.appiancorp.suiteapi.common") - Class in [com.appiancorp.suiteapi.common](com/appiancorp/suiteapi/common/package-summary.html)

Provides support for loading configuration files for the product.

[Configuration](com/appiancorp/suiteapi/cfg/Configuration.html "interface in com.appiancorp.suiteapi.cfg") - Interface in [com.appiancorp.suiteapi.cfg](com/appiancorp/suiteapi/cfg/package-summary.html)

Interface that exposes the public configuration properties in custom.properties for use in custom code.

[Configuration(String)](com/appiancorp/suiteapi/common/Configuration.html#%3Cinit%3E\(java.lang.String\)) - Constructor for class com.appiancorp.suiteapi.common.[Configuration](com/appiancorp/suiteapi/common/Configuration.html "class in com.appiancorp.suiteapi.common")

Constructs a new Configuration object with a namespace.

[CONFIGURATION\_MOBILE\_PASSCODE\_REQUIRED\_INVALID](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONFIGURATION_MOBILE_PASSCODE_REQUIRED_INVALID) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[ConfigurationLoader](com/appiancorp/suiteapi/cfg/ConfigurationLoader.html "class in com.appiancorp.suiteapi.cfg") - Class in [com.appiancorp.suiteapi.cfg](com/appiancorp/suiteapi/cfg/package-summary.html)

Factory for returning an instance of Configuration.

[ConfigurationLoader()](com/appiancorp/suiteapi/cfg/ConfigurationLoader.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.cfg.[ConfigurationLoader](com/appiancorp/suiteapi/cfg/ConfigurationLoader.html "class in com.appiancorp.suiteapi.cfg")

[configure()](com/appiancorp/suiteapi/common/cli/Configurable.html#configure\(\)) - Method in interface com.appiancorp.suiteapi.common.cli.[Configurable](com/appiancorp/suiteapi/common/cli/Configurable.html "interface in com.appiancorp.suiteapi.common.cli")

[configure()](com/appiancorp/suiteapi/common/cli/ServiceContextCLIConfig.html#configure\(\)) - Method in class com.appiancorp.suiteapi.common.cli.[ServiceContextCLIConfig](com/appiancorp/suiteapi/common/cli/ServiceContextCLIConfig.html "class in com.appiancorp.suiteapi.common.cli")

[CONFIGURE\_METHOD\_NAME](com/appiancorp/services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME) - Static variable in interface com.appiancorp.services.[ContextSensitiveSingletonService](com/appiancorp/services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

[configureContextSensitiveSingletonService(ServiceContextProvider, AuthorizationInterceptorProvider)](com/appiancorp/services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\)) - Method in interface com.appiancorp.services.[ContextSensitiveSingletonService](com/appiancorp/services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Configures the service.

[CONNECTED\_ENVIRONMENT\_RESPONSE\_CANT\_DESERIALIZE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_ENVIRONMENT_RESPONSE_CANT_DESERIALIZE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_ENVIRONMENT\_RESPONSE\_INVALID\_ERROR\_CODE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_ENVIRONMENT_RESPONSE_INVALID_ERROR_CODE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_ENVIRONMENT\_RESPONSE\_MISSING\_ERROR\_CODE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_ENVIRONMENT_RESPONSE_MISSING_ERROR_CODE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM](com/appiancorp/suiteapi/type/AppianType.html#CONNECTED_SYSTEM) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONNECTED\_SYSTEM\_API\_INVALID\_CONTENT\_TYPE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_CONTENT_TYPE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_INVALID\_HTTP\_METHOD](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_HTTP_METHOD) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_INVALID\_PROPERTY\_CREATE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_PROPERTY_CREATE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_INVALID\_REGION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_REGION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_INVALID\_URI\_PATH](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_URI_PATH) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_INVALID\_URL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_URL) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_INVALID\_VALUE\_FORMAT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_VALUE_FORMAT) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_INVALID\_VALUE\_TOO\_LONG](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_INVALID_VALUE_TOO_LONG) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_MALFORMED\_REQUEST](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_MALFORMED_REQUEST) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_API\_MISSING\_PROPERTY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_API_MISSING_PROPERTY) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_FATAL\_MIGRATION\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_FATAL_MIGRATION_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_GENERIC\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_GENERIC_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_GENERIC\_MALFORMED\_URL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_GENERIC_MALFORMED_URL) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_INVALID\_PROPERTY\_CREATE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_INVALID_PROPERTY_CREATE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_INVALID\_REGION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_INVALID_REGION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_INVALID\_URL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_INVALID_URL) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_INVALID\_VALUE\_TOO\_LONG](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_INVALID_VALUE_TOO_LONG) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_MISSING\_PROPERTY\_CREATE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_MISSING_PROPERTY_CREATE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_NOT\_FOUND](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_NOT_FOUND) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_READ\_EXCEPTION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_READ_EXCEPTION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONNECTED\_SYSTEM\_SAVE\_EXCEPTION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONNECTED_SYSTEM_SAVE_EXCEPTION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process") - Class in [com.appiancorp.suiteapi.process](com/appiancorp/suiteapi/process/package-summary.html)

Represents a directional link between two process nodes (startNode and endNode).

[Connection()](com/appiancorp/suiteapi/process/Connection.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.[Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process")

Creates a new connection.

[ConnectivityServices](com/appiancorp/suiteapi/process/palette/ConnectivityServices.html "annotation interface in com.appiancorp.suiteapi.process.palette") - Annotation Interface in [com.appiancorp.suiteapi.process.palette](com/appiancorp/suiteapi/process/palette/package-summary.html)

Deprecated.

This annotation may be removed from the public API in a future release. Instead use [`AutomationSmartServicesIntegrationAPIs`](com/appiancorp/suiteapi/process/palette/AutomationSmartServicesIntegrationAPIs.html "annotation interface in com.appiancorp.suiteapi.process.palette")

[Constant](com/appiancorp/suiteapi/rules/Constant.html "class in com.appiancorp.suiteapi.rules") - Class in [com.appiancorp.suiteapi.rules](com/appiancorp/suiteapi/rules/package-summary.html)

Represents a constant, which can be used in expressions throughout the product.

[Constant()](com/appiancorp/suiteapi/rules/Constant.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.rules.[Constant](com/appiancorp/suiteapi/rules/Constant.html "class in com.appiancorp.suiteapi.rules")

Constructs a new constant object.

[CONSTANT](com/appiancorp/suiteapi/process/TypedVariableTypes.html#CONSTANT) - Static variable in interface com.appiancorp.suiteapi.process.[TypedVariableTypes](com/appiancorp/suiteapi/process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Note: The CONSTANT type cannot be used for ActivityClassParameters, ActivityReturnVariables, or ProcessVariables

[CONSTANT\_NOT\_FOUND](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONSTANT_NOT_FOUND) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONSTANT\_NOT\_FOUND\_INC\_CONSTANT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONSTANT_NOT_FOUND_INC_CONSTANT) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONSTANT\_NOT\_FOUND\_UPD\_CONSTANT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONSTANT_NOT_FOUND_UPD_CONSTANT) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[ConstantDataType](com/appiancorp/suiteapi/rules/ConstantDataType.html "annotation interface in com.appiancorp.suiteapi.rules") - Annotation Interface in [com.appiancorp.suiteapi.rules](com/appiancorp/suiteapi/rules/package-summary.html)

Convenience annotation to indicate a value represents an Appian Object.

[Constants](com/appiancorp/suiteapi/common/Constants.html "interface in com.appiancorp.suiteapi.common") - Interface in [com.appiancorp.suiteapi.common](com/appiancorp/suiteapi/common/package-summary.html)

Interface to represent constants used for retrieving and sorting results obtained from database.

[ContactBean()](com/appiancorp/suiteapi/process/webservices/BusinessEntity.ContactBean.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.process.webservices.[BusinessEntity.ContactBean](com/appiancorp/suiteapi/process/webservices/BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices")

[Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

This is the abstract class used to represent Content objects that may contain other Content objects.

[Container()](com/appiancorp/suiteapi/content/Container.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content")

Default constructor.

[Container(int)](com/appiancorp/suiteapi/content/Container.html#%3Cinit%3E\(int\)) - Constructor for class com.appiancorp.suiteapi.content.[Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content")

Constructs a container of the given type.

[Container(Integer)](com/appiancorp/suiteapi/content/Container.html#%3Cinit%3E\(java.lang.Integer\)) - Constructor for class com.appiancorp.suiteapi.content.[Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content")

Constructs a container of the given type.

[CONTAINMENT](com/appiancorp/common/query/FilterOperatorCategory.html#CONTAINMENT) - Enum constant in enum class com.appiancorp.common.query.[FilterOperatorCategory](com/appiancorp/common/query/FilterOperatorCategory.html "enum class in com.appiancorp.common.query")

[CONTAINS](com/appiancorp/suiteapi/personalization/GroupSearch.html#CONTAINS) - Static variable in class com.appiancorp.suiteapi.personalization.[GroupSearch](com/appiancorp/suiteapi/personalization/GroupSearch.html "class in com.appiancorp.suiteapi.personalization")

Deprecated. 

[CONTAINS](com/appiancorp/suiteapi/personalization/GroupSearch.Operators.html#CONTAINS) - Static variable in class com.appiancorp.suiteapi.personalization.[GroupSearch.Operators](com/appiancorp/suiteapi/personalization/GroupSearch.Operators.html "class in com.appiancorp.suiteapi.personalization")

[CONTAINS](com/appiancorp/suiteapi/personalization/Operator.html#CONTAINS) - Static variable in class com.appiancorp.suiteapi.personalization.[Operator](com/appiancorp/suiteapi/personalization/Operator.html "class in com.appiancorp.suiteapi.personalization")

[containsActors()](com/appiancorp/suiteapi/common/RoleMap.html#containsActors\(\)) - Method in class com.appiancorp.suiteapi.common.[RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Returns true if there are actors in any role of the role map.

[containsAsynchronousSubProcesses(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsAsynchronousSubProcesses\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Determines whether or not the given process contains asynchronous subprocesses.

[containsAsynchronousSubProcesses(Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsAsynchronousSubProcesses\(java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsAsynchronousSubProcesses$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsAsynchronousSubProcesses$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsError(ErrorCode)](com/appiancorp/suiteapi/ix/ImportObject.html#containsError\(com.appiancorp.suiteapi.common.exceptions.ErrorCode\)) - Method in class com.appiancorp.suiteapi.ix.[ImportObject](com/appiancorp/suiteapi/ix/ImportObject.html "class in com.appiancorp.suiteapi.ix")

Checks whether a particular error was thrown while inspecting or importing this object.

[containsFilters(Criteria, Iterable<Filter<T>>)](com/appiancorp/common/query/Filter.html#containsFilters\(com.appiancorp.common.query.Criteria,java.lang.Iterable\)) - Static method in class com.appiancorp.common.query.[Filter](com/appiancorp/common/query/Filter.html "class in com.appiancorp.common.query")

Checks if all the `filters` are contained by the given `criteria`

[containsKey(Object)](com/appiancorp/suiteapi/common/RoleMap.html#containsKey\(java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Returns whether this role map contains the role specified.

[containsKey(Object)](com/appiancorp/suiteapi/common/SimpleValueMap.html#containsKey\(java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[SimpleValueMap](com/appiancorp/suiteapi/common/SimpleValueMap.html "class in com.appiancorp.suiteapi.common")

[containsLinkProcesses(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsLinkProcesses\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Use [`ProcessExecutionService.containsAsynchronousSubProcesses(Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsAsynchronousSubProcesses\(java.lang.Long\)) instead.

[containsLinkProcesses$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsLinkProcesses$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsLinkProcessesInheritingPriority(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsLinkProcessesInheritingPriority\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Use [`ProcessExecutionService.containsSubProcessesInheritingPriority(Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSubProcessesInheritingPriority\(java.lang.Long\)) instead.

[containsLinkProcessesInheritingPriority$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsLinkProcessesInheritingPriority$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsLocale(Locale)](com/appiancorp/suiteapi/common/LocaleString.html#containsLocale\(java.util.Locale\)) - Method in class com.appiancorp.suiteapi.common.[LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common")

[containsPaletteItem(PaletteItem)](com/appiancorp/suiteapi/process/Palette.html#containsPaletteItem\(com.appiancorp.suiteapi.process.PaletteItem\)) - Method in class com.appiancorp.suiteapi.process.[Palette](com/appiancorp/suiteapi/process/Palette.html "class in com.appiancorp.suiteapi.process")

Returns `true` if this palette contains the specified [`PaletteItem`](com/appiancorp/suiteapi/process/PaletteItem.html "class in com.appiancorp.suiteapi.process").

[containsSubProcesses(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSubProcesses\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Use [`ProcessExecutionService.containsSynchronousSubProcesses(Long)`](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSynchronousSubProcesses\(java.lang.Long\)) instead.

[containsSubProcesses$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSubProcesses$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsSubProcessesInheritingPriority(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSubProcessesInheritingPriority\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Checks if the specified `Process` contains sub-processes that inherit their priority instead of defining their own priority levels.

[containsSubProcessesInheritingPriority$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSubProcessesInheritingPriority$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsSynchronousSubProcesses(Long)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSynchronousSubProcesses\(java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Determines whether or not the given process contains synchronous subprocesses.

[containsSynchronousSubProcesses(Long\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSynchronousSubProcesses\(java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsSynchronousSubProcesses$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#containsSynchronousSubProcesses$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[containsValue(Object)](com/appiancorp/suiteapi/common/RoleMap.html#containsValue\(java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Not implemented.

[containsValue(Object)](com/appiancorp/suiteapi/common/SimpleValueMap.html#containsValue\(java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[SimpleValueMap](com/appiancorp/suiteapi/common/SimpleValueMap.html "class in com.appiancorp.suiteapi.common")

[Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Represents an item of content.

[Content()](com/appiancorp/suiteapi/content/Content.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content")

Default constructor (necessary for return converters).

[Content(int)](com/appiancorp/suiteapi/content/Content.html#%3Cinit%3E\(int\)) - Constructor for class com.appiancorp.suiteapi.content.[Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content")

Constructs a new `Content` bean with the given type.

[Content(Integer)](com/appiancorp/suiteapi/content/Content.html#%3Cinit%3E\(java.lang.Integer\)) - Constructor for class com.appiancorp.suiteapi.content.[Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content")

Constructs a new `Content` bean with the given type.

[CONTENT](com/appiancorp/suiteapi/process/TypeDescriptor.html#CONTENT) - Static variable in class com.appiancorp.suiteapi.process.[TypeDescriptor](com/appiancorp/suiteapi/process/TypeDescriptor.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[CONTENT](com/appiancorp/suiteapi/process/TypedVariableTypes.html#CONTENT) - Static variable in interface com.appiancorp.suiteapi.process.[TypedVariableTypes](com/appiancorp/suiteapi/process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

 

[CONTENT\_COMMUNITY](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_COMMUNITY) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_CONSTANT](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_CONSTANT) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_CUSTOM](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_CUSTOM) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_DOCUMENT](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_DOCUMENT) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_FOLDER](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_FOLDER) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_FREEFORM\_RULE](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_FREEFORM_RULE) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_ITEM](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_ITEM) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_KNOWLEDGE\_CENTER](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_KNOWLEDGE_CENTER) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_RULE](com/appiancorp/suiteapi/type/AppianType.html#CONTENT_RULE) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

[CONTENT\_SECURITY\_TYPE](com/appiancorp/suiteapi/content/ContentConstants.html#CONTENT_SECURITY_TYPE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

The Security Manager Configuration type for content.

[CONTENT\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#CONTENT_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the content service.

[CONTENT\_STATISTICS\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#CONTENT_STATISTICS_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the content statistics service.

[ContentAccess](com/appiancorp/suiteapi/content/ContentAccess.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

This class provides methods accessible through JSON, which are relevant to Content objects.

[ContentAccess(HttpSession)](com/appiancorp/suiteapi/content/ContentAccess.html#%3Cinit%3E\(jakarta.servlet.http.HttpSession\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentAccess](com/appiancorp/suiteapi/content/ContentAccess.html "class in com.appiancorp.suiteapi.content")

Constructs a ContentAccess object.

[ContentBeanFactory](com/appiancorp/suiteapi/content/ContentBeanFactory.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Provides utility methods for creating content objects based on the type identifiers.

[ContentBeanFactory()](com/appiancorp/suiteapi/content/ContentBeanFactory.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentBeanFactory](com/appiancorp/suiteapi/content/ContentBeanFactory.html "class in com.appiancorp.suiteapi.content")

[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content") - Interface in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Contains constants for use with Content.

[ContentExpiredException](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions") - Exception in [com.appiancorp.suiteapi.content.exceptions](com/appiancorp/suiteapi/content/exceptions/package-summary.html)

This exception may be thrown by service methods if the content they are referencing is expired.

[ContentExpiredException()](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html#%3Cinit%3E\(\)) - Constructor for exception com.appiancorp.suiteapi.content.exceptions.[ContentExpiredException](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")

Constructs a new ContentExpiredException with null as its detail message.

[ContentExpiredException(String)](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html#%3Cinit%3E\(java.lang.String\)) - Constructor for exception com.appiancorp.suiteapi.content.exceptions.[ContentExpiredException](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")

Constructs a new ContentExpiredException with the specified detail message.

[ContentExpiredException(String, Throwable)](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html#%3Cinit%3E\(java.lang.String,java.lang.Throwable\)) - Constructor for exception com.appiancorp.suiteapi.content.exceptions.[ContentExpiredException](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")

Constructs a new ContentExpiredException with the specified detail message and cause.

[ContentExpiredException(Throwable)](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html#%3Cinit%3E\(java.lang.Throwable\)) - Constructor for exception com.appiancorp.suiteapi.content.exceptions.[ContentExpiredException](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")

Constructs a new ContentExpiredException with the specified cause and a detail message of (cause==null ?

[ContentFilter](com/appiancorp/suiteapi/content/ContentFilter.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Filters may be applied to Content Service operations in order to filter the final results by the criteria listed here.

[ContentFilter(int)](com/appiancorp/suiteapi/content/ContentFilter.html#%3Cinit%3E\(int\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentFilter](com/appiancorp/suiteapi/content/ContentFilter.html "class in com.appiancorp.suiteapi.content")

Constructs a filter which only returns Content items matching the given typemask.

[ContentFilter(int, int)](com/appiancorp/suiteapi/content/ContentFilter.html#%3Cinit%3E\(int,int\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentFilter](com/appiancorp/suiteapi/content/ContentFilter.html "class in com.appiancorp.suiteapi.content")

Constructs a filter which only returns Content items matching the given typemask and subtype.

[ContentFilter(Integer)](com/appiancorp/suiteapi/content/ContentFilter.html#%3Cinit%3E\(java.lang.Integer\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentFilter](com/appiancorp/suiteapi/content/ContentFilter.html "class in com.appiancorp.suiteapi.content")

Constructs a filter which only returns Content items matching the given typemask.

[ContentFilter(Integer, Integer)](com/appiancorp/suiteapi/content/ContentFilter.html#%3Cinit%3E\(java.lang.Integer,java.lang.Integer\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentFilter](com/appiancorp/suiteapi/content/ContentFilter.html "class in com.appiancorp.suiteapi.content")

Constructs a filter which only returns Content items matching the given typemask and subtype.

[ContentFilter.KeyValue](com/appiancorp/suiteapi/content/ContentFilter.KeyValue.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

This represents a Key and Value of a Content Attribute.

[ContentOutputStream](com/appiancorp/suiteapi/content/ContentOutputStream.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Deprecated.

since 23.2. Use [`ContentUploadOutputStream`](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content") or [`DocumentOutputStream`](com/appiancorp/suiteapi/content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content") instead

[ContentOutputStream(ContentService, Long, Approval, String)](com/appiancorp/suiteapi/content/ContentOutputStream.html#%3Cinit%3E\(com.appiancorp.suiteapi.content.ContentService,java.lang.Long,com.appiancorp.suiteapi.content.Approval,java.lang.String\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentOutputStream](com/appiancorp/suiteapi/content/ContentOutputStream.html "class in com.appiancorp.suiteapi.content")

Deprecated.

 

[ContentRole](com/appiancorp/suiteapi/content/ContentRole.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Holds the data for an individual role within a Content object's role map.

[ContentRole()](com/appiancorp/suiteapi/content/ContentRole.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentRole](com/appiancorp/suiteapi/content/ContentRole.html "class in com.appiancorp.suiteapi.content")

[ContentRole(Role)](com/appiancorp/suiteapi/content/ContentRole.html#%3Cinit%3E\(com.appiancorp.suiteapi.common.Role\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentRole](com/appiancorp/suiteapi/content/ContentRole.html "class in com.appiancorp.suiteapi.content")

[ContentRole(String)](com/appiancorp/suiteapi/content/ContentRole.html#%3Cinit%3E\(java.lang.String\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentRole](com/appiancorp/suiteapi/content/ContentRole.html "class in com.appiancorp.suiteapi.content")

[ContentRoleMap](com/appiancorp/suiteapi/content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

This class represents the access permissions for an element in the collaboration center.

[ContentRoleMap()](com/appiancorp/suiteapi/content/ContentRoleMap.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentRoleMap](com/appiancorp/suiteapi/content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content")

[ContentRoleSet](com/appiancorp/suiteapi/content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

This class represents the access permissions for a Content item.

[ContentRoleSet()](com/appiancorp/suiteapi/content/ContentRoleSet.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentRoleSet](com/appiancorp/suiteapi/content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content")

[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content") - Interface in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

This interface provides access to the Content service (formerly the Collaboration service).

[ContentStatisticsService](com/appiancorp/suiteapi/content/ContentStatisticsService.html "interface in com.appiancorp.suiteapi.content") - Interface in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

This interface provides access to the Content Statistics service.

[ContentUploadOutputStream](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Represents a document and its output stream to which the document's content should be written during an upload.

[ContentUploadOutputStream()](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[ContentUploadOutputStream](com/appiancorp/suiteapi/content/ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content")

[CONTEXT\_TYPE\_ASSIGNED\_GROUP](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_ASSIGNED_GROUP) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for tasks assigned to the groups specified in the context.

[CONTEXT\_TYPE\_ATTRIBUTED\_TO\_USER](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_ATTRIBUTED_TO_USER) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for tasks attributed to the users specified in the context.

[CONTEXT\_TYPE\_CREATED\_BY](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_CREATED_BY) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for process models created by the users specified in the context.

[CONTEXT\_TYPE\_GROUP\_MEMBERS](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_GROUP_MEMBERS) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for tasks attributed to the groups specified in the context.

[CONTEXT\_TYPE\_INITIATED\_BY](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_INITIATED_BY) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for processes initiated by the users specified in the context.

[CONTEXT\_TYPE\_LAST\_MOD\_BY](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_LAST_MOD_BY) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for process models last modified by the users specified in the context.

[CONTEXT\_TYPE\_NODE](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_NODE) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for nodes specified in the context.

[CONTEXT\_TYPE\_PROCESS](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_PROCESS) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for processes specified in the context.

[CONTEXT\_TYPE\_PROCESS\_MODEL](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_PROCESS_MODEL) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for process models specified in the context.

[CONTEXT\_TYPE\_PROCESS\_MODEL\_VERSION](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_PROCESS_MODEL_VERSION) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for process model versions specified in the context.

[CONTEXT\_TYPE\_SYSTEM](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_SYSTEM) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report has no context.

[CONTEXT\_TYPE\_TASK\_OWNER](com/appiancorp/suiteapi/process/analytics2/ReportData.html#CONTEXT_TYPE_TASK_OWNER) - Static variable in class com.appiancorp.suiteapi.process.analytics2.[ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

Report only contains data for tasks owned by the users specified in the context.

[ContextException](com/appiancorp/suiteapi/common/exceptions/ContextException.html "class in com.appiancorp.suiteapi.common.exceptions") - Exception in [com.appiancorp.suiteapi.common.exceptions](com/appiancorp/suiteapi/common/exceptions/package-summary.html)

This exception is thrown if the context is null or not valid.

[ContextException()](com/appiancorp/suiteapi/common/exceptions/ContextException.html#%3Cinit%3E\(\)) - Constructor for exception com.appiancorp.suiteapi.common.exceptions.[ContextException](com/appiancorp/suiteapi/common/exceptions/ContextException.html "class in com.appiancorp.suiteapi.common.exceptions")

Constructs a new exception with `null` as its detail message.

[ContextException(String)](com/appiancorp/suiteapi/common/exceptions/ContextException.html#%3Cinit%3E\(java.lang.String\)) - Constructor for exception com.appiancorp.suiteapi.common.exceptions.[ContextException](com/appiancorp/suiteapi/common/exceptions/ContextException.html "class in com.appiancorp.suiteapi.common.exceptions")

Constructs a new exception with the specified detail message.

[ContextSensitiveSingletonService](com/appiancorp/services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services") - Interface in [com.appiancorp.services](com/appiancorp/services/package-summary.html)

Marks a singleton service as context-sensitive, meaning that the service will have a `ServiceContextProvider` associated with it.

[continueFunction(Long, TypedVariable)](com/appiancorp/suiteapi/expression/ExpressionService.html#continueFunction\(java.lang.Long,com.appiancorp.suiteapi.process.TypedVariable\)) - Method in interface com.appiancorp.suiteapi.expression.[ExpressionService](com/appiancorp/suiteapi/expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")

Deprecated.

see ProcessDesignService.evaluateExpression

[continueFunction$UPDATES](com/appiancorp/suiteapi/expression/ExpressionService.html#continueFunction$UPDATES) - Static variable in interface com.appiancorp.suiteapi.expression.[ExpressionService](com/appiancorp/suiteapi/expression/ExpressionService.html "interface in com.appiancorp.suiteapi.expression")

[Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal") - Class in [com.appiancorp.suiteapi.portal](com/appiancorp/suiteapi/portal/package-summary.html)

Deprecated.

This functionality is no longer supported and will be removed in the next release.

[Contribution()](com/appiancorp/suiteapi/portal/Contribution.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.portal.[Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

 

[Contribution(Integer, Long)](com/appiancorp/suiteapi/portal/Contribution.html#%3Cinit%3E\(java.lang.Integer,java.lang.Long\)) - Constructor for class com.appiancorp.suiteapi.portal.[Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

 

[Contribution(Integer, Long, boolean)](com/appiancorp/suiteapi/portal/Contribution.html#%3Cinit%3E\(java.lang.Integer,java.lang.Long,boolean\)) - Constructor for class com.appiancorp.suiteapi.portal.[Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

 

[CONTROL\_PANEL\_INTERFACE\_TYPE\_LOR\_INVALID\_CONTROL\_PANEL](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_INTERFACE_TYPE_LOR_INVALID_CONTROL_PANEL) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_INVALID\_REF\_CONSTRUCTOR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_INVALID_REF_CONSTRUCTOR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_INVALID\_REF\_TYPE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_INVALID_REF_TYPE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_IX\_INVALID\_CUSTOM\_CONFIG\_SCOPE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_IX_INVALID_CUSTOM_CONFIG_SCOPE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_IX\_INVALID\_INTERFACE\_INTENT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_IX_INVALID_INTERFACE_INTENT) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_LOR\_INVALID\_CONTROL\_PANEL\_RECORDS\_PARAMETER](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_LOR_INVALID_CONTROL_PANEL_RECORDS_PARAMETER) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_LOR\_INVALID\_CPTI\_UUID](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_LOR_INVALID_CPTI_UUID) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_LOR\_INVALID\_INTERFACE\_TYPE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_LOR_INVALID_INTERFACE_TYPE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_LOR\_INVALID\_PARAMETER](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_LOR_INVALID_PARAMETER) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_LOR\_INVALID\_PRIMARY\_RECORD\_TYPE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_LOR_INVALID_PRIMARY_RECORD_TYPE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_LOR\_INVALID\_RECORD\_PARAMETER](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_LOR_INVALID_RECORD_PARAMETER) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_LOR\_INVALID\_SELECTION\_DESIGNATOR\_FIELD](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_LOR_INVALID_SELECTION_DESIGNATOR_FIELD) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_NOT\_ENABLED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_NOT_ENABLED) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_NOT\_FOUND\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_NOT_FOUND_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_TIER\_ITEM\_CONTROL\_PANEL\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_TIER_ITEM_CONTROL_PANEL_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_TIER\_ITEM\_CONTROL\_PANEL\_NOT\_FOUND](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_TIER_ITEM_CONTROL_PANEL_NOT_FOUND) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_TIER\_ITEM\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_TIER_ITEM_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_TIER\_ITEM\_NOT\_FOUND](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_TIER_ITEM_NOT_FOUND) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_TIER\_ITEM\_PARENT\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_TIER_ITEM_PARENT_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONTROL\_PANEL\_TIER\_ITEM\_PARENT\_NOT\_FOUND](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONTROL_PANEL_TIER_ITEM_PARENT_NOT_FOUND) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[Controller](com/appiancorp/suiteapi/process/test/Controller.html "class in com.appiancorp.suiteapi.process.test") - Class in [com.appiancorp.suiteapi.process.test](com/appiancorp/suiteapi/process/test/package-summary.html)

Controller is the root of the controller objects that allow the automatic control of processes and their tasks.

[Controller(ServiceContext)](com/appiancorp/suiteapi/process/test/Controller.html#%3Cinit%3E\(com.appiancorp.services.ServiceContext\)) - Constructor for class com.appiancorp.suiteapi.process.test.[Controller](com/appiancorp/suiteapi/process/test/Controller.html "class in com.appiancorp.suiteapi.process.test")

Construct an Controller for the given ServiceContext.

[Controller.ControllerException](com/appiancorp/suiteapi/process/test/Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test") - Exception in [com.appiancorp.suiteapi.process.test](com/appiancorp/suiteapi/process/test/package-summary.html)

ControllerException This exception is thrown for controller errors.

[Controller.LogElement](com/appiancorp/suiteapi/process/test/Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test") - Class in [com.appiancorp.suiteapi.process.test](com/appiancorp/suiteapi/process/test/package-summary.html)

LogElement The object log is composed of LogElements.

[Controller.LogLevel](com/appiancorp/suiteapi/process/test/Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") - Enum Class in [com.appiancorp.suiteapi.process.test](com/appiancorp/suiteapi/process/test/package-summary.html)

LogLevel enumeration supported by Controller logging.

[ControllerException(ErrorCode)](com/appiancorp/suiteapi/process/test/Controller.ControllerException.html#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode\)) - Constructor for exception com.appiancorp.suiteapi.process.test.[Controller.ControllerException](com/appiancorp/suiteapi/process/test/Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")

[ControllerException(ErrorCode, Object...)](com/appiancorp/suiteapi/process/test/Controller.ControllerException.html#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\)) - Constructor for exception com.appiancorp.suiteapi.process.test.[Controller.ControllerException](com/appiancorp/suiteapi/process/test/Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")

[CONVENIENCE\_SERVICE](com/appiancorp/suiteapi/common/ServiceName.html#CONVENIENCE_SERVICE) - Static variable in interface com.appiancorp.suiteapi.common.[ServiceName](com/appiancorp/suiteapi/common/ServiceName.html "interface in com.appiancorp.suiteapi.common")

Key to obtain the forums convenience service.

[convert(ReturnConversionMap, Long, Object)](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Long,java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

[convert(ReturnConversionMap, Object, Object)](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Object,java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

[convert(ReturnConversionMap, String, Object, Object)](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.String,java.lang.Object,java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[convert(Class, ReturnConversionMap)](com/appiancorp/common/query/returns/PagingInfoReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.common.query.returns.[PagingInfoReturnConverter](com/appiancorp/common/query/returns/PagingInfoReturnConverter.html "class in com.appiancorp.common.query.returns")

[convert(Class, ReturnConversionMap)](com/appiancorp/common/query/returns/SortInfoReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.common.query.returns.[SortInfoReturnConverter](com/appiancorp/common/query/returns/SortInfoReturnConverter.html "class in com.appiancorp.common.query.returns")

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[CredentialsReturnConverter](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/common/PartialResultReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[PartialResultReturnConverter](com/appiancorp/suiteapi/common/PartialResultReturnConverter.html "class in com.appiancorp.suiteapi.common")

Convert method if no list is provided.

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/common/ResultPageReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[ResultPageReturnConverter](com/appiancorp/suiteapi/common/ResultPageReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

Convert method if no list is provided.

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/messaging/MappingReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.messaging.[MappingReturnConverter](com/appiancorp/suiteapi/messaging/MappingReturnConverter.html "class in com.appiancorp.suiteapi.messaging")

Deprecated.

Converts null to a [`Mapping`](com/appiancorp/suiteapi/messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging") object (always returns `null`).

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/personalization/AttributeReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.personalization.[AttributeReturnConverter](com/appiancorp/suiteapi/personalization/AttributeReturnConverter.html "class in com.appiancorp.suiteapi.personalization")

Deprecated.

convert method if no list is provided

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/AcpReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[AcpReturnConverter](com/appiancorp/suiteapi/process/AcpReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if no list is provided

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/AcpsReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[AcpsReturnConverter](com/appiancorp/suiteapi/process/AcpsReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if no list is provided

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/ArvReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[ArvReturnConverter](com/appiancorp/suiteapi/process/ArvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if no list is provided

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/AssigneeReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[AssigneeReturnConverter](com/appiancorp/suiteapi/process/AssigneeReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if no list is provided

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/events/EventProducerReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.events.[EventProducerReturnConverter](com/appiancorp/suiteapi/process/events/EventProducerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated.

Converts `null` to an [`EventProducer`](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") object.

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/events/EventReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.events.[EventReturnConverter](com/appiancorp/suiteapi/process/events/EventReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated.

Converts `null` to an [`Event`](com/appiancorp/suiteapi/process/events/Event.html "class in com.appiancorp.suiteapi.process.events") object.

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.events.[EventTriggerReturnConverter](com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated.

Converts `null` to an [`EventTrigger`](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object.

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/forms/FormConfigMapReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.forms.[FormConfigMapReturnConverter](com/appiancorp/suiteapi/process/forms/FormConfigMapReturnConverter.html "class in com.appiancorp.suiteapi.process.forms")

Deprecated.

 

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/PvReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[PvReturnConverter](com/appiancorp/suiteapi/process/PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if no list is provided

[convert(Class, ReturnConversionMap)](com/appiancorp/suiteapi/process/TvReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[TvReturnConverter](com/appiancorp/suiteapi/process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[convert(Class, Object, ConversionMap)](com/appiancorp/suiteapi/common/LocaleStringParameterConverter.html#convert\(java.lang.Class,java.lang.Object,com.appiancorp.kougar.mapper.ConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[LocaleStringParameterConverter](com/appiancorp/suiteapi/common/LocaleStringParameterConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[convert(Class, Object, ConversionMap)](com/appiancorp/suiteapi/common/LocaleStringReturnConverter.html#convert\(java.lang.Class,java.lang.Object,com.appiancorp.kougar.mapper.ConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[LocaleStringReturnConverter](com/appiancorp/suiteapi/common/LocaleStringReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[convert(Class, Object, ConversionMap)](com/appiancorp/suiteapi/common/TypedValueParameterConverter.html#convert\(java.lang.Class,java.lang.Object,com.appiancorp.kougar.mapper.ConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[TypedValueParameterConverter](com/appiancorp/suiteapi/common/TypedValueParameterConverter.html "class in com.appiancorp.suiteapi.common")

[convert(Class, Object, ConversionMap)](com/appiancorp/suiteapi/process/FormConfigMapParameterConverter.html#convert\(java.lang.Class,java.lang.Object,com.appiancorp.kougar.mapper.ConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[FormConfigMapParameterConverter](com/appiancorp/suiteapi/process/FormConfigMapParameterConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[convert(Class, List, ReturnConversionMap)](com/appiancorp/common/query/returns/PagingInfoReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.common.query.returns.[PagingInfoReturnConverter](com/appiancorp/common/query/returns/PagingInfoReturnConverter.html "class in com.appiancorp.common.query.returns")

[convert(Class, List, ReturnConversionMap)](com/appiancorp/common/query/returns/SortInfoReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.common.query.returns.[SortInfoReturnConverter](com/appiancorp/common/query/returns/SortInfoReturnConverter.html "class in com.appiancorp.common.query.returns")

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[CredentialsReturnConverter](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](com/appiancorp/suiteapi/common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/common/PartialResultReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[PartialResultReturnConverter](com/appiancorp/suiteapi/common/PartialResultReturnConverter.html "class in com.appiancorp.suiteapi.common")

Convert method if list is provided.

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/common/ResultPageReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.common.[ResultPageReturnConverter](com/appiancorp/suiteapi/common/ResultPageReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

Convert method if list is provided.

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/messaging/MappingReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.messaging.[MappingReturnConverter](com/appiancorp/suiteapi/messaging/MappingReturnConverter.html "class in com.appiancorp.suiteapi.messaging")

Deprecated.

Converts the database-format data to a [`Mapping`](com/appiancorp/suiteapi/messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging") object.

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/personalization/AttributeReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.personalization.[AttributeReturnConverter](com/appiancorp/suiteapi/personalization/AttributeReturnConverter.html "class in com.appiancorp.suiteapi.personalization")

Deprecated.

convert method if list is provided

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/AcpReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[AcpReturnConverter](com/appiancorp/suiteapi/process/AcpReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if list is provided

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/AcpsReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[AcpsReturnConverter](com/appiancorp/suiteapi/process/AcpsReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if list is provided

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/ArvReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[ArvReturnConverter](com/appiancorp/suiteapi/process/ArvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if list is provided

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/AssigneeReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[AssigneeReturnConverter](com/appiancorp/suiteapi/process/AssigneeReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if list is provided

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/events/EventProducerReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.events.[EventProducerReturnConverter](com/appiancorp/suiteapi/process/events/EventProducerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated.

Converts the database-format data to an [`EventProducer`](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") object.

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/events/EventReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.events.[EventReturnConverter](com/appiancorp/suiteapi/process/events/EventReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated.

Converts the database-format data to an [`Event`](com/appiancorp/suiteapi/process/events/Event.html "class in com.appiancorp.suiteapi.process.events") object.

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.events.[EventTriggerReturnConverter](com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

Deprecated.

Converts the database-format data to an [`EventTrigger`](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object.

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/forms/FormConfigMapReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.forms.[FormConfigMapReturnConverter](com/appiancorp/suiteapi/process/forms/FormConfigMapReturnConverter.html "class in com.appiancorp.suiteapi.process.forms")

Deprecated.

 

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/PvInstancesReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[PvInstancesReturnConverter](com/appiancorp/suiteapi/process/PvInstancesReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/PvReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[PvReturnConverter](com/appiancorp/suiteapi/process/PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

convert method if list is provided

[convert(Class, List, ReturnConversionMap)](com/appiancorp/suiteapi/process/TvReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)) - Method in class com.appiancorp.suiteapi.process.[TvReturnConverter](com/appiancorp/suiteapi/process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

 

[CONVERT\_TO\_SAIL\_RULE\_INSUFFICIENT\_GENERIC](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONVERT_TO_SAIL_RULE_INSUFFICIENT_GENERIC) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONVERT\_TO\_SAIL\_RULE\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONVERT_TO_SAIL_RULE_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONVERT\_TO\_SAIL\_RULE\_INVALID\_ID](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONVERT_TO_SAIL_RULE_INVALID_ID) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONVERT\_TO\_SAIL\_RULE\_INVALID\_RULE\_INPUT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONVERT_TO_SAIL_RULE_INVALID_RULE_INPUT) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CONVERT\_TO\_SAIL\_RULE\_INVALID\_VERSION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CONVERT_TO_SAIL_RULE_INVALID_VERSION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[convertFromLocalObjectType(int)](com/appiancorp/suiteapi/process/TypedVariable.html#convertFromLocalObjectType\(int\)) - Static method in class com.appiancorp.suiteapi.process.[TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

Deprecated.

Convert LocalObject type to Standard type

[convertInstanceType(ParameterConversionMap, Long)](com/appiancorp/suiteapi/common/TypedValueParameterConverter.html#convertInstanceType\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long\)) - Method in class com.appiancorp.suiteapi.common.[TypedValueParameterConverter](com/appiancorp/suiteapi/common/TypedValueParameterConverter.html "class in com.appiancorp.suiteapi.common")

[convertNTVsToTVs(NamedTypedValue\[\])](com/appiancorp/suiteapi/process/TypedVariableUtils.html#convertNTVsToTVs\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\)) - Static method in class com.appiancorp.suiteapi.process.[TypedVariableUtils](com/appiancorp/suiteapi/process/TypedVariableUtils.html "class in com.appiancorp.suiteapi.process")

[convertParameter(ParameterConversionMap, Long, Object)](com/appiancorp/suiteapi/common/TypeConverter.html#convertParameter\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long,java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[TypeConverter](com/appiancorp/suiteapi/common/TypeConverter.html "class in com.appiancorp.suiteapi.common")

[convertParameter(ParameterConversionMap, Long, Object, TypeConverterState)](com/appiancorp/suiteapi/common/TypeConverter.html#convertParameter\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long,java.lang.Object,com.appiancorp.suiteapi.common.TypeConverterState\)) - Method in class com.appiancorp.suiteapi.common.[TypeConverter](com/appiancorp/suiteapi/common/TypeConverter.html "class in com.appiancorp.suiteapi.common")

[convertReturn(ReturnConversionMap, Long, Object)](com/appiancorp/suiteapi/common/TypeConverter.html#convertReturn\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Long,java.lang.Object\)) - Method in class com.appiancorp.suiteapi.common.[TypeConverter](com/appiancorp/suiteapi/common/TypeConverter.html "class in com.appiancorp.suiteapi.common")

[convertTVsToNTVs(TypedVariable\[\])](com/appiancorp/suiteapi/process/TypedVariableUtils.html#convertTVsToNTVs\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D\)) - Static method in class com.appiancorp.suiteapi.process.[TypedVariableUtils](com/appiancorp/suiteapi/process/TypedVariableUtils.html "class in com.appiancorp.suiteapi.process")

[convertValueToPagingInfo(Value)](com/appiancorp/suiteapi/common/paging/PagingInfoConverter.html#convertValueToPagingInfo\(com.appiancorp.core.expr.portable.Value\)) - Method in class com.appiancorp.suiteapi.common.paging.[PagingInfoConverter](com/appiancorp/suiteapi/common/paging/PagingInfoConverter.html "class in com.appiancorp.suiteapi.common.paging")

Converts Value to PagingInfo Java object

[copy()](com/appiancorp/common/query/Criteria.html#copy\(\)) - Method in interface com.appiancorp.common.query.[Criteria](com/appiancorp/common/query/Criteria.html "interface in com.appiancorp.common.query")

[copy()](com/appiancorp/common/query/GenericFilter.html#copy\(\)) - Method in class com.appiancorp.common.query.[GenericFilter](com/appiancorp/common/query/GenericFilter.html "class in com.appiancorp.common.query")

[copy()](com/appiancorp/common/query/GenericLogicalExpression.html#copy\(\)) - Method in class com.appiancorp.common.query.[GenericLogicalExpression](com/appiancorp/common/query/GenericLogicalExpression.html "class in com.appiancorp.common.query")

[copy()](com/appiancorp/common/query/Search.html#copy\(\)) - Method in class com.appiancorp.common.query.[Search](com/appiancorp/common/query/Search.html "class in com.appiancorp.common.query")

[copy()](com/appiancorp/common/query/TypedValueFilter.html#copy\(\)) - Method in class com.appiancorp.common.query.[TypedValueFilter](com/appiancorp/common/query/TypedValueFilter.html "class in com.appiancorp.common.query")

[copy()](com/appiancorp/common/query/TypedValueLogicalExpression.html#copy\(\)) - Method in class com.appiancorp.common.query.[TypedValueLogicalExpression](com/appiancorp/common/query/TypedValueLogicalExpression.html "class in com.appiancorp.common.query")

[copy()](com/appiancorp/suiteapi/process/ActivityClassParameter.html#copy\(\)) - Method in class com.appiancorp.suiteapi.process.[ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

Can make copy externally.

[copy()](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html#copy\(\)) - Method in class com.appiancorp.suiteapi.process.analytics2.[ProcessReport](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")

Deprecated.

use [`ProcessReport.clone()`](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html#clone\(\)) instead

[copy(CopySource\[\], Long)](com/appiancorp/suiteapi/content/ContentService.html#copy\(com.appiancorp.suiteapi.content.CopySource%5B%5D,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

This copies Content item from one location to another.

[copy(Long\[\], Long)](com/appiancorp/suiteapi/content/ContentService.html#copy\(java.lang.Long%5B%5D,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

This copies Content item from one location to another.

[copy(Long, Long)](com/appiancorp/suiteapi/content/ContentService.html#copy\(java.lang.Long,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

This copies Content item from one location to another.

[COPY\_CREATED](com/appiancorp/suiteapi/content/CopySource.html#COPY_CREATED) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Copy the created timestamp; otherwise, the current timestamp will be used.

[COPY\_CREATOR](com/appiancorp/suiteapi/content/CopySource.html#COPY_CREATOR) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Copy the creator username; otherwise, the current user will be used.

[COPY\_DEFAULT](com/appiancorp/suiteapi/content/CopySource.html#COPY_DEFAULT) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

This is the default copy rule if none specified in constructor.

[COPY\_EXCLUDE](com/appiancorp/suiteapi/content/CopySource.html#COPY_EXCLUDE) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Exclude source and its children from copy.

[COPY\_EXCLUDE\_VERSIONS](com/appiancorp/suiteapi/content/CopySource.html#COPY_EXCLUDE_VERSIONS) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Exclude versions of Content items, rather than copying them as well.

[COPY\_INACTIVE](com/appiancorp/suiteapi/content/CopySource.html#COPY_INACTIVE) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Copy inactive items as well as active items; otherwise, only active items will be copied.

[COPY\_INCLUDE\_INTO](com/appiancorp/suiteapi/content/CopySource.html#COPY_INCLUDE_INTO) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Copy source into target, as its child or children.

[COPY\_INCLUDE\_ONTO](com/appiancorp/suiteapi/content/CopySource.html#COPY_INCLUDE_ONTO) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Copy source onto target, such that source's children are copied to target, but not source itself.

[COPY\_SECURITY](com/appiancorp/suiteapi/content/CopySource.html#COPY_SECURITY) - Static variable in class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Copy custom security rolemaps where present, otherwise always inherit.

[copy$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#copy$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[copyContents()](com/appiancorp/suiteapi/content/CopyReference.html#copyContents\(\)) - Method in class com.appiancorp.suiteapi.content.[CopyReference](com/appiancorp/suiteapi/content/CopyReference.html "class in com.appiancorp.suiteapi.content")

Copies the contents from the Source object to the Target

[copyNonLocalizedFieldsOnly()](com/appiancorp/suiteapi/administration/Folder.html#copyNonLocalizedFieldsOnly\(\)) - Method in class com.appiancorp.suiteapi.administration.[Folder](com/appiancorp/suiteapi/administration/Folder.html "class in com.appiancorp.suiteapi.administration")

Deprecated.

Creates and returns a new Folder object.

[copyNonLocalizedFieldsOnly()](com/appiancorp/suiteapi/process/PriorityRegistration.html#copyNonLocalizedFieldsOnly\(\)) - Method in class com.appiancorp.suiteapi.process.[PriorityRegistration](com/appiancorp/suiteapi/process/PriorityRegistration.html "class in com.appiancorp.suiteapi.process")

Creates and returns a new Priority object.

[CopyReference](com/appiancorp/suiteapi/content/CopyReference.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Represents a reference to a copied Content item.

[CopyReference()](com/appiancorp/suiteapi/content/CopyReference.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[CopyReference](com/appiancorp/suiteapi/content/CopyReference.html "class in com.appiancorp.suiteapi.content")

[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Represents an instruction for the source of a Content copy.

[CopySource()](com/appiancorp/suiteapi/content/CopySource.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

Blank CopySource with default rule; the source must still be set.

[CopySource(Long)](com/appiancorp/suiteapi/content/CopySource.html#%3Cinit%3E\(java.lang.Long\)) - Constructor for class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

CopySource with given source and default rule.

[CopySource(Long, int)](com/appiancorp/suiteapi/content/CopySource.html#%3Cinit%3E\(java.lang.Long,int\)) - Constructor for class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

CopySource with given source and rule.

[CopySource(Long, Integer)](com/appiancorp/suiteapi/content/CopySource.html#%3Cinit%3E\(java.lang.Long,java.lang.Integer\)) - Constructor for class com.appiancorp.suiteapi.content.[CopySource](com/appiancorp/suiteapi/content/CopySource.html "class in com.appiancorp.suiteapi.content")

CopySource with given source and rule.

[copyWebsiteBody(String, String)](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html#copyWebsiteBody\(java.lang.String,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniBodyService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

Copies the body of one miniwebsite portlet to another

[copyWebsiteBody$UPDATES](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html#copyWebsiteBody$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniBodyService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

 

[COULD\_NOT\_RETRIVE\_RECORD\_DASHBOARD](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#COULD_NOT_RETRIVE_RECORD_DASHBOARD) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[count(Column)](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html#count\(com.appiancorp.common.query.Column\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Aggregator](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

Apply a "count" aggregation function to the given [`Column`](com/appiancorp/common/query/Column.html "class in com.appiancorp.common.query")

[count(ColumnAlias)](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html#count\(com.appiancorp.common.query.ColumnAlias\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Aggregator](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

Apply a "count" aggregation function to the given [`ColumnAlias`](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query")

[count(ColumnAlias, boolean)](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html#count\(com.appiancorp.common.query.ColumnAlias,boolean\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Aggregator](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

Apply a "count" aggregation function to the given [`ColumnAlias`](com/appiancorp/common/query/ColumnAlias.html "class in com.appiancorp.common.query").

[count(String, String)](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html#count\(java.lang.String,java.lang.String\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Aggregator](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

Apply a "count" aggregation function to the given field name.

[count(String, String, boolean)](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html#count\(java.lang.String,java.lang.String,boolean\)) - Static method in class com.appiancorp.common.query.[QueryBuilderTools.Aggregator](com/appiancorp/common/query/QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

Apply a "count" aggregation function to the given field name.

[COUNT](com/appiancorp/common/query/AggregationFunction.html#COUNT) - Enum constant in enum class com.appiancorp.common.query.[AggregationFunction](com/appiancorp/common/query/AggregationFunction.html "enum class in com.appiancorp.common.query")

[COUNT\_ALL](com/appiancorp/suiteapi/common/Constants.html#COUNT_ALL) - Static variable in interface com.appiancorp.suiteapi.common.[Constants](com/appiancorp/suiteapi/common/Constants.html "interface in com.appiancorp.suiteapi.common")

Constant representing that all results be retrieved in one call.

[COUNT\_NOT\_AVAILABLE](com/appiancorp/common/query/FacetOption.html#COUNT_NOT_AVAILABLE) - Static variable in class com.appiancorp.common.query.[FacetOption](com/appiancorp/common/query/FacetOption.html "class in com.appiancorp.common.query")

The value used when a count is not available.

[create(ServiceContext)](com/appiancorp/suiteapi/common/ServiceProvider.html#create\(com.appiancorp.services.ServiceContext\)) - Static method in class com.appiancorp.suiteapi.common.[ServiceProvider](com/appiancorp/suiteapi/common/ServiceProvider.html "class in com.appiancorp.suiteapi.common")

Provides a default implementation of all the known Services.

[create(Application)](com/appiancorp/suiteapi/applications/ApplicationService.html#create\(com.appiancorp.suiteapi.applications.Application\)) - Method in interface com.appiancorp.suiteapi.applications.[ApplicationService](com/appiancorp/suiteapi/applications/ApplicationService.html "interface in com.appiancorp.suiteapi.applications")

Creates an application.

[create(Content\[\], Integer)](com/appiancorp/suiteapi/content/ContentService.html#create\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Creates content.

[create(Content, Integer)](com/appiancorp/suiteapi/content/ContentService.html#create\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Creates a content object.

[CREATE\_COMMUNITY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_COMMUNITY) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_COMMUNITY\_INSUFFICIENT\_PRIVILEGES](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_COMMUNITY_INSUFFICIENT_PRIVILEGES) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_COMMUNITY\_INVALID\_PARENT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_COMMUNITY_INVALID_PARENT) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_GROUP\_ACT](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_GROUP_ACT) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_GROUP\_ACT\_DUPLICATE\_NAME](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_GROUP_ACT_DUPLICATE_NAME) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_GROUP\_ACT\_INVALID\_GROUP\_TYPE](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_GROUP_ACT_INVALID_GROUP_TYPE) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_GROUP\_ACT\_INVALID\_MEMBERSHIP\_POLICY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_GROUP_ACT_INVALID_MEMBERSHIP_POLICY) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_GROUP\_ACT\_INVALID\_PARENT\_GROUP](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_GROUP_ACT_INVALID_PARENT_GROUP) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_GROUP\_ACT\_INVALID\_SECURITY\_MAP](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_GROUP_ACT_INVALID_SECURITY_MAP) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CREATE\_GROUP\_ACT\_INVALID\_VIEW\_POLICY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CREATE_GROUP_ACT_INVALID_VIEW_POLICY) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[create$UPDATES](com/appiancorp/suiteapi/applications/ApplicationService.html#create$UPDATES) - Static variable in interface com.appiancorp.suiteapi.applications.[ApplicationService](com/appiancorp/suiteapi/applications/ApplicationService.html "interface in com.appiancorp.suiteapi.applications")

[create$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#create$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[createApproval(Content\[\], Integer)](com/appiancorp/suiteapi/content/ContentService.html#createApproval\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Attempts to create content, and gets the approval statuses back in an `Approval` bean.

[createApproval(Content, Integer)](com/appiancorp/suiteapi/content/ContentService.html#createApproval\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Attempts to create content, and gets the approval status back in an `Approval` bean.

[createApproval$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#createApproval$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[createBusinessEntity(BusinessEntity)](com/appiancorp/suiteapi/process/ProcessDesignService.html#createBusinessEntity\(com.appiancorp.suiteapi.process.webservices.BusinessEntity\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

Creates a [`BusinessEntity`](com/appiancorp/suiteapi/process/webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices") for use with Web Services.

[createBusinessEntity$UPDATES](com/appiancorp/suiteapi/process/ProcessDesignService.html#createBusinessEntity$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

[createCalendar(WorkingCalendar)](com/appiancorp/suiteapi/process/CalendarService.html#createCalendar\(com.appiancorp.suiteapi.process.calendar.WorkingCalendar\)) - Method in interface com.appiancorp.suiteapi.process.[CalendarService](com/appiancorp/suiteapi/process/CalendarService.html "interface in com.appiancorp.suiteapi.process")

Creates a calendar.

[createCalendar$UPDATES](com/appiancorp/suiteapi/process/CalendarService.html#createCalendar$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[CalendarService](com/appiancorp/suiteapi/process/CalendarService.html "interface in com.appiancorp.suiteapi.process")

[createCommunities(Community\[\])](com/appiancorp/suiteapi/collaboration/CommunityService.html#createCommunities\(com.appiancorp.suiteapi.collaboration.Community%5B%5D\)) - Method in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates [`Community`](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration") objects in bulk in the collaboration application

[createCommunities$UPDATES](com/appiancorp/suiteapi/collaboration/CommunityService.html#createCommunities$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createCommunity(Community)](com/appiancorp/suiteapi/collaboration/CommunityService.html#createCommunity\(com.appiancorp.suiteapi.collaboration.Community\)) - Method in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates a new [`Community`](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration") in the collaboration application

[createCommunity$UPDATES](com/appiancorp/suiteapi/collaboration/CommunityService.html#createCommunity$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[CommunityService](com/appiancorp/suiteapi/collaboration/CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createDocument(Document)](com/appiancorp/suiteapi/collaboration/DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) - Method in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Create a document.

[createDocument$UPDATES](com/appiancorp/suiteapi/collaboration/DocumentService.html#createDocument$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createDocuments(Document\[\])](com/appiancorp/suiteapi/collaboration/DocumentService.html#createDocuments\(com.appiancorp.suiteapi.collaboration.Document%5B%5D\)) - Method in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Create multiple documents.

[createDocuments$UPDATES](com/appiancorp/suiteapi/collaboration/DocumentService.html#createDocuments$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createEscalatedServiceContext(ServiceContext, String)](com/appiancorp/services/ServiceContextFactory.html#createEscalatedServiceContext\(com.appiancorp.services.ServiceContext,java.lang.String\)) - Static method in class com.appiancorp.services.[ServiceContextFactory](com/appiancorp/services/ServiceContextFactory.html "class in com.appiancorp.services")

Create ServiceContext based on sc that is escalated with the privileges of grantorUsername

[createEscalatedServiceContext(String, String)](com/appiancorp/services/ServiceContextFactory.html#createEscalatedServiceContext\(java.lang.String,java.lang.String\)) - Static method in class com.appiancorp.services.[ServiceContextFactory](com/appiancorp/services/ServiceContextFactory.html "class in com.appiancorp.services")

Similar to [`ServiceContextFactory.getServiceContext(String)`](com/appiancorp/services/ServiceContextFactory.html#getServiceContext\(java.lang.String\)), but also populates the grantor

[createEventProducer(Long)](com/appiancorp/suiteapi/process/events/EventProducer.html#createEventProducer\(java.lang.Long\)) - Static method in class com.appiancorp.suiteapi.process.events.[EventProducer](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")

Creates a new `EventProducer` object of the type corresponding with the type code passed in.

[createEventTrigger(Long)](com/appiancorp/suiteapi/process/events/EventTrigger.html#createEventTrigger\(java.lang.Long\)) - Static method in class com.appiancorp.suiteapi.process.events.[EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Creates a new `EventTrigger` object of the type coresponding with the type code passed in.

[createExtraOutputMap(ActivityClassParameter\[\])](com/appiancorp/suiteapi/process/framework/ActivityParameterHelper.html#createExtraOutputMap\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.framework.[ActivityParameterHelper](com/appiancorp/suiteapi/process/framework/ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")

Produce an output map that contains values used in populating the user interface that are not passed to the UI by default.

[createExtraOutputMap(ActivityClassParameter\[\])](com/appiancorp/suiteapi/process/framework/EmptyActivityParameterHelper.html#createExtraOutputMap\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\)) - Method in class com.appiancorp.suiteapi.process.framework.[EmptyActivityParameterHelper](com/appiancorp/suiteapi/process/framework/EmptyActivityParameterHelper.html "class in com.appiancorp.suiteapi.process.framework")

Default do-nothing implementation.

[createFolder(Folder)](com/appiancorp/suiteapi/collaboration/FolderService.html#createFolder\(com.appiancorp.suiteapi.collaboration.Folder\)) - Method in interface com.appiancorp.suiteapi.collaboration.[FolderService](com/appiancorp/suiteapi/collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates a new folder

[createFolder(ProcessModelFolder)](com/appiancorp/suiteapi/process/ProcessDesignService.html#createFolder\(com.appiancorp.suiteapi.process.ProcessModelFolder\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

Creates a folder for storing process models.

[createFolder(Long, Folder)](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createFolder\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.links.Folder\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

Create a non-root [`Folder`](com/appiancorp/suiteapi/portal/portlets/links/Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") Minimum properties which must be populated on the `Folder` are: none

[createFolder$UPDATES](com/appiancorp/suiteapi/collaboration/FolderService.html#createFolder$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[FolderService](com/appiancorp/suiteapi/collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createFolder$UPDATES](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createFolder$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

 

[createFolder$UPDATES](com/appiancorp/suiteapi/process/ProcessDesignService.html#createFolder$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

[createFolders(Folder\[\])](com/appiancorp/suiteapi/collaboration/FolderService.html#createFolders\(com.appiancorp.suiteapi.collaboration.Folder%5B%5D\)) - Method in interface com.appiancorp.suiteapi.collaboration.[FolderService](com/appiancorp/suiteapi/collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates multiple folders

[createFolders$UPDATES](com/appiancorp/suiteapi/collaboration/FolderService.html#createFolders$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[FolderService](com/appiancorp/suiteapi/collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createForum(Forum)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createForum\(com.appiancorp.suiteapi.forums.Forum\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

Create a discussion forum.

[createForum$UPDATES](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createForum$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[createForums(Forum\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createForums\(com.appiancorp.suiteapi.forums.Forum%5B%5D\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

Create multiple discussion forums.

[createForums$UPDATES](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createForums$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[createGroup(Group)](com/appiancorp/suiteapi/personalization/GroupService.html#createGroup\(com.appiancorp.suiteapi.personalization.Group\)) - Method in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

Create a new group.

[createGroup$UPDATES](com/appiancorp/suiteapi/personalization/GroupService.html#createGroup$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

[createGroupMessage(Long, GroupMessage)](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html#createGroupMessage\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.groupmessage.[GroupMessageService](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage")

Deprecated.

Create a group message in the given portlet.

[createGroupMessage$UPDATES](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html#createGroupMessage$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.groupmessage.[GroupMessageService](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.groupmessage")

Deprecated.

 

[createGroups(Group\[\])](com/appiancorp/suiteapi/personalization/GroupService.html#createGroups\(com.appiancorp.suiteapi.personalization.Group%5B%5D\)) - Method in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

Create new groups.

[createGroups$UPDATES](com/appiancorp/suiteapi/personalization/GroupService.html#createGroups$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[GroupService](com/appiancorp/suiteapi/personalization/GroupService.html "interface in com.appiancorp.suiteapi.personalization")

[createGroupType(GroupType)](com/appiancorp/suiteapi/personalization/GroupTypeService.html#createGroupType\(com.appiancorp.suiteapi.personalization.GroupType\)) - Method in interface com.appiancorp.suiteapi.personalization.[GroupTypeService](com/appiancorp/suiteapi/personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")

Creates a new group type.

[createGroupType$UPDATES](com/appiancorp/suiteapi/personalization/GroupTypeService.html#createGroupType$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[GroupTypeService](com/appiancorp/suiteapi/personalization/GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")

[createKnowledgeCenter(KnowledgeCenter)](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#createKnowledgeCenter\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter\)) - Method in interface com.appiancorp.suiteapi.collaboration.[KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates a new knowledge center

[createKnowledgeCenter$UPDATES](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#createKnowledgeCenter$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createKnowledgeCenters(KnowledgeCenter\[\])](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#createKnowledgeCenters\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter%5B%5D\)) - Method in interface com.appiancorp.suiteapi.collaboration.[KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates multiple knowledge centers

[createKnowledgeCenters$UPDATES](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#createKnowledgeCenters$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createLeaderMessage(Long, LeaderMessage)](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html#createLeaderMessage\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessage\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.leadermessage.[LeaderMessageService](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage")

Deprecated.

Create a leader message.

[createLeaderMessage$UPDATES](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html#createLeaderMessage$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.leadermessage.[LeaderMessageService](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageService.html "interface in com.appiancorp.suiteapi.portal.portlets.leadermessage")

Deprecated.

 

[createLink(Long, Link)](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createLink\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.links.Link\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

Create a [`Link`](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") within a [`Folder`](com/appiancorp/suiteapi/portal/portlets/links/Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

[createLink(Long, Long)](com/appiancorp/suiteapi/collaboration/DocumentService.html#createLink\(java.lang.Long,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates a symbolic link to a document.

[createLink$UPDATES](com/appiancorp/suiteapi/collaboration/DocumentService.html#createLink$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createLink$UPDATES](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createLink$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

 

[createLinks(Long\[\], Long)](com/appiancorp/suiteapi/collaboration/DocumentService.html#createLinks\(java.lang.Long%5B%5D,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates a list of symbolic links to documents.

[createLinks(Long\[\], Long\[\])](com/appiancorp/suiteapi/collaboration/DocumentService.html#createLinks\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\)) - Method in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates multiple symbolic links to documents in a list of folders; a single link is created in each of the folders (ie each index in `docIds_` maps to an index in `foids_`).

[createLinks$UPDATES](com/appiancorp/suiteapi/collaboration/DocumentService.html#createLinks$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createLinkType(LinkType)](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

Create a [`LinkType`](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links"). There may be a maximum of 255 link types. Note that this method, unlike [`LinksService.registerLinkType(com.appiancorp.suiteapi.portal.portlets.links.LinkType)`](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#registerLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\)) will create another link type even if there exists a link type with the same name. Minimum properties which must be populated on the `LinkType` are: none

[createLinkType$UPDATES](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createLinkType$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

 

[createMessage(Message)](com/appiancorp/suiteapi/forums/DiscussionBodyService.html#createMessage\(com.appiancorp.suiteapi.forums.Message\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionBodyService](com/appiancorp/suiteapi/forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

Stores the body for a new message

[createMessage(Long, Message)](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createMessage\(java.lang.Long,com.appiancorp.suiteapi.forums.Message\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

Create a message.

[createMessage$UPDATES](com/appiancorp/suiteapi/forums/DiscussionBodyService.html#createMessage$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionBodyService](com/appiancorp/suiteapi/forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[createMessage$UPDATES](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createMessage$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[createMessages(Message\[\])](com/appiancorp/suiteapi/forums/DiscussionBodyService.html#createMessages\(com.appiancorp.suiteapi.forums.Message%5B%5D\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionBodyService](com/appiancorp/suiteapi/forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

Stores the body for multiple messages

[createMessages(Long\[\], Message\[\])](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createMessages\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.forums.Message%5B%5D\)) - Method in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

Create multiple messages, one per forum.

[createMessages$UPDATES](com/appiancorp/suiteapi/forums/DiscussionBodyService.html#createMessages$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionBodyService](com/appiancorp/suiteapi/forums/DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[createMessages$UPDATES](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html#createMessages$UPDATES) - Static variable in interface com.appiancorp.suiteapi.forums.[DiscussionMetadataCoreService](com/appiancorp/suiteapi/forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

Deprecated.

 

[createMini(Long, String, boolean, boolean)](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#createMini\(java.lang.Long,java.lang.String,boolean,boolean\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

Create a new miniwebsite portlet or a new version of an existing miniwebsite portlet.

[createMini$UPDATES](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html#createMini$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniMetadataService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

 

[createNoteContent(NoteMetadata, String)](com/appiancorp/suiteapi/process/NotesContentService.html#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.process.[NotesContentService](com/appiancorp/suiteapi/process/NotesContentService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Creates note content at the location on disk specified by the note metadata The location refers to the full path of a file on disk.

[createNoteContent(String, String)](com/appiancorp/suiteapi/process/NotesContentService.html#createNoteContent\(java.lang.String,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.process.[NotesContentService](com/appiancorp/suiteapi/process/NotesContentService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Creates new note content at the specified location on disk.

[createNoteContent$UPDATES](com/appiancorp/suiteapi/process/NotesContentService.html#createNoteContent$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[NotesContentService](com/appiancorp/suiteapi/process/NotesContentService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

 

[createNoteMetadata(NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadata\(com.appiancorp.suiteapi.process.NoteMetadata\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadata$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadata$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createNoteMetadataForProcess(Long, NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadataForProcess$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForProcess$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createNoteMetadataForProcesses(Long\[\], NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForProcesses\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.NoteMetadata\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadataForProcesses$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForProcesses$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createNoteMetadataForTask(Long, NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForTask\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadataForTask$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForTask$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createNoteMetadataForTasks(Long\[\], NoteMetadata)](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForTasks\(java.lang.Long%5B%5D,com.appiancorp.suiteapi.process.NoteMetadata\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadataForTasks$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadataForTasks$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createNoteMetadatas(NoteMetadata\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatas\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadatas$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatas$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createNoteMetadatasForProcess(Long, NoteMetadata\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatasForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadatasForProcess$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatasForProcess$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createNoteMetadatasForTask(Long, NoteMetadata\[\])](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatasForTask\(java.lang.Long,com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

since 23.2

[createNoteMetadatasForTask$UPDATES](com/appiancorp/suiteapi/process/ProcessExecutionService.html#createNoteMetadatasForTask$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessExecutionService](com/appiancorp/suiteapi/process/ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

[createPage(Page)](com/appiancorp/suiteapi/portal/PageService.html#createPage\(com.appiancorp.suiteapi.portal.Page\)) - Method in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Creates a page using the attributes specified in the passed object.

[createPage$UPDATES](com/appiancorp/suiteapi/portal/PageService.html#createPage$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[createPages(Page\[\])](com/appiancorp/suiteapi/portal/PageService.html#createPages\(com.appiancorp.suiteapi.portal.Page%5B%5D\)) - Method in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Creates pages in bulk using the attributes specified in the passed objects.

[createPages$UPDATES](com/appiancorp/suiteapi/portal/PageService.html#createPages$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PageService](com/appiancorp/suiteapi/portal/PageService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[createPortlet(Portlet)](com/appiancorp/suiteapi/portal/PortletService.html#createPortlet\(com.appiancorp.suiteapi.portal.Portlet\)) - Method in interface com.appiancorp.suiteapi.portal.[PortletService](com/appiancorp/suiteapi/portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Creates a portlet.

[createPortlet$UPDATES](com/appiancorp/suiteapi/portal/PortletService.html#createPortlet$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PortletService](com/appiancorp/suiteapi/portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[createPortlets(Portlet\[\])](com/appiancorp/suiteapi/portal/PortletService.html#createPortlets\(com.appiancorp.suiteapi.portal.Portlet%5B%5D\)) - Method in interface com.appiancorp.suiteapi.portal.[PortletService](com/appiancorp/suiteapi/portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

Creates portlets in bulk.

[createPortlets$UPDATES](com/appiancorp/suiteapi/portal/PortletService.html#createPortlets$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.[PortletService](com/appiancorp/suiteapi/portal/PortletService.html "interface in com.appiancorp.suiteapi.portal")

Deprecated.

 

[createPrivateKnowledgeCenter()](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#createPrivateKnowledgeCenter\(\)) - Method in interface com.appiancorp.suiteapi.collaboration.[KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Create a private knowledge center for the current user.

[createPrivateKnowledgeCenter$UPDATES](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html#createPrivateKnowledgeCenter$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[KnowledgeCenterService](com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createProcessModel(ProcessModel)](com/appiancorp/suiteapi/process/ProcessDesignService.html#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

Creates a [`ProcessModel`](com/appiancorp/suiteapi/process/ProcessModel.html "class in com.appiancorp.suiteapi.process") in the database using the input parameter.

[createProcessModel(ProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\)) - Static method in class com.appiancorp.suiteapi.process.[ProcessModelFacade](com/appiancorp/suiteapi/process/ProcessModelFacade.html "class in com.appiancorp.suiteapi.process")

Deprecated.

since 6.0.3

[createProcessModel(ProcessModel, ServiceContext)](com/appiancorp/suiteapi/process/ProcessModelFacade.html#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.services.ServiceContext\)) - Static method in class com.appiancorp.suiteapi.process.[ProcessModelFacade](com/appiancorp/suiteapi/process/ProcessModelFacade.html "class in com.appiancorp.suiteapi.process")

Creates a process model in the database.

[createProcessModel$UPDATES](com/appiancorp/suiteapi/process/ProcessDesignService.html#createProcessModel$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

[createProcessModelWebService(ProcessModelWebService)](com/appiancorp/suiteapi/process/ProcessDesignService.html#createProcessModelWebService\(com.appiancorp.suiteapi.process.webservices.ProcessModelWebService\)) - Method in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

Create a [`ProcessModelWebService`](com/appiancorp/suiteapi/process/webservices/ProcessModelWebService.html "class in com.appiancorp.suiteapi.process.webservices").

[createProcessModelWebService$UPDATES](com/appiancorp/suiteapi/process/ProcessDesignService.html#createProcessModelWebService$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.[ProcessDesignService](com/appiancorp/suiteapi/process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")

[createProcessReport(ProcessReport, Long)](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#createProcessReport\(com.appiancorp.suiteapi.process.analytics2.ProcessReport,java.lang.Long\)) - Method in interface com.appiancorp.suiteapi.process.analytics2.[ProcessAnalyticsService](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")

Add a process report to the specified folder.

[createProcessReport$UPDATES](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html#createProcessReport$UPDATES) - Static variable in interface com.appiancorp.suiteapi.process.analytics2.[ProcessAnalyticsService](com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")

[createQueue(int, String)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#createQueue\(int,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.messaging.[JmsConnectionFactory](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

Creates or obtains a JMS `Queue`.

[createQueue(Session, String)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#createQueue\(javax.jms.Session,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.messaging.[JmsConnectionFactory](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

Creates or obtains a JMS `Queue` on the session provided.

[createRootFolder(Folder)](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createRootFolder\(com.appiancorp.suiteapi.portal.portlets.links.Folder\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

Create a root [`Folder`](com/appiancorp/suiteapi/portal/portlets/links/Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

[createRootFolder$UPDATES](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createRootFolder$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

 

[createRootLink(Link)](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createRootLink\(com.appiancorp.suiteapi.portal.portlets.links.Link\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

Create a root [`Link`](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links").

[createRootLink$UPDATES](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html#createRootLink$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.links.[LinksService](com/appiancorp/suiteapi/portal/portlets/links/LinksService.html "interface in com.appiancorp.suiteapi.portal.portlets.links")

Deprecated.

 

[createTitle(UserRank)](com/appiancorp/suiteapi/personalization/UserService.html#createTitle\(com.appiancorp.suiteapi.personalization.UserRank\)) - Method in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

Creates a new rank (title).

[createTitle$UPDATES](com/appiancorp/suiteapi/personalization/UserService.html#createTitle$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

[createTopic(int, String)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#createTopic\(int,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.messaging.[JmsConnectionFactory](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

Creates or obtains a JMS `Topic`.

[createTopic(Session, String)](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#createTopic\(javax.jms.Session,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.messaging.[JmsConnectionFactory](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

Creates or obtains a JMS `Topic` on the session provided.

[createTypeConverterMappings(Map<Long, TypeConverter>)](com/appiancorp/suiteapi/common/TypeConverterResolver.html#createTypeConverterMappings\(java.util.Map\)) - Static method in class com.appiancorp.suiteapi.common.[TypeConverterResolver](com/appiancorp/suiteapi/common/TypeConverterResolver.html "class in com.appiancorp.suiteapi.common")

[createUnpooledConnection()](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html#createUnpooledConnection\(\)) - Method in interface com.appiancorp.suiteapi.messaging.[JmsConnectionFactory](com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

Creates a new unpooled `Connection`.

[createUser(User)](com/appiancorp/suiteapi/personalization/UserService.html#createUser\(com.appiancorp.suiteapi.personalization.User\)) - Method in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

Creates a new user

[createUser(UserProfile)](com/appiancorp/suiteapi/personalization/UserProfileService.html#createUser\(com.appiancorp.suiteapi.personalization.UserProfile\)) - Method in interface com.appiancorp.suiteapi.personalization.[UserProfileService](com/appiancorp/suiteapi/personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")

Creates a new user

[createUser$UPDATES](com/appiancorp/suiteapi/personalization/UserProfileService.html#createUser$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[UserProfileService](com/appiancorp/suiteapi/personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")

[createUser$UPDATES](com/appiancorp/suiteapi/personalization/UserService.html#createUser$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

[createUsers(User\[\])](com/appiancorp/suiteapi/personalization/UserService.html#createUsers\(com.appiancorp.suiteapi.personalization.User%5B%5D\)) - Method in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

Creates new users.

[createUsers(UserProfile\[\])](com/appiancorp/suiteapi/personalization/UserProfileService.html#createUsers\(com.appiancorp.suiteapi.personalization.UserProfile%5B%5D\)) - Method in interface com.appiancorp.suiteapi.personalization.[UserProfileService](com/appiancorp/suiteapi/personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")

Creates new users.

[createUsers$UPDATES](com/appiancorp/suiteapi/personalization/UserProfileService.html#createUsers$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[UserProfileService](com/appiancorp/suiteapi/personalization/UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")

[createUsers$UPDATES](com/appiancorp/suiteapi/personalization/UserService.html#createUsers$UPDATES) - Static variable in interface com.appiancorp.suiteapi.personalization.[UserService](com/appiancorp/suiteapi/personalization/UserService.html "interface in com.appiancorp.suiteapi.personalization")

[createVersion(Document)](com/appiancorp/suiteapi/collaboration/DocumentService.html#createVersion\(com.appiancorp.suiteapi.collaboration.Document\)) - Method in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates a new version of a document.

[createVersion(Content\[\], Integer)](com/appiancorp/suiteapi/content/ContentService.html#createVersion\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Deprecated.

Use [`ContentService.createVersion(Content, Integer)`](com/appiancorp/suiteapi/content/ContentService.html#createVersion\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\))

[createVersion(Content, Integer)](com/appiancorp/suiteapi/content/ContentService.html#createVersion\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) - Method in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

Creates a new version of content.

[createVersion$UPDATES](com/appiancorp/suiteapi/collaboration/DocumentService.html#createVersion$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createVersion$UPDATES](com/appiancorp/suiteapi/content/ContentService.html#createVersion$UPDATES) - Static variable in interface com.appiancorp.suiteapi.content.[ContentService](com/appiancorp/suiteapi/content/ContentService.html "interface in com.appiancorp.suiteapi.content")

[createVersions(Document\[\])](com/appiancorp/suiteapi/collaboration/DocumentService.html#createVersions\(com.appiancorp.suiteapi.collaboration.Document%5B%5D\)) - Method in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

Creates new versions of multiple documents.

[createVersions$UPDATES](com/appiancorp/suiteapi/collaboration/DocumentService.html#createVersions$UPDATES) - Static variable in interface com.appiancorp.suiteapi.collaboration.[DocumentService](com/appiancorp/suiteapi/collaboration/DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

Deprecated.

 

[createWebsiteBody(String, String)](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html#createWebsiteBody\(java.lang.String,java.lang.String\)) - Method in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniBodyService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

Stores the body of a miniwebsite portlet

[createWebsiteBody$UPDATES](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html#createWebsiteBody$UPDATES) - Static variable in interface com.appiancorp.suiteapi.portal.portlets.miniwebsite.[MiniBodyService](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniBodyService.html "interface in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

Deprecated.

 

[CREATION\_SECURITY\_TYPE](com/appiancorp/suiteapi/content/ContentConstants.html#CREATION_SECURITY_TYPE) - Static variable in interface com.appiancorp.suiteapi.content.[ContentConstants](com/appiancorp/suiteapi/content/ContentConstants.html "interface in com.appiancorp.suiteapi.content")

Deprecated.

No longer used

[Credentials](com/appiancorp/suiteapi/common/Credentials.html "class in com.appiancorp.suiteapi.common") - Class in [com.appiancorp.suiteapi.common](com/appiancorp/suiteapi/common/package-summary.html)

Bean that represents a User's credentials

[Credentials()](com/appiancorp/suiteapi/common/Credentials.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.common.[Credentials](com/appiancorp/suiteapi/common/Credentials.html "class in com.appiancorp.suiteapi.common")

Credentials Empty constructor.

[Credentials(ImmutableCredentials, String, boolean)](com/appiancorp/suiteapi/common/Credentials.html#%3Cinit%3E\(com.appiancorp.ag.ImmutableCredentials,java.lang.String,boolean\)) - Constructor for class com.appiancorp.suiteapi.common.[Credentials](com/appiancorp/suiteapi/common/Credentials.html "class in com.appiancorp.suiteapi.common")

Credentials copy constructor with tenant modification.

[Credentials(ImmutableSet<Long>, ImmutableSet<Long>, ImmutableSet<String>, int, String, String, String, Integer)](com/appiancorp/suiteapi/common/Credentials.html#%3Cinit%3E\(com.google.common.collect.ImmutableSet,com.google.common.collect.ImmutableSet,com.google.common.collect.ImmutableSet,int,java.lang.String,java.lang.String,java.lang.String,java.lang.Integer\)) - Constructor for class com.appiancorp.suiteapi.common.[Credentials](com/appiancorp/suiteapi/common/Credentials.html "class in com.appiancorp.suiteapi.common")

Constructs the bean that represents a User's credentials.

[CredentialsReturnConverter](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common") - Class in [com.appiancorp.suiteapi.common](com/appiancorp/suiteapi/common/package-summary.html)

Deprecated. 

[CredentialsReturnConverter()](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.common.[CredentialsReturnConverter](com/appiancorp/suiteapi/common/CredentialsReturnConverter.html "class in com.appiancorp.suiteapi.common")

Deprecated.

 

[criteria(Criteria)](com/appiancorp/common/query/Query.Builder.html#criteria\(com.appiancorp.common.query.Criteria\)) - Method in class com.appiancorp.common.query.[Query.Builder](com/appiancorp/common/query/Query.Builder.html "class in com.appiancorp.common.query")

[criteria(Criteria)](com/appiancorp/common/query/QueryBuilder.Filtering.html#criteria\(com.appiancorp.common.query.Criteria\)) - Method in interface com.appiancorp.common.query.[QueryBuilder.Filtering](com/appiancorp/common/query/QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")

Obtains the set of operations allowed after `[QueryBuilder.Filtering](com/appiancorp/common/query/QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

[criteria(Criteria)](com/appiancorp/common/query/QueryBuilder.FilteringCriteria.html#criteria\(com.appiancorp.common.query.Criteria\)) - Method in interface com.appiancorp.common.query.[QueryBuilder.FilteringCriteria](com/appiancorp/common/query/QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")

Obtains the set of operations allowed after `[QueryBuilder.FilteringCriteria](com/appiancorp/common/query/QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](com/appiancorp/common/query/QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

[Criteria](com/appiancorp/common/query/Criteria.html "interface in com.appiancorp.common.query") - Interface in [com.appiancorp.common.query](com/appiancorp/common/query/package-summary.html)

Marker interface to be able to create a tree structure while combining filters, search and logical expressions.

[CriteriaValidator](com/appiancorp/common/query/CriteriaValidator.html "class in com.appiancorp.common.query") - Class in [com.appiancorp.common.query](com/appiancorp/common/query/package-summary.html)

[CriteriaValidator()](com/appiancorp/common/query/CriteriaValidator.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.common.query.[CriteriaValidator](com/appiancorp/common/query/CriteriaValidator.html "class in com.appiancorp.common.query")

[CriteriaValidatorProvider](com/appiancorp/common/query/CriteriaValidatorProvider.html "interface in com.appiancorp.common.query") - Interface in [com.appiancorp.common.query](com/appiancorp/common/query/package-summary.html)

[CRYPTOGRAPHER\_INVALID\_DECRYPTION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CRYPTOGRAPHER_INVALID_DECRYPTION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CRYPTOGRAPHER\_INVALID\_DECRYPTION\_KEY](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CRYPTOGRAPHER_INVALID_DECRYPTION_KEY) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CRYPTOGRAPHER\_INVALID\_DECRYPTION\_NOT\_ENCRYPTED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CRYPTOGRAPHER_INVALID_DECRYPTION_NOT_ENCRYPTED) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CRYPTOGRAPHER\_INVALID\_ENCRYPTION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CRYPTOGRAPHER_INVALID_ENCRYPTION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CRYPTOGRAPHER\_INVALID\_ENCRYPTION\_ALREADY\_ENCRYPTED](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CRYPTOGRAPHER_INVALID_ENCRYPTION_ALREADY_ENCRYPTED) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CSTF\_INVALID\_CAST\_EXCEPTION](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CSTF_INVALID_CAST_EXCEPTION) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CURRENCY](com/appiancorp/suiteapi/type/AppianType.html#CURRENCY) - Static variable in interface com.appiancorp.suiteapi.type.[AppianType](com/appiancorp/suiteapi/type/AppianType.html "interface in com.appiancorp.suiteapi.type")

Deprecated.

[CURRENCY\_INDICATOR\_ALIGNMENT\_INVALID\_TYPE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CURRENCY_INDICATOR_ALIGNMENT_INVALID_TYPE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CURRENCY\_INDICATOR\_ALIGNMENT\_INVALID\_VALUE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CURRENCY_INDICATOR_ALIGNMENT_INVALID_VALUE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CURRENCY\_INVALID\_CODE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CURRENCY_INVALID_CODE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CURRENCY\_INVALID\_FORMAT\_TYPE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CURRENCY_INVALID_FORMAT_TYPE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CURRENCY\_INVALID\_FORMAT\_VALUE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CURRENCY_INVALID_FORMAT_VALUE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CURRENCY\_PARAMS\_CAST\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CURRENCY_PARAMS_CAST_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CURRENT\_VERSION](com/appiancorp/suiteapi/collaboration/Document.html#CURRENT_VERSION) - Static variable in class com.appiancorp.suiteapi.collaboration.[Document](com/appiancorp/suiteapi/collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration")

Deprecated.

Version field for the current version of a document

[CUSTOM\_BRANDING\_IMAGE\_CREATION\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CUSTOM_BRANDING_IMAGE_CREATION_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CUSTOM\_BRANDING\_IMAGES\_FOLDER\_CREATION\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CUSTOM_BRANDING_IMAGES_FOLDER_CREATION_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CUSTOM\_CONTENT\_ITEM](com/appiancorp/suiteapi/process/TypedVariableTypes.html#CUSTOM_CONTENT_ITEM) - Static variable in interface com.appiancorp.suiteapi.process.[TypedVariableTypes](com/appiancorp/suiteapi/process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

Deprecated.

Note: The CUSTOM\_CONTENT\_ITEM type cannot be used for ActivityClassParameters, ActivityReturnVariables, or ProcessVariables

[CUSTOM\_FIELD\_CIRCULAR\_REFERENCE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CUSTOM_FIELD_CIRCULAR_REFERENCE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CUSTOM\_FIELD\_EVALUATION\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CUSTOM_FIELD_EVALUATION_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CUSTOM\_FIELD\_MATCH\_IN\_MEASURE\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CUSTOM_FIELD_MATCH_IN_MEASURE_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CUSTOM\_FIELD\_MAX\_NESTING\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CUSTOM_FIELD_MAX_NESTING_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CUSTOM\_FIELD\_NESTED\_MATCH\_ERROR](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html#CUSTOM_FIELD_NESTED_MATCH_ERROR) - Static variable in class com.appiancorp.suiteapi.common.exceptions.[ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

[CustomContent](com/appiancorp/suiteapi/content/CustomContent.html "class in com.appiancorp.suiteapi.content") - Class in [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

Custom Content object.

[CustomContent()](com/appiancorp/suiteapi/content/CustomContent.html#%3Cinit%3E\(\)) - Constructor for class com.appiancorp.suiteapi.content.[CustomContent](com/appiancorp/suiteapi/content/CustomContent.html "class in com.appiancorp.suiteapi.content")

Constructs a CustomContent object.

[CustomContent(int)](com/appiancorp/suiteapi/content/CustomContent.html#%3Cinit%3E\(int\)) - Constructor for class com.appiancorp.suiteapi.content.[CustomContent](com/appiancorp/suiteapi/content/CustomContent.html "class in com.appiancorp.suiteapi.content")

Constructs a CustomContent object.

[customDisplayReference()](com/appiancorp/suiteapi/process/framework/Input.html#customDisplayReference\(\)) - Element in annotation interface com.appiancorp.suiteapi.process.framework.[Input](com/appiancorp/suiteapi/process/framework/Input.html "annotation interface in com.appiancorp.suiteapi.process.framework")

If a picker for an input other than the type that is typically used for the input type is required, the customDisplayReference attribute can be used to refer to the name of the picker that should be used instead.