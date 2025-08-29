---
source_url: https://docs.appian.com/suite/help/25.3/Supported_XSD_Elements_and_JPA_Annotations.html
original_path: Supported_XSD_Elements_and_JPA_Annotations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Supported XSD Elements and JPA Annotations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

All [custom data types (CDTs)](Custom_Data_Types.html) in Appian are defined using an XML Schema Definition (XSD) file. This page contains information about which XSD elements and Java Persistence API (JPA) annotations are supported.

Many of the configurations that are described on this page are not required in the typical workflow. For example, the basic XSD is generated for you when creating a data type through the data type designer or [from a database table](Mapping_CDTs_to_Pre-defined_Database_Tables.html#create). Any JPA annotations that are required for specifying a primary key or defining table relationships are also automatically added for you. You can also specify [CDT relationships](CDT_Relationships.html) from the data type designer.

However, if you need to use more advanced XSD elements or JPA annotations, or you are troubleshooting a [data type created from a WSDL](Call_Web_Service_Smart_Service.html), this page provides reference information about what elements and annotations are supported in Appian and how they can be used.

## General requirements

The following are basic requirements for all XSDs:

-   It must not reference the reserved **namespace** `http://www.appian.com/ae/types/*`.
-   It must have a defined **targetNamespace**.
-   It must not contain a type, element, or attribute with a name that doesn't comply with the rules for **NCNAME**s.
-   It must not contain a type that has two fields at the same level, with the same name (in a different **namespace**).
-   It must not contain more than one global element with the same name in the same `namespace`.
-   It must not contain a global type or element definition without a `name` attribute, or where the **name** attribute holds an empty value.
-   When data type definitions collide with an existing name and namespace, the duplicate data type is not created (even if the structure is different) and an error is displayed.
-   WSDLs and XSDs with imported Soap Encoding types must have a valid `schemaLocation` attribute that includes valid XSD defining the imported types.
-   XSDs that define new type definitions in the XML Schema namespace (http://www.w3.org/2001/XMLSchema) are not permitted.
-   XSDs that contain `xsd:list` types that extend an `xsd:list` type are not permitted.

## Supported elements

The following XSD elements are supported and can be used:

-   If the complexType contains another custom type, a nested item is created.
-   A nested complexType also appears as its own (separate) item on the management console.
-   When importing a schema that contains a complexType element with the **mixed** attribute set to "true", an error is returned and no data types are created. When the **mixed** attribute is set to "false", the attribute is removed from the XSD upon import.
-   If the type has no parent element (it is a global type) \*and\* is anonymous, the schema cannot be imported.

-   Names must be unique in the system and are case sensitive. The type name `Employee` is not the same as `employee`.
-   We recommend keeping names within 27 characters in length. Custom types cannot be mapped to existing database tables with names that are longer than 27 characters without using the `@Column` annotation.
-   If a name attribute isn't specified, an anonymous data type is created.
-   Anonymous types are not listed in the data type list box when creating node inputs, process variables, or data store entities.
-   The assigned name for an anonymous type is derived from the parent element.

| Element | Attribute(s) | Description |
| --- | --- | --- |
| <xsd:**all**\> |  | When an **all** data type is imported, the fields are defined in the order indicated by the **all** compositor. |
| <xsd:annotation>
    <xsd:**documentation**\>      |  | The description of the custom type is taken from the contents of the first 1000 characters of the **documentation** element. |
| <xsd:annotation>
    <xsd:**appinfo source="appian.jpa"**\>      |  | Indicates that JPA annotations can be used. The **source** attribute of the **appinfo** tag must be set to `"appian.jpa"` – those with any other source attribute values are ignored. |
| <xsd:**any**\> |  | When creating a custom data type, **any** elements become a string field in the custom data type. These fields are named **@any**. If multiple **any** elements occur within the same custom data type, each element name has a number appended to it, starting at 1. |
| <xsd:**anyType**\>
<xsd:**anySimpleType**\> |  | When possible, the **anyType** or **anySimpletype** elements are converted to the [Any Type system data type](Appian_Data_Types.html#any-type) or an existing custom data type. If the data type cannot be mapped to an existing system or custom data type, the element is converted to a string. At runtime, any data contained in a data type that cannot be mapped to a system or existing custom data type is cast to a string data type, except when it is an Appian system object (such as a document, page, user, or group).-   Appian system data types for objects cannot be converted to XML. |
| <xsd:**attribute**\> | name
type
ref
form
use=prohibited | Attributes become fields in an attribute-nested item. The defined attributes become fields of an attribute-nested item named **@attributes**.-   **name**, **type**, **ref**, and **form** attributes of the attribute-declaration are supported.
-   The **default** attribute is ignored.
-   If the attribute-declaration has the **use** attribute set to **prohibited** that attribute is not created as a field in the record. Otherwise, **use** is ignored.
-   Each attribute-nested record is named uniquely and prefaced by **@attributes**. Use **@attributes.fieldname** notation to access the attributes, where fieldname is the name of the attribute. |
| <xsd:**attributeGroup**\> |  | Attributes in an **attributeGroup** element can be used within any data type that references it. The attributeGroup is not created as a standalone data type. |
| <xsd:**choice**\> |  | If an imported schema contains the **choice** element, an error is returned and no data types are created; unless the choice contains a single item. When the schema defines a choice group with only a single item in it (without an actual choice) the choice is ignored and treated as the sequence compositor. Custom data types are created and no errors are returned. |
| <xsd:**complexContent**\> |  | **complexContent** contains either restriction or extension subelements, which are handled in the same manner as restriction or extension elements. Restrictions are ignored. Extension relies on existing (already defined) data types. |
| <xsd:**complexType**\> | name
mixed=true | A custom data type is created for each **complexType** defined in the schema. |
| <xsd:element> | name
type
nillable
minOccurs
maxOccurs | A field is created for each element, if it is a child of a custom data type (unless maxOccurs=0). If it is a global element, a type is created.

The **name** attribute designates the element as it appears in the system.-   We recommend keeping names within 27 characters in length. Elements cannot be mapped to existing database columns with names that are longer than 27 characters without using the `@Column` annotation.
-   Names are case sensitive. The element name `id` is not the same as `ID`.

The **type** attribute lists the data type that is assigned to the element.

Only the **name**, **type**, **ref**, and **form** attributes of the element declaration are supported.-   The **default** attribute is ignored.
-   If an imported schema contains an element with a **substitutionGroup** attribute, an error is returned and no data types are created.
-   The **nillable** attribute of an element is retained. When a field with a null value is encountered, the element is not created.
-   Null and empty strings in Appian have the same representation. We interpret a null/empty string in Appian as existing (non-null), but empty in terms of determining nillable.
-   If the **maxOccurs** attribute of an element equals 1, the field can hold a single value. If the **maxOccurs** or the **minOccurs** attribute is greater than 1 (including unbounded), the field accepts multiple values. If **maxOccurs=0**, no field is created. |
| <xsd:**extension**\> |  | You can import schemas that extend the set of elements, using the **extension** element. The custom data types that are created rely on existing (already defined) data types. |
| <xsd:**group**\> | minOccurs
maxOccurs | Elements in a **group** data type can be fields of any custom data type.-   The group element cannot exist as a standalone data type.
-   Group declarations with **minOccurs** or **maxOccurs** attributes and values greater than 1 are not supported.
-   XSDs cannot be imported if they contain **group** declarations with **minOccurs** or **maxOccurs** values greater than one. |
| <xsd:**import**\>
<xsd:**include**\> |  | You can **import** or **include** referenced schemas from an http URI (not https). Additional imported schemas are handled in the same manner as the primary schema, when the URL is accessible. If the schema referenced in the import/include statement cannot be retrieved, the import of the primary schema can still proceed only if the data types already exist or can be mapped to Appian system data types. |
| <xsd:**list**\> | maxOccurs | **List** types are converted to Appian system [data types](Appian_Data_Types.html) with single or multiple values, taking the name attributed to the list.-   Anonymous lists are treated as anonymous simple data types that cannot be selected when creating new variables, rules, constants, and entities.
-   When importing a list data type of an element that has **maxOccurs** set to >1, an error is returned and no data types are created.
-   When imported, single-value list types appear on the [data management](Custom_Data_Types.html) page, and can be exposed for use within processes and rules.
-   <xsd:list> types that extend another xsd:list are not imported. |
| <xsd:schema> | xmlns:xsd
xmlns:tns
targetNamespace
elementFormDefault | `xmlns:xsd="http://www.w3.org/2001/XMLSchema"` sets the namespace prefix "xsd" to the standard namespace in which all XSD elements are defined.
For both the `xmlns:tns` and `targetNamespace` attributes, list a URN with your organization's name, such as: `"urn:com:appian:types:example"`</br>-   The data types defined in the schema element of an XSD (or WSDL) are created in Appian within a namespace defined by the **targetNamespace** attribute.
-   Namespace URLs can also be used, such as: `"http://www.example.org/documentation`".
-   URNs are preferred, as they do not imply a persistent web resource.
-   On import, the value of the **elementFormDefault** attribute is removed at the schema level and set as a **form** attribute on each element of the type. |
| <xsd:**sequence**\> | minOccurs
maxOccurs | If an imported schema contains a **sequence**, the fields are defined in the order indicated by the sequence. Sequence declarations with **minOccurs** or **maxOccurs** attributes that contain values greater than 1 are not supported. |
| <xsd:**simpleContent**\> |  | If simpleContent elements with attributes are encountered, the attributes are supported as string fields in the custom data type. These fields are named **@value** (similar to any elements). |
| <xsd:**simpleType**\> | name | A custom data type is created for each **simpleType** defined in an imported schema, based on the matching Appian system [data type](Appian_Data_Types.html).-   If the type has no parent element (it is a global type) and is anonymous, the schema cannot be imported.
-   The name of the custom data type is taken from the name attribute. If a name attribute isn't specified, an anonymous data type is created.
-   Anonymous types are not listed in the data type list box when creating node inputs or process variables. The assigned name for an anonymous type is derived from the parent element. |
| <xsd:**union**\> |  | You cannot create data types that contain a **union** data type directly, but it is valid for a data type defined by a WSDL to contain one. Data types that contain a **union** data type can not be used outside of the inputs and outputs of the [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html) node, but you can save data from a field that is defined using a **union** type into a process variable of type text. |

The name of the data type is taken from the name attribute.

## Unsupported elements

The following XSD elements are not used within Appian. While data types with some of these elements will fail to import, others will import successfully but ignore the unsupported elements. The table below describes the exepcted behavior for each element.

| Element | Behavior |
| --- | --- |
| <xsd:**anyAttribute**\> | XSD imports successfully, but attributes are ignored and the data is discarded at runtime. |
| **facets** such as the following:
<simpleType name='celsiusBodyTemp'>
  <restriction base='decimal'>
    <**totalDigits** value='4'/> | A warning is displayed upon import, and all facets are ignored. |
| <xsd:**key**\>
<xsd:**keyRef**\> | XSD imports successfully, but **key** and **keyRef** elements are ignored. |
| <xsd:**restriction**\> | XSD imports successfully, but **restriction** elements are ignored. |
| <xsd:**redefine**\> | An error is displayed on import |
| <xsd:**unique**\>   <xsd:selector>
  <xsd:field> | XSD imports successfully, but **unique** elements are ignored. |

## Supported JPA annotations

When used with Data Stores, a custom data type can be used to map data to a relational database. Your custom data types can use JPA annotations in the XSD to map types and their fields to tables and columns within a database.

Many of the supported JPA annotations are automatically added for you when [creating a CDT from a database table](Mapping_CDTs_to_Pre-defined_Database_Tables.html#create) or when defining [CDT relationships](CDT_Relationships.html) in the data type designer. Should you need to add additional JPA annotations to your XSD, this section contains the list of all supported annotations.

The following annotations are supported:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
@Table
@SecondaryTable
@SecondaryTables
@UniqueConstraint
@Column (with additional attributes: uniqueKey and index)
@JoinColumn
@Id
@GeneratedValue
@AttributeOverride
@Transient
@Version
@Basic
@Lob
@ManyToOne (with additional value of NONE for cascade attribute; default value of cascade is MERGE, PERSIST, REFRESH)
@OneToOne
@OneToMany (default value of cascade is ALL, which includes deleting orphans)
@JoinTable
@ManyToMany
@OrderBy
@Inheritance
@PrimaryKeyJoinColumn
@MappedSuperclass
@SequenceGenerator
```

See also: [Section 9 of the JPA Specification for Syntax Documentation](http://download.oracle.com/otn-pub/jcp/ejb-3_0-fr-eval-oth-JSpec/ejb-3_0-fr-spec-persistence.pdf)

**Note:**  Name attributes for the `@Table` and `@Column` annotation are used exactly when referencing the data type for a data store. The letter casing will not change and the name length will not truncate. If you do not specify a name in the JPA annotation, the name attribute for `<xsd:complexType>` or `<xsd:element>` is used and a naming strategy is applied to it, which will make it lowercase and truncate it as needed.

Schema attributes for the `@Table` annotation are lowercase when referencing the data type for a data store. If the lowercase schema attribute value doesn't match the casing of the schema in Oracle, the entity for the data store won't map correctly.

## Basic XSD example

The following is an example of a typical XSD file:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:tns="urn:com:appian:types:example"
 targetNamespace="urn:com:appian:types:example">
  <xsd:complexType name="Employee">
    <xsd:sequence>
      <xsd:element name="id" nillable="true" type="xsd:int">
        <xsd:annotation>
          <xsd:appinfo source="appian.jpa">
              @Id
              @GeneratedValue
          </xsd:appinfo>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="firstName" type="xsd:string" />
      <xsd:element name="lastName" type="xsd:string" />
    </xsd:sequence>
  </xsd:complexType>
</xsd:schema>
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...