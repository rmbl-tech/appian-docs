---
source_url: https://docs.appian.com/suite/help/25.3/passing-a-web-api-document-into-a-process-model.html
original_path: passing-a-web-api-document-into-a-process-model.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Pass a Web API Document Upload into a Process Model

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

External systems can push documents to Appian using a Web API. You can then pass the newly uploaded document into a process model for routing, task assignment, and more.

## Create a process model

You will need to [create a process model](process-model-object.html) to pass the document into.

### Example

In the following example, we created the following process variables in our process model:

-   CDT\_student (not a parameter)
    -   This would be connected to a student CDT in our application.
-   studentId (parameter)
-   transcript (parameter)

![Upload Document Process Variables](images/document_upload_process_variables.png)

We then added nodes to do the following:

1.  Find the student by the student ID.
2.  Write the transcript document to CDT\_student.
3.  Write CDT\_student, including the transcript, to the data store.
4.  Move the document to a different folder.

[![Upload Document Process Model](images/document_upload_process_model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img796)

[![](images/document_upload_process_model.png)](#_)

## Create a process model constant

In order to call the process model from the web API, you will need to [create a constant](Constants.html) of type Process Model that uses your process model as the value.

### Example

In our example, we created a constant that uses our Upload Student Transcript process model for the value.

![Process Model Constant](images/document_upload_process_model_constant.png)

## Create a web API

When you [create your web API](Designing_Web_APIs.html), you can use the **DOCUMENT UPLOAD** template to get started. This will populate your expression with the following:

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
a!localVariables(

  /*Check whether the request body contains a document*/
  local!success: not(isnull(http!request.body)),

  if(
    local!success,

    /*If a document was uploaded, return a successful response*/
    a!httpResponse(
      statusCode: 200,
      headers: {},

      /*Print the document id, name, and extension of the uploaded document*/
      body: concat(
        "Upload Successful: ",
        document(http!request.body, "id"),
        " - ",
        document(http!request.body, "name"),
        ".",
        document(http!request.body, "extension")
      )
    ),

    /*If no document was uploaded, return an error code*/
    a!httpResponse(
      statusCode: 400,
      headers: {},
      body: "400 Document Not Provided"
    )
  )
)
```

You will need to add the [a!startProcess()](Start_Process_Smart_Service.html) smart service to the expression and call your process model from that smart service. You can use the [HTTP request variable](Designing_Web_APIs.html#accessing-the-http-request) to access the document and the queryParameters and headers of the HTTP request in your expression.

**Note:**  Use an HTTP header with the key `appian-document-name` to set the document name and extension. If the HTTP header is not sent, **Untitled document from web API** will be used as the default name.

This template creates a web API with the `POST` method, but you can also upload files using the `PUT` or `PATCH` method. However, it is up to the web API developer to implement the logic that would satisfy the HTTP client's expectations.

For example, if you want to use a web API with the `PATCH` method to overwrite an existing Appian document with a new file, the web API must be designed to do more than just upload the file. It will also need to update any references to the existing document to point to the newly uploaded document, and may even use the [Delete Document Smart Service](Delete_Document_Smart_Service.html) to delete the existing document.

### Example

In our example, we modified the default **DOCUMENT UPLOAD** expression as follows:

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
a!localVariables(

  /*Check whether the request body contains a document*/
  local!success: not(isnull(http!request.body)),

  if(
    local!success,

!    /*If a document was uploaded, start the Upload Student Transcript process*/
!    a!startProcess(
!      processModel: cons!UPLOAD_STUDENT_TRANSCRIPT,
!      processParameters: {

!        /*A document*/
!        transcript: http!request.body,

!        /*Metadata from parameters or headers*/
!        studentId: http!request.queryParameters.studentId
!      },
      `onSuccess:` a!httpResponse(
        statusCode: 200,
        headers: {},

        /*Print the document id, name, and extension of the uploaded document*/
        body: concat(
          "Upload Successful: ",
          document(http!request.body, "id"),
          " - ",
          document(http!request.body, "name"),
          ".",
          document(http!request.body, "extension")
        )
      ),
!      onError: a!httpResponse(
!        statusCode: 500,
!        headers: {},
!        body: "500 Internal Server Error"
!      )
!    ),

    /*If no document was uploaded, return an error code*/
    a!httpResponse(
      statusCode: 400,
      headers: {},
      body: "400 Document Not Provided"
    )
  )
)
```

## Pass the web API content into the process model

You can pass information from the web API into the process model, including:

-   The document that is being pushed into Appian.
-   Headers included in the request.
-   Query parameters included in the request.

### HTTP request

The client must send the document they wish to upload in a binary request body. If this document exceeds **75 MB**, it will fail to upload and the web API will return a **413 Limit exceeded** error. Otherwise, the document will be uploaded to the **Save In** folder specified in the properties modal.

In addition to the usual Authentication header, the client can send an additional HTTP header with the key `appian-document-name` in order to specify the document name and extension. If this header is not included, the document will be given the default name **Untitled document from web API**.

### Example

In our example we are using the studentId to find the student in our data store. The studentId is a queryParameter in the HTTP request.

We then write the transcript document to the data store and move it into a different folder.

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
...
    a!startProcess(
      processModel: cons!UPLOAD_STUDENT_TRANSCRIPT,
      processParameters: {

        /*A document*/
        `transcript: http!request.body,`

        /*Metadata from parameters or headers*/
        `studentId: http!request.queryParameters.studentId`
      },
...
```

[![Upload Document Process Model](images/document_upload_process_model_highlighted.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img797)

[![](images/document_upload_process_model_highlighted.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...