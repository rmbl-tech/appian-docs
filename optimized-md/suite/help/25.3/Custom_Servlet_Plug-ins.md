---
source_url: https://docs.appian.com/suite/help/25.3/Custom_Servlet_Plug-ins.html
original_path: Custom_Servlet_Plug-ins.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Servlet Plug-ins

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Custom servlet plug-ins are JEE servlets that can be deployed as plug-ins within your Appian instance. A working understanding of how JEE servlets work is required for creating this type of plug-in.

When you define a servlet plugin you will have the option of making it stateless or not.

1.  **Standard servlets**: These require a JEE session and have the ability to both access and update that session.
2.  **Stateless servlets**: These cannot require or create a session.

Any servlet that maps to the URL pattern `/plugins/servlet/stateless/*` will be a stateless servlet and will use HTTP Basic Authentication on each request to authenticate each request and should not access or create a JEE session.

All servlets that match `/plugins/servlet/*` but do not match `/plugins/servlet/stateless/*` are not stateless and require the user to have an authenticated session in order to access them, but do have access to a JEE session.

The following principles must be followed:

-   Custom servlet plug-ins that match the `/plugins/servlet/stateless` pattern must not require or create a session.
-   GET requests must not be used to modify data (create/update data through Appian's Java API).
-   Only objects from the JDK and the public Appian API can be placed into an HttpSession from a servlet plug-in.

### Notes on CSRF protection

-   POST requests to custom plug-in servlets made within the context of a session will be intercepted and blocked by Appian's CSRF protection.
-   POST requests made outside the context of a session (for example, web services API calls) will not be blocked by Appian's CSRF protection. Because this type of access falls outside of Appian's security perimeter, implementation of this modification must be tested for security independently.

## Creating and deploying the servlet plug-in

_This example assumes you are using Eclipse as your IDE._

1.  Create a new Java project in Eclipse.

    1.  Click **File** > **New** > **Other…**.
    2.  Select **Java Project** from the **Select a Wizard** options. Click **Next**.
    3.  Type a name for your project. Click **Finish** (accepting the default settings).
2.  Configure the Java Build Path.

    1.  Right-click the project. Click **Properties**.
    2.  In the left navigation, click **Java Build Path**.
    3.  On the **Libraries** tab, click the **Add External JARs…** button.
    4.  Add the following Appian JAR as an external dependency and click **OK**.
        -   `<APPIAN_HOME>/_admin/sdk/appian-plug-in-sdk.jar` - Your plug-in must be designed to access only the classes and methods documented in the Public API javadocs.
    5.  Since this is a servlet plug-in, you'll also need to add the library that contains the `javax.servlet` package to the build path. This is typically in the Java EE library provided with your application server.
    6.  Similarly, if you are supporting an injectable service (e.g. `ImportExportService`), you'll also need to add the library that contains the `javax.inject` package.
    7.  Click **OK**.
3.  Configure Project Folders.

    1.  In the Package Explorer (left navigation), right-click the `src` folder and select **New** > **Folder**.
    2.  Type `META-INF` in the **folder name** field and click **Finish**.
    3.  With the `META-INF` folder selected, right-click and select **New** > **Folder**. Type `lib` in the **folder name** field. Click **Finish**.
    4.  With the `src` folder selected, right-click and select **New** > **Package**. Type your desired package structure in the **name** field. For example: `com.example.plugins.<YOUR_PLUGIN>`
    5.  Click **Finish**. Your file structure should appear similar to the following diagram.

        ```
        1
        2
        3
        4
        5
         |_ src
             |_ com.example.plugins.<YOUR_PLUGIN>
             |
             |_ META-INF
                 |_ lib
        ```

4.  Add the JAR files required by your plug-in to the `src/META-INF/lib/` folder.
    -   These JAR files are deployed by your plug-in.
    -   If your plug-in needs a resource included in an Appian JAR file, do not add that file to this folder. Instead, reference the Appian JAR from your build path.
    -   Any 3rd party libraries that are specifically used by your plug-in must be included in the `src/META-INF/lib/` folder.
5.  Create your class and add it to the `src/com.example.plugins.<YOUR_PLUGIN>` package.

    1.  Right-click the project and select **New** > **Class**.
    2.  Enter the package for the class (such as `com.example.pluginname`).
    3.  Enter the name of the class.
    4.  In superclass, click **Browse**.
    5.  Type `com.appiancorp.suiteapi.servlet.AppianServlet`.

    See below: [Java Component](#java-component)

6.  When calling Appian's Java API, only use the Public API. Generally public interfaces are found in `com.appiancorp.suiteapi`.

    See also: [Java API](api/)

7.  Update your Java Build path to include any new JAR files; otherwise Eclipse won't compile.

    1.  Right-click the project and select **Properties**.
    2.  In the Package Explorer (left navigation) click **Java Build Path**.
    3.  On the **Libraries** tab, click **Add JARs…**.
    4.  Select the JAR files in your project.
8.  Register the servlet in an `appian-plugin.xml` file.

    See below: [Configuring the appian-plugin.xml File](#configuring-the-appian-pluginxml-file)

9.  Add your appian-plugin.xml file to the `src` folder at the root level.

10.  Export your project as a JAR file.

     1.  Right-click your project and click **Export…**.
     2.  Select the **JAR file** option as the **Export destination**.
     3.  On the **Resources to export** dialog, clear the **.classpath** and **.project** selections, as these files are used exclusively by Eclipse.
11.  Select as your export destination the **\_admin/plugins** folder of your installation directory (`<APPIAN_HOME>/_admin/plugins`).
     -   This directory is created during application server startup.
12.  Click **Finish**. Your plug-in is deployed.
     -   The plug-ins framework locates the new JAR file and deploys your custom smart service when the application server starts.

## Configuring the appian-plugin.xml file

All plug-ins must contain an `appian-plugin.xml` configuration file. Plug-ins that do not contain this configuration file won't be registered in Appian.

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
<appian-plugin ...>
	<plugin-info>...</plugin-info>
	<servlet name="Example Servlet" key="exampleServlet" class="com.example.servlet.ExampleServlet">
		<description>An example servlet</description>
		<url-pattern>/example/- </url-pattern>
		<init-param>
			<param-name>foo</param-name>
			<param-value>bar</param-value>
		</init-param>
	</servlet>
</appian-plugin>
```

**appian-plugin**: The main parent element. This element defines the plug-in properties and references. The `name` is used for documentation purposes only. The `key` must be unique among all Appian plug-ins. It represents a unique namespace for your plug-in function. We recommend using the same convention established for Java package names.

**plugin-info**: This element contains plug-in metadata, including the following subelements.

-   **description**: Specify a description of the plug-in itself.
-   **vendor**: Specify your organization's name and URL.
-   **version**: Specify the version of the plug-in. Remember that installing newer versions overrides older versions.
-   **application-version**: Specify the minimum version of Appian that the plug-in requires to run.

**servlet**: Defines the servlet module that will be deployed.

-   **name**: Name of the plug-in module that will appear in logs when the plug-in is deployed.
-   **key**: Identifier of the module. Must be unique in the system.
-   **class**: Servlet Java class. Must be a subclass of `com.appiancorp.suiteapi.servlet.AppianServlet`.

**description**: _subelement of servlet_ (_optional_) Servlet description.

**url-pattern**: _subelement of servlet_ Pattern of the URL to match. Multiple url-patterns can be defined. `*` and `?` wildcards are valid.

**init-param**: _subelement of servlet_ (_optional_) Init parameters for the servlet. Multiple init-param elements can be specified for multiple.

-   **param-name**: _subelement of init-param_ Name of the parameter.
-   **param-value**: _subelement of init-param_ The value of that parameter.

## Java component

-   Servlets must extend `com.appiancorp.suiteapi.servlet.AppianServlet`.
-   The servlet must conform to the Servlet 2.5 specification.
-   Be aware that the `init()` method of the servlet is not called on application server startup nor plug-in deployment. It's called the first time the servlet is accessed.

## Invocation

Once deployed, the servlet will be invoked when requests match the URL pattern relative to `<context>/plugins/servlet/`. For the servlet defined in the example `appian-plugin.xml` above, the path would be the following:

```
1
<host:port>/suite/plugins/servlet/example/-
```

## Example

This example is a simple servlet that returns an array of JSON objects with a relevant subset of fields for Appian process tasks assigned to the currently authenticated user.

This example assumes the following scenario:

-   A web portal wants to display a list of Appian tasks for a user, with links that will take the user to the corresponding task in Appian.
-   The web portal is capable of parsing the JSON formatted task information into a display format appropriate to the portal.
-   The web portal uses javascript running in the user's browser to make the request to the servlet plug-in running in Appian at https://_host_:_port_/suite/plugins/servlet/tasklist. This pattern of making an AJAX call to a server from the user's browser from a page that was served by a different server is commonly referred to as a "mashup" and has special considerations that are described in the Notes section below.
-   A single sign-on system is in place such that a request from the user's browser from the web portal with be authenticated with Appian.

**Notes**:

-   This servlet example uses Appian's public Java API to retrieve the list of tasks for the authenticated user.
-   The JSON library in the `org.json` package is used to create the JSON representation of the task. This library does not need to be included separately because it is already provided by the plug-in container.
-   This example is for the "mashup" scenario, which requires Cross-Origin Resource Sharing (CORS). CORS is supported by all modern browsers. For security, it requires that the server respond with a header indicating that an AJAX request from a page served by a specific origin URL is allowed. To allow an origin to access resources on the Appian server, including your servlet plugin, add it to the list of allowed origins in [the Embedded Interfaces](Appian_Administration_Console.html#embedded-interfaces) page of the Admin Console. More information on CORS can be found in the [W3C CORS specification](https://www.w3.org/TR/cors/).
-   This example is intentionally simple and may not cover all use cases nor handle every edge/error case in a way that would be satisfactory for production use. For example, the logic that parses the query parameters will use the default `batchSize` if only `startIndex` is given, but will use the defaults for both `startIndex` and `batchSize` if only `batchSize` is given or if neither parameter is given. Adapt the example as you see fit.

**Alternatives**:

If the "mashup" scenario is not appropriate to your use case, but instead a back-end server-to-server integration matches your use case better, this example can be adapted to fit that example in the following ways:

1.  Change the `url-pattern` element in the `appian-plugin.xml` to `<url-pattern>/stateless/tasklist</url-pattern>` to make the servlet a stateless servlet. This will cause the servlet to no longer require an authenticated session and instead will protect it using HTTP Basic authentication.
2.  When calling the servlet, pass the user's credentials as HTTP Basic auth credentials.
3.  If using an integration user instead of authenticating with the credentials of the user whose tasks you want to view, you will have to use a different API to run a task report for that user instead of calling `ProcessAnalyticsService.getMyTasks`.

**Java Class**

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
package com.appian.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.appiancorp.services.ServiceContext;
import com.appiancorp.services.WebServiceContextFactory;
import com.appiancorp.suiteapi.common.Constants;
import com.appiancorp.suiteapi.common.ResultPage;
import com.appiancorp.suiteapi.common.ServiceLocator;
import com.appiancorp.suiteapi.process.TaskSummary;
import com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService;
import com.appiancorp.suiteapi.process.exceptions.ResultPageSizeException;
import com.appiancorp.suiteapi.servlet.AppianServlet;

public class TaskList extends AppianServlet {

  private static final String CHARACTER_ENCODING = "UTF-8";
  private static final String JSON_CONTENT_TYPE = "application/json";

  private static final String TEMPO_TASK_URL_BASE = "/tempo/tasks/task/";
  private static final String START_INDEX_PARAM = "startIndex";
  private static final String BATCH_SIZE_PARAM = "batchSize";
  private static final int DEFAULT_START_INDEX = 0;
  private static final int DEFAULT_BATCH_SIZE = 20;
  private final DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
  private String baseUri;

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    baseUri = extractBaseUriFromRequest(req);

    String startIdxParam = req.getParameter(START_INDEX_PARAM);
    String batchSizeParam = req.getParameter(BATCH_SIZE_PARAM);
    int startIndex = DEFAULT_START_INDEX;
    int batchSize = DEFAULT_BATCH_SIZE;

    try {
      startIndex = Integer.parseInt(startIdxParam);
      batchSize = Integer.parseInt(batchSizeParam);
    } catch (NumberFormatException e) {
      // do nothing, the defaults will be used
    }

    ServiceContext context = WebServiceContextFactory.getServiceContext(req);
    ProcessAnalyticsService pas = ServiceLocator.getProcessAnalyticsService2(context);

    ResultPage taskResultPage = new ResultPage();
    try {
      taskResultPage = pas.getMyTasks(
          startIndex,
          batchSize,
          TaskSummary.SORT_BY_ASSIGNED_TIME,
          Constants.SORT_ORDER_DESCENDING);
    } catch (ResultPageSizeException rpse) {
      resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, rpse.getMessage());
    }

    JSONArray tasksJson = new JSONArray();
    for (Object result : taskResultPage.getResults()) {
      TaskSummary task = (TaskSummary)result;
      tasksJson.put(convertToJson(task));
    }

    resp.setContentType(JSON_CONTENT_TYPE);
    resp.setCharacterEncoding(CHARACTER_ENCODING);

    PrintWriter out = resp.getWriter();
    out.write(tasksJson.toString());
    out.flush();
    out.close();

  }

  private String extractBaseUriFromRequest(HttpServletRequest req) {
    String scheme = req.getScheme();
    int port = req.getServerPort();
    StringBuffer url = new StringBuffer(42);
    url.append(scheme);
    url.append("://");
    url.append(req.getServerName());
    if ((scheme.equalsIgnoreCase("http") && port != 80) ||
        (scheme.equalsIgnoreCase("https") && port != 443)) {
      url.append(":");
      url.append(port);
    }
    url.append("/");
    url.append(req.getContextPath());
    return url.toString();
  }

  private JSONObject convertToJson(TaskSummary task) {
    Timestamp assignedTime = task.getAssignedTime();
    Timestamp deadline = task.getTaskDeadline();
    Object assignedTimeJson = assignedTime != null ? df.format(assignedTime) : JSONObject.NULL;
    Object deadlineJson = deadline != null ? df.format(deadline) : JSONObject.NULL;
    return new JSONObject().put("Id", task.getId())
        .put("DisplayName", task.getDisplayName())
        .put("AssignedTime", assignedTimeJson)
        .put("TaskDeadline", deadlineJson)
        .put("Link", getLinkForTask(task));
  }

  private String getLinkForTask(TaskSummary task) {
    Long id = task.getId();
    return baseUri + TEMPO_TASK_URL_BASE + id;
  }

}
```

**Plug-in Configuration File**

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
<appian-plugin key="com.appian.example.servlet" name="Task List Servlet Plugin">
    <plugin-info>
      <description>Task List Servlet Plug-in Example</description>
      <vendor name="Appian" url="https://forum.appian.com/suite/help/7.6/Custom_ServletPlugins.html" />
      <version>1.0</version>
      <application-version min="7.1" />
    </plugin-info>
    <servlet name="Task List Servlet" key="taskList" class="com.appian.example.servlet.TaskList">
        <description>
          An example servlet that responds to GET requests with a JSON array containing the authenticated user's task list
        </description>
        <url-pattern>/tasklist</url-pattern>
    </servlet>
</appian-plugin>
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...