---
source_url: https://docs.appian.com/suite/help/25.3/Running_Automated_Tests_on_Expression_Rules_with_Jenkins.html
original_path: Running_Automated_Tests_on_Expression_Rules_with_Jenkins.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Running Automated Tests on Expression Rules with Jenkins

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides instructions for setting up automated testing with a Jenkins project that can run a test of all expression rules in an Appian system ("system test"), or select Appian applications ("application test"). For information on how automated testing works in Appian, see [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html).

Appian provides a series of smart services and functions to execute tests on expression rules for specific applications or an entire Appian system.

In order to use these smart services and functions from outside of Appian, you can create web APIs and call them from other systems such as Jenkins to integrate testing of Appian into your overall testing strategy.

This document will walk you through a series of steps to set up automated testing of expression rules using Jenkins as a Continuous Integration (CI) system.

**Tip:**  Although this article describes Appian testing with Jenkins. You can follow similar steps to integrate it with the continuous integration tool of your choice, such as [Bamboo](https://www.atlassian.com/software/bamboo/) and [TeamCity](https://www.jetbrains.com/teamcity/).

## Requirements

1.  **Linux environment**. This article was created in a Linux environment, and the commands used in the examples are Linux commands. While the commands are similar to those that might be used in a Windows environment, be sure to adjust accordingly.
2.  A **text editor** in the server where Jenkins is to be installed. In Linux, you can use [vim](https://www.fprintf.net/vimCheatSheet.html).
3.  A **cURL utility** installed. This is needed if you want to test the web APIs created in this article via terminal or command window. See [cURL](https://curl.se/download.html) site for a list of different implementations.
4.  **Familiarity with testing frameworks**. We recommend you have at least some familiarity with the [JUnit](https://junit.org/) framework.

## Install Jenkins

Follow the instructions in the [Installing Jenkins](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins)page on Jenkins’ official site. Instructions are maintained and updated by this vendor on a regular basis.

If you are using Windows OS, you can find the installer [here](https://www.jenkins.io/download/).

## Configure Jenkins

Once Jenkins is installed, you will need to download and install _Gradle_, as well as a few Jenkins plugins.

### Jenkins plugins installation

You will need the following Jenkins plugins:

-   **Gradle Plugin**: This plugin makes it possible to invoke Gradle build script as the main build step.
-   **Groovy Plugin**: This plugin allows you to configure a Groovy installation on your Jenkins system.
-   **JUnit Plugin**: Allows JUnit-format test results to be published.
-   **Green Balls Plugin (optional)**: Changes Jenkins to use green balls instead of blue for successful builds. Installing this plugin is optional.

#### Steps to install or update plugins

1.  Open a web browser and go to your Jenkins' Home Page URL.
2.  From the left-hand pane, click **Manage Jenkins**.
3.  From the **Manage Jenkins** page, click **Manage Plugins**.
4.  From the **Manage Plugins** page, click the **Available** tab to show a list of the available plugins.
5.  Select the plugin you wish to install from the list, then click **Install without restart**.
    -   You can search for plugins by entering their name in the **Filter** search box, located in the upper-right corner of the page.
    -   The **Available** tab will only show those plugins that haven’t been installed in your system.
    -   If the list doesn’t show any plugins matching the name entered, switch to the **Updates** tab to find updates for plugins already installed in your system.
6.  Once you get a `Success` message for the plugin on the **Installing Plugins/Upgrades** page, click **Manage Plugins** from the left-hand pane.
7.  Repeat steps **4** through **6** until all plugins listed in the [section above](#jenkins-plugins-installation) are installed.

### Steps to add and configure Gradle in Jenkins

Gradle is an open source build automation system. It uses a Groovy-based domain-specific language (DSL) used in one of the scripts in this article.

1.  Open a web browser and go to your Jenkins' Home Page URL.
2.  From the left-hand pane, click **Manage Jenkins**.
3.  Click **Configure System**.
4.  In the **Gradle** section, click **Add Gradle**.
5.  Enter `Gradle 2.10` (or latest available version) in the **Gradle name** field.
6.  Select the **Install automatically** checkbox.
7.  From the **Version** dropdown, select **Gradle 2.10** (or latest available version).
8.  Click **Add Installer**, then select the **Install from Gradle.org** option
9.  Click **Save**.

## Create a new Jenkins job to start an applications or system test

In order to execute an applications or system test, you need to configure a new _Freestyle Project_ in Jenkins. This project will call a Gradle script that performs the following actions:

-   **Starts a system or applications job by calling a web API**. This will return a _test-run ID_ which can be used to poll for the results of the test.
-   **Checks for test status**. This will return the status of a test to indicate whether the test is in progress, or complete.
-   **Fetch test results**. This will return a `testRunResult` CDT containing the results of the test run.
-   **Save test results in JUnit format**. Because Jenkins needs to display the results of the test, these test results need to be saved in a format that Jenkins understands.

### Steps to create the new Jenkins job

1.  Open a web browser and go to your Jenkins' Home Page URL.
2.  From the left-hand pane, click **New Item**.
3.  Enter `SystemTest` or `ApplicationTest` (whichever is appropriate) in the **Item Name** field.
4.  Select **Freestyle project**.
5.  Click **OK**, then click **Save**.
6.  From the left side menu, click **Build Now**. This will create a new workspace in Jenkins, which is where you will configure:
    -   Gradle script to execute the system test
    -   an XSLT file to transform the `TestRunResult` CDT into JUnit format

## Create web APIs to start tests from Jenkins

Before you can create a Groovy script that calls web services in Appian, you need to create a few web APIs first.

Appian provides the following smart services and functions so you can use them from interfaces, process models, or web APIs:

-   [Start Rule Tests (All) - Smart Service](Start_Rule_Tests_All_Smart_Service.html)
-   [Start Rule Tests (Applications) - Smart Service](Start_Rule_Tests_Applications_Smart_Service.html)
-   [Expression Rules Testing Functions](Expression_Rule_Testing_Functions.html)

In this article, you will create a new application titled "Continuous\_Integration," which will contain four new web APIs to (1) start a test on all expression rules in the system, (2) start a test on expression rules in selected applications, (3) check the status of a test run, and (4) fetch the results of a test run.

### Create a new Appian application

1.  In a web browser, enter the URL of your Appian environment.
2.  In the [**Applications** view](applications-view.html), click **\+ New Application**.
3.  In the **Create New Application** dialog, enter `Continuous_Integration` in the **Name** field.
4.  Click **CREATE**. The **Continuous\_Integration** application will now appear in the applications list.
5.  In the applications list, click **Continuous\_Integration**. The Continuous Integration application opens.
6.  In the navigation pane, click **Build**. The **Build** view displays. You'll be performing a number of the following steps in this view.

### Create web API to start a test run for all expression rules in a system

Now you will create a writeable API that will start a test run on all expression rules in an Appian system. To do so, open the **Continuous\_Integration** application we created in a previous section (if it's not already open), and follow these steps:

1.  In the **Build** view, click **NEW**, then select **Web API** from the menu.
2.  In the **Create Web API** dialog, enter `ciStartRuleTestsAll` in the **Name** field.
3.  From the **HTTP Method** dropdown, select **POST**.
4.  Enter `startRuleTestsAll` in the **Endpoint** field.
5.  Click **Create & Edit**.
6.  On the **Choose a Template to Begin** dialog, click **Close**.
7.  Enter the following expression in the editor:

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
    a!startRuleTestsAll(
       onSuccess: a!httpResponse(
        statusCode: 200,
        body: fv!testRunId
      ),
      onError: a!httpResponse(
        statusCode: 500,
        body: "An error occurred when calling a!startRuleTestsAll"
      )
    )
    ```

8.  Click **SAVE**.

You have now created a web API to create a new test run for all expression rules in a system. You should now be able to use the following Web API from your Jenkins script: `https://[Appian Site]/suite/webapi/startRuleTestsAll`

Where `[Appian Site]` is the name of your site. A test-run ID will be returned when calling the `startRuleTestsAll` web API. You can use this test-run ID when querying the status of a test run, or when fetching the results of a test run.

### Create web API to start a test run for all expression rules in selected applications

In order to create this API, you will first need to define the applications that you want to test and create a new constant of type `Application`. To do so, open the **Continuous\_Integration** application we created in a previous section (if it's not already open), and follow these steps:

1.  In the **Build** view, click **NEW**, then select **Constant** from the menu.
2.  In the **Name** field, enter `APPLICATIONS_TO_TEST` as the name of the constant.
3.  From the **Type** dropdown list, select `Application`.
4.  If you want to test multiple applications, select the **Array (multiple values)** checkbox.
5.  In the **Value** field, enter the name of the application(s) you want to test.
6.  In the **Save In** field, enter the name of the folder where the constant should be saved, or click the **Create New Rule Folder** link to create a new folder.
7.  Click **CREATE**.

Once the application constant is created, follow these instructions to create a writeable API, that will start a test on all expression rules in selected applications:

1.  In the **Build** view, click **NEW**, then select **Web API** from the menu.
2.  In the **Create Web API** dialog enter `ciStartRuleTestsApplications` in the **Name** field.
3.  From the **HTTP Method** dropdown, select **POST**.
4.  Enter `startRuleTestsApplications` in the **Endpoint** field.
5.  Click **Create & Edit**.
6.  In the **Choose a Template to Begin** dialog, click **Close**.
7.  Enter the following expression in the editor. Notice that we are using the `APPLICATIONS_TO_TEST` constant to specify the application(s) that should be tested:

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
    a!startRuleTestsApplications(
       applications: cons!APPLICATIONS_TO_TEST,
       onSuccess: a!httpResponse(
        statusCode: 200,
          body: fv!testRunId
      ),
      onError: a!httpResponse(
        statusCode: 500,
        body: concat("Error message: " , fv!error)
      )
    )
    ```

8.  Click **SAVE**.

You have now created a web API to start a new test run for all expression rules in the selected application(s). You should now be able to use the following Web API from your Jenkins script: `https://[Appian Site]/suite/webapi/startRuleTestsApplications`

Where `[Appian Site]` is the name of your site. A test-run ID will be returned when calling the startRuleTestsApplications web API. You can use this test-run ID when querying the status of a test run, or when fetching the results of a test run.

### Create web API to check the status of a test run

1.  In the **Build** view, click **NEW**, then select **Web API** from the menu.
2.  In the **Create Web API** dialog, enter `ciTestRunStatusForId` in the **Name** field.
3.  Enter `testRunStatusForId` in the **Endpoint** dialog.
4.  Click **Create & Edit**.
5.  In the **Choose a Template to Begin** dialog, select the **Hello World** template.
6.  Update the value of the `body` parameter from "Hello World" to: `a!testRunStatusForId(http!request.queryParameters.id)`
    -   An error will be displayed as the _id_ query parameter doesn’t exist. Disregard this error.
7.  Click **SAVE**.

You have now created a Web API to query the status of a test execution. You should now be able to use the following Web API from your Jenkins script: `https://[Appian Site]/suite/webapi/testRunStatusForId?id=[testRunId]`

Where `[Appian Site]` is the name of your site, and `[testRunId]` is the id returned by the startRuleTestsAll or the startRuleTestsApplications web APIs.

### Create web API to fetch test results

1.  In the **Build** view, click **NEW**, then select **Web API** from the menu.
2.  In the **Create Web API** dialog, enter `ciTestRunResultForId`in the **Name** field.
3.  Enter `testRunResultForId` in the **Endpoint** dialog.
4.  Click **Create & Edit**.
5.  In the **Choose a Template to Begin** dialog, select the **Hello World** template.
6.  Update the value of the `body` parameter from "Hello World" to:

    ```
    1
    2
    3
    toxml(
        a!testRunResultForId(http!request.queryParameters.id)
    )
    ```

7.  An error will be displayed as the _id_ query parameter doesn’t exist. Disregard this error.
8.  Click **SAVE**.

You have now created a Web API to retrieve test results in XML format. You should now be able to use the following web API from your Jenkins script: `https://[Appian Site]/suite/webapi/testRunResultForId?id=[testRunId]`

Where `[Appian Site]` is the name of your site, and `[testRunId]` is the id returned by the startRuleTestsAll or the startRuleTestsApplications web APIs.

### Testing your new web apis

The web APIs created in previous sections fall in two different categories.

1) Using the POST HTTP Method:

-   `startRuleTestsAll`
-   `startRuleTestsApplications`

2) Using the GET HTTP Method:

-   `testRunStatusForId`
-   `testRunResultForId`

To test web APIs with the POST method from a terminal, try the following cURL command: `curl - X POST -u [username]:[password] https://[Appian Site]/suite/webapi/[startTest API]`

Where:

-   _\[Appian Site\]_ is the name of your site
-   _\[username\]_ and _\[password\]_ are the credentials used to log into Appian
-   _\[startTest API\]_ is the name of the web API endpoint created using POST: `startRuleTestsAll`, or `startRuleTestsApplications`

To test web APIs with the GET method from a terminal, try the following cURL command: `curl -u [username]:[password] https://[Appian Site]/suite/webapi/[Get Web API]?id=[testRunId]`

Where:

-   _\[Appian Site\]_ is the name of your site
-   _\[username\]_ and _\[password\]_ are the credentials used to log into Appian
-   _\[Get Web API\]_ is the name of the web API created using GET: `testRunStatusForId`, or `testRunResultForId`
-   _\[testRunId\]_ is the test-run ID returned by either the `startRuleTestsAll`, or `startRuleTestsApplications` web APIs.

## Create a Gradle script to start a system or application test

In this section you will create a new XSLT file in the Jenkins workspace created in the [Create a New Jenkins Job to Start an Application or System Test](#create-a-new-jenkins-job-to-start-an-applications-or-system-test) section. The XSLT file will transform the XML representation of the _TestRunResult_ CDT into a _JUnit_ format.

### Convert test results into JUnit Format

Make sure the OS account you use is the same that Jenkins uses so there are no security or permission issues when you execute your script.

1.  Open a terminal in Linux terminal (or a Windows command prompt).
2.  Navigate to the folder containing the workspace for your Jenkins job.
    -   For example, in Linux: `cd /var/lib/jenkins/jobs/SystemTest/workspace/`
    -   For example, in Windows: `jenkins\workspace\SystemTest`
3.  Create a new **convertToJunit.xsl** file. For example:
    -   Use `sudo -u jenkins -s`
    -   then `vi convertToJunit.xsl`
4.  Copy the following XSL definition to your text editor.

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
    122
    123
    124
    125
    126
    127
    128
    129
    130
    131
    132
    133
    134
    135
    136
    137
    138
    139
    140
    141
    142
    143
    144
    145
    <?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:a="http://www.appian.com/ae/types/2009" version="1.0" exclude-result-prefixes="a">
       <xsl:template match="/">
          <testsuites>
             <xsl:attribute name="name">
                <xsl:value-of select="/a:TestRunResult/a:type" />
             </xsl:attribute>
             <xsl:attribute name="failures">
                <xsl:value-of select="/a:TestRunResult/a:failureCount" />
             </xsl:attribute>
             <xsl:attribute name="errors">
                <xsl:value-of select="/a:TestRunResult/a:errorCount" />
             </xsl:attribute>
             <xsl:attribute name="tests">
                <xsl:value-of select="/a:TestRunResult/a:testCount" />
             </xsl:attribute>
             <xsl:attribute name="time">
                <xsl:value-of select="/a:TestRunResult/a:totalElapsedTime" />
             </xsl:attribute>
             <xsl:apply-templates />
          </testsuites>
       </xsl:template>
       <xsl:template match="a:type" />
       <xsl:template match="a:failureCount" />
       <xsl:template match="a:errorCount" />
       <xsl:template match="a:name" />
       <xsl:template match="a:testCount" />
       <xsl:template match="a:totalExecutionTime" />
       <xsl:template match="a:totalElapsedTime" />
       <xsl:template match="a:passCount" />
       <xsl:template match="a:id" />
       <xsl:template match="a:executedBy" />
       <xsl:template match="a:queueTime" />
       <xsl:template match="a:startTime" />
       <xsl:template match="a:endTime" />
       <xsl:template match="a:status" />
       <xsl:template match="a:applicationTestResults">
          <testsuite>
             <xsl:attribute name="name">
                <xsl:value-of select="a:name" />
             </xsl:attribute>
             <xsl:attribute name="tests">
                <xsl:value-of select="a:testCount" />
             </xsl:attribute>
             <xsl:attribute name="errors">
                <xsl:value-of select="a:errorCount" />
             </xsl:attribute>
             <xsl:attribute name="failures">
                <xsl:value-of select="a:failureCount" />
             </xsl:attribute>
             <xsl:attribute name="time">
                <xsl:value-of select="a:totalExecutionTime" />
             </xsl:attribute>
             <xsl:choose>
                <xsl:when test="a:errorMessage!=''">
                   <system-err>
                      <xsl:value-of select="a:errorMessage" />
                   </system-err>
                </xsl:when>
                <xsl:otherwise>
                   <xsl:for-each select="a:problemObjectsTestResult">
                      <xsl:for-each select="a:testCasesResult">
                         <xsl:if test="a:name!=''">
                            <testcase>
                               <xsl:attribute name="classname">
                                  <xsl:value-of select="../a:name" />
                               </xsl:attribute>
                               <xsl:choose>
                                  <xsl:when test="a:name!=''">
                                     <xsl:attribute name="name">
                                        <xsl:value-of select="a:name" />
                                     </xsl:attribute>
                                  </xsl:when>
                                  <xsl:otherwise>
                                     <xsl:attribute name="name">NO_NAME</xsl:attribute>
                                  </xsl:otherwise>
                               </xsl:choose>
                               <xsl:attribute name="time">
                                  <xsl:value-of select="a:executionTime" />
                               </xsl:attribute>
                               <xsl:attribute name="status">
                                  <xsl:value-of select="a:status" />
                               </xsl:attribute>
                               <xsl:choose>
                                  <xsl:when test="a:status='ERROR' or a:status='TIMEOUT'">
                                     <error>
                                        <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
                                        <xsl:value-of select="a:errorMessage" />
                                        <xsl:text />
                                        <xsl:text>&#xa;</xsl:text>
                                        <xsl:text>Expression Rule:</xsl:text>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="../a:url" />
                                        <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
                                     </error>
                                  </xsl:when>
                                  <xsl:when test="a:status='FAIL'">
                                     <failure>
                                        <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
                                        <xsl:value-of select="a:failureMessage" />
                                        <xsl:text />
                                        <xsl:text>&#xa;</xsl:text>
                                        <xsl:text>Expression Rule:</xsl:text>
                                        <xsl:text />
                                        <xsl:value-of select="../a:url" />
                                        <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
                                     </failure>
                                  </xsl:when>
                               </xsl:choose>
                            </testcase>
                         </xsl:if>
                      </xsl:for-each>
                   </xsl:for-each>
                   <xsl:for-each select="a:passObjectsTestResult">
                      <xsl:for-each select="a:testCasesResult">
                         <xsl:if test="a:name!=''">
                            <testcase>
                               <xsl:attribute name="classname">
                                  <xsl:value-of select="../a:name" />
                               </xsl:attribute>
                               <xsl:choose>
                                  <xsl:when test="a:name!=''">
                                     <xsl:attribute name="name">
                                        <xsl:value-of select="a:name" />
                                     </xsl:attribute>
                                  </xsl:when>
                                  <xsl:otherwise>
                                     <xsl:attribute name="name">NO_NAME</xsl:attribute>
                                  </xsl:otherwise>
                               </xsl:choose>
                               <xsl:attribute name="time">
                                  <xsl:value-of select="a:executionTime" />
                               </xsl:attribute>
                               <xsl:attribute name="status">
                                  <xsl:value-of select="a:status" />
                               </xsl:attribute>
                            </testcase>
                         </xsl:if>
                      </xsl:for-each>
                   </xsl:for-each>
                </xsl:otherwise>
             </xsl:choose>
          </testsuite>
       </xsl:template>
    </xsl:stylesheet>
    ```

5.  Save your changes

For more details on reading test results, see [Parsing Batch Test Results for Expression Rules](Parsing_Batch_Test_Results_for_Expression_Rules.html).

File names are case-sensitive so make sure to use the same name consistently throughout your setup.

### Create a gradle.properties file

This file will contain the credentials needed to sign in to your Appian system.

The username (`appianUserName`) is in plain text, whereas the password (`appianPasswordEncoded`) is encoded to add an additional layer of security:

1.  Create a new _gradle.properties_ file in the workspace folder.
    -   In Linux: `/var/lib/jenkins/jobs/SystemTest/workspace/`
    -   In Windows: `[Jenkins Folder]\workspace\SystemTest`
2.  Copy the following snippet inside the gradle.properties file.

    ```
    1
    2
    appianUserName: [username]
    appianPasswordEncoded: [password]
    ```

3.  Replace _\[username\]_ with the actual username for the Appian account to be used by Jenkins.
4.  Encode your password using Base 64. For example:
    -   In a web browser, go to [https://www.base64decode.org/](https://www.base64decode.org/)

    -   Click the **Encode** icon.

    -   Enter your password in the first textbox.

    -   Copy the encoded password from the second textbox.

5.  Replace _\[password\]_ with the encoded password from the previous step.
6.  Save the file.

### Create a Gradle script

The next step is to create a Gradle script that pulls of the pieces together by:

-   Calling the various web APIs to start a test, poll for test results, and fetch test results.
-   Formatting the test results as a _JUnit_ XML file.

The following instructions describe how to create a _Gradle_ script from a _Linux_ environment. However, the steps are similar for a _Windows_ system:

1.  Create a new **build.gradle** file in the workspace folder.
    -   In Linux: `/var/lib/jenkins/jobs/SystemTest/workspace/`
    -   In Windows: `[Jenkins Folder]\workspace\SystemTest`
    -   For example: `touch build.gradle`
2.  Open the file in a text editor.
    -   For example: `vim build.gradle`
3.  Copy one of the following scripts inside the _build.gradle_ file.
    -   For a system test:

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
         buildscript {
            repositories {
               jcenter()
            }
            dependencies {
              classpath 'org.codehaus.groovy.modules.http-builder:http-builder:0.7.2'
            }
         }

         import groovyx.net.http.RESTClient
         import groovyx.net.http.HTTPBuilder
         import groovyx.net.http.EncoderRegistry
         import static groovyx.net.http.ContentType.TEXT
         import static groovyx.net.http.ContentType.URLENC
         import org.apache.http.client.methods.HttpGet
         import org.apache.http.HttpRequestInterceptor
         import org.apache.http.protocol.HttpContext
         import org.apache.http.HttpRequest
         import org.apache.http.HttpResponse
         import javax.xml.transform.*
         import javax.xml.transform.stream.*
         import org.apache.commons.codec.binary.Base64

         task runSystemTest << {
             // Define appianPasswordEncoded in gradle.properties
             // as a base64-encoded string
             def appianPassword = new String(appianPasswordEncoded.decodeBase64())
             // The URL passed in by Jenkins
             def baseURL = "$systemURL"

             def startSystemURL = "/suite/webapi/startRuleTestsAll"
             def testStatusURL = "/suite/webapi/testRunStatusForId"
             def fetchTestResultsURL =  "/suite/webapi/testRunResultForId"

             def restClient = new RESTClient(baseURL)
             restClient.client.addRequestInterceptor(new HttpRequestInterceptor() {
               void process(HttpRequest httpRequest, HttpContext httpContext) {
                 httpRequest.addHeader('Authorization',
                     'Basic ' + (appianUserName + ':'
             +appianPassword).bytes.encodeBase64().toString())
               }
             })

             // --- Start System Test ---
             println "Start System Test"
             def response = restClient.post(path: startSystemURL)

             if (response.status == 200) {
               def testRunId = response.data.text
               println "Test-run ID: " + testRunId

               //--- Check test run status evsery minute ---
               while(restClient.get(path: testStatusURL, query: [id:testRunId]).data.text == 'IN PROGRESS') {
                 sleep(60000)
                 println "Waiting for test results..."
               }

               // Fetch test results
               response = restClient.get(path: fetchTestResultsURL, query: [id: testRunId])
               def testRunResults = response.data.text

               //get a reference to our xslt
               def xslt= file("convertToJunit.xsl").text

              // Create transformer
               def transformer = TransformerFactory.newInstance().newTransformer(new StreamSource(new StringReader(xslt)))

               // Set output file
               def finalXML = new FileOutputStream("testResult" + System.currentTimeMillis() + ".xml")

               // Perform transformation
               transformer.transform(new StreamSource(new StringReader(testRunResults)), new StreamResult(finalXML))
             }
             println "System Test Completed"
         }
        ```

    -   For an application(s) test:

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
         buildscript {
            repositories {
               jcenter()
            }
            dependencies {
              classpath 'org.codehaus.groovy.modules.http-builder:http-builder:0.7.2'
            }
         }

         import groovyx.net.http.RESTClient
         import groovyx.net.http.HTTPBuilder
         import groovyx.net.http.EncoderRegistry
         import static groovyx.net.http.ContentType.TEXT
         import static groovyx.net.http.ContentType.URLENC
         import org.apache.http.client.methods.HttpGet
         import org.apache.http.HttpRequestInterceptor
         import org.apache.http.protocol.HttpContext
         import org.apache.http.HttpRequest
         import org.apache.http.HttpResponse
         import javax.xml.transform.*
         import javax.xml.transform.stream.*
         import org.apache.commons.codec.binary.Base64

         task runApplicationTest << {
             // Define appianPasswordEncoded in gradle.properties
             // as a base64-encoded string
             def appianPassword = new String(appianPasswordEncoded.decodeBase64())
             // The URL passed in by Jenkins
             def baseURL = "$siteUrl"

             def startAppURL = "/suite/webapi/startRuleTestsApplications"
             def testStatusURL = "/suite/webapi/testRunStatusForId"
             def fetchTestResultsURL =  "/suite/webapi/testRunResultForId"

             def restClient = new RESTClient(baseURL)
             restClient.client.addRequestInterceptor(new HttpRequestInterceptor() {
               void process(HttpRequest httpRequest, HttpContext httpContext) {
                 httpRequest.addHeader('Authorization',
                     'Basic ' + (appianUserName + ':'
             +appianPassword).bytes.encodeBase64().toString())
               }
             })

             // --- Start Application Test ---
             println "Start System Test"
             def response = restClient.post(path: startAppURL)

             if (response.status == 200) {
               def testRunId = response.data.text
               println "Test-run ID: " + testRunId

               //--- Check test run status every minute ---
               while(restClient.get(path: testStatusURL, query: [id:testRunId]).data.text == 'IN PROGRESS') {
                 sleep(60000)
                 println "Waiting for test results..."
               }

               // Fetch test results
               response = restClient.get(path: fetchTestResultsURL, query: [id: testRunId])
               def testRunResults = response.data.text

               //get a reference to our xslt
               def xslt= file("convertToJunit.xsl").text

              // Create transformer
               def transformer = TransformerFactory.newInstance().newTransformer(new StreamSource(new StringReader(xslt)))

               // Set output file
               def finalXML = new FileOutputStream("testResult" + System.currentTimeMillis() + ".xml")

               // Perform transformation
               transformer.transform(new StreamSource(new StringReader(testRunResults)), new StreamResult(finalXML))
             }
             println "System Test Completed"
         }
        ```

4.  Save the _buld.gradle_ file

## Finish the Jenkins job setup

1.  In a web browser, enter the URL for your Jenkins' Home Page. For example: _https://\[jenkins site\]_
2.  In the center pane, either:
    -   Click on the **SystemTest** job.
    -   Click on the **ApplicationTest** job.
3.  From the left-hand pane, click **Configure**.
4.  In the **configuration** section, go to the **Build** section, then click **Add build step**.
    -   This will display additional options.
5.  Select the **Invoke Gradle script** option from the menu being displayed.
6.  In the **Gradle Version** field, select `Gradle 2.10` from the dropdown list.
    -   The value you select is the name of the Gradle installation configured in the _[Steps\_to\_Add\_and\_Configure\_Gradle\_in\_Jenkins](#steps-to-add-and-configure-gradle-in-jenkins)_ section.
7.  Enter the following script in the **Tasks** field, and replace _\[Appian Site\]_ with the name of your site. For example: _https://acme.appian.com_
    -   To perform a system test: `runSystemTest -PsystemURL=[Appian Site]`
    -   To perform an application(s) test: `runApplicationTest -PsiteUrl=[Appian Site]`
    -   Note: Replace `[Appian Site]` with the name of your site. For example: `runApplicationTest -PsiteURL=https://acme.appian.com`
8.  In the **Post-build Actions** section, click **Add post-build action**, then select the **Publish JUnit test result report** menu option.
9.  On the **Test report XMLs** field, enter `*.xml`.
    -   This will allow _Jenkins_ to find the XML files being created in the [Create a Gradle script](#create-a-gradle-script) section.
    -   You may receive an error because there are no XML files in the folder. If that is the case, ignore this error
10.  Click **Save**.

## Start a system or application test from Jenkins

Once the gradle script is in place, you should be looking either at the _Project SystemTest_ or _ApplicationTest_ page after saving your changes.

1.  Click the **Build Now** link shown in the left-hand pane.
    -   This will start the system test you just configured.
    -   You should see that under the **Build History** section in the left-hand pane, there is a new job id indicating that your job is executing.
    -   After a few seconds you will see either a _green_ or _yellow_ icon indicating whether all your test cases passed, or at least one of them failed.
2.  In the left-hand pane, click the build number right under the **Build History** header to see the results of your test.
3.  In the center pane, click on the **Test Result** link to see a summary of your test.
    -   The **All Failed Tests** section will show the expression rules that require fixing.
4.  If you have failures, click the **plus icon**, to drill down and obtain additional details.
    -   A link to the expression rule is provided as part of the **Stack Trace** so you can go directly to it and fix the errors in your test cases

You should see a screenshot similar to the one below, which shows the results of a test run in _Jenkins_.

In this example, there are 438 test cases (see top right corner) , out of which there are 32 test failures (see red bar on the top left and the message above it).

The test cases which failed to execute are displayed in the _All Failed Tests_ section.

![](./images/Testing_of_Rules_from_CI.png)

## Troubleshooting configuration errors

If you are unfamiliar with _Jenkins_, you may find it difficult to troubleshoot some of the problems associated to configuring it.

To access the console output follow these steps:

1.  In a web browser, enter the URL of your _Jenkins_ site.
2.  In the center pane, click the link with the name of your project. For example: _SystemTest_.
3.  From the **Build History** list; which is displayed on the left pane, click on the latest build number.
4.  On the left-hand pane, click the **Console Output** link.
5.  The status of the build is displayed in the center pane. Read through the messages to identify whether something went wrong during the build process. The following table contains common configuration errors in _Jenkins_ as well as possible cause(s) and solution(s).

|
Error Description

 |

Possible Cause and Solution

 |
| --- | --- |
|

`Execution failed for task ':runSystemTest'. > Could not find property 'svcacct_username' on task ':runSystemTest'`

 |

Replace the \[svcacct\_username\] placeholder with the actual username in the build.gradle file. Note: If you receive a similar error for `svcacct_password`, replace it with the actual password for the service account.

 |
|

`ERROR: Publisher 'Publish JUnit test result report' failed: No test report files were found. Configuration error?`

 |

The Jenkins account doesn’t have execute privileges on the build.gradle file. Make sure execute privileges are granted in the file.

Alternatively, the convertToJunit.xsl file may have a syntax error and thus it can’t be used to parse the TestRunResult XML being passed in. Inspect the file to correct the error, or replace the contents with the existing file.

 |
|

`Execution failed for task ':runSystemTest'. > java.io.FileNotFoundException: convertToJunit.xsl (No such file or directory)`

 |

The convertToJunit.xsl file doesn’t exist. Make sure the name of your file matches this name. Remember name files are case-sensitive in Linux.

 |
|

`Task 'runSystemTest' not found in root project 'workspace'`

 |

Possible reasons:

-   The name of your function doesn’t match `runSystemTest`.
-   Either build.gradle or gradle.properties have a different name or are not located in the appropriate "workspace" folder.

Note: Strings are case-sensitive.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...