---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/Event.html
original_path: api/com/appiancorp/suiteapi/process/events/Event.html
version: "25.3"
title: "Class Event"
page_id: "api/com/appiancorp/suiteapi/process/events/Event"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class Event

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.events.Event

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")`

* * *

public class Event extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Base class for all events (both [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") and [`EventProducer`](EventProducer.html "class in com.appiancorp.suiteapi.process.events") extend this class). This class also contains the type code constants for the different event types. This class should not be instantiated directly. Use [`EventTrigger.createEventTrigger(Long)`](EventTrigger.html#createEventTrigger\(java.lang.Long\)) or [`EventProducer.createEventProducer(Long)`](EventProducer.html#createEventProducer\(java.lang.Long\)) instead.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.Event)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[ERROR_EVENT_TRIGGER](#ERROR_EVENT_TRIGGER)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[MESSAGE_EVENT_PRODUCER](#MESSAGE_EVENT_PRODUCER)`

    Event type code for a send message event.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[MESSAGE_EVENT_TRIGGER](#MESSAGE_EVENT_TRIGGER)`

    Event type code for a receive message event.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[RULE_EVENT_TRIGGER](#RULE_EVENT_TRIGGER)`

    Event type code for a rule event.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESC](#SORT_BY_DESC)`

    Sort by Event Description.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Sort by Event ID.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Sort by Event Name.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[TERMINATE_EVENT_PRODUCER](#TERMINATE_EVENT_PRODUCER)`

    Event type code for a terminate event.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[TIMER_EVENT_TRIGGER](#TIMER_EVENT_TRIGGER)`

    Event type code for a timer event.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Event](#%3Cinit%3E\(\))()`

    Do not use.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDesc](#getDesc\(\))()`

    Gets the description of event.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the ID of event.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name of the event.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPersistentId](#getPersistentId\(\))()`

    Returns the persistent ID of the event.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Gets the type of event.

    `static boolean`

    `[isProducerType](#isProducerType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Determines whether the type code passed in represents a producer.

    `static boolean`

    `[isTriggerType](#isTriggerType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Determines whether the type code passed in represents a trigger.

    `void`

    `[setDesc](#setDesc\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc_)`

    Sets the description of event.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the ID of the event.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the name for the event.

    `void`

    `[setPersistentId](#setPersistentId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") persistentId_)`

    Sets the persistent ID of the event.

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Sets the type of event.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### MESSAGE\_EVENT\_TRIGGER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MESSAGE\_EVENT\_TRIGGER

        Event type code for a receive message event.

    -   ### TIMER\_EVENT\_TRIGGER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") TIMER\_EVENT\_TRIGGER

        Event type code for a timer event.

    -   ### ERROR\_EVENT\_TRIGGER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ERROR\_EVENT\_TRIGGER

    -   ### RULE\_EVENT\_TRIGGER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") RULE\_EVENT\_TRIGGER

        Event type code for a rule event.

    -   ### MESSAGE\_EVENT\_PRODUCER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MESSAGE\_EVENT\_PRODUCER

        Event type code for a send message event.

    -   ### TERMINATE\_EVENT\_PRODUCER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") TERMINATE\_EVENT\_PRODUCER

        Event type code for a terminate event.

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Sort by Event ID.

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Sort by Event Name.

    -   ### SORT\_BY\_DESC

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESC

        Sort by Event Description.

-   ## Constructor Details

    -   ### Event

        public Event()

        Do not use. This class should not be instantiated directly. Use [`EventTrigger.createEventTrigger(Long)`](EventTrigger.html#createEventTrigger\(java.lang.Long\)) or [`EventProducer.createEventProducer(Long)`](EventProducer.html#createEventProducer\(java.lang.Long\)) instead.

-   ## Method Details

    -   ### getPersistentId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPersistentId()

        Returns the persistent ID of the event. This differs from the ID because it is the same for all instances of the event, whereas a new ID is assigned to every new event instance. When an event is reached in flow, that event is activated (triggers) or fired (producers) and a new instance of that event is created.

        Returns:

        Persistent ID of event

        See Also:

        -   [`setPersistentId(String)`](#setPersistentId\(java.lang.String\))

    -   ### setPersistentId

        public void setPersistentId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") persistentId\_)

        Sets the persistent ID of the event. This differs from the ID because it is the same for all instances of the event, whereas a new ID is assigned to every new event instantiated. When an event is reached in flow, that event is activated (triggers) or fired (producers) and a new instance of that event is created.

        Parameters:

        `persistentId_` - persistent ID to set

        See Also:

        -   [`getPersistentId()`](#getPersistentId\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the ID of event.

        Returns:

        ID of event

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the ID of the event.

        Parameters:

        `id_` - ID to set to.

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name of the event.

        Returns:

        name of event

        See Also:

        -   [`setName(String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the name for the event.

        Parameters:

        `name_` - new name of event.

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Gets the type of event. The type is one of [`MESSAGE_EVENT_TRIGGER`](#MESSAGE_EVENT_TRIGGER), [`TIMER_EVENT_TRIGGER`](#TIMER_EVENT_TRIGGER), [`RULE_EVENT_TRIGGER`](#RULE_EVENT_TRIGGER), [`MESSAGE_EVENT_PRODUCER`](#MESSAGE_EVENT_PRODUCER), or [`TERMINATE_EVENT_PRODUCER`](#TERMINATE_EVENT_PRODUCER).

        Returns:

        type of event

        See Also:

        -   [`setType(Long)`](#setType\(java.lang.Long\))

    -   ### setType

        public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Sets the type of event. The type is one of [`MESSAGE_EVENT_TRIGGER`](#MESSAGE_EVENT_TRIGGER), [`TIMER_EVENT_TRIGGER`](#TIMER_EVENT_TRIGGER), [`RULE_EVENT_TRIGGER`](#RULE_EVENT_TRIGGER), [`MESSAGE_EVENT_PRODUCER`](#MESSAGE_EVENT_PRODUCER), or [`TERMINATE_EVENT_PRODUCER`](#TERMINATE_EVENT_PRODUCER).

        Parameters:

        `type_` - type of event to set.

        See Also:

        -   [`getType()`](#getType\(\))

    -   ### getDesc

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDesc()

        Gets the description of event.

        Returns:

        description of event

        See Also:

        -   [`setDesc(String)`](#setDesc\(java.lang.String\))

    -   ### setDesc

        public void setDesc([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc\_)

        Sets the description of event.

        Parameters:

        `desc_` - description of event to set.

        See Also:

        -   [`getDesc()`](#getDesc\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### isProducerType

        public static boolean isProducerType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Determines whether the type code passed in represents a producer.

        Parameters:

        `type_` - the type code

        Returns:

        whether the type code represents a producer

    -   ### isTriggerType

        public static boolean isTriggerType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Determines whether the type code passed in represents a trigger.

        Parameters:

        `type_` - the type code

        Returns:

        whether the type code represents a trigger