---
source_url: https://docs.appian.com/suite/help/25.3/health-check.html
original_path: health-check.html
version: "25.3"
title: "Health Check"
page_id: "health-check"
section: "What is Health Check?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Health Check

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Health Check is available in the [Admin Console](Appian_Administration_Console.html#health-check) and [MyAppian](insights_overview.html). Use MyAppian to request a Health Check analysis report, easily manage the results, and track historical trends over time.

## What is Health Check?

Health Check provides insights into application design patterns and performance risks in your environment. The insights are summarized in a report that includes links to suggestions for mitigating any identified risks.

Health Check is available to system administrators on any environment and is located in the [Admin Console](Appian_Administration_Console.html). To learn more about how to set up, schedule, and run Health Check, see the instructions [here](Appian_Administration_Console.html#health-check).

### Prerequisites

To set up, schedule, and run Health Check from the Admin Console, the following conditions must be met:

-   The Appian Health Check plug-in must be uninstalled from all application servers. Appian will automatically uninstall the Health Check plug-in from your environment if it is detected during setup.
    -   **Note:** If you want to run Health Check using a Continuous Integration (CI) tool, such as Jenkins, you will need to [create a web API](Designing_Web_APIs.html) that uses [a!latestHealthCheck()](fnc_system_a_latesthealthcheck.html).
-   If you have a distributed Appian installation with multiple application servers, [shared logs](High_Availability_and_Distributed_Installations.html#shared-logs) must be configured.
-   You must have Health Check credentials for Appian Community. Your organization only needs one set of credentials, which can be used for multiple environments. You can request credentials by opening a [support case](https://forum.appian.com/suite/sites/myappian/page/support).

### Running Health Check

It is a best practice to schedule Health Check to run on each of your environments, and to have a member of your team regularly review the reports. Health Check reports highlight important information in different environments, providing feedback at each phase of your application development lifecycle.

When building your application, Health Check identifies design and configuration problems early on, when they are easiest and cheapest to fix. When testing your application, Health Check can pinpoint potential functional and performance risks. And when your application is in production, Health Check helps to monitor environment performance and infrastructure capacity trends over time.

**Caution:**  Running Health Check may increase your environment’s system load and degrade performance for users. Appian recommends running Health Check during non-business hours in a production or active environment. When scheduling Health Check, be sure to take into consideration business hours across time zones (if that applies).

## How it works

![/hc 3 step chevron.png](images/hc_3_step_chevron.png)

Each Health Check run consists of three steps: [data collection](#step-1-data-collection), [data review](#step-2-data-review), and [data analysis](#step-3-data-analysis). During each run, Health Check will:

1.  Collect information about your environment’s configurations and design, and generate a zip file.
2.  Allow system administrators to review and edit the contents of the zip file (optional).
3.  Upload the zip file to [Appian Community](https://community.appian.com/) for analysis, generate a Health Check report, and share the report with system administrators.

To run Health Check, you must first set it up in the [Admin Console](Appian_Administration_Console.html#health-check).

**Note:**  Data collection zip files uploaded to Appian Community for analysis are not shared with any third parties, and are not publicly visible.

### Step 1: Data collection

Data collection is the first step in each Health Check run. During data collection, Health Check generates a zip file of existing Appian logs, as well as information about application design patterns, configurations, and objects. This zip file is used in the data review and analysis steps described below. For more details about what type of information is collected, see [Health Check Data FAQ](health-check-data-faq.html).

The amount of time it takes for an environment to perform data collection will vary. However, it is important to note that the time is directly proportional to the number of applications and objects in the environment. The larger the environment, the longer data collection is likely to take. The [historical grid of your Health Check runs](Appian_Administration_Console.html#landing-page) can help you estimate how long data collection will take on average for your environment.

### Step 2: Data review

Data review is an optional step that allows system administrators to download the generated data collection zip file and review its contents. System administrators can remove any logs they don’t want to share with Appian and upload a new zip file (with the same structure) for analysis. Removing log files will reduce the scope of the Health Check analysis and may limit the findings provided in the report.

Note that if the data review step is not completed within 72 hours, the Health Check run is cancelled.

System administrators can opt to autoapprove the data review step and skip it for future runs by selecting the **Autoapprove this step for future runs** checkbox while a run is in progress.

![/hc enable autoapprove checkmark step2](images/hc_enable_autoapprove_checkmark_step2.png)

### Step 3: Data analysis

Support contacts can analyze Health Check runs on the **Health** tab in [MyAppian](insights_overview.html). You can look at findings by risk level, application, etc. In addition, you see trends and even can capture notes from your analysis directly in the application.

Alternatively, you can see your Health Check output using the [Health Check report](understanding-the-health-check-report.html). The **Health** tab in MyAppian provides you with a more complete analysis than the Health Check report, but the report does contain some information not currently available in MyAppian.

**Note:**  Generating your Health Check report may take a while (up to 24 hours). Take this into account when planning Health Check runs.

For more information on how Appian handles your Health Check data during analysis see the [Health Check Data FAQ](health-check-data-faq.html).

### Automatic upload

All Health Check runs include the [data collection](#step-1-data-collection), [data review](#step-2-data-review), and [data analysis](#step-3-data-analysis) steps described above. However, these steps may run automatically or require manual intervention, depending on how you configure your [Health Check Settings](Appian_Administration_Console.html#prodlink-healthCheckSettings).

Appian recommends enabling automatic upload to ensure that Health Check runs regularly, so that your team can focus on analyzing the report instead of managing the process.

When automatic upload is enabled, your environment will automatically upload the zip file generated during data collection to Appian Community for analysis. Once a Health Check report has been generated, an email will be sent to all members of the [Health Check Viewers](System_Groups.html#health-check-viewers) group. The report will be made available in the following places:

1.  Posted to members of the Health Check Viewers group on the environment’s News feed.
2.  Linked from the environment’s Health Check page in the Admin Console.

If you choose to not set up automatic upload, system administrators must download the data collection zip file from the Admin Console and manually [request an analysis](https://community.appian.com/p/request-health-check-analysis) on Appian Community. The Health Check report will then be emailed directly to the system administrator who uploaded the zip file to Community.

![/hc automatic upload](images/hc_automatic_upload.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...