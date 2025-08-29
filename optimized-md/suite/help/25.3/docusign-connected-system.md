---
source_url: https://docs.appian.com/suite/help/25.3/docusign-connected-system.html
original_path: docusign-connected-system.html
version: "25.3"
title: "DocuSign"
page_id: "docusign-connected-system"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# DocuSign

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Quickly and easily create, manage, and send eSignatures using the DocuSign connected system. DocuSign envelopes can contain one or more documents, the fields in the document, recipient info, delivery progress, sender information, security, and more.

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

Three forms of authentication are available for DocuSign: [Authorization Code Grant](#authorization-code-grant) (per user), [JWT Grant](#jwt-grant) (single system login), and [Basic Authentication](#basic-authentication) ([deprecated](https://developers.docusign.com/platform/auth/oauth2-requirements-migration/) legacy feature for single system login).

### Basic Authentication

Uses the DocuSign Legacy Header Authentication Method, which requires a single DocuSign user's credentials to authenticate. See [DocuSign documentation](https://developers.docusign.com/docs/esign-rest-api/esign101/rules-and-limits/requests/) for more details.

**Note:**  Since DocuSign is [removing support for basic authentication](https://developers.docusign.com/platform/auth/oauth2-requirements-migration/) on October 5, 2022, developers must modify any DocuSign connected systems that use Basic Authentication to use the newly supported JWT Grant authentication type before that date.

A DocuSign connected system using the Legacy Header Authentication Method has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required** The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Basic Authentication**. |
| Instance URL\* | **Required** This URL is used to configure your integration object and when executing your operations. For example: `https://demo.docusign.net` |
| API Account ID\* | **Required** To find the API Account ID, go to the Account screen in DocuSign. Under **Integrations**, click **Apps and Keys**. |
| API Username\* | **Required** The username used to sign into the provided DocuSign instance. To find the API Username, go to the Account screen in DocuSign. Under **Users And Groups**, click **Users** and select a user. |
| Password\* | **Required/Sensitive** The password used to sign into the provided DocuSign instance. |
| Integration Key\* | **Required** To find the Integration Key, go to the Account screen in DocuSign. Under **Integrations**, click **Apps and Keys** and select your **App Name**. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![screenshot of the Basic Authentication method selected in a DocuSign connected system object](images/create_a_connected_system/docusign-basic-authentication.png)

### Authorization Code Grant

Uses the DocuSign OAuth 2.0 Authentication Method, where each Appian user will be required to sign in to their DocuSign account to authenticate. You must provide users a way to authenticate using [OAuth 2.0](Oauth_connected_system.html#providing-users-a-way-to-authorize). See [DocuSign documentation](https://developers.docusign.com/platform/auth/jwt-get-token/) for more details.

**Note:**  The DocuSign connected system doesn't use refresh tokens with the Authorization Code grant. The end user will have to reauthorize each time that the access token expires.

A DocuSign connected system using Authorization Code Grant has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required** The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Authorization Code Grant**. |
| Instance URL\* | **Required** This URL is used to configure your integration object and when executing your operations. For example: `https://demo.docusign.net` |
| API Account ID\* | **Required** To find the API Account ID, go to the Account screen in DocuSign. Under **Integrations**, click **Apps and Keys**. |
| Integration Key\* | **Required** To find the API Username, go to the Account screen in Docusign. Under **Users And Groups**, click **Users** and select a user. |
| Secret Key\* | **Required/Sensitive** From the **Apps and Keys** page for your app, under **Authentication**, select **Authorization Code Grant** and click **ADD SECRET KEY**. |
| DocuSign Environment\* | **Required** This is either DocuSign Development, `https://account-d.docusign.com`, or Production, `https://account.docusign.com`. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

Click **AUTHORIZE** to use the provided configuration information to authorize the designer in a new window. See [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html#parameters-set-in-the-other-system) for more details.

![screenshot of the Authorization Code authentication method selected in a DocuSign connected system object](images/create_a_connected_system/docusign-authorization-code.png)

### JWT Grant

Uses JWT Grant authentication, which is the OAuth 2.0 flow that DocuSign uses for service integrations. This replaces Basic Authentication, which DocuSign is [removing support](https://developers.docusign.com/platform/auth/oauth2-requirements-migration/) for on October 5, 2022. See [DocuSign documentation](https://developers.docusign.com/platform/auth/confidential-authcode-get-token/) for more details on how to configure DocuSign to work with the JWT Grant.

A DocuSign connected system using the JWT Grant has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required** The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed when selecting the system in the integration designer and in the application contents grid. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **JWT Grant**. |
| Instance URL\* | **Required** This URL is used to configure your integration object and when executing your operations. For example: `https://demo.docusign.net` |
| API Account ID\* | **Required** To find the API Account ID, go to the Account screen in DocuSign. Under **Integrations**, click **Apps and Keys**. |
| API Username\* | **Required** The username of a DocuSign user with permission to impersonate end users on a long-term basis. For example, a service integration might use an HR alias or manager’s account credentials to send onboarding documents whenever a new employee is hired by a company. To find the API Username, go to the Account screen in DocuSign. Under **Users And Groups**, click **Users** and select a user. |
| Integration Key\* | **Required** To find the Integration Key, go to the Account screen in DocuSign. Under **Integrations**, click **Apps and Keys** and select your **App Name**. |
| Private RSA Key\* | **Required/Sensitive** The private key in an RSA keypair used for JWT authentication. To generate a Private RSA Key, go to the Account screen in DocuSign. Under **Integrations**, click **Apps and Keys**. Then select your App Name. Finally, under **Service Integration**, click **Generate RSA**.

Note that when using an [import customization file](Managing_Import_Customization_Files.html) to set a Private RSA Key, you will need to replace the nextline characters after `-----BEGIN RSA PRIVATE KEY----` and before `-----END RSA PRIVATE KEY-----` with spaces. However, when pasting a Private RSA Key into the connected system interface, this will be done for you automatically. |
| DocuSign Environment\* | **Required** This is either DocuSign Development, `https://account-d.docusign.com`, or Production, `https://account.docusign.com`. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

Click **TEST CONNECTION** to use the provided configuration information to fetch an access token.

![/images/jwt for docusign](images/jwt_for_docusign.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

| Authentication Type | Available Properties |
| --- | --- |
| Basic Auth | instanceUrl, accountId, userId, password, integrationKey |
| Auth Code Grant | instanceUrl, accountId, integrationKey, clientSecretKey, environmentKey |
| JWT Grant | instanceUrl, accountId, userId, integrationKey, privateRsaKey, environmentKey |

## Operations

| Name | Description | Type |
| --- | --- | --- |
| [Send Document for eSignature](#send-document-for-esignature) | Sends a document to a specified recipient for eSignature | WRITE |
| [Create and Send Envelope](#create-and-send-envelope) | Creates and sends an envelope for eSignature or creates a draft envelope | WRITE |
| [Get Envelope Definition](#get-envelope-definition) | Gets envelope information for a specified envelope | READ |
| [List Envelopes](#list-envelopes) | Gets a list of envelopes that match specified search parameters | READ |
| [Update Envelope Definition](#update-envelope-definition) | Modifies envelope definitions including status | WRITE |
| [List Documents of an Envelope](#list-documents-of-an-envelope) | Gets a list of all documents associated with a specified envelope | READ |
| [Upload New Documents to an Envelope](#upload-new-documents-to-an-envelope) | Adds or updates documents to a specified envelope | WRITE |
| [Download Document from an Envelope](#download-document-from-an-envelope) | Gets a document from a specified envelope and saves it into Appian | WRITE |
| [List Audit Events of an Envelope](#list-audit-events-of-an-envelope) | Gets envelope audit events for a specified envelope | READ |
| [Generate the Recipient Signing URL](#generate-the-recipient-signing-url) | Gets a pre-authenticated URL to allow a user to eSign from Appian | WRITE |

### Send Document for eSignature

Sends a document to a specified recipient for eSignature.

Send Document for eSignature is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Send Document for eSignature operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-send-for-esign.png)

### Create and Send Envelope

Creates and sends an envelope for eSignature or creates a draft envelope.

See the [examples](#docusign-envelope-examples) below of how to set up your DocuSign envelope.

**Note:**  If you're updating a DocuSign connected system that previously used Basic Authentication to use JWT Grant authentication instead, you should pay special attention to the Create and Send Envelope operation. If a single DocuSign connected system had multiple Create and Send integrations with different values for the **From** dropdown (which isn't present for integrations using the JWT Grant), you will need to create a new connected system for each From value. See the [DocuSign documentation](https://developers.docusign.com/docs/esign-soap-api/esign101/auth/send-on-behalf-of/) on Send on Behalf Of functionality for more information.

Create and Send Envelope is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Create and Send Envelope operation selected in a DocuSign integration object](images/jwt_docusign_create_and_send.png)

### Get Envelope Definition

Gets envelope information for a specified envelope.

![screenshot of the Get Envelope Definition operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-get-envelope.png)

### List Envelopes

Gets a list of envelopes that match specified search parameters.

![screenshot of the List Envelopes operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-list-envelope.png)

### Update Envelope Definition

Modifies envelope definitions including status.

Update Envelope Definition is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Update Envelope Definition operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-update-envelope.png)

### List Documents of an Envelope

Gets a list of all documents associated with a specified envelope.

![screenshot of the List Documents of an Envelope operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-list-document.png)

### Upload New Documents to an Envelope

Adds or updates documents to a specified envelope.

Upload New Documents to an Envelope is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Upload New Documents to an Envelope operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-upload-new-doc.png)

### Download Document from an Envelope

Gets a document from a specified envelope and saves it into Appian.

Download Document from an Envelope is a `WRITE` type Integration. To protect against duplicate document creation, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Download Document from an Enveloper operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-download-doc.png)

### List Audit Events of an Envelope

Gets envelope audit events for a specified envelope.

![screenshot of the List Audit Events of an Envelope operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-list-audit-events.png)

### Generate the Recipient Signing URL

Gets a pre-authenticated URL to allow a user to eSign from Appian.

Generate the Recipient Signing URL is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Generate the Recipient Signing URL operation selected in a DocuSign integration object](images/create_a_connected_system/docusign-generate-signing-url.png)

## DocuSign envelope examples

### Request signature on single document by email

This example shows an integration configuration that includes:

-   A single PDF document to be signed.
-   One tab positioned using anchor text.
-   One recipient.

For more information, see [DocuSign examples](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/create/#examples)

See full **Envelope Definition** below:

![docusign_examples_single_document.png](images/create_a_connected_system/docusign-examples-single-document.png)

#### Envelope definition

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
a!toJson(
  {
    "emailSubject": "Please sign the NDA",
    "recipients": {
      "signers": {
        {
          "email": "the_nda_signer@example.com",
          "name": "Darlene Petersen",
          "recipientId": "1",
          "routingOrder": "1",
          "tabs": {
            "dateSignedTabs": {
              {
                "anchorString": "signer1date",
                "anchorYOffset": "-6",
                "fontSize": "Size12",
                "name": "Date Signed",
                "recipientId": "1",
                "tabLabel": "date_signed"
              }
            },
            "fullNameTabs": {
              {
                "anchorString": "signer1name",
                "anchorYOffset": "-6",
                "fontSize": "Size12",
                "name": "Full Name",
                "recipientId": "1",
                "tabLabel": "Full Name"
              }
            },
            "signHereTabs": {
              {
                "anchorString": "signer1sig",
                "anchorUnits": "mms",
                "anchorXOffset": "0",
                "anchorYOffset": "0",
                "name": "Please sign here",
                "optional": "false",
                "recipientId": "1",
                "scaleValue": 1,
                "tabLabel": "signer1sig"
              }
            }
          }
        }
      }
    }
  }
)
```

### Multiple documents and tabs, signer and CC recipients

This example shows an integration configuration that includes:

-   Multiple documents.
-   Multiple tabs including signing, fullName, dateSigned, and text tabs.
-   Tabs positioned using anchor text.
-   Two recipients, a signer and a cc recipient.

For more information, see [DocuSign examples](https://developers.docusign.com/docs/esign-rest-api/reference/envelopes/envelopes/create).

See full expressions for [Envelope Definition](#envelope-definition) and [Documents](#documents).

![docusign-examples-DocuSign_MultipleDocumentsTabsSignerCC.png](images/create_a_connected_system/docusign-examples-DocuSign-MultipleDocumentsTabsSignerCC.png)

#### Envelope Definition

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
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
a!toJson(
  {
    "emailSubject": "Please sign the house documentation package",
    "recipients": {
      "carbonCopies": {
        {
          "email": "cody_vigil@worldwidecorp.example.com",
          "name": "Cody Vigil",
          "recipientId": "2",
          "routingOrder": "2"
        }
      },
      "signers": {
        {
          "email": "darlene_petersen@newco.example.com",
          "name": "Darlene Petersen",
          "recipientId": "1",
          "routingOrder": "1",
          "tabs": {
            "dateSignedTabs": {
              {
                "anchorString": "signer1date",
                "anchorYOffset": "-6",
                "fontSize": "Size12",
                "name": "Date Signed",
                "recipientId": "1",
                "tabLabel": "date_signed"
              },
              {
                "documentId": "2",
                "fontSize": "Size12",
                "name": "Date Signed",
                "pageNumber": "1",
                "recipientId": "1",
                "tabLabel": "doc3_date_signed",
                "xPosition": "89",
                "yPosition": "100"
              }
            },
            "fullNameTabs": {
              {
                "anchorString": "signer1name",
                "anchorYOffset": "-6",
                "fontSize": "Size12",
                "name": "Full Name",
                "recipientId": "1",
                "tabLabel": "Full Name"
              }
            },
            "signHereTabs": {
              {
                "anchorString": "signer1sig",
                "anchorUnits": "mms",
                "anchorXOffset": "0",
                "anchorYOffset": "0",
                "name": "Please sign here",
                "optional": "false",
                "recipientId": "1",
                "scaleValue": 1,
                "tabLabel": "signer1sig"
              },
              {
                "documentId": "2",
                "name": "Please sign here",
                "optional": "false",
                "pageNumber": "1",
                "recipientId": "2",
                "scaleValue": 1,
                "tabLabel": "signer1_doc2",
                "xPosition": "89",
                "yPosition": "40"
              },
              {
                "anchorString": "Client Signature",
                "anchorUnits": "mms",
                "anchorXOffset": "0",
                "anchorYOffset": "-4",
                "name": "Please sign here",
                "optional": "false",
                "recipientId": "1",
                "scaleValue": 1,
                "tabLabel": "doc3_client_sig"
              }
            },
            "textTabs": {
              {
                "anchorString": "signer1company",
                "anchorYOffset": "-8",
                "fontSize": "Size12",
                "name": "Company",
                "recipientId": "1",
                "required": "true",
                "tabLabel": "Company"
              },
              {
                "anchorString": "Client Name",
                "anchorYOffset": "-38",
                "fontSize": "Size12",
                "name": "Company",
                "recipientId": "1",
                "required": "true",
                "tabLabel": "Company"
              },
              {
                "documentId": "3",
                "fontSize": "Size10",
                "name": "Company",
                "pageNumber": "1",
                "recipientId": "1",
                "required": "true",
                "tabLabel": "Company",
                "xPosition": "145",
                "yPosition": "195"
              }
            }
          }
        }
      }
    }
  }
)
```

#### Documents

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
{
  documents: {
    {
      documentId: 1,
      name: "NDA",
      appianDocument: todocument(1234)
    },
    {
      documentId: 2,
      name: "House",
      appianDocument: todocument(5678)
    },
    {
      documentId: 3,
      name: "contractor_agreement",
      appianDocument: todocument(9012)
    }
  }
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...