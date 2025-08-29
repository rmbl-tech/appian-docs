---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/DiscussionBodyService.html
original_path: api/com/appiancorp/suiteapi/forums/DiscussionBodyService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Interface DiscussionBodyService

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface DiscussionBodyService

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Defines body-related methods for the discussion forums server. The methods that return bodies only throw exceptions if there is a failure in the storage mechanism. If a body is requested from a location that doesn't exist, then a null is returned for that body. If a body is requested from a valid location but the body is empty, an empty string is returned. The case of scalars is clear. For arrays, if some bodies are found and others are not, then the bodies that are found will be returned at the proper indexes and the indexed spots for bodies that are not found will contain nulls. If there is a storage mechanism failure in retrieving any of the bodies, an exception will be thrown.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`DiscussionMetadataConvenienceService`](DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")
-   [`DiscussionMetadataCoreService`](DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")
-   [`ForumsSearchService`](ForumsSearchService.html "interface in com.appiancorp.suiteapi.forums")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[createMessage$UPDATES](#createMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createMessages$UPDATES](#createMessages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[readBodies$UPDATES](#readBodies$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[readBody$UPDATES](#readBody$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateMessage$UPDATES](#updateMessage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateMessages$UPDATES](#updateMessages$UPDATES)`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[createMessage](#createMessage\(com.appiancorp.suiteapi.forums.Message\))([Message](Message.html "class in com.appiancorp.suiteapi.forums") m_)`

    Deprecated.

    Stores the body for a new message

    `void`

    `[createMessages](#createMessages\(com.appiancorp.suiteapi.forums.Message%5B%5D\))([Message](Message.html "class in com.appiancorp.suiteapi.forums")[] ms_)`

    Deprecated.

    Stores the body for multiple messages

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[readBodies](#readBodies\(com.appiancorp.suiteapi.forums.Message%5B%5D\))([Message](Message.html "class in com.appiancorp.suiteapi.forums")[] ms_)`

    Deprecated.

    Read multiple message bodies.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[readBodies](#readBodies\(com.appiancorp.suiteapi.forums.ThreadedMessage%5B%5D\))([ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")[] tms_)`

    Deprecated.

    Read multiple message bodies.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[readBodies](#readBodies\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] locations_)`

    Deprecated.

    Read multiple message bodies from given locations.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[readBody](#readBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location_)`

    Deprecated.

    Read the message body at the given location.

    `void`

    `[updateMessage](#updateMessage\(com.appiancorp.suiteapi.forums.Message\))([Message](Message.html "class in com.appiancorp.suiteapi.forums") m_)`

    Deprecated.

    Updates a message body

    `void`

    `[updateMessages](#updateMessages\(com.appiancorp.suiteapi.forums.Message%5B%5D\))([Message](Message.html "class in com.appiancorp.suiteapi.forums")[] ms_)`

    Deprecated.

    Updates multiple message bodies

-   ## Field Details

    -   ### readBody$UPDATES

        static final boolean readBody$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionBodyService.readBody$UPDATES)

    -   ### readBodies$UPDATES

        static final boolean readBodies$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionBodyService.readBodies$UPDATES)

    -   ### createMessage$UPDATES

        static final boolean createMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionBodyService.createMessage$UPDATES)

    -   ### createMessages$UPDATES

        static final boolean createMessages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionBodyService.createMessages$UPDATES)

    -   ### updateMessage$UPDATES

        static final boolean updateMessage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionBodyService.updateMessage$UPDATES)

    -   ### updateMessages$UPDATES

        static final boolean updateMessages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.DiscussionBodyService.updateMessages$UPDATES)

-   ## Method Details

    -   ### readBody

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") readBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location\_)

        Deprecated.

        Read the message body at the given location.

        Parameters:

        `location_` - The location of the body, i.e. filename

        Returns:

        The body, if found; `null`, if not found.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the the given String is null.

    -   ### readBodies

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] readBodies([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] locations\_)

        Deprecated.

        Read multiple message bodies from given locations.

        Parameters:

        `locations_` - The locations of the bodies.

        Returns:

        An array containing: the body, if found; a `null`, if not found (this applies for null locations). If the array is empty then it also returns an empty array.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the the given array is null.

    -   ### readBodies

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] readBodies([Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] ms\_)

        Deprecated.

        Read multiple message bodies.

        Parameters:

        `ms_` - The `Message` objects for which to obtain bodies; the `bodyLocation` field should be populated.

        Returns:

        An array containing: the body, if found; a `null`, if not found (this applies for null locations). If the array is empty then it also returns an empty array.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the the given array is null.

    -   ### readBodies

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] readBodies([ThreadedMessage](ThreadedMessage.html "class in com.appiancorp.suiteapi.forums")\[\] tms\_)

        Deprecated.

        Read multiple message bodies.

        Parameters:

        `tms_` - The threaded `Message` objects for which to obtain bodies; the `bodyLocation` field should be populated.

        Returns:

        An array containing: the body, if found; a `null`, if not found (this applies for null locations). If the array is empty then it also returns an empty array.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the the given array is null.

    -   ### createMessage

        void createMessage([Message](Message.html "class in com.appiancorp.suiteapi.forums") m\_)

        Deprecated.

        Stores the body for a new message

        Parameters:

        `m_` - The `Message` to be stored; the `bodyLocation` field should be populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createMessages

        void createMessages([Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] ms\_)

        Deprecated.

        Stores the body for multiple messages

        Parameters:

        `ms_` - The `Message` to be stored; the `bodyLocation` field should be populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the the given message array is null.

    -   ### updateMessage

        void updateMessage([Message](Message.html "class in com.appiancorp.suiteapi.forums") m\_)

        Deprecated.

        Updates a message body

        Parameters:

        `m_` - The `Message` to be updated; the `bodyLocation` field should be populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateMessages

        void updateMessages([Message](Message.html "class in com.appiancorp.suiteapi.forums")\[\] ms\_)

        Deprecated.

        Updates multiple message bodies

        Parameters:

        `ms_` - The messages to be updated; the `bodyLocation` field should be populated.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the the given message array is null.