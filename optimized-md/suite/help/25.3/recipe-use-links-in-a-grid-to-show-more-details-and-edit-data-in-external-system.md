---
source_url: https://docs.appian.com/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html
original_path: recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html
version: "25.3"
title: "Use Links in a Grid to Show More Details and Edit Data in External System"
page_id: "recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use Links in a Grid to Show More Details and Edit Data in External System

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

The changes are immediately persisted to the external system where the data resides. Sorting and paging the grid shows the latest data from the external system.

## Setup

Unlike the previous grid examples, this recipe retrieves the values for the `local!employees` array from an external system via a web service. It does so by using the `bind()` function, which associates two rules or functions with a `load()` local variable: one that gets the data from the external system, and one that updates the data in the external system. When the variable is referenced, the getter rule or function is called and value is populated with the result.

The definition of the relevant `getEmployees` rule is given below. This supporting rule uses the `webservicequery` function to call a sample web service created for this recipe which returns the same employee information shown in previous examples.

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
=webservicequery(
  a!wsConfig(
    wsdlUrl: "http://localhost:8080/axis2/services/CorporateDirectoryService?wsdl",
    service: "{http://bindrecipe.services.ws.appiancorp.com}CorporateDirectoryService",
    port: "CorporateDirectoryServiceHttpSoap12Endpoint",
    operation: "{http://bindrecipe.services.ws.appiancorp.com}getEmployees"
  ),
  {
    getEmployeesRequest: {}
  }
).returnValue.getEmployeesResponse.return
```

The corresponding `setEmployees` rule uses the `webservicewrite` function. The `setEmployees` rule is never executed because the bound local variable `local!employees` is never saved into in this example. Although it isn't called as part of the example, definition of `setEmployees` is presented here for completeness.

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
=webservicewrite(
  a!wsConfig(
    wsdlUrl: "http://localhost:8080/axis2/services/CorporateDirectoryService?wsdl",
    service: "{http://bindrecipe.services.ws.appiancorp.com}CorporateDirectoryService",
    port: "CorporateDirectoryServiceHttpSoap12Endpoint",
    operation: "{http://bindrecipe.services.ws.appiancorp.com}setEmployees"
  ),
  {
    setEmployeesRequest: {
      ri!employees
    }
  }
)
```

This recipe writes the updated value of a single employee back to the external system by using another bound variable, `local!updatedEmployee`. The `local!updatedEmployee` variable is the `saveInto` target associated with the "Update" button. When the user clicks the button and the variable is saved into, the setter rule or function given as the second parameter to the `bind` function is executed. The setter rule or function must return a Writer, which is a special type of value that can be used to write data when an interface saves into a bound variable.

The definition of the relevant `setSingleEmployee` rule, which uses the `webservicewrite` function to write data to the external system through a web service call, is as follows:

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
=webservicewrite(
  a!wsConfig(
    wsdlUrl: "http://localhost:8080/axis2/services/CorporateDirectoryService?wsdl",
    service: "{http://bindrecipe.services.ws.appiancorp.com}CorporateDirectoryService",
    port: "CorporateDirectoryServiceHttpSoap12Endpoint",
    operation: "{http://bindrecipe.services.ws.appiancorp.com}setSingleEmployee"
  ),
  {
    setSingleEmployeeRequest: {
      employee: ri!employee
    }
  }
)
```

The corresponding `getSingleEmployee` reader rule is defined as follows:

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
=webservicequery(
  a!wsConfig(
    wsdlUrl: "http://localhost:8080/axis2/services/CorporateDirectoryService?wsdl",
    service: "{http://bindrecipe.services.ws.appiancorp.com}CorporateDirectoryService",
    port: "CorporateDirectoryServiceHttpSoap12Endpoint",
    operation: "{http://bindrecipe.services.ws.appiancorp.com}getSingleEmployee"
  ),
  {
    getSingleEmployeeRequest: {
      id: ri!id
    }
  }
).returnValue.getSingleEmployeeResponse.return
```

To adapt this example to work with your own web service:

1.  Update the getter and setter rules defined in the `bind` functions in the example to call your web service operations that get and set the objects
2.  Use the configured `webservicequery` and `webservicewrite` functions in the examples above as a guide to determine the corresponding parameters to set for your web services. Refer to the [a!wsConfig()](fnc_connector_ws_a_wsconfig.html) documentation to determine which values are appropriate for your web service.
3.  Update the expression below to access and display the fields that are relevant for your web service. For instance, if your web service returns a product instead of an employee, you could replace `local!employeeToUpdate.department` with `local!productToUpdate.description`, etc.

**See Also**: [webservicequery()](fnc_scripting_webservicequery.html), [webservicewrite()](fnc_scripting_webservicewrite.html), [bind](fnc_evaluation_bind.html)

## Expression

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
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
load(
  local!employees: bind(rule!getEmployees(), rule!setEmployees( _ )),
  local!pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 25),
  local!employeeToUpdate,
  with(
    local!employeeDataSubset: todatasubset(local!employees, local!pagingInfo),
    local!data: index(local!employeeDataSubset, "data", null),
    a!formLayout(
      titleBar: "Example: Grid with Link to Show More and Edit Data in an External System",
      contents: {
        a!sectionLayout(
          label: "Employees",
          contents: {
            a!gridField_19r1(
              totalCount: local!employeeDataSubset.totalCount,
              columns: {
                a!gridTextColumn(
                  label: "Name",
                  data: index(local!data, "name", {}),
                  /* Creates a dynamic link for every item in local!data */
                  links: a!forEach(items: local!data, expression: a!dynamicLink(value: fv!item, saveInto: local!employeeToUpdate))
                ),
                a!gridTextColumn(
                  label: "Department",
                  data: index(local!data, "department", null)
                )
              },
              value: local!pagingInfo,
              saveInto: local!pagingInfo,
              rowHeader: 1
            )
          }
        ),
        load(
          local!updatedEmployee: bind(
            rule!getSingleEmployee(employeeToUpdate.id),
            rule!setSingleEmployee( _ )
          ),
          a!sectionLayout(
            label: "Employee Details: " & local!employeeToUpdate.name,
            contents: {
              a!textField(
                label: "Name",
                value: local!employeeToUpdate.name,
                saveInto: local!employeeToUpdate.name
              ),
              a!textField(
                label: "Department",
                value: local!employeeToUpdate.department,
                saveInto: local!employeeToUpdate.department
              ),
              a!textField(
                label: "Title",
                value: local!employeeToUpdate.title,
                saveInto: local!employeeToUpdate.title
              ),
              a!dateField(
                label: "Start Date",
                value: local!employeeToUpdate.startDate,
                saveInto: local!employeeToUpdate.startDate
              ),
              a!buttonLayout(
                primaryButtons: a!buttonWidget(
                  label: "Update",
                  value: local!employeeToUpdate,
                  saveInto: local!updatedEmployee
                )
              )
            },
            showWhen: not(isnull(local!employeeToUpdate))
          )
        )
      },
      buttons: a!buttonLayout(
        primaryButtons: a!buttonWidget(
          label: "Done",
          style: "SOLID",
          submit: true
        )
      )
    )
  )
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...