---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/type/system/ListView.html
original_path: api/com/appiancorp/type/system/ListView.html
version: "25.3"
title: "Class ListView<I,T>"
page_id: "api/com/appiancorp/type/system/ListView"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.type.system](package-summary.html)

# Class ListView<I,T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.type.system.ListView<I,T>

Type Parameters:

`I` - - the identifier type

`T` - - the facet type

Direct Known Subclasses:

`[TypedValueListView](TypedValueListView.html "class in com.appiancorp.type.system")`

* * *

@GwtCompatible public abstract class ListView<I,T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

A ListView is a data structure geared toward presenting a set of data with additional information about how the data can be filtered. It contains a [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system") of [`ListViewItem`](ListViewItem.html "class in com.appiancorp.type.system") objects and a list of [`Facet`](../../common/query/Facet.html "class in com.appiancorp.common.query") objects that define how the underlying data can be filtered.

Any subclass of this should add the following Jaxb annotations:

-   Add `@XmlElement(type=[Your concrete ListViewDataSubset implementation class].class, namespace=Type.APPIAN_NAMESPACE)` [`getDataSubset()`](#getDataSubset\(\)) along with an ``@XmlSeeAlso({I.class,DataSubset`<I>`.class,T.class})`` where I is the first type parameter to this class, DataSubset`<I>` is an implementing class of DataSubset using I, and T is the second type parameter to this class.
-   Add `@XmlRootElement(namespace=Type.APPIAN_NAMESPACE, name=ListView.XML_ROOT_ELEMENT)` annotation to the class
-   Add `@XmlType(namespace = [Your Namespace], propOrder={"dataSubset", "facets"})` annotation to the class

For example:

 ``@XmlRootElement(namespace=Type.APPIAN_NAMESPACE, name=ListView.XML_ROOT_ELEMENT)    @XmlType(namespace=[Your Namespace], propOrder = {"dataSubset", "facets"})    @XmlSeeAlso({Person.class, Adress.class})    public static class PersonListView extends ListView`<Person, Address>` {       private ListViewDataSubset`<Person>` dataSubset;      private List`<Facet<Address>>` facets;       public PersonListView(ListViewDataSubset ) {}       @Override      @XmlElement(type=PersonListViewDataSubset.class, namespace=[Your Namespace])      public ListViewDataSubset`<Person>` getDataSubset() {        return dataSubset;      }      @Override      protected void setDataSubset(ListViewDataSubset`<Person>` dataSubset) {        this.dataSubset = dataSubset;      }       @Override      @XmlElement(type=Facet.class, namespace=[Your Namespace])      public List`<Facet<Address>>` getFacets() {        return facets;      }      @Override      protected void setFacets(List`<Facet<Address>>` facets) {        this.facets = facets;      }  }``

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ListView](#%3Cinit%3E\(com.appiancorp.type.system.ListViewDataSubset\))([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")> dataSubset)`

    Constructs a ListView with the given [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system") and an empty list of Facets.

    `[ListView](#%3Cinit%3E\(com.appiancorp.type.system.ListViewDataSubset,java.util.List\))([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")> dataSubset, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[T](ListView.html "type parameter in ListView")>> facets)`

    Constructs a ListView with the given [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system") and list of Facets.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static com.google.common.base.Equivalence<[ListView](ListView.html "class in com.appiancorp.type.system")>`

    `[equalDataCheck](#equalDataCheck\(\))()`

    Returns a `Equivalence` object that can be used to determine if two ListView objects are equal.

    `abstract [ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")>`

    `[getDataSubset](#getDataSubset\(\))()`

    Returns the [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system").

    `abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[T](ListView.html "type parameter in ListView")>>`

    `[getFacets](#getFacets\(\))()`

    Returns the facets that are applicable to the current (possibly filtered) data set.

    `static com.appian.core.base.ToStringFunction<[ListView](ListView.html "class in com.appiancorp.type.system")>`

    `[multilineToString](#multilineToString\(int\))(int indent)`

    Returns a `ToStringFunction` that can be used to generate the multiline String representation of a ListView

    `protected abstract void`

    `[setDataSubset](#setDataSubset\(com.appiancorp.type.system.ListViewDataSubset\))([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")> dataSubset)`

    `protected abstract void`

    `[setFacets](#setFacets\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[T](ListView.html "type parameter in ListView")>> facets)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### XML\_ROOT\_ELEMENT

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.type.system.ListView.XML_ROOT_ELEMENT)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.type.system.ListView.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### ListView

        public ListView([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")\> dataSubset)

        Constructs a ListView with the given [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system") and an empty list of Facets. Same as calling `new ListView(dataSubset, null)`

        Parameters:

        `dataSubset` - - the datasubset this ListView will be constructed with

    -   ### ListView

        public ListView([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")\> dataSubset, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[T](ListView.html "type parameter in ListView")\>> facets)

        Constructs a ListView with the given [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system") and list of Facets.

        Parameters:

        `dataSubset` - - the datasubset this ListView will be constructed with

        `facets` - - the lsit of Facets this ListView will be constructed with

-   ## Method Details

    -   ### getDataSubset

        public abstract [ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")\> getDataSubset()

        Returns the [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system").

        Returns:

        the ListViewDataSubset

    -   ### setDataSubset

        protected abstract void setDataSubset([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[I](ListView.html "type parameter in ListView")\> dataSubset)

    -   ### getFacets

        public abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[T](ListView.html "type parameter in ListView")\>> getFacets()

        Returns the facets that are applicable to the current (possibly filtered) data set. The order is significant -- facets that are most relevant for an end user come first.

        Returns:

        the list of Facets

    -   ### setFacets

        protected abstract void setFacets([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[T](ListView.html "type parameter in ListView")\>> facets)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### multilineToString

        public static com.appian.core.base.ToStringFunction<[ListView](ListView.html "class in com.appiancorp.type.system")\> multilineToString(int indent)

        Returns a `ToStringFunction` that can be used to generate the multiline String representation of a ListView

        Parameters:

        `indent` - - number of spaces to increment each level of indentation

        Returns:

        a ToStringFunction object to get the multiline string representation of a ListView

    -   ### equalDataCheck

        public static com.google.common.base.Equivalence<[ListView](ListView.html "class in com.appiancorp.type.system")\> equalDataCheck()

        Returns a `Equivalence` object that can be used to determine if two ListView objects are equal. This Equivalence object's equivalent(ListView lv1, ListView lv2) method should be used to determine Equality instead of equals()

        Returns:

        an `Equivalence` object to check if two ListView objects are equal