---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_querylogicalexpression.html
original_path: fnc_system_a_querylogicalexpression.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryLogicalExpression() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryLogicalExpression**( _operator, logicalExpressions, filters, ignoreFiltersWithEmptyValues_ )

Creates a `LogicalExpression` object that determines the filtration to apply in `Query` object.

**See also:** [LogicalExpression](Appian_Data_Types.html#logicalexpression), [Query](Appian_Data_Types.html#query), [QueryFilter](Appian_Data_Types.html#queryfilter)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`operator`

 |

_Text_

 |

Determines the operation to apply to the set filters. Valid values: `"AND"`, `"OR"`, and `"AND_ALL"`. The `“AND_ALL”` operator is only valid when filtering on multiple fields from a one-to-many [relationship](record-type-relationships.html).

 |
|

`logicalExpressions`

 |

_List of LogicalExpression_

 |

A list of LogicalExpression objects to apply using the operator parameter, created with `a!queryLogicalExpression()`.

 |
|

`filters`

 |

_List of QueryFilter_

 |

A list of QueryFilters to apply using the operator parameter, created with [a!queryFilter()](fnc_system_a_queryfilter.html).

 |
|

`ignoreFiltersWithEmptyValues`

 |

_Boolean_

 |

Specifies whether to ignore filters within `a!queryLogicalExpression()` if the filter’s value parameter is empty. If you are using nested logical expressions, this parameter must have the same value for each logical expression. For example, if the value is set to `true` for the parent logical expression, it should be set to `true` for all children logical expressions. Default: `false`

 |

## Returns

LogicalExpression

## Usage considerations

### Using the AND\_ALL operator

There are three valid values for the _operator_ parameter:

-   `"OR"`
-   `"AND"`
-   `"AND_ALL"`

However, the `“AND_ALL”` operator is only available when you’re filtering by multiple fields from the same one-to-many [relationship](record-type-relationships.html).

When you use the `"AND_ALL"` operator to filter by multiple related record fields from the same one-to-many relationship (i.e., the "many" side of the relationship), the filter will return all records from the base record type (the "one" side of the relationship) that have at least one related record that meets each filter condition.

For example, let's say you want to return all customers that have at least one active support case that was created within the last week. In this scenario, the Customer record type has a one-to-many relationship with the Case record type.

To query this data, you can create an expression that looks like this:

[![AND_ALL example](images/and_all_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img41)

[![](images/and_all_example.png)](#_)

This query will only return customers that have at least one related case that meets both filter conditions. This is different from using the `“AND”` operator to filter by your one-to-many data.

If you use the `“AND”` operator to filter multiple related record fields from the same one-to-many relationship (i.e., the "many" side of the relationship), the filter will return all records from the base record type (the "one" side of the relationship) that have at least one related record that meets all filter conditions **or** different related records that meet each filter condition.

So, if you created the same query as above using the `"AND"` operator, it would return any customers that have at least one case that is both active and created in the last week; it would also return any customers that have at least one active case and at least one _other_ case that was created in the last week.

In the image below, you can see how this returns more customers than the `"AND_ALL"` operator expression above.

[![Same expression from above but using AND instead](images/wrong-and-example-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img42)

[![](images/wrong-and-example-25_2.png)](#_)

#### What if I need to filter by record fields _and_ related record fields from a one-to-many relationship?

You can use `"AND_ALL"` to filter by multiple fields from the same one-to-many relationship as well as other record fields too.

For example, let's say you only want to see active cases created in the last week for customers in the retail industry. In this example, the Customer record type has a one-to-many relationship with the Case record type, and a many-to-one relationship with the Industry record type.

Since this query requires you to filter on many fields from the same one-to-many relationship (case `status` and `createdOn`), you need the `"AND_ALL"` operator to return all customers that meet each filter condition. The `“AND_ALL”` operator will evaluate the other filter that does not reference a one-to-many field like a normal “AND” operator.

[![AND_ALL example with other record fields](images/and-all-with-other-fields-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img43)

[![](images/and-all-with-other-fields-25_2.png)](#_)

#### What if I need to filter by multiple fields from multiple one-to-many relationships?

If you need to filter by fields from multiple one-to-many relationships, you can create a nested `a!queryLogicalExpression()` so you can evaluate both sets of filters with `"AND_ALL"`.

For example, let's say you want to return all customers that have an active case created in the last week, and those cases must also have at least one comment from a specific support engineer from the last day. In this example, the Customer record type has a one-to-many relationship with the Case record type, and the Case record type has a one-to-many relationship with the Comment record type.

To query this data, you would first filter on the one-to-many relationship between customers and cases using the `"AND_ALL"` operator to return all customers with active cases created this week. Then, you'd create a nested logical expression using `"AND_ALL"` to filter those cases by comments.

The expression would look like this:

[![Use case with nested AND_ALL statement](images/nested-logical-expression-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img44)

[![](images/nested-logical-expression-25_2.png)](#_)

Notice that both sets of filters start from the same shared relationship: `recordType!Customer.relationships.cases`. If you create a nested `a!queryLogicalExpression()`, you must reference your related record fields starting from the same shared relationship. This means that you could not create a nested filter that starts from a different one-to-many relationship.

For example, if you changed the nested `a!queryLogicalExpression()` from `recordType!Customer.relationships.cases.relationships.comments` to `recordType!Customer.relationships.orders`, the query would error.

#### When do I use "AND" instead of "AND\_ALL"?

More often than not, you'll use the `"AND_ALL"` operator to filter by multiple fields from the same one-to-many relationship; however, there are certain cases when you would want to use `"AND"` instead of `"AND_ALL"`.

For example, if you wanted to see all customers that have at least one open support case and in progress support case. Since you're filtering on the same field (`recordType!Customer.relationships.cases.fields.status`) the same case cannot meet both criteria.

To return this type of information, you would instead use the `"AND"` operator so you can see customers who have at least one open case and at least one _other_ case that is in progress. The expression would look something like this:

[![Use case to use the AND operator](images/correct-and-example-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img45)

[![](images/correct-and-example-25_2.png)](#_)

### Using the ignoreFiltersWithEmptyValues parameter

By default, the _ignoreFiltersWithEmptyValues_ parameter will return all data if all of your query filters have empty values. Set this parameter to `true` if all of your query filters are optional.

For more examples on how to use this parameter with your queries, see [Querying on Multiple Conditions](Query_Recipes_entity.html#querying-on-multiple-conditions) and [Querying on Nested Conditions](Query_Recipes_entity.html#querying-on-nested-conditions).

## Examples

For examples using `a!queryLogicalExpression()` in an expression, see [Recipes for Querying Records](Query_Recipes.html) and [Recipes for Querying Entities](Query_Recipes_entity.html).

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Partially compatible |
Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...