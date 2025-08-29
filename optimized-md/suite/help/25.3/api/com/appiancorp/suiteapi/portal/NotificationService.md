---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/NotificationService.html
original_path: api/com/appiancorp/suiteapi/portal/NotificationService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface NotificationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface NotificationService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Notification functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines methods for retrieving application specific notfications, configuring notifications and sending notifications of various types.

Notifications may be sent to users and groups, and can be configured to be sent to email or to the portal application, or both. The frequency with which notifications are sent to email, or the length of time that notifications persist in the portal application, are also configurable.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

All API's that use Application ID and Notification Type ID should only use valid ID's that can be obtained by making a call to [`getApplications()`](#getApplications\(\))

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal")
-   [`NotificationRule`](NotificationRule.html "class in com.appiancorp.suiteapi.portal")
-   [`Attribute`](Attribute.html "class in com.appiancorp.suiteapi.portal")
-   [`Medium`](Medium.html "class in com.appiancorp.suiteapi.portal")
-   [`PortalNotificationService`](PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplications$UPDATES](#getApplications$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationsPaging$UPDATES](#getApplicationsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDefaultFormat$UPDATES](#getDefaultFormat$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMedia$UPDATES](#getMedia$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMediaForType$UPDATES](#getMediaForType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMediaForTypePaging$UPDATES](#getMediaForTypePaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMediaPaging$UPDATES](#getMediaPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNotificationCustomAttributes$UPDATES](#getNotificationCustomAttributes$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getNotificationCustomAttributesPaging$UPDATES](#getNotificationCustomAttributesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getTypePrefsForUser$UPDATES](#getTypePrefsForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getTypePrefsForUserPaging$UPDATES](#getTypePrefsForUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notify$UPDATES](#notify$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[saveNotificationRuleForUser$UPDATES](#saveNotificationRuleForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setDefaultFormat$UPDATES](#setDefaultFormat$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    Gets the name of the application on which this service is running.

    `[Application](Application.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getApplications](#getApplications\(\))()`

    Deprecated.

    use [`getApplicationsPaging(int, int, Integer, Integer)`](#getApplicationsPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getApplicationsPaging](#getApplicationsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Returns all registered [`Application`](Application.html "class in com.appiancorp.suiteapi.portal") objects

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefaultFormat](#getDefaultFormat\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Since i18n, the notifications server no longer formats dates (the raw timestamps are sent to the JSPs), so no formats should be set on the server.

    `[Medium](Medium.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getMedia](#getMedia\(\))()`

    Deprecated.

    use [`getMediaPaging(int, int, Integer, Integer)`](#getMediaPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Medium](Medium.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getMediaForType](#getMediaForType\(int\))(int typeId_)`

    Deprecated.

    use [`getMediaForTypePaging(int, int, int, Integer, Integer)`](#getMediaForTypePaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMediaForTypePaging](#getMediaForTypePaging\(int,int,int,java.lang.Integer,java.lang.Integer\))(int typeId_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the media to which [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal")s of the specified type can be sent.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMediaPaging](#getMediaPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the media to which [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal")s can be sent.

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getNotificationCustomAttributes](#getNotificationCustomAttributes\(int\))(int typeId_)`

    Deprecated.

    use [`getNotificationCustomAttributesPaging(int,int,int,Integer,Integer)`](#getNotificationCustomAttributesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getNotificationCustomAttributesPaging](#getNotificationCustomAttributesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\))(int typeId_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal") custom attribute values

    `[NotificationRule](NotificationRule.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getTypePrefsForUser](#getTypePrefsForUser\(java.lang.String,int,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user_, int appId_, int typeId_)`

    Deprecated.

    use [`getTypePrefsForUserPaging(String, int, int, int, int, Integer, Integer)`](#getTypePrefsForUserPaging\(java.lang.String,int,int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTypePrefsForUserPaging](#getTypePrefsForUserPaging\(java.lang.String,int,int,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user_, int appId_, int typeId_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the user preferences for the `Notification` type

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    Gets the current memory profile for the workspace.

    `void`

    `[notify](#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ntfType_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes_)`

    Deprecated.

    Use [`PortalNotificationService.notify(java.lang.String[], java.lang.Long[], java.lang.String, java.lang.String, java.util.Map)`](PortalNotificationService.html#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\)) instead

    `void`

    `[saveNotificationRuleForUser](#saveNotificationRuleForUser\(java.lang.String,int,int%5B%5D,java.lang.String%5B%5D,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user_, int type_, int[] media_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] conditions_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] settings_)`

    Deprecated.

    Saves the [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal") rules for the given user

    `void`

    `[saveNotificationRuleForUser](#saveNotificationRuleForUser\(java.lang.String,int,int%5B%5D,java.lang.String%5B%5D,java.lang.String%5B%5D,java.util.List\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user_, int type_, int[] media_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] conditions_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] settings_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")> hiddenMedia)`

    Deprecated.

     

    `void`

    `[setDefaultFormat](#setDefaultFormat\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") format_)`

    Deprecated.

    Since i18n, the notifications server no longer formats dates (the raw timestamps are sent to the JSPs), therefore this method no longer affects the formatting.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getApplications$UPDATES

        static final boolean getApplications$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getApplications$UPDATES)

    -   ### getNotificationCustomAttributes$UPDATES

        static final boolean getNotificationCustomAttributes$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getNotificationCustomAttributes$UPDATES)

    -   ### getMedia$UPDATES

        static final boolean getMedia$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getMedia$UPDATES)

    -   ### getMediaForType$UPDATES

        static final boolean getMediaForType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getMediaForType$UPDATES)

    -   ### getTypePrefsForUser$UPDATES

        static final boolean getTypePrefsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getTypePrefsForUser$UPDATES)

    -   ### saveNotificationRuleForUser$UPDATES

        static final boolean saveNotificationRuleForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.saveNotificationRuleForUser$UPDATES)

    -   ### notify$UPDATES

        static final boolean notify$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.notify$UPDATES)

    -   ### getApplicationsPaging$UPDATES

        static final boolean getApplicationsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getApplicationsPaging$UPDATES)

    -   ### getNotificationCustomAttributesPaging$UPDATES

        static final boolean getNotificationCustomAttributesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getNotificationCustomAttributesPaging$UPDATES)

    -   ### getMediaPaging$UPDATES

        static final boolean getMediaPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getMediaPaging$UPDATES)

    -   ### getMediaForTypePaging$UPDATES

        static final boolean getMediaForTypePaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getMediaForTypePaging$UPDATES)

    -   ### getTypePrefsForUserPaging$UPDATES

        static final boolean getTypePrefsForUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getTypePrefsForUserPaging$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getWorkspace$UPDATES)

    -   ### getDefaultFormat$UPDATES

        static final boolean getDefaultFormat$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.getDefaultFormat$UPDATES)

    -   ### setDefaultFormat$UPDATES

        static final boolean setDefaultFormat$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NotificationService.setDefaultFormat$UPDATES)

-   ## Method Details

    -   ### getApplications

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Application](Application.html "class in com.appiancorp.suiteapi.portal")\[\] getApplications()

        Deprecated.

        use [`getApplicationsPaging(int, int, Integer, Integer)`](#getApplicationsPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get all registered [`Application`](Application.html "class in com.appiancorp.suiteapi.portal") objects.

        Returns:

        an array of `Application` with names, IDs and notification types for the application. The notification types and application names are listed in [`PortalNotificationService`](PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal").

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getNotificationCustomAttributes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Attribute](Attribute.html "class in com.appiancorp.suiteapi.portal")\[\] getNotificationCustomAttributes(int typeId\_)

        Deprecated.

        use [`getNotificationCustomAttributesPaging(int,int,int,Integer,Integer)`](#getNotificationCustomAttributesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets custom [`Attribute`](Attribute.html "class in com.appiancorp.suiteapi.portal") objects for specified [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal") type.

        Parameters:

        `typeId_` - ID of the `Notification` type.

        Returns:

        an array of `Attribute` objects, each of which contains the parameters for the specified `Notification` type. See [`PortalNotificationService.notify(java.lang.String[], java.lang.Long[], java.lang.String, java.lang.String, java.util.Map)`](PortalNotificationService.html#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\)) for the list of custom attributes per notification type. Each attribute will have its `label` field populated with the appropriate value.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getMedia

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Medium](Medium.html "class in com.appiancorp.suiteapi.portal")\[\] getMedia()

        Deprecated.

        use [`getMediaPaging(int, int, Integer, Integer)`](#getMediaPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the media to which [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal")s can be sent.

        Returns:

        an array of `Medium`, which contains the medium name, id and options. Currently the generic options are not used. Timing is currently the only specific option, i.e. the interval of time to wait until the `Notification` is sent which can be immediately, hourly, daily, weekly.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getMediaForType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Medium](Medium.html "class in com.appiancorp.suiteapi.portal")\[\] getMediaForType(int typeId\_)

        Deprecated.

        use [`getMediaForTypePaging(int, int, int, Integer, Integer)`](#getMediaForTypePaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the media to which [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal")s of the specified type can be sent.

        Parameters:

        `typeId_` - ID of the `Notification` type

        Returns:

        an array of `Medium`, which contains the medium name, ID and options. Currently the generic options are not used. Timing is currently the only specific option, i.e. the interval of time to wait until the notification is sent, which can be immediately, hourly, daily, weekly.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getTypePrefsForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [NotificationRule](NotificationRule.html "class in com.appiancorp.suiteapi.portal")\[\] getTypePrefsForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user\_, int appId\_, int typeId\_)

        Deprecated.

        use [`getTypePrefsForUserPaging(String, int, int, int, int, Integer, Integer)`](#getTypePrefsForUserPaging\(java.lang.String,int,int,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the user preferences for the [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal") type

        Parameters:

        `user_` - the username of the `User` whose preferences are to be retrieved

        `appId_` - the ID of the [`Application`](Application.html "class in com.appiancorp.suiteapi.portal") of the `Notification` type

        `typeId_` - the ID of the `Notification` type, which will be unique across applications

        Returns:

        `NotificationRule` with the `Application` ID and name, the `Notification` type ID and name, the `Medium` ID and name, and the conditions. The "conditions" is a double array of strings, where every row is a String\[3\] with comparison operator id, attribute ID and value against which the `Attribute` value will be compared

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### saveNotificationRuleForUser

        void saveNotificationRuleForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user\_, int type\_, int\[\] media\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] conditions\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] settings\_)

        Deprecated.

        Saves the [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal") rules for the given user

        Parameters:

        `user_` - the username of the user

        `type_` - the ID of the `Notification` type.

        `media_` - the IDs of the media types. Use [`getMedia()`](#getMedia\(\)) for valid types. If conditions or settings differ in length from media, then media determines the length of conditions and settings used.

        `conditions_` - Each element in the string array will be comma- separated triplets of comparison operator IDs, attribute ID, and the values to compare against. If no conditions are being set, an empty array should be passed. To see available attribute IDs and operator IDs use [`getNotificationCustomAttributesPaging(int, int, int, Integer, Integer)`](#getNotificationCustomAttributesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) and browse the returned `Attribute` object.

        `settings_` - the time intervals at which all `Notification` will be sent. If no time intervals are being set, an empty array should be passed. The array size depends on the number of rules (see [`NotificationRule`](NotificationRule.html "class in com.appiancorp.suiteapi.portal")) for given notification type. Each element of an array is a string of comma separated triplet: `",type,parameter"`. The first value is always empty. The type is one of constant values of OPTION\_XXX in `com.appiancorp.ap2.ns.Option`. If the Notification media type is Portal the parameter specifies the number of days for the message to persist. If the Notification media type is Email the parameter specifies the timing of the email - 1: Immediate, 2: Hourly Bulk Email, 3: Daily Bulk Email, 4: Weekly Bulk Email.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### saveNotificationRuleForUser

        void saveNotificationRuleForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user\_, int type\_, int\[\] media\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] conditions\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] settings\_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\> hiddenMedia)

        Deprecated.

    -   ### notify

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notify([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") appName\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ntfType\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes\_) throws [InvalidNotificationTypeException](../common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`PortalNotificationService.notify(java.lang.String[], java.lang.Long[], java.lang.String, java.lang.String, java.util.Map)`](PortalNotificationService.html#notify\(java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String,java.lang.String,java.util.Map\)) instead

        Send a notification to specific users and groups

        Parameters:

        `users_` - the usernames of those to be notified. If no users are to be notified, this value should be an empty `String` array, not `null`.

        `groups_` - the groupIds of those to be notified. If no groups are to be notified, this value should be an empty `String` array, not `null`.

        `appName_` - the `Application` name of the `Notification`. See the `XXX_NOTIFICATION_APPLICATION` constants in [`PortalNotificationService`](PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") for valid values

        `ntfType_` - the name of the `Notification` type. See the `XXX_NOTIFICATION_TYPE` constants in [`PortalNotificationService`](PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal") for valid values

        `attributes_` - the attributes of the notification. The map keys correspond to `Attribute` labels. For example, for the [`PortalNotificationService.COLLABORATION_SEND_LINK_NOTIFICATION_TYPE`](PortalNotificationService.html#COLLABORATION_SEND_LINK_NOTIFICATION_TYPE), a key in the attribute map would be "sender" The values of the keys are the values to be displayed in the `Notification` (eg. the sender's username).

        Throws:

        `[InvalidNotificationException](../common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Notification` does not exist

        `[InvalidNotificationTypeException](../common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid `Notification` type is specified

        `ServiceException` - if any system-level error occurs

        See Also:

        -   [`getNotificationCustomAttributes(int)`](#getNotificationCustomAttributes\(int\))

    -   ### getApplicationsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getApplicationsPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Returns all registered [`Application`](Application.html "class in com.appiancorp.suiteapi.portal") objects

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Application`](Application.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the returned `Application` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Application` objects

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getNotificationCustomAttributesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getNotificationCustomAttributesPaging(int typeId\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Get [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal") custom attribute values

        Parameters:

        `typeId_` - ID of the `Notification` type.

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Attribute`](Attribute.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the returned `Attribute` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` which contains the array of `Attribute` objects

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getMediaPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMediaPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the media to which [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal")s can be sent.

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Medium`](Medium.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the returned `Medium` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` which contains the array of `Medium` objects Currently the generic options are not used, and Timing is the only specific option, i.e. the interval of time to wait until the `Notification` is sent which can be immediately, hourly, daily, weekly.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getMediaForTypePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMediaForTypePaging(int typeId\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the media to which [`Notification`](Notification.html "class in com.appiancorp.suiteapi.portal")s of the specified type can be sent.

        Parameters:

        `typeId_` - ID of the `Notification` type

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Medium`](Medium.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the returned `Medium` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` which contains the array of `Medium`, which contains the medium name, id and options. Currently the generic options are not used, and Timing is the only specific option, i.e. the interval of time to wait until the `Notification` is sent which can be immediately, hourly, daily, weekly.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getTypePrefsForUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTypePrefsForUserPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user\_, int appId\_, int typeId\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the user preferences for the `Notification` type

        Parameters:

        `user_` - the username of the user whose preferences are to be retrieved

        `appId_` - ID of the `Application` for the `Notification` type

        `typeId_` - ID of the `Notification` type, which will be unique across all `Application` objects

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`NotificationRule`](NotificationRule.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the returned `UserPreferences` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `NotificationRule` with the `Application` ID and name, the `Notification` type ID and name, the medium ID and name, and the conditions. The conditions is a double array of strings, where every row is a String\[3\] with comparison operator id, attribute id and value against which the `Attribute` value will be compared

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        Gets the name of the application on which this service is running.

        Returns:

        the name of the `Application`

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getWorkspace

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWorkspace()

        Deprecated.

        Gets the current memory profile for the workspace.

        Returns:

        array of Strings of length 4 describing memory usage:

        -   \[0\]Used - Memory Used by the Server so far for storage
        -   \[1\]Allocated - Memory allocated for use. Often if a large data item was allocated by a server and subsequently freed, this value will be large compared to "Used". If nearly all memory allocated is in use, this value will be close to (but always higher than) "Used"
        -   \[2\]Mapped - is the space used by memory-mapped files
        -   \[3\]Available - is the total available memory for the Server process

        Note: All usage statistics are in Bytes.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getDefaultFormat

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefaultFormat([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Since i18n, the notifications server no longer formats dates (the raw timestamps are sent to the JSPs), so no formats should be set on the server.

        Parameters:

        `name_` - A string identifying the type of display format, one of: "date", "time", or "timezone".

        Returns:

        Returns the display format for the given format name.

        Throws:

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")` - if the `name_` is not recognized

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the `name_` is null

    -   ### setDefaultFormat

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setDefaultFormat([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") format\_) throws [InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Since i18n, the notifications server no longer formats dates (the raw timestamps are sent to the JSPs), therefore this method no longer affects the formatting.

        Parameters:

        `name_` - A string identifying the type of display format, one of: "date", "time", or "timezone".

        `format_` - The display format to use for the given format name.

        Throws:

        `[InvalidParameterException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/InvalidParameterException.html "class or interface in java.security")` - if the `name_` is not recognized

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the `name_` or `format_` is null