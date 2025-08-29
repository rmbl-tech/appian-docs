---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/TreePivot.html
original_path: api/com/appiancorp/suiteapi/common/TreePivot.html
version: "25.3"
title: "Class TreePivot"
page_id: "api/com/appiancorp/suiteapi/common/TreePivot"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class TreePivot

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.TreePivot

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class TreePivot extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Represents a view of a tree from the position of a node in the tree.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.TreePivot)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TreePivot](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")[]`

    `[getBreadcrumbs](#getBreadcrumbs\(\))()`

    Get the route from the root of the tree to the node.

    `[Tree](Tree.html "class in com.appiancorp.suiteapi.common")`

    `[getSubtree](#getSubtree\(\))()`

    Get the tree starting a this node.

    `void`

    `[populateBreadcrumbs](#populateBreadcrumbs\(java.lang.Object%5B%5D\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] data_)`

    Convenience method to populate node data in breadcrumb nodes.

    `void`

    `[setBreadcrumbs](#setBreadcrumbs\(com.appiancorp.suiteapi.common.TreeNode%5B%5D\))([TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")[] breadcrumbs)`

    Set the route from the root of the tree to the node.

    `void`

    `[setSubtree](#setSubtree\(com.appiancorp.suiteapi.common.Tree\))([Tree](Tree.html "class in com.appiancorp.suiteapi.common") node_)`

    Set the tree starting a this node.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TreePivot

        public TreePivot()

-   ## Method Details

    -   ### getBreadcrumbs

        public [TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")\[\] getBreadcrumbs()

        Get the route from the root of the tree to the node. Breadcrumbs are the ancestors of this node, up to and including the root of the tree.

        Returns:

        the ancestors of this node.

        See Also:

        -   [`setBreadcrumbs(TreeNode[])`](#setBreadcrumbs\(com.appiancorp.suiteapi.common.TreeNode%5B%5D\))

    -   ### setBreadcrumbs

        public void setBreadcrumbs([TreeNode](TreeNode.html "class in com.appiancorp.suiteapi.common")\[\] breadcrumbs)

        Set the route from the root of the tree to the node.

        See Also:

        -   [`getBreadcrumbs()`](#getBreadcrumbs\(\))

    -   ### getSubtree

        public [Tree](Tree.html "class in com.appiancorp.suiteapi.common") getSubtree()

        Get the tree starting a this node. This is a subtree of the overall tree.

        Returns:

        the subtree

        See Also:

        -   [`setSubtree(Tree)`](#setSubtree\(com.appiancorp.suiteapi.common.Tree\))

    -   ### setSubtree

        public void setSubtree([Tree](Tree.html "class in com.appiancorp.suiteapi.common") node\_)

        Set the tree starting a this node. This is a subtree of the overall tree.

        Parameters:

        `node_` - a tree to install as the subtree

        See Also:

        -   [`getSubtree()`](#getSubtree\(\))

    -   ### populateBreadcrumbs

        public void populateBreadcrumbs([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] data\_)

        Convenience method to populate node data in breadcrumb nodes. Data array should parallel breadcrumb array.

        Parameters:

        `data_` - the data to put in the breadcrumbs