---
source_url: https://docs.appian.com/suite/help/25.3/reference-objects.html
original_path: reference-objects.html
version: "25.3"
title: "Referencing Objects in Expressions"
page_id: "reference-objects"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Referencing Objects in Expressions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

[Design objects](design-objects.html) have a domain prefix that allows you to directly or indirectly reference a design object or invoke object properties. See [Domain Prefixes](domain_prefixes.html) for more information.

The following table list the various design objects with their prefixes:

| Design Object | Domain Prefix | Reference Type | Use Case |
| --- | --- | --- | --- |
| [Constants](Constants.html) | `cons!` | Indirect | Use this domain to indirectly reference a design object. |
| [Data Types](Appian_Data_Types.html) | `type!` | Direct | Use this domain to reference an [Appian data type](Appian_Data_Types.html#complex-system-data-types) or [custom data types](Custom_Data_Types.html). See [Construction Data Type Values](constructing-data-type-values.html) for examples on how to use this prefix. See [Data prefixes](domain_prefixes.html#data-prefixes) for information on which data prefixes to use to invoke stored data values in an expression. |
| [Decisions](Decisions.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. Decisions cannot referenced in [process events](Event_Triggers.html), process report [column definitions](Process_Reports.html), or web content channels. |
| [Expression Rules](Expression_Rules.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. See [Call an expression rule from another expression](Expression_Rules.html#call-an-expression-rule-from-another-expression) for more information. |
| [Integrations](Integration_Object.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. See [Call an integration to query data](Call_an_Integration.html#call-an-integration-to-query-data) for more information. |
| [Interfaces](interface_object.html) | `rule!` | Indirect | Use this domain to indirectly reference an expression rule, an interface, a decision, and an integration. See [Interfaces as rules](using_interfaces_in_appian.html#using-interfaces-with-other-objects) for more information. |
| [Portal](portal-object.html) | `portal!` | Direct | Use this domain to reference a portal object and any portal pages. See [Reference a portal object](fnc_scripting_urlforportal.html#referencing-portal-pages) for more information. |
| [Record Type](Create_a_Record_Type.html) | `recordType!` | Direct | Use this domain to reference a record object type and any properties of the record type like fields, actions, filters, and relationships. See [Reference a record type and its properties](reference-records.html) for more information. |
| [Site](sites_object.html) | `site!` | Direct | Use this domain to reference a site object and any site pages. See [Reference a Site Page](reference-sites.html) for more information. |
| [Translation set](translation-set-object.html) | `translation!` | Direct | Use this domain to reference translation strings within a translation set. See [Referencing Translation Strings in Your Applications](reference-translation-strings.html) for more information. |
| [Control panel object](control-panel-object.html) | `controlPanel!` | Direct | Use this domain to reference a control panel object. See [Referencing a control panel object](referencing-control-panel-objects.html) for more information. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...