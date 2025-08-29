---
source_url: https://docs.appian.com/suite/help/25.3/Invoke_SAP_BAPI_Smart_Service.html
original_path: Invoke_SAP_BAPI_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Invoke SAP BAPI Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Invoke SAP BAPI Smart Service allows designers to safely invoke BAPIs with side effects in process. See [Functions and Side Effects](functions-side-effects.html) for more information.

The two main benefits of using this smart service are:

1.  The ability to make unattended write calls to SAP.
2.  The ability to process return values from the BAPI. Return values allow you to verify that the invocation was successful.

For making BAPI calls to SAP servers outside of a process (for example, on an interface), use an HTTP connected system.

### Properties

-   **Category:** Integrations & APIs

-   **Icon:** ![Invokek SAP BAPI](images/Smart_Service_Icons/Invoke_SAP_BAPI.png)

-   **Assignment Options:** Unattended/Attended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Scs External System Key | Text | The key from the Third Party Credentials admin console page that corresponds to the set of credentials that should be used to authenticate. | Y | N |
| Use Per User Credentials | Boolean | If `true` the credentials set in the Third-Party Credentials settings page by the current user running the expression will be used. If `false` the site-wide credential values will be used. | N | N |
| Hostname | Text | The application server host of the SAP server (ASHOST). The value can be an IP address, a fully-qualified domain name, or SAP's router string format. For example, "/H/sap\_router/W/password/H/app\_host/S/service\_port". | Y | N |
| Clientnumber | Text | The SAP client number. | Y | N |
| System Number | Text | The SAP system number. | Y | N |
| Bapi | Text | The name of the SAP BAPI to invoke. | Y | N |
| Import Parameters | Any Type | The import parameters to send to the BAPI function, given as a [dictionary](parts-of-an-expression.html#dictionaries). The dictionary fields are the import parameter names, and the values are the parameter values to send. | Y | N |
| Table Parameters | Any Type | The table parameters to send to the BAPI function, given as a dictionary. The dictionary values can also be given as dictionaries, allowing for the requisite table structure to be defined. | Y | N |
| Connection Properties | Any Type | The connection properties to use when creating the connection to the SAP instance, given as a dictionary. The dictionary fields are the camel-cased names of the properties with periods removed, and the values are the properties values to use. | N | N |
| Commit Transaction | Boolean | Flag used to execute a standard BAPI Transaction Commit. Set to `true` (the default) to execute the commit. Set to `false` when implementing a BAPI with a built in commit. | N | N |

#### Node outputs

| Output | Data Type | Description |
| --- | --- | --- |
| Success | Boolean | A boolean set to `true` if the call was successful or `false` if it was unsuccessful |
| Result | Any Type | If success was `true`, a dictionary or list of dictionaries containing the data returned by the BAPI, otherwise, `null` |
| Error | Any Type | If success was `false`, a dictionary with the 'title' field and a 'message' field, otherwise `null`. The dictionary's fields contain the title and message of the error, respectively. |

Because the response from a SAP server instance is a dictionary or list of dictionaries, the result output must be stored into custom data type process variable or the data field of a DataSubset process variable using [a!dataSubset()](fnc_system_a_datasubset.html). If saving the values into a DataSubset, you will need to view the values from the "Variables" tab of the [process details dialog](Monitoring_and_Editing_Processes.html#viewing-process-details).

Once you understand the SAP return value's structure, you can access and manipulate the values in a custom output. For example, the BAPI return value may not map directly to your data types and may require some manipulation. Imagine the BAPI returns a value similar to this:

```
1
2
3
4
5
6
{
  Customers: {
    {id: 1, name: "Alliance Marketing", industry: "Marketing"},
    {id: 2, name: "Global Firm", industry: "Insurance"}
  }
}
```

If you have a Customer data type and therefore want only the values contained in the "Customers" field, you could create a custom output that indexes the result of the BAPI call and saves it to a List of Customer process variable: `index(ac!result, "Customers", {})`.

## Best practices

**Example Interface Expression**

In this example, the BAPI\_ACC\_GL\_POSTING\_POST is called to create an accounting document on a SAP server from sales data in the Appian system. This BAPI requires the commit flag to be set to true().

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
84
85
86
87
88
89
90
91
92
93
94
=a!localVariables(
  local!sapPostResult,
  a!formLayout(
    titleBar: a!headerTemplateSimple(
      title: "Account Posting",
      secondaryText: "BAPI_ACC_GL_POSTING_POST is a standard SAP function module that performs Accounting: General G/L Account Posting functionality. This is available within standard R/3 SAP systems depending on version and release level."
    ),
    contents: {
      a!textField(
        label: "Result",
        value: local!sapPostResult,
        readOnly: true()
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Post",
          style: "SOLID",
          saveInto: a!sapInvokeWithCommit(
            scsExternalSystemKey: cons!SAP_SCS_KEY,
            usePerUserCredentials: false(),
            hostname: cons!SAP_HOSTNAME,
            clientNumber: cons!SAP_CLIENT_NUMBER,
            systemNumber: cons!SAP_SYSTEM_NUMBER,
            bapi: "BAPI_ACC_GL_POSTING_POST",
            importParameters:{
              DOCUMENTHEADER:{
                OBJ_TYPE:"BKPFF",
                OBJ_KEY:"1",
                OBJ_SYS:"T90CLNT090",
                USERNAME:"SAPUSER",
                HEADER_TXT:"BAPI TEST",
                COMP_CODE:"3000",
                DOC_DATE:date(2016, 11, 02),
                FIS_PERIOD:"11"
              }
            },
            tableParameters:{
              ACCOUNTGL:{
                {
                  ITEMNO_ACC:"0000000003",
                  GL_ACCOUNT:"474210",
                  COMP_CODE:"3000",
                  PSTNG_DATE:date(2016, 11, 02),
                  DOC_TYPE:"SA",
                  FISC_YEAR:"2016",
                  FIS_PERIOD:"11",
                },
                {
                  ITEMNO_ACC:"0000000002",
                  GL_ACCOUNT:"113100",
                  COMP_CODE:"3000",
                  PSTNG_DATE:date(2016, 11, 02),
                  DOC_TYPE:"SA",
                  FISC_YEAR:"2016",
                  FIS_PERIOD:"11"
                }
              },
              CURRENCYAMOUNT:{
                {
                  ITEMNO_ACC:"0000000003",
                  CURRENCY:"USD",
                  AMT_DOCCUR:"5000",
                  EXCH_RATE_V:"0"
                },
                {
                 ITEMNO_ACC:"0000000002",
                 CURRENCY:"USD",
                 AMT_DOCCUR:"-5000",
                 EXCH_RATE_V:"0"
                }
              }
            },
            commitTransaction: true(),
            onSuccess: {
              a!save(
                local!sapPostResult,
                fv!result
              )
            },
            onError: {
              a!save(
                local!sapPostResult,
                fv!errorTitle
              )
            }
          ),
          submit: true
        )
      }
    )
  )
)
```

## a!sapInvokeWithCommit() \[Deprecated\]

The a!sapInvokeWithCommit() smart service function has been [deprecated](Deprecated_Features.html), and will be removed in a future release of Appian. Use an [HTTP connected system](http-connected-system.html) to integrate with SAP instead.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...