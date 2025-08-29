---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_IIS_with_Appian.html
original_path: Configuring_IIS_with_Appian.html
version: "25.3"
title: "Configuring IIS with Appian"
page_id: "Configuring_IIS_with_Appian"
section: "Definitions"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring IIS with Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how to configure the Microsoft IIS 7.5 Web Server for Appian.

See also: [System Requirements](System_Requirements.html)

## Definitions

-   `<APPIAN_HOME>` refers to the Appian installation directory.
-   `<IIS_DOCUMENT_ROOT>` refers to the document root directory for the IIS server (usually `c:\inetpub\wwwroot`).
-   `<ISAPI_HOME>` refers to the Jakarta ISAPI Redirector installation directory.
    -   The default `<ISAPI_HOME>` location is `C:\Redirector`.
-   `<SERVER_NAME>` refers to the host name of the machine where IIS is installed.
-   `<WEB_SERVER_STATIC_HOST>` refers to the name of the secondary host on which IIS is installed that will serve Appian static content, such as Documents.
-   `<WEB_SERVER_DYNAMIC_HOST>` refers to the name of the secondary host on which IIS is installed that will serve Appian dynamic content, such as Component Plug-ins.

## Set up ISAPI filter

1.  Download the 32-bit ISAPI Redirector DLL (`isapi_redirector.dll`), version 1.2.37 from [Jakarta's Windows Connector downloads page](https://www.apache.org/dist/tomcat/tomcat-connectors/jk/binaries/windows/).
    -   The 32-bit ISAPI Redirector DLL is supported on 64-bit Windows using WoW64 mode.
    -   At the time of writing these instructions, the most recent version is 1.2.37.
2.  Rename `isapi_redirect-1.2.37.dll` to `isapi_redirect.dll`.
3.  Create the `<ISAPI_HOME>` folder (ie. `C:\Redirector`).
4.  Create the following subfolders under `<ISAPI_HOME>`:
    -   `\ISAPI`
    -   `\conf`
    -   `\log`
5.  Save the `isapi_redirect.dll` file in `<ISAPI_HOME>\ISAPI`.
6.  Create a text file with the name `isapi_redirect.properties` under the `<ISAPI_HOME>\ISAPI` folder using the following example settings:

    ```
    1
    2
    3
    4
    5
    extension_uri=/Redirector/isapi_redirect.dll
    log_file=<ISAPI_HOME>\Redirector\log\isapi_redirect.log
    log_level=info
    worker_file= <ISAPI_HOME>\Redirector\conf\workers.properties
    worker_mount_file= <ISAPI_HOME>\Redirector\conf\uriworkermap.properties
    ```

7.  Verify that there are no extra spaces after each line.
8.  Create a text file named `uriworkermap.properties`.
9.  Save this file in the `<ISAPI_HOME>\conf` folder.
10.  Add the following settings to the `uriworkermap.properties` file:

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
     # The default load balancer, default_lb, allows static content like images and JavaScript to be served directly from the IIS web server rather than the application server.
     /suite|/*=default_lb
     !/suite/*.jpg=default_lb
     !/suite/*.gif=default_lb
     !/suite/*.png=default_lb
     !/suite/*.js=default_lb
     !/suite/*.html=default_lb
     !/suite/*.xml=default_lb
     !/suite/*.css=default_lb
     !/suite/*.xsl=default_lb
     !/suite/*.ico=default_lb
     !/suite/*.svg=default_lb
     !/suite/*.gwt.rpc=default_lb
     !/suite/*.htc=default_lb

     # The dynamic content load balancer, dynamic_content_lb, handles dynamic content that must be served by the application server regardless of the file extension.
     /suite/s/*=dynamic_content_lb
     /suite/plugins/servlet/*=dynamic_content_lb
     /suite/rest/a/content/latest/webcontent/*=dynamic_content_lb
     ```

11.  Create a text file named `workers.properties`.
12.  Save it in the `<ISAPI_HOME>\conf` folder.
13.  Use the following example settings:

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
     worker.list=default_lb,dynamic_content_lb,jkstatus

     worker.node1.type=ajp13
     worker.node1.host=<APPLICATION SERVER 1 IP ADDRESS>
     worker.node1.port=8009

     worker.node2.type=ajp13
     worker.node2.host=<APPLICATION SERVER 2 IP ADDRESS>
     worker.node2.port=8009

     worker.default_lb.type=lb
     worker.default_lb.balance_workers=node1,node2

     worker.dynamic_content_lb.type=lb
     worker.dynamic_content_lb.balance_workers=node1,node2

     worker.jkstatus.type=status
     worker.default_lb.sticky_session=1
     worker.dynamic_content_lb.sticky_session=1
     ```

     -   Remove or add additional worker nodes as needed.
14.  The `balance_workers` property now lists `node1` and `node2`. When deploying Appian via the [configure script](Configure_Script.html#configure-tomcat-clustering-by-specifying-a-node-name), ensure that the names you use in the `Configure Tomcat clustering by specifying a node name` step match the node names specified here.
15.  Verify that your properties files use a `.properties` file extension, rather than `.txt`.
16.  Give the user (or system) account that is running IIS full control over the `<ISAPI_HOME>` folder.

## Copy static resources to the web server

Since the Web server will be handling requests for static resources and forwarding all other requests to the application server, you need to copy over the static files that ship with Appian.

1.  Copy all of the files that match the static file extensions listed in the `uriworkermap.properties` example above from the `<APPIAN_HOME>/deployment/web.war` directory to a new directory named `suite` in a location that will be read by the Web server.
    -   For example `<IIS_DOCUMENT_ROOT>` may be used, so the files would be copied to `<IIS_DOCUMENT_ROOT>/suite`, preserving the same directory structure as is present inside `<APPIAN_HOME>/deployment/web.war`.
    -   If another directory is chosen, then a virtual directory mapping will need to be created (step 11 of the **IIS Setup** section that follows).
2.  If the web server is on a separate machine than the application server, a common configuration, these files will need to be copied to that location on the other machine.

## Configure URL properties in Appian

Once IIS has been enabled, all requests are sent directly to the web server. The `SERVER_AND_PORT` , `STATIC_SERVER_AND_PORT`, and `DYNAMIC_SERVER_AND_PORT` properties must be configured to point to the web server.

1.  Open the `custom.properties` configuration file in the following location: `<APPIAN_HOME>/conf/`.
2.  Ensure the `SCHEME` property is set to the following: `conf.suite.SCHEME=https`.
3.  Ensure the `SERVER_AND_PORT` property is set to the following: `conf.suite.SERVER_AND_PORT=<WEB_SERVER_HOST>`.
4.  Ensure the `STATIC_SERVER_AND_PORT` property is set to the following: `conf.suite.STATIC_SERVER_AND_PORT=<WEB_SERVER_STATIC_HOST>`.
5.  Ensure the `DYNAMIC_SERVER_AND_PORT` property is set to the following: `conf.suite.DYNAMIC_SERVER_AND_PORT=<WEB_SERVER_DYNAMIC_HOST>`.

See [Post-Install Configurations](Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls) for more details on configuring these properties.

## Set up IIS server and primary site

1.  Ensure no other web server is listening on port 80 on your machine, such as an Apache server, either by turning them off via the Service menu or by changing the binding.
2.  Ensure IIS and other important features are turned on by completing the following:
    1.  Open the **Control Panel** and select **Programs > Programs and Features**.
    2.  Click **Turn Windows Features on or off**.
    3.  Expand **Internet Information Services >Web Management Tools**.
    4.  Ensure checkboxes for **IIS Management Console**, **IIS Management Scripts and Tools**, and **IIS Management Service** are checked.
    5.  Expand **World Wide Web Services > Common HTTP Features**.
    6.  Ensure **Default Document**, **HTTP Redirection**, and **Static Content** are checked.
    7.  Within the same World Wide Web Services folder, ensure the **Health and Diagnostic** Folder is checked.
    8.  Expand the **Performance Features** folder and ensure **Static Content Compression** is checked.
    9.  Expand the **Security** folder and ensure **Request Filtering** is checked.
3.  Verify that the ISAPI Filter, CGI Features, and Request Filtering are installed by completing the following:
    1.  Click **Start** > **Control Panel**.
    2.  Type **Turn Windows features on or off** in the search field.
    3.  Select the **Turn Windows features on or off** option in the control panel.
    4.  Expand **Internet Information Services** > **World Wide Web Services** > **Application Development Features**.
    5.  Make sure that the **CGI** checkbox, the **ISAPI Extensions** checkbox, and the **ISAPI Filters** checkbox are selected.
    6.  Expand **Internet Information Services** > **World Wide Web Services** > **Security**.
    7.  Make sure that the **Request Filtering** checkbox is selected.
4.  Click **Administrative Tools** from the Windows Control Panel.
5.  Select **Internet Information Services (IIS) Manager**.
6.  In the Features view, select the **ISAPI and CGI Restrictions** feature.
    1.  Click **Add** to create a new ISAPI allowance.
    2.  In the Executable field, type `<ISAPI_HOME>\ISAPI\isapi_redirect.dll`.
    3.  Type **Redirector** in the **Description** field.
    4.  Select the **Allow extension path to execute** checkbox.
    5.  Click **OK**.
7.  In the Features view, select the **Handler Mappings** feature.
    1.  On the Actions list, click **Edit Feature Permissions**.
    2.  Select the **Read**, **Script**, and **Execute** checkboxes.
        -   The `ISAPI-dll` and `CGI-exe` resources are listed as enabled.
    3.  Back in the **Handler Mappings** feature, double-click `ExtensionlessUrlHandler-Integrated-4.0`.
    4.  Click **Request Restrictions**.
    5.  On the Verbs tab, enter GET, POST, PUT, DELETE, HEAD, OPTIONS, and CONNECT.
    6.  Click **OK**.
8.  In the Features view, select **ISAPI Filters**.
    1.  Click **Add** to create a new ISAPI filter.
    2.  Set the filter name to `Redirector`.
    3.  Set the Executable to `<ISAPI_HOME>\ISAPI\isapi_redirect.dll`.
    4.  Click **OK**.
9.  In the left navigation, select **Application Pools** to display the available application pools.
    1.  Select **DefaultAppPool**.
    2.  In the Actions list, under Edit Application Pool, select **Advanced Settings**.
        -   The Advanced Settings dialog is displayed.
    3.  In the General group, select **Enable 32-Bit Applications**.
    4.  Select **TRUE**, then **OK**.
10.  In the left navigation, expand **Sites** and select **Default Web Site**.
     -   If you've already created an application for use with Appian, select that website.
11.  With the Default Web Site selected, open the **ISAPI Filters** feature.
12.  Verify that the **Redirector** filter appears. If not, add it to the web site by completing the following:
     1.  Click **Add** to create a new ISAPI filter.
     2.  Set the filter name to `Redirector`.
     3.  Set **Executable** to `<ISAPI_HOME>\ISAPI\isapi_redirect.dll` and click **OK**.
13.  Create a virtual directory for the redirector.
     1.  Select the **Default Web Site** node in the left navigation.
     2.  On the Actions list, select **View Virtual Directories**.
     3.  On the Actions list, click **Add Virtual Directory**.
     4.  Type `Redirector` for the Alias.
     5.  Type `<ISAPI_HOME>\ISAPI` for the Physical Path.
     6.  Click **Test Settings** to verify that the necessary permissions are in place for the `Redirector` folder.
14.  Create a virtual directory for static content if not located in `<IIS_DOCUMENT_ROOT>` (**omit these steps if appian static content is located in `<IIS_DOCUMENT_ROOT>`**).
     1.  Select the **Default Web Site** node in the left navigation.
     2.  On the Actions list, select **View Virtual Directories**.
     3.  On the Actions list, click **Add Virtual Directory**.
     4.  Type `suite` in the **Alias** field.
     5.  Type the directory where the static content is located (up to and including 'suite') for the **Physical Path**.
     6.  Click **OK**.
15.  Turn off access to the Appian WEB-INF directory from the web server.
     1.  In the Features view, select the **Request Filtering** feature.
     2.  Under the **URL** tab, select **Deny Sequence…**.
     3.  Enter `WEB-INF` in the **Deny Sequence** textbox.
     4.  Click **OK**.
     5.  Restart IIS by running the command prompt as an Administrator and entering `iisreset`.
     6.  Test the filtering by attempting to navigate a browser to: `http://<SERVER_NAME>/suite/WEB-INF/web.xml`. Access should be denied.
16.  Ensure that static content compression is turned on to improve performance.
     1.  In the Features view, select the **Compression** feature.
     2.  Make sure the **Enable static content compression** checkbox is checked.
     3.  Hit **"Apply"** under the Actions if the checkbox had to be selected.
17.  (Optional) Redirect `http://<SERVER_NAME>` to the Appian login page by completing the following:
     1.  Create a text file named `index.htm` in the `<IIS_DOCUMENT_ROOT>` directory.
     2.  Paste the following HTML into your `index.htm` file.

         ```
         1
         2
         3
         4
         5
         6
         <html>
         <head>
         <title>Appian</title>
         <META HTTP-EQUIV="Refresh" CONTENT="0; URL=/suite">
         </head>
         </html>
         ```

     3.  When the redirect is in place, requests sent to `http://<SERVER_NAME>` are redirected to the Appian start page.

## Set up static content site

This site is used to serve the static content domain. The Host name in the bindings must be `<WEB_SERVER_STATIC_HOST>`. This name should agree with the Host name part of the value you configure for conf.suite.STATIC\_SERVER\_AND\_PORT in custom.properties.

1.  In the left navigation, right-click on **Sites** and select "Add Web Site…".
    1.  Set the **Site name** to `AppianStatic`.
    2.  Set the **Application pool** to `DefaultAppPool`.
    3.  Set **Physical path** to `<IIS_DOCUMENT_ROOT>`.
        -   If another directory is chosen, then a virtual directory mapping will need to be created in step 5.
    4.  In the **Binding** section, set the **Host name** field to `<WEB_SERVER_STATIC_HOST>`. Also select an **SSL certificate** that matches `<WEB_SERVER_STATIC_HOST>`.
    5.  Click **OK**.
2.  With the AppianStatic Site selected, open the **ISAPI Filters** feature.
3.  Verify that the **Redirector** filter appears. If not, add it to the web site by completing the following:
    1.  Click **Add** to create a new ISAPI filter.
    2.  Set the filter name to `Redirector`.
    3.  Set **Executable** to `<ISAPI_HOME>\ISAPI\isapi_redirect.dll` and click **OK**.
4.  Create a virtual directory for the redirector.
    1.  Select the **AppianStatic** node in the left navigation.
    2.  On the Actions list, select **View Virtual Directories**.
    3.  On the Actions list, click **Add Virtual Directory**.
    4.  Type `Redirector` for the Alias.
    5.  Type `<ISAPI_HOME>\ISAPI` for the Physical Path.
    6.  Click **Test Settings** to verify that the necessary permissions are in place for the `Redirector` folder.
5.  Create a virtual directory for the `suite` path if the **AppianStatic** Site's physical path is different than `<IIS_DOCUMENT_ROOT>` (**omit these steps if the site's physical path is `<IIS_DOCUMENT_ROOT>`**).
    1.  Select the **AppianStatic** node in the left navigation.
    2.  On the Actions list, select **View Virtual Directories**.
    3.  On the Actions list, click **Add Virtual Directory**.
    4.  Type `suite` in the **Alias** field.
    5.  Type the directory where the static content is located (up to and including 'suite') for the **Physical Path**.
    6.  Click **OK**.

## Set up dynamic content site

This site is used to serve the dynamic content domain. The Host name in the bindings must be `<WEB_SERVER_DYNAMIC_HOST>`. This name should agree with the Host name part of the value you configure for conf.suite.DYNAMIC\_SERVER\_AND\_PORT in custom.properties.

1.  In the left navigation, right-click on **Sites** and select "Add Web Site…"
    1.  Set the **Site name** to `AppianDynamic`.
    2.  Set the **Application pool** to `DefaultAppPool`.
    3.  Set **Physical path** to `<IIS_DOCUMENT_ROOT>`.
        -   If another directory is chosen, then a virtual directory mapping will need to be created in step 5.
    4.  In the **Binding** section, set the **Host name** field to `<WEB_SERVER_DYNAMIC_HOST>`. Also select an **SSL certificate** that matches `<WEB_SERVER_DYNAMIC_HOST>`.
    5.  Click **OK**.
2.  With the AppianDynamic Site selected, open the **ISAPI Filters** feature.
3.  Verify that the **Redirector** filter appears. If not, add it to the web site by completing the following:
    1.  Click **Add** to create a new ISAPI filter.
    2.  Set the filter name to `Redirector`.
    3.  Set **Executable** to `<ISAPI_HOME>\ISAPI\isapi_redirect.dll` and click **OK**.
4.  Create a virtual directory for the redirector.
    1.  Select the **AppianDynamic** node in the left navigation.
    2.  On the Actions list, select **View Virtual Directories**.
    3.  On the Actions list, click **Add Virtual Directory**.
    4.  Type `Redirector` for the Alias.
    5.  Type `<ISAPI_HOME>\ISAPI` for the Physical Path.
    6.  Click **Test Settings** to verify that the necessary permissions are in place for the `Redirector` folder.
5.  Create a virtual directory for the `suite` path if the **AppianDynamic** Site's physical path is different than `<IIS_DOCUMENT_ROOT>` (**omit these steps if the site's physical path is `<IIS_DOCUMENT_ROOT>`**).
    1.  Select the **AppianDynamic** node in the left navigation.
    2.  On the Actions list, select **View Virtual Directories**.
    3.  On the Actions list, click **Add Virtual Directory**.
    4.  Type `suite` in the **Alias** field.
    5.  Type the directory where the **static** content is located (up to and including 'suite') for the **Physical Path**.
    6.  Click **OK**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...