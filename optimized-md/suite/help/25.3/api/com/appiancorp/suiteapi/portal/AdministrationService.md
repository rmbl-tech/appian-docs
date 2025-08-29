---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/AdministrationService.html
original_path: api/com/appiancorp/suiteapi/portal/AdministrationService.html
version: "25.3"
title: "Interface AdministrationService"
page_id: "api/com/appiancorp/suiteapi/portal/AdministrationService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface AdministrationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface AdministrationService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release.

Defines service methods related to the configuration and runtime operation of the Portal application.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`NotificationService`](NotificationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PageNavigationService`](PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortalNotificationService`](PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortalSearchService`](PortalSearchService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortletService`](PortletService.html "interface in com.appiancorp.suiteapi.portal")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[activateUserSession$UPDATES](#activateUserSession$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findPortletTypes$UPDATES](#findPortletTypes$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findPortletTypesPaging$UPDATES](#findPortletTypesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMultiplePortletTypes$UPDATES](#getMultiplePortletTypes$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPortletType$UPDATES](#getPortletType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPortletTypes$UPDATES](#getPortletTypes$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPortletTypesPaging$UPDATES](#getPortletTypesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteCalendarSettings$UPDATES](#getSiteCalendarSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteLocaleSettings$UPDATES](#getSiteLocaleSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteTimeZoneSettings$UPDATES](#getSiteTimeZoneSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSystemPageId$UPDATES](#getSystemPageId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWSRPProducer$UPDATES](#getWSRPProducer$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWSRPProducerFromURL$UPDATES](#getWSRPProducerFromURL$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWSRPProducers$UPDATES](#getWSRPProducers$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWSRPProducersPaging$UPDATES](#getWSRPProducersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyGroupDeletion$UPDATES](#notifyGroupDeletion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyGroupsDeletion$UPDATES](#notifyGroupsDeletion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyUserCreation$UPDATES](#notifyUserCreation$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyUsersCreation$UPDATES](#notifyUsersCreation$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[registerPortletType$UPDATES](#registerPortletType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[registerPortletTypes$UPDATES](#registerPortletTypes$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[registerWSRPProducer$UPDATES](#registerWSRPProducer$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setAdministratorGroup$UPDATES](#setAdministratorGroup$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSiteCalendarSettings$UPDATES](#setSiteCalendarSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSiteLocaleSettings$UPDATES](#setSiteLocaleSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSiteTimeZoneSettings$UPDATES](#setSiteTimeZoneSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePortletTypesState$UPDATES](#updatePortletTypesState$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePortletTypeState$UPDATES](#updatePortletTypeState$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateGroupMembership$UPDATES](#validateGroupMembership$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang")`

    `[activateUserSession](#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] membership_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] administration_)`

    Deprecated. 

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")[]`

    `[findPortletTypes](#findPortletTypes\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterMask_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stateFilter_)`

    Deprecated.

    use [`findPortletTypesPaging(String, String, int, int, Integer, Integer)`](#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findPortletTypesPaging](#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterMask_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stateFilter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    not used

    `[PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getMultiplePortletTypes](#getMultiplePortletTypes\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] portletTypeDefinitions_)`

    Deprecated.

    use [`findPortletTypesPaging(java.lang.String, java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) or [`getPortletTypesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will throw [`InvalidPortletTypeDefinitionException`](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal").

    `[PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")`

    `[getPortletType](#getPortletType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition_)`

    Deprecated.

    JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will throw [`InvalidPortletTypeDefinitionException`](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal").

    `[PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPortletTypes](#getPortletTypes\(\))()`

    Deprecated.

    use [`getPortletTypesPaging(int, int, Integer, Integer)`](#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPortletTypesPaging](#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

    `[SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteCalendarSettings](#getSiteCalendarSettings\(\))()`

    Deprecated.

    Gets the calendar settings for the administration server Use [`GlobalizationService.getSiteCalendarSettings()`](GlobalizationService.html#getSiteCalendarSettings\(\)) to get the calendar settings of the entire site.

    `[SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteLocaleSettings](#getSiteLocaleSettings\(\))()`

    Deprecated.

    Returns the site locale settings for the administration server Use [`GlobalizationService.getSiteLocaleSettings()`](GlobalizationService.html#getSiteLocaleSettings\(\)) to get site locale setting for the entire site.

    `[SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteTimeZoneSettings](#getSiteTimeZoneSettings\(\))()`

    Deprecated.

    Gets the site timezone settings for the adminstration server Use [`GlobalizationService.getSiteTimeZoneSettings()`](GlobalizationService.html#getSiteTimeZoneSettings\(\)) to get the timezone settings of the entire site.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemPageId](#getSystemPageId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") systemPageUuid)`

    Deprecated.

    Gets the system page id corresponding to the given UUID.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    this information is no longer available

    `[PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")`

    `[getWSRPProducer](#getWSRPProducer\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") producerId_)`

    Deprecated.

    WSRP Producers have been removed in Appian 22.2.

    `[PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")`

    `[getWSRPProducerFromURL](#getWSRPProducerFromURL\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") producerURL_)`

    Deprecated.

    WSRP Producers have been removed in Appian 22.2.

    `[PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")[]`

    `[getWSRPProducers](#getWSRPProducers\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] producerIds_)`

    Deprecated.

    WSRP Producers have been removed in Appian 22.2.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWSRPProducersPaging](#getWSRPProducersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    WSRP Producers have been removed in Appian 22.2.

    `void`

    `[notifyGroupDeletion](#notifyGroupDeletion\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Notifies that the specified group has been deleted and no references to it should therefore exist in the portal application

    `void`

    `[notifyGroupsDeletion](#notifyGroupsDeletion\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Notifies that the specified groups have been deleted and no references to them should therefore exist in the portal application

    `void`

    `[notifyUserCreation](#notifyUserCreation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    done automatically by UserService.createUser

    `void`

    `[notifyUsersCreation](#notifyUsersCreation\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Notifies the portal application that these users have been created.

    `void`

    `[registerPortletType](#registerPortletType\(com.appiancorp.suiteapi.portal.PortletType\))([PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal") portletType_)`

    Deprecated.

    JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will be ignored.

    `void`

    `[registerPortletTypes](#registerPortletTypes\(com.appiancorp.suiteapi.portal.PortletType%5B%5D\))([PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")[] portletTypes_)`

    Deprecated.

    JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will be ignored.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[registerWSRPProducer](#registerWSRPProducer\(com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.PersistedWSRPProducer\))([PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer") producer_)`

    Deprecated.

    WSRP Producers have been removed in Appian 22.2.

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[setAdministratorGroup](#setAdministratorGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Sets the specified group as the administrative group for the Portal application.

    `void`

    `[setSiteCalendarSettings](#setSiteCalendarSettings\(com.appiancorp.suiteapi.portal.SiteCalendarSettings\))([SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") settings_)`

    Deprecated.

    Registers the calendar setting for the administration server.

    `void`

    `[setSiteLocaleSettings](#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\))([SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings_)`

    Deprecated.

    Registers the site local settings for the administration server.

    `void`

    `[setSiteTimeZoneSettings](#setSiteTimeZoneSettings\(com.appiancorp.suiteapi.portal.SiteTimeZoneSettings\))([SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") timezoneSettings_)`

    Deprecated.

    Registers the site timezone settings for the administration server.

    `void`

    `[updatePortletTypesState](#updatePortletTypesState\(java.lang.String%5B%5D,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] portletTypeDefinitions_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newState_)`

    Deprecated.

    JSR-168 and WSRP Portlets have been deprecated, and calls for those PortletTypes will be ignored by this method

    `void`

    `[updatePortletTypeState](#updatePortletTypeState\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newState_)`

    Deprecated.

    JSR-168 and WSRP Portlets have been deprecated, and calls for those PortletTypes will be ignored by this method

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Deprecated.

    use the `validate` diagnostic script instead

    `boolean`

    `[validateGroupMembership](#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] admGroupIds_)`

    Deprecated.

    No longer necessary with credential system

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### registerPortletType$UPDATES

        static final boolean registerPortletType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.registerPortletType$UPDATES)

    -   ### registerPortletTypes$UPDATES

        static final boolean registerPortletTypes$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.registerPortletTypes$UPDATES)

    -   ### getPortletType$UPDATES

        static final boolean getPortletType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getPortletType$UPDATES)

    -   ### getPortletTypes$UPDATES

        static final boolean getPortletTypes$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getPortletTypes$UPDATES)

    -   ### getPortletTypesPaging$UPDATES

        static final boolean getPortletTypesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getPortletTypesPaging$UPDATES)

    -   ### getMultiplePortletTypes$UPDATES

        static final boolean getMultiplePortletTypes$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getMultiplePortletTypes$UPDATES)

    -   ### findPortletTypes$UPDATES

        static final boolean findPortletTypes$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.findPortletTypes$UPDATES)

    -   ### findPortletTypesPaging$UPDATES

        static final boolean findPortletTypesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.findPortletTypesPaging$UPDATES)

    -   ### updatePortletTypeState$UPDATES

        static final boolean updatePortletTypeState$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.updatePortletTypeState$UPDATES)

    -   ### updatePortletTypesState$UPDATES

        static final boolean updatePortletTypesState$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.updatePortletTypesState$UPDATES)

    -   ### registerWSRPProducer$UPDATES

        static final boolean registerWSRPProducer$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.registerWSRPProducer$UPDATES)

    -   ### getWSRPProducersPaging$UPDATES

        static final boolean getWSRPProducersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducersPaging$UPDATES)

    -   ### getWSRPProducer$UPDATES

        static final boolean getWSRPProducer$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducer$UPDATES)

    -   ### getWSRPProducers$UPDATES

        static final boolean getWSRPProducers$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducers$UPDATES)

    -   ### getWSRPProducerFromURL$UPDATES

        static final boolean getWSRPProducerFromURL$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getWSRPProducerFromURL$UPDATES)

    -   ### notifyGroupDeletion$UPDATES

        static final boolean notifyGroupDeletion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.notifyGroupDeletion$UPDATES)

    -   ### notifyGroupsDeletion$UPDATES

        static final boolean notifyGroupsDeletion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.notifyGroupsDeletion$UPDATES)

    -   ### setAdministratorGroup$UPDATES

        static final boolean setAdministratorGroup$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.setAdministratorGroup$UPDATES)

    -   ### activateUserSession$UPDATES

        static final boolean activateUserSession$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.activateUserSession$UPDATES)

    -   ### notifyUserCreation$UPDATES

        static final boolean notifyUserCreation$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.notifyUserCreation$UPDATES)

    -   ### notifyUsersCreation$UPDATES

        static final boolean notifyUsersCreation$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.notifyUsersCreation$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getWorkspace$UPDATES)

    -   ### validateGroupMembership$UPDATES

        static final boolean validateGroupMembership$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.validateGroupMembership$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.rollbackUpdateUsernames$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.validate$UPDATES)

    -   ### getSiteLocaleSettings$UPDATES

        static final boolean getSiteLocaleSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getSiteLocaleSettings$UPDATES)

    -   ### setSiteLocaleSettings$UPDATES

        static final boolean setSiteLocaleSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.setSiteLocaleSettings$UPDATES)

    -   ### getSiteTimeZoneSettings$UPDATES

        static final boolean getSiteTimeZoneSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getSiteTimeZoneSettings$UPDATES)

    -   ### setSiteTimeZoneSettings$UPDATES

        static final boolean setSiteTimeZoneSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.setSiteTimeZoneSettings$UPDATES)

    -   ### getSiteCalendarSettings$UPDATES

        static final boolean getSiteCalendarSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getSiteCalendarSettings$UPDATES)

    -   ### setSiteCalendarSettings$UPDATES

        static final boolean setSiteCalendarSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.setSiteCalendarSettings$UPDATES)

    -   ### getSystemPageId$UPDATES

        static final boolean getSystemPageId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.AdministrationService.getSystemPageId$UPDATES)

-   ## Method Details

    -   ### registerPortletType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void registerPortletType([PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal") portletType\_)

        Deprecated.

        JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will be ignored.

        Register a new [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal"). If the `PortletType` is already registered (i.e. a `PortletType` with the same definition already exists) the properties of the specified `PortletType` are updated with the new values. The minimum properties which must be populated in order to register a `PortletType` are `definition` and `state`. The `definition` property should be a non empty string. The `state` property can only take one of the following values:

        -   [`PortletType.STATE_ACTIVE`](PortletType.html#STATE_ACTIVE)
        -   [`PortletType.STATE_INACTIVE`](PortletType.html#STATE_INACTIVE)

        If these two properties fail to meet these requirements the respective `portletType` won't be registered or updated.

        Additional constraints:

        -   If the `name` property is null, an empty string will be used instead.
        -   If the `editable` property is null, false will be used instead.
        -   All `extensions` must have a non null key. If one of the keys is `null` the `PortletType` will get registered or updated using an empty set of `extensions`.

        Parameters:

        `portletType_` - the new `PortletType` or the `PortletType` to update

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `portletType_` is null; this exception is not thrown if any of the properties is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### registerPortletTypes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void registerPortletTypes([PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")\[\] portletTypes\_)

        Deprecated.

        JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will be ignored.

        Register a list of new [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal") objects. If the `PortletType` is already registered (i.e. a `PortletType` with the same definition already exists) the properties of the specified `PortletType` are updated with the new values. The minimum properties which must be populated in order to register a `PortletType` are `definition` and `state`. The `definition` property should be a non empty string. The `state` property can only take one of the following values:

        -   [`PortletType.STATE_ACTIVE`](PortletType.html#STATE_ACTIVE)
        -   [`PortletType.STATE_INACTIVE`](PortletType.html#STATE_INACTIVE)

        If these two properties fail to meet these requirements the respective `PortletType` won't be registered or updated. This won't prevent the other valid `PortletType` objects in the list from being registered or updated.

        Additional constraints:

        -   If any `name` property is null, an empty string will be used instead.
        -   If any `editable` property is null, false will be used instead.
        -   All `extensions` must have a non null key. If one of the keys is `null` the `PortletType` will get registered or updated using an empty set of `extensions`.

        Parameters:

        `portletTypes_` - the list of new `PortletType` objects or the `PortletType` objects to update

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `portletTypes_` is null; this exception is not thrown if any of the properties is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs or if the list contains a null value

        See Also:

        -   [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal")

    -   ### getPortletType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal") getPortletType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition\_) throws [InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")

        Deprecated.

        JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will throw [`InvalidPortletTypeDefinitionException`](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal").

        Get the registered Portlet type for the requested portlet type definition

        Parameters:

        `portletTypeDefinition_` - the definition of a portlet type

        Returns:

        the portlet type

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")`

    -   ### getPortletTypes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")\[\] getPortletTypes()

        Deprecated.

        use [`getPortletTypesPaging(int, int, Integer, Integer)`](#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method

        Retrieves the list of registered portlet types

        Returns:

        the list of registered portlet types sorted by name

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`registerPortletType(com.appiancorp.suiteapi.portal.PortletType)`](#registerPortletType\(com.appiancorp.suiteapi.portal.PortletType\))

    -   ### getPortletTypesPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPortletTypesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

        Retrieves the list of registered portlet types

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing the list of `PortletType` objects corresponding to the registered portlet types

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMultiplePortletTypes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")\[\] getMultiplePortletTypes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] portletTypeDefinitions\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")

        Deprecated.

        use [`findPortletTypesPaging(java.lang.String, java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) or [`getPortletTypesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getPortletTypesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead JSR-168 and WSRP Portlets have been deprecated, and calls to this method for those types will throw [`InvalidPortletTypeDefinitionException`](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal").

        Get the registered Portlet types for the requested portlet type definitions

        Parameters:

        `portletTypeDefinitions_` - the list of portlet type definitions to retrieve

        Returns:

        the portlet types, in the same order as the supplied definitions

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

        `[InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")`

    -   ### findPortletTypes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PortletType](PortletType.html "class in com.appiancorp.suiteapi.portal")\[\] findPortletTypes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterMask\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stateFilter\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidPortletTypeStateFilterException](InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")

        Deprecated.

        use [`findPortletTypesPaging(String, String, int, int, Integer, Integer)`](#findPortletTypesPaging\(java.lang.String,java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead. JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

        Parameters:

        `filterMask_` - the mask to use for the definition field, use one of the FILTER\_\* constants from [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal")

        `stateFilter_` - which state(s) to include - use one of the STATE\_\* constants from [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal"). A null means either.

        Returns:

        the list of filtered portlet types

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

        `[InvalidPortletTypeStateFilterException](InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")`

    -   ### findPortletTypesPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findPortletTypesPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterMask\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stateFilter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidPortletTypeStateFilterException](InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")

        Deprecated.

        JSR-168 and WSRP Portlets have been deprecated, and no portlets of those types will be returned by this method.

        Parameters:

        `filterMask_` - the mask to use for the definition field, use one of the FILTER\_\* constants from [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal")

        `stateFilter_` - which state(s) to include - use one of the STATE\_\* constants from [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal") or null for either.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is discouraged.

        `sortProperty_` - the property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants in [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        the list of filtered portlet types

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

        `[InvalidPortletTypeStateFilterException](InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")`

    -   ### updatePortletTypeState

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updatePortletTypeState([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newState\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal"), [InvalidPortletTypeStateException](InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")

        Deprecated.

        JSR-168 and WSRP Portlets have been deprecated, and calls for those PortletTypes will be ignored by this method

        Update state of a registered portlet type

        Parameters:

        `portletTypeDefinition_` - the Portlet type definition of the portlet type

        `newState_` - the new state - use one of the STATE\_\* constants from [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal")

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

        `[InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")`

        `[InvalidPortletTypeStateException](InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")`

    -   ### updatePortletTypesState

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updatePortletTypesState([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] portletTypeDefinitions\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newState\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal"), [InvalidPortletTypeStateException](InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")

        Deprecated.

        JSR-168 and WSRP Portlets have been deprecated, and calls for those PortletTypes will be ignored by this method

        Update the state of multiple registered portlet types

        Parameters:

        `portletTypeDefinitions_` - the list of portlet type definitions to update

        `newState_` - the new state - use one of the STATE\_\* constants from [`PortletType`](PortletType.html "class in com.appiancorp.suiteapi.portal")

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

        `[InvalidPortletTypeDefinitionException](InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")`

        `[InvalidPortletTypeStateException](InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")`

    -   ### registerWSRPProducer

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") registerWSRPProducer([PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer") producer\_) throws [DuplicateWSRPProducerURLException](portlets/wsrp/consumer/DuplicateWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer"), [InvalidWSRPProducerException](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerException`](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        Adds or updates a WSRP Producer in the system.

        Parameters:

        `producer_` - The PersistedWSRPProducer object that will be created or updated

        Returns:

        the identifier of the created or updated Producer object

        Throws:

        `[DuplicateWSRPProducerURLException](portlets/wsrp/consumer/DuplicateWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")` - if the Producer URL already exists in the system

        `[InvalidWSRPProducerException](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")` - if the id of the producer object is invalid

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the Producer URL is null or empty

    -   ### getWSRPProducersPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWSRPProducersPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now return an empty ResultPage.

        Retrieves the list of registered Producers

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PersistedWSRPProducer`](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        A Result Page containing the requested PersistedWSRPProducer objects

    -   ### getWSRPProducer

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer") getWSRPProducer([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") producerId\_) throws [InvalidWSRPProducerException](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerException`](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        Get a registered WSRP Producer

        Parameters:

        `producerId_` - the id of the producer

        Returns:

        the producer object that has the specified id

        Throws:

        `[InvalidWSRPProducerException](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")` - if the specified Producer id is invalid

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if a null Producer id is specified

    -   ### getWSRPProducers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")\[\] getWSRPProducers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] producerIds\_) throws [InvalidWSRPProducerException](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerException`](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        Gets the registered Producer objects that correspond to the specified ids

        Parameters:

        `producerIds_` - the ids of the producers

        Returns:

        an array of PersistedWSRPProducer objects that match the specified id list

        Throws:

        `[InvalidWSRPProducerException](portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")` - if any of the specified Producer ids are invalid

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the specified Producer ids are null

    -   ### getWSRPProducerFromURL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PersistedWSRPProducer](portlets/wsrp/consumer/PersistedWSRPProducer.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer") getWSRPProducerFromURL([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") producerURL\_) throws [InvalidWSRPProducerURLException](portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        WSRP Producers have been removed in Appian 22.2. This method will be removed in a future release, and will now throw [`InvalidWSRPProducerURLException`](portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        Get the registered producer for specified URL (URLs are unique)

        Parameters:

        `producerURL_` - the URL that the producer should have

        Returns:

        the PersistedWSRPProducer object for the specified URL

        Throws:

        `[InvalidWSRPProducerURLException](portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")` - if there are not Producers with the specified URL

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if an empty or null Producer URL is specified

    -   ### notifyGroupDeletion

        void notifyGroupDeletion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Notifies that the specified group has been deleted and no references to it should therefore exist in the portal application

        Parameters:

        `groupId_` - the ID of the group that has been deleted

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified group is the portal administrator group

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `groupId_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`setAdministratorGroup(java.lang.Long)`](#setAdministratorGroup\(java.lang.Long\))

    -   ### notifyGroupsDeletion

        void notifyGroupsDeletion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Notifies that the specified groups have been deleted and no references to them should therefore exist in the portal application

        Parameters:

        `groupIds_` - the IDs of the groups that have been deleted

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the specified groups is the portal administrator group

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `groupIds_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`setAdministratorGroup(java.lang.Long)`](#setAdministratorGroup\(java.lang.Long\))

    -   ### setAdministratorGroup

        void setAdministratorGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Sets the specified group as the administrative group for the Portal application. Users in the administrative group can perform any action on every object in the application, irrespective of the security settings.

        Parameters:

        `id_` - the ID of the group to be set as administrator group

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `id_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### activateUserSession

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang") activateUserSession([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] membership\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] administration\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Notifies the portal application that a new session has been created for the current user, and provides information about the current user's membership and administration rights to groups. In Portal, this call has no side-effect other than caching the passed groups, thus this method can also be used to simply update the membership/administration information for the current user. This call is necessary every time the group membership role is changed, a new group is created, or when the user is newly created

        Parameters:

        `membership_` - the list of group IDs of groups of which the user is a member

        `administration_` - the list of group IDs of groups of which the user has administrative rights

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the input arrays are `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyUserCreation

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUserCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        done automatically by UserService.createUser

        Notifies the portal application that this user has been created. This should be called after a user has been created using [`UserService.createUser(com.appiancorp.suiteapi.personalization.User)`](../personalization/UserService.html#createUser\(com.appiancorp.suiteapi.personalization.User\)).

        The caller should take care to only pass the valid username of a user that has been previously created in `UserService`.

        Parameters:

        `username_` - the username of the created user

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `username_` is `null` or empty

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyUsersCreation

        void notifyUsersCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Notifies the portal application that these users have been created. This should be called after users have been created using [`UserService.createUser(com.appiancorp.suiteapi.personalization.User)`](../personalization/UserService.html#createUser\(com.appiancorp.suiteapi.personalization.User\)) or [`UserService.createUsers(com.appiancorp.suiteapi.personalization.User[])`](../personalization/UserService.html#createUsers\(com.appiancorp.suiteapi.personalization.User%5B%5D\)).

        The caller should take care to only pass the valid username of a user that has been previously created in `UserService`.

        Parameters:

        `usernames_` - the usernames of the created users

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed `usernames_` array or any of its elements is `null` or empty

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        not used

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWorkspace

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWorkspace()

        Deprecated.

        this information is no longer available

        Gets the current memory profile for the workspace.

        Returns:

        array of Strings of length 4 describing memory usage:

        -   \[0\]Used - Memory Used by the Server so far for storage
        -   \[1\]Allocated - Memory allocated for use. Often if a large data item was allocated by a server and subsequently freed, this value will be large compared to "Used". If nearly all memory allocated is in use, this value will be close to (but always higher than) "Used"
        -   \[2\]Mapped - is the space used by memory-mapped files
        -   \[3\]Available - is the total available memory for the Server process

        Note: All usage statistics are in Bytes.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateGroupMembership

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean validateGroupMembership([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] admGroupIds\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        No longer necessary with credential system

        Validates if the association of a user as 'Member' and as an 'Administrator has changed or not.

        Parameters:

        `memGroupIds_` - Groups for which the User is a member

        `admGroupIds_` - Groups for which the User is an administrator

        Returns:

        true if there is not change in the membership of the user

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any of the input arrays are `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Updates a list of old usernames to new usernames.

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a system administrator

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reloadProperties

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void reloadProperties()

        Deprecated.

        reloading properties is now automatic, so this call is now unnecessary and does nothing.

        Reloads all database-level properties files (\*.xml, \*.properties) without interrupting API services

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validate

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validate()

        Deprecated.

        use the `validate` diagnostic script instead

        Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

        Returns:

        the validation results

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSiteLocaleSettings

        [SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") getSiteLocaleSettings()

        Deprecated.

        Returns the site locale settings for the administration server Use [`GlobalizationService.getSiteLocaleSettings()`](GlobalizationService.html#getSiteLocaleSettings\(\)) to get site locale setting for the entire site.

    -   ### setSiteLocaleSettings

        void setSiteLocaleSettings([SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") settings\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Registers the site local settings for the administration server. Use [`GlobalizationService.setSiteLocaleSettings(SiteLocaleSettings)`](GlobalizationService.html#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\)) to register site locale setting for entire site. All the properties in the [`SiteLocaleSettings`](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") parameter must be populated. The locale settings that have already been set are going to be preserved. It is required that the `primary locale` is present and enabled in the array of `locale settings`.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a portal administrator

    -   ### getSiteTimeZoneSettings

        [SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") getSiteTimeZoneSettings()

        Deprecated.

        Gets the site timezone settings for the adminstration server Use [`GlobalizationService.getSiteTimeZoneSettings()`](GlobalizationService.html#getSiteTimeZoneSettings\(\)) to get the timezone settings of the entire site.

    -   ### setSiteTimeZoneSettings

        void setSiteTimeZoneSettings([SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") timezoneSettings\_)

        Deprecated.

        Registers the site timezone settings for the administration server. Use [`GlobalizationService.setSiteTimeZoneSettings(SiteTimeZoneSettings)`](GlobalizationService.html#setSiteTimeZoneSettings\(com.appiancorp.suiteapi.portal.SiteTimeZoneSettings\)) to set the timezone settings for the entire site.

    -   ### getSiteCalendarSettings

        [SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") getSiteCalendarSettings()

        Deprecated.

        Gets the calendar settings for the administration server Use [`GlobalizationService.getSiteCalendarSettings()`](GlobalizationService.html#getSiteCalendarSettings\(\)) to get the calendar settings of the entire site.

    -   ### setSiteCalendarSettings

        void setSiteCalendarSettings([SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") settings\_)

        Deprecated.

        Registers the calendar setting for the administration server. Use [`GlobalizationService.setSiteCalendarSettings(SiteCalendarSettings)`](GlobalizationService.html#setSiteCalendarSettings\(com.appiancorp.suiteapi.portal.SiteCalendarSettings\)) to set the calendar settings for the entire site.

    -   ### getSystemPageId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemPageId(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") systemPageUuid)

        Deprecated.

        Gets the system page id corresponding to the given UUID. System pages UUIDs include:

         "SYSTEM\_PAGE\_PORTAL\_HOME"
         "SYSTEM\_PAGE\_PORTAL\_LICENSE\_ADMINISTRATION"
         "SYSTEM\_PAGE\_PORTAL\_SERVICES"
         "SYSTEM\_PAGE\_PORTAL\_PROCESS\_KOUGAR\_MONITOR"
         "SYSTEM\_PAGE\_PORTAL\_REAL\_TIME\_MONITOR"
         "SYSTEM\_PAGE\_PORTAL\_START\_PAGE\_SETTINGS"
         "SYSTEM\_PAGE\_PORTAL\_CREATE\_AN\_ADMIN\_PAGE"
         "SYSTEM\_PAGE\_PORTAL\_SET\_WORKING\_TIME"
         "SYSTEM\_PAGE\_PORTAL\_NAVIGATION\_BUTTONS"
         "SYSTEM\_PAGE\_PORTAL\_DATA\_TYPES"
         "SYSTEM\_PAGE\_PROCESS\_MODEL\_DASHBOARD"
         "SYSTEM\_PAGE\_PROCESS\_DASHBOARD"

        Parameters:

        `systemPageUuid` - one of the UUIDs listed above