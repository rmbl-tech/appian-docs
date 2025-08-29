---
source_url: https://docs.appian.com/suite/help/25.3/Cloud_Insights.html
original_path: Cloud_Insights.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Cloud Resources in MyAppian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

## Overview

Cloud Resources is a service available to Appian Cloud customers that enables them to view key metrics and configuration information for their cloud environments via the Health tab in [MyAppian](insights_overview.html).

To find Cloud Resources, go to the [HEALTH tab](https://forum.appian.com/suite/sites/myappian/page/health) in MyAppian and click **CLOUD RESOURCES**:

[![images/cloud_insights/health_tab.png](images/cloud_insights/health_tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img207)

[![](images/cloud_insights/health_tab.png)](#_)

## Metrics

The Metrics report allows Appian Cloud customers to easily view metrics for their active cloud environments.

[![images/cloud_insights/metrics.png](images/cloud_insights/metrics.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img208)

[![](images/cloud_insights/metrics.png)](#_)

Each series on a chart represents a single server for which the metric is independently collected. Each Appian Cloud environment can consist of one or more servers. Servers within an environment can be filtered out using the server dropdown after selecting an environment. Any set of environments can be saved as the default and will load automatically upon entering Cloud Resources.

You can see additional information for a metric, such as the metric definition and the significance of abnormal values, by clicking the **Show Metric Info** link above the metric chart.

[![images/cloud_insights/show_metric_info.png](images/cloud_insights/show_metric_info.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img209)

[![](images/cloud_insights/show_metric_info.png)](#_)

Most metrics will update on a 5 minute interval. However, certain metrics such as Average CPU Utilization will update around every 60 minutes. Historical data for metrics is available for the last 180 to 365 days depending on the metric and can be accessed by setting the **End Time** filter in the Metrics interface.

![gif of changing the end time for the graph](images/cloud_insights/set_end_time.gif)

Greater detail for each metric can be viewed by clicking and dragging on the chart either vertically or horizontally to zoom the chart into the selected window. Double-click the chart to reset the vertical or horizontal zoom to the original position. You can view values in the chart legend for each individual data point on the chart by hovering over the desired series with your mouse.

![gif of zooming in on a section of data in the graph](images/cloud_insights/zoom.gif)

## Environments

The Environments report provides Appian Cloud customers with easy access to configuration information for their cloud environments such as Appian release, region, and allocated resources.

[![images/cloud_insights/environments.png](images/cloud_insights/environments.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img210)

[![](images/cloud_insights/environments.png)](#_)

Each row in the grid represents a single server that belongs to a single Appian Cloud environment. Each cloud environment can consist of one or more servers. The grid can be filtered to contain only servers for one or more environments using the **Environments** dropdown.

## Connectivity

The **Cloud Environment Visualization** section allows customers to visualize the connections from their Appian Cloud instances to their external resources.

[![images/cloud_insights/connectivity.png](images/cloud_insights/connectivity.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img211)

[![](images/cloud_insights/connectivity.png)](#_)

A detailed breakdown of the information provided in the visualization can be found in [Cloud Environment Visualization](Cloud_Environment_Visualization.html).

The **VPN Configuration Details** section shows you the configurations used for VPN connections configured on your Appian Cloud instances. It also allows you to add or modify a VPN connection from your cloud instances if you do not have one previously configured. See [Self Service VPN Integration](Cloud_Self_Service_VPN.html).

[![images/cloud_insights/self_service_vpn.png](images/cloud_insights/self_service_vpn.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img212)

[![](images/cloud_insights/self_service_vpn.png)](#_)

## Certificates

The **Certificates** section allows customers to view and manage certificates associated with their Appian Cloud environments.

[![images/cloud_insights/certificate_management.png](images/cloud_insights/certificate_management.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img213)

[![](images/cloud_insights/certificate_management.png)](#_)

A detailed summary of the services provided by the certificates section can be found in [Manage Certificates in Appian Cloud](Self_Service_Certificate_Management_for_Appian_Cloud.html).

## Maintenance

The **Maintenance** section allows customers to view and manage maintenance windows associated with their Appian Cloud environments.

[![images/Customer_Managed_Maintenance_Windows/maintenance_grid.png](images/Customer_Managed_Maintenance_Windows/maintenance_grid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img214)

[![](images/Customer_Managed_Maintenance_Windows/maintenance_grid.png)](#_)

A detailed look into this section can be found in [Customer Managed Maintenance Windows](Customer_Managed_Maintenance_Windows.html).

## Frequently asked questions

### Who can access Cloud Resources data?

The Cloud Resources data for an environment is only visible to authorized technical support contacts for the account the environment belongs to. Users who do not belong to the account for the environment and are not support contacts for the account will not be able to access Cloud Resources. Users must also have access to MyAppian to view Cloud Resources.

### How can I grant a user access to Cloud Resources?

To grant a user access to Cloud Resources, an existing support contact should open a [support case](https://forum.appian.com/suite/sites/myappian/page/support) in MyAppian to request that the new user be added as a support contact. If the user does not already have access to MyAppian, you should request access to MyAppian for them as well.

### What browsers can I use with Cloud Resources?

Cloud Resources supports [all browsers supported by the Appian product](System_Requirements.html#web-browsers), however, we strongly recommend using either Google Chrome or Mozilla Firefox to ensure the best performance and experience.

### Can I view data for environments undergoing maintenance?

Data is not available for environments that are undergoing maintenance and it can take up to 2 hours after an environment is available for the data to appear in Cloud Resources.

### Does this replace Appian Cloud Monitoring for my environments?

Cloud Resources does not replace Appian Cloud Monitoring. Appian Support will continue to monitor your environments and notify you of any issues.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...