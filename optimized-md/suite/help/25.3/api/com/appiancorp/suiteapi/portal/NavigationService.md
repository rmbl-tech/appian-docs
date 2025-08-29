---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/NavigationService.html
original_path: api/com/appiancorp/suiteapi/portal/NavigationService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface NavigationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface NavigationService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[NavigationButton](NavigationButton.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getAllNavigationButtons](#getAllNavigationButtons\(\))()`

    Deprecated.

    Get all navigation buttons.

    `[NavigationButton](NavigationButton.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getNavigationButtons](#getNavigationButtons\(\))()`

    Deprecated.

    Get only those buttons that the current user has access to see.

    `[NavigationMenu](NavigationMenu.html "class in com.appiancorp.suiteapi.portal")`

    `[getNavigationMenu](#getNavigationMenu\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_)`

    Deprecated.

     

    `[NavigationMenu](NavigationMenu.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getNavigationMenus](#getNavigationMenus\(\))()`

    Deprecated.

    Get all menus registered in the system.

    `void`

    `[updateNavigationButtons](#updateNavigationButtons\(com.appiancorp.suiteapi.portal.NavigationButton%5B%5D\))([NavigationButton](NavigationButton.html "class in com.appiancorp.suiteapi.portal")[] buttons_)`

    Deprecated.

    All navigation button are updated in bulk.

    `void`

    `[updateNavigationMenus](#updateNavigationMenus\(com.appiancorp.suiteapi.portal.NavigationMenu%5B%5D\))([NavigationMenu](NavigationMenu.html "class in com.appiancorp.suiteapi.portal")[] menus_)`

    Deprecated.

    All navigation menus are updated in bulk.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Method Details

    -   ### updateNavigationButtons

        void updateNavigationButtons([NavigationButton](NavigationButton.html "class in com.appiancorp.suiteapi.portal")\[\] buttons\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        All navigation button are updated in bulk. If a button has an id of -1 it is new and a new id is assigned to it. If a button exists in the data store and is not present in this list of buttons, then it has been deleted and should be removed from the data store. This method can only be called by a system administrator.

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### getNavigationButtons

        [NavigationButton](NavigationButton.html "class in com.appiancorp.suiteapi.portal")\[\] getNavigationButtons()

        Deprecated.

        Get only those buttons that the current user has access to see. Note that administrators always will see all buttons, regardless of group membership.

    -   ### getAllNavigationButtons

        [NavigationButton](NavigationButton.html "class in com.appiancorp.suiteapi.portal")\[\] getAllNavigationButtons()

        Deprecated.

        Get all navigation buttons. Must be an administrator to make this call.

    -   ### updateNavigationMenus

        void updateNavigationMenus([NavigationMenu](NavigationMenu.html "class in com.appiancorp.suiteapi.portal")\[\] menus\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        All navigation menus are updated in bulk. If a menu has an id of -1 it is new and a new id is assigned to it. If a menu exists in the data store and is not present in this list of menus, then it has been deleted and should be removed from the data store. This method can only be called by a system administrator.

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### getNavigationMenus

        [NavigationMenu](NavigationMenu.html "class in com.appiancorp.suiteapi.portal")\[\] getNavigationMenus()

        Deprecated.

        Get all menus registered in the system.

    -   ### getNavigationMenu

        [NavigationMenu](NavigationMenu.html "class in com.appiancorp.suiteapi.portal") getNavigationMenu([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_)

        Deprecated.