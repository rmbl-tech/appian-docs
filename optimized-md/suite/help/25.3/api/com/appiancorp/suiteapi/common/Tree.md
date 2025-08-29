---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Tree.html
original_path: api/com/appiancorp/suiteapi/common/Tree.html
version: "25.3"
title: "Class Tree"
page_id: "api/com/appiancorp/suiteapi/common/Tree"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class Tree

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.common.Tree

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Tree extends [TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")

Collection of objects such that each object has data and potentially references to other `Tree`s, subject to the following restrictions:

-   Each tree has exactly one root.
-   The root of the tree has no parent; all other nodes have exactly one parent.
-   Each node may have an unbounded number of child nodes, possibly zero.
-   The child nodes are themselves the roots of sub-trees.

The data of each node is the set of properties inherited from [`TreeNode`](TreeNode.html "class in com.appiancorp.suiteapi.common").

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.Tree)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATA](#SORT_BY_DATA)`

    A constant for sorting tress by data field of the nodes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    A constant for sorting trees by the name of the nodes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NODE_ID](#SORT_BY_NODE_ID)`

    A constant for sorting trees by the ID of the nodes

    ### Fields inherited from class com.appiancorp.suiteapi.common.[TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")

    `[_data](TreeNode.html#_data), [_id](TreeNode.html#_id), [_name](TreeNode.html#_name)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Tree](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Tree](Tree.html "class in com.appiancorp.suiteapi.common")[]`

    `[getChildren](#getChildren\(\))()`

    Get the children of this node.

    `void`

    `[populateTree](#populateTree\(java.lang.Object%5B%5D\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] data_)`

    Convenience method to populate the node data of nodes in this tree.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[retrieveTreeData](#retrieveTreeData\(\))()`

    Convenience method to obtain a flat represention of the data in the tree.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[retrieveTreeDepths](#retrieveTreeDepths\(\))()`

    Convenience method to obtain a flat represention of the depths of the nodes in the tree.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[retrieveTreeIds](#retrieveTreeIds\(\))()`

    Convenience method to obtain a flat represention of the tree.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[retrieveTreeNames](#retrieveTreeNames\(\))()`

    Convenience method to obtain a flat represention of the names of the tree nodes.

    `void`

    `[setChildren](#setChildren\(com.appiancorp.suiteapi.common.Tree%5B%5D\))([Tree](Tree.html "class in com.appiancorp.suiteapi.common")[] children_)`

    Set the children of this node.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")

    `[getData](TreeNode.html#getData\(\)), [getId](TreeNode.html#getId\(\)), [getName](TreeNode.html#getName\(\)), [setData](TreeNode.html#setData\(java.lang.Object\)), [setId](TreeNode.html#setId\(java.lang.Long\)), [setName](TreeNode.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_NODE\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NODE\_ID

        A constant for sorting trees by the ID of the nodes

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        A constant for sorting trees by the name of the nodes

    -   ### SORT\_BY\_DATA

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATA

        A constant for sorting tress by data field of the nodes

-   ## Constructor Details

    -   ### Tree

        public Tree()

-   ## Method Details

    -   ### getChildren

        public [Tree](Tree.html "class in com.appiancorp.suiteapi.common")\[\] getChildren()

        Get the children of this node.

        Returns:

        An array of Tree objects that are the root of children trees.

        See Also:

        -   [`setChildren(Tree[])`](#setChildren\(com.appiancorp.suiteapi.common.Tree%5B%5D\))

    -   ### setChildren

        public void setChildren([Tree](Tree.html "class in com.appiancorp.suiteapi.common")\[\] children\_)

        Set the children of this node.

        Parameters:

        `children_` - an array of child trees

        See Also:

        -   [`getChildren()`](#getChildren\(\))

    -   ### retrieveTreeIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] retrieveTreeIds()

        Convenience method to obtain a flat represention of the tree. Uses the same traversal as [`populateTree(java.lang.Object[])`](#populateTree\(java.lang.Object%5B%5D\)). This order is known as _preorder_, which means that the root node is visited before any of its children.

        Returns:

        the ids of the nodes in the tree in a one-dimensional array.

    -   ### retrieveTreeData

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] retrieveTreeData()

        Convenience method to obtain a flat represention of the data in the tree. Uses the same traversal as [`populateTree(java.lang.Object[])`](#populateTree\(java.lang.Object%5B%5D\)). This order is known as _preorder_, which means that the root node is visited before any of its children.

        Returns:

        The data in the nodes in the tree in a one-dimensional array.

    -   ### retrieveTreeNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] retrieveTreeNames()

        Convenience method to obtain a flat represention of the names of the tree nodes. Uses the same traversal as [`populateTree(java.lang.Object[])`](#populateTree\(java.lang.Object%5B%5D\)). This order is known as _preorder_, which means that the root node is visited before any of its children.

        Returns:

        The names of the nodes in the tree in a one-dimensional array.

    -   ### retrieveTreeDepths

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] retrieveTreeDepths()

        Convenience method to obtain a flat represention of the depths of the nodes in the tree. The depth of the top-level node is 0, the depth of its direct descendants is 1, and so on. Uses the same traversal as [`populateTree(java.lang.Object[])`](#populateTree\(java.lang.Object%5B%5D\)). This order is known as _preorder_, which means that the root node is visited before any of its children.

        Returns:

        The depths of the nodes in the tree in a one-dimensional array.

    -   ### populateTree

        public void populateTree([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] data\_)

        Convenience method to populate the node data of nodes in this tree. Uses the same traversal as `retrieveTreeIds()`. This order is known as _preorder_, which means that the root node is visited before any of its children.

        Parameters:

        `data_` - A one-dimensional array of data to use to populate tree.