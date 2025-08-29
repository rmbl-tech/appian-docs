---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/CalendarService.html
original_path: api/com/appiancorp/suiteapi/process/CalendarService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface CalendarService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface CalendarService extends com.appiancorp.services.ContextSensitiveService

This service provides methods which retrieve and update calendars in the system.

See Also:

-   [`SystemCalendar`](calendar/SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[createCalendar$UPDATES](#createCalendar$UPDATES)`

    `static final boolean`

    `[deleteCalendar$UPDATES](#deleteCalendar$UPDATES)`

    `static final boolean`

    `[getCalendar$UPDATES](#getCalendar$UPDATES)`

    `static final boolean`

    `[getCalendarsPaging$UPDATES](#getCalendarsPaging$UPDATES)`

    `static final boolean`

    `[getDefaultCalendar$UPDATES](#getDefaultCalendar$UPDATES)`

    `static final boolean`

    `[updateCalendar$UPDATES](#updateCalendar$UPDATES)`

    `static final boolean`

    `[updateDefaultCalendar$UPDATES](#updateDefaultCalendar$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createCalendar](#createCalendar\(com.appiancorp.suiteapi.process.calendar.WorkingCalendar\))([WorkingCalendar](calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar") calendar)`

    Creates a calendar.

    `void`

    `[deleteCalendar](#deleteCalendar\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Deletes a calendar

    `[WorkingCalendar](calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")`

    `[getCalendar](#getCalendar\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Gets a calendar.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCalendarsPaging](#getCalendarsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)`

    Retrieves calendars in the system, paging the results.

    `[SystemCalendar](calendar/SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar")`

    `[getDefaultCalendar](#getDefaultCalendar\(\))()`

    Deprecated.

    use [`getCalendar(java.lang.Long)`](#getCalendar\(java.lang.Long\))

    `void`

    `[updateCalendar](#updateCalendar\(com.appiancorp.suiteapi.process.calendar.WorkingCalendar\))([WorkingCalendar](calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar") calendar)`

    Updates a calendar.

    `void`

    `[updateDefaultCalendar](#updateDefaultCalendar\(com.appiancorp.suiteapi.process.calendar.SystemCalendar\))([SystemCalendar](calendar/SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar") defaultCalendar_)`

    Deprecated.

    use [`updateCalendar(com.appiancorp.suiteapi.process.calendar.WorkingCalendar)`](#updateCalendar\(com.appiancorp.suiteapi.process.calendar.WorkingCalendar\))

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getDefaultCalendar$UPDATES

        static final boolean getDefaultCalendar$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.CalendarService.getDefaultCalendar$UPDATES)

    -   ### updateDefaultCalendar$UPDATES

        static final boolean updateDefaultCalendar$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.CalendarService.updateDefaultCalendar$UPDATES)

    -   ### getCalendar$UPDATES

        static final boolean getCalendar$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.CalendarService.getCalendar$UPDATES)

    -   ### createCalendar$UPDATES

        static final boolean createCalendar$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.CalendarService.createCalendar$UPDATES)

    -   ### updateCalendar$UPDATES

        static final boolean updateCalendar$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.CalendarService.updateCalendar$UPDATES)

    -   ### deleteCalendar$UPDATES

        static final boolean deleteCalendar$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.CalendarService.deleteCalendar$UPDATES)

    -   ### getCalendarsPaging$UPDATES

        static final boolean getCalendarsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.CalendarService.getCalendarsPaging$UPDATES)

-   ## Method Details

    -   ### getDefaultCalendar

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [SystemCalendar](calendar/SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar") getDefaultCalendar()

        Deprecated.

        use [`getCalendar(java.lang.Long)`](#getCalendar\(java.lang.Long\))

        Retrieves the default calendar for process. There is no security for retrieving the system calendar.

        Returns:

        The default calendar for process.

    -   ### updateDefaultCalendar

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateDefaultCalendar([SystemCalendar](calendar/SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar") defaultCalendar\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`updateCalendar(com.appiancorp.suiteapi.process.calendar.WorkingCalendar)`](#updateCalendar\(com.appiancorp.suiteapi.process.calendar.WorkingCalendar\))

        Sets the default calendar for process.

        Parameters:

        `defaultCalendar_` - new `SystemCalendar` to set.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to update the system calendar. Only System Administrators may update the system calendar.

    -   ### getCalendar

        [WorkingCalendar](calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar") getCalendar([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [InvalidCalendarException](calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")

        Gets a calendar.

        Parameters:

        `id` - the id of the calendar to retrieve

        Returns:

        the calendar

        Throws:

        `[InvalidCalendarException](calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")` - if no calendar exists with the given id

    -   ### createCalendar

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createCalendar([WorkingCalendar](calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar") calendar) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a calendar.

        Parameters:

        `calendar` - the calendar to create

        Returns:

        the id of the newly created calendar

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to create a calendar. Only System Administrators may create calendars.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the calendar name is not set

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the calendar name is not unique

    -   ### updateCalendar

        void updateCalendar([WorkingCalendar](calendar/WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar") calendar) throws [InvalidCalendarException](calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a calendar.

        Parameters:

        `calendar` - the calendar to update

        Throws:

        `[InvalidCalendarException](calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")` - if no calendar exists with the given id

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to update the calendar. Only System Administrators may create calendars.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the calendar name is not set

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the calendar name is not unique

    -   ### deleteCalendar

        void deleteCalendar([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [InvalidCalendarException](calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a calendar

        Parameters:

        `id` - the id of the calendar to delete

        Throws:

        `[InvalidCalendarException](calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")` - if no calendar exists with the given id

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to delete the calendar. Only System Administrators may delete calendars.

    -   ### getCalendarsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCalendarsPaging(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder)

        Retrieves calendars in the system, paging the results.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection.

        `sortProperty_` - the property by which the results will be sorted. Should be one of the `SORT_BY_XXX` constants defined in [`TaskSummary`](TaskSummary.html "class in com.appiancorp.suiteapi.process").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `WorkingCalendar` objects