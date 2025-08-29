---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Connection.html
original_path: api/com/appiancorp/suiteapi/process/Connection.html
version: "25.3"
title: "Class Connection"
page_id: "api/com/appiancorp/suiteapi/process/Connection"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Connection

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Connection

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Connection extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Represents a directional link between two process nodes (startNode and endNode). The current thinking is that the only node that is relevant is the end node, and it is referenced by its guiId. Connections are also known as "flows".

See Also:

-   [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Connection)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DEFAULT_OBJECT_TYPE](#DEFAULT_OBJECT_TYPE)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[END_TYPE_ANNOTATION](#END_TYPE_ANNOTATION)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[END_TYPE_NODE](#END_TYPE_NODE)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[STATUS_NOT_TRAVERSED](#STATUS_NOT_TRAVERSED)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[STATUS_TRAVERSED](#STATUS_TRAVERSED)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Connection](#%3Cinit%3E\(\))()`

    Creates a new connection.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Connection](Connection.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssociations](#getAssociations\(\))()`

    See [`setAssociations(Connection[])`](#setAssociations\(com.appiancorp.suiteapi.process.Connection%5B%5D\)).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getEndNodeGuiId](#getEndNodeGuiId\(\))()`

    The gui id of the node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") at the end of this connection.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEndObjectType](#getEndObjectType\(\))()`

    See [`setEndObjectType(String)`](#setEndObjectType\(java.lang.String\)).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFromAnchor](#getFromAnchor\(\))()`

    Get the anchor of the Node from which this `Connection` begins.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGuiId](#getGuiId\(\))()`

    See [`setGuiId(Long)`](#setGuiId\(java.lang.Long\)).

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLabel](#getLabel\(\))()`

    Gets the label for this `Connection`.

    `[Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui")`

    `[getLabelStyle](#getLabelStyle\(\))()`

    Gets the `Label` bean which stores the styling information for this `Connection`'s label.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getStartNodeGuiId](#getStartNodeGuiId\(\))()`

    Gets the gui id of the start node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") of this connection.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getStatus](#getStatus\(\))()`

    `boolean`

    `[getSynchronizeData](#getSynchronizeData\(\))()`

    Returns true if you want to synchronizeData

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getToAnchor](#getToAnchor\(\))()`

    Get the anchor of the Node at which this `Connection` terminates.

    `boolean`

    `[isChained](#isChained\(\))()`

    Determines whether the next attended activity should be shown immediately, as if part of a wizard.

    `boolean`

    `[isOverridesAssignment](#isOverridesAssignment\(\))()`

    Returns true if you want to override the assignment for the next attended activity.

    `boolean`

    `[isShowArrowhead](#isShowArrowhead\(\))()`

    See [`setShowArrowhead(boolean)`](#setShowArrowhead\(boolean\)).

    `void`

    `[setAssociations](#setAssociations\(com.appiancorp.suiteapi.process.Connection%5B%5D\))([Connection](Connection.html "class in com.appiancorp.suiteapi.process")[] associations_)`

    Set the associations of this connection; if this connection is an association itself, this field should be `null`.

    `void`

    `[setChained](#setChained\(boolean\))(boolean chained_)`

    Set whether the next attended activity should be shown immediately, as if part of a wizard.

    `void`

    `[setEndNodeGuiId](#setEndNodeGuiId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") endNodeGuiId_)`

    Sets the gui id of the node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") at the end of this connection.

    `void`

    `[setEndObjectType](#setEndObjectType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endObjectType_)`

    Set the type of the end object of this connection, for example "ap.gui.Node" or "ap.gui.Annotation".

    `void`

    `[setFromAnchor](#setFromAnchor\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fromAnchor_)`

    Set the anchor of the Node from which this `Connection` begins.

    `void`

    `[setGuiId](#setGuiId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") guiId_)`

    Set the guiId of the connection.

    `void`

    `[setLabel](#setLabel\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label_)`

    Sets the label for this `Connection`.

    `void`

    `[setLabelStyle](#setLabelStyle\(com.appiancorp.suiteapi.process.gui.Label\))([Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle_)`

    Sets the `Label` bean for this `Connection`.

    `void`

    `[setOverridesAssignment](#setOverridesAssignment\(boolean\))(boolean overridesAssignment_)`

    Set whether or not to override the assignment of the next attended activity.

    `void`

    `[setShowArrowhead](#setShowArrowhead\(boolean\))(boolean showArrowhead_)`

    Set whether an arrowhead should be displayed at the end of the connection.

    `void`

    `[setStartNodeGuiId](#setStartNodeGuiId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") startNodeGuiId_)`

    Sets the gui id of the start node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") of this connection.

    `void`

    `[setStatus](#setStatus\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") status_)`

    sets the status of the connection

    `void`

    `[setSynchronizeData](#setSynchronizeData\(boolean\))(boolean synchronizeData_)`

    Set whether or not to synchronizeData

    `void`

    `[setToAnchor](#setToAnchor\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toAnchor_)`

    Set the anchor of the Node at which this `Connection` terminates.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Creates a String representation of this object, which is useful for debugging.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    converts the `connection` to XML and returns it as a String

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### STATUS\_NOT\_TRAVERSED

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") STATUS\_NOT\_TRAVERSED

    -   ### STATUS\_TRAVERSED

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") STATUS\_TRAVERSED

    -   ### END\_TYPE\_NODE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") END\_TYPE\_NODE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Connection.END_TYPE_NODE)

    -   ### END\_TYPE\_ANNOTATION

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") END\_TYPE\_ANNOTATION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Connection.END_TYPE_ANNOTATION)

    -   ### DEFAULT\_OBJECT\_TYPE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DEFAULT\_OBJECT\_TYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Connection.DEFAULT_OBJECT_TYPE)

-   ## Constructor Details

    -   ### Connection

        public Connection()

        Creates a new connection.

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        converts the `connection` to XML and returns it as a String

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Appends an XML representation of this object to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### getGuiId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGuiId()

        See [`setGuiId(Long)`](#setGuiId\(java.lang.Long\)).

    -   ### setGuiId

        public void setGuiId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") guiId\_)

        Set the guiId of the connection.

    -   ### getEndNodeGuiId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getEndNodeGuiId()

        The gui id of the node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") at the end of this connection. A gui id is the identifier within the context of a process model [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"), and is NOT a primary key.

        Returns:

        the end node gui id for this connection

    -   ### setEndNodeGuiId

        public void setEndNodeGuiId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") endNodeGuiId\_)

        Sets the gui id of the node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") at the end of this connection. A gui id is the identifier within the context of a process model [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"), and is NOT a primary key.

        Parameters:

        `endNodeGuiId_` - the end node gui id to set for this connection

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Creates a String representation of this object, which is useful for debugging.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getStartNodeGuiId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getStartNodeGuiId()

        Gets the gui id of the start node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") of this connection. A gui id is the identifier within the context of a process model [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"), and is NOT a primary key.

        Returns:

        the start node gui id for this connection

    -   ### setStartNodeGuiId

        public void setStartNodeGuiId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") startNodeGuiId\_)

        Sets the gui id of the start node [`ProcessNode`](ProcessNode.html "class in com.appiancorp.suiteapi.process") of this connection. A gui id is the identifier within the context of a process model [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process"), and is NOT a primary key.

        Parameters:

        `startNodeGuiId_` - the start node gui id to set for this connection

    -   ### setStatus

        public void setStatus([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") status\_)

        sets the status of the connection

        Parameters:

        `status_` - the status of the connection, which can either

    -   ### getStatus

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getStatus()

        Returns:

        the status of the connection, which can either

    -   ### getFromAnchor

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFromAnchor()

        Get the anchor of the Node from which this `Connection` begins.

        Returns:

        The anchor from which this `Connection` starts.

    -   ### setFromAnchor

        public void setFromAnchor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fromAnchor\_)

        Set the anchor of the Node from which this `Connection` begins.

        Parameters:

        `fromAnchor_` - The anchor from which this `Connection` will start

    -   ### getToAnchor

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getToAnchor()

        Get the anchor of the Node at which this `Connection` terminates.

        Returns:

        The anchor at which this `Connection` terminates.

    -   ### setToAnchor

        public void setToAnchor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") toAnchor\_)

        Set the anchor of the Node at which this `Connection` terminates.

        Parameters:

        `toAnchor_` - The anchor at which this `Connection` terminates.

    -   ### isShowArrowhead

        public boolean isShowArrowhead()

        See [`setShowArrowhead(boolean)`](#setShowArrowhead\(boolean\)).

    -   ### setShowArrowhead

        public void setShowArrowhead(boolean showArrowhead\_)

        Set whether an arrowhead should be displayed at the end of the connection.

    -   ### getLabel

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLabel()

        Gets the label for this `Connection`.

        Returns:

        The label for this `Connection`

    -   ### setLabel

        public void setLabel([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label\_)

        Sets the label for this `Connection`.

        Parameters:

        `label_` - The label to set for this `Connection`

    -   ### getLabelStyle

        public [Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui") getLabelStyle()

        Gets the `Label` bean which stores the styling information for this `Connection`'s label.

        Returns:

        The `Label` bean for this `Connection`

    -   ### setLabelStyle

        public void setLabelStyle([Label](gui/Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle\_)

        Sets the `Label` bean for this `Connection`.

        Parameters:

        `labelStyle_` - The `Label` bean to set for this `Connection`

        See Also:

        -   [`getLabelStyle()`](#getLabelStyle\(\))

    -   ### getEndObjectType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEndObjectType()

        See [`setEndObjectType(String)`](#setEndObjectType\(java.lang.String\)).

    -   ### setEndObjectType

        public void setEndObjectType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endObjectType\_)

        Set the type of the end object of this connection, for example "ap.gui.Node" or "ap.gui.Annotation".

    -   ### getAssociations

        public [Connection](Connection.html "class in com.appiancorp.suiteapi.process")\[\] getAssociations()

        See [`setAssociations(Connection[])`](#setAssociations\(com.appiancorp.suiteapi.process.Connection%5B%5D\)).

    -   ### setAssociations

        public void setAssociations([Connection](Connection.html "class in com.appiancorp.suiteapi.process")\[\] associations\_)

        Set the associations of this connection; if this connection is an association itself, this field should be `null`.

    -   ### isChained

        public boolean isChained()

        Determines whether the next attended activity should be shown immediately, as if part of a wizard.

        Returns:

        true if activity chaining is enabled

        See Also:

        -   [`setChained(boolean)`](#setChained\(boolean\))

    -   ### setChained

        public void setChained(boolean chained\_)

        Set whether the next attended activity should be shown immediately, as if part of a wizard.

        Parameters:

        `chained_` - true to enable activity chaining

        See Also:

        -   [`isChained()`](#isChained\(\))

    -   ### isOverridesAssignment

        public boolean isOverridesAssignment()

        Returns true if you want to override the assignment for the next attended activity. This is only relevant if this Connection has activity chaining enabled.

        Returns:

        true if the next attended activity assignment is to be overridden

        See Also:

        -   [`setOverridesAssignment(boolean)`](#setOverridesAssignment\(boolean\))

    -   ### setOverridesAssignment

        public void setOverridesAssignment(boolean overridesAssignment\_)

        Set whether or not to override the assignment of the next attended activity. This is only relevant if this Connection has activity chaining enabled.

        Parameters:

        `overridesAssignment_` - true to override assignment

        See Also:

        -   [`isOverridesAssignment()`](#isOverridesAssignment\(\))

    -   ### getSynchronizeData

        public boolean getSynchronizeData()

        Returns true if you want to synchronizeData

    -   ### setSynchronizeData

        public void setSynchronizeData(boolean synchronizeData\_)

        Set whether or not to synchronizeData