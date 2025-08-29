---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/exceptions/package-summary.html
original_path: api/com/appiancorp/services/exceptions/package-summary.html
version: "25.3"
title: "Package com.appiancorp.services.exceptions"
page_id: "api/com/appiancorp/services/exceptions/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.services.exceptions

* * *

package com.appiancorp.services.exceptions

-   Related Packages

    Package

    Description

    [com.appiancorp.services](../package-summary.html)

-   Exceptions

    Class

    Description

    [ResourceDisabledException](ResourceDisabledException.html "class in com.appiancorp.services.exceptions")

    This exception is thrown when a user attempts to access a resource (for example, a service API) which is disabled (ie, turned off).

    [ResourceRestrictedException](ResourceRestrictedException.html "class in com.appiancorp.services.exceptions")

    This exception is thrown when a user attempts to access a resource (for example, a service API) which is restricted, and the user does not have sufficient privileges for access (usually determined by group membership).

    [ServiceException](ServiceException.html "class in com.appiancorp.services.exceptions")

    This is an unchecked exception which occurs whenever there are unforeseen problems in execution of a request served through Appian Standard Library (ASL).

    [UnsupportedServiceException](UnsupportedServiceException.html "class in com.appiancorp.services.exceptions")

    This is an unchecked exception which occurs when a client makes a request for a service that was not part of the ASL configuration.