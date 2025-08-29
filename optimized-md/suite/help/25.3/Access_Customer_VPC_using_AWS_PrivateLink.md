---
source_url: https://docs.appian.com/suite/help/25.3/Access_Customer_VPC_using_AWS_PrivateLink.html
original_path: Access_Customer_VPC_using_AWS_PrivateLink.html
version: "25.3"
title: "Configuring Outbound Access over AWS PrivateLink"
page_id: "Access_Customer_VPC_using_AWS_PrivateLink"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Outbound Access over AWS PrivateLink

 [![](images/appian-protect.png) Requires Appian Protect Foundation Success Plan or higher](
                /suite/help/25.3/Appian_Protect.html
              )

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

This page documents how to configure an Appian Cloud to access your resources through AWS PrivateLink. For an overview of integrating with Appian Cloud using AWS PrivateLink, see [AWS PrivateLink integration with Appian Cloud](AWS-PrivateLink_Integration.html).

## Architecture

In order to integrate with PrivateLink, the Appian Cloud VPC is configured as the service consumer connecting to your resource through an [interface VPC endpoint](https://docs.aws.amazon.com/vpc/latest/userguide/vpce-interface.html). You can connect to the following types of services:

1.  [Managed Services inside your own VPC](#managed-services-inside-your-own-vpc)
2.  [AWS Managed Services](#aws-managed-services)

Any created PrivateLink resources are locked down within Appian Cloud to only be accessible to your Appian environments. Access will default to a single environment, but you may have your other environments added to created VPC Endpoints upon request.

### Limitations

-   You can create no more than 20 VPC Endpoints across all of your Appian Cloud environments. The limit should be kept in mind as you design your integrations and services within your AWS account. See [here](#connecting-to-multiple-services-over-privatelink) for a design consideration.
-   While [VPC Endpoint policies](https://docs.aws.amazon.com/vpc/latest/privatelink/vpc-endpoints-access.html) can be used to restrict the use of your endpoints, these policies are not supported for use with Appian Cloud integrations. It is your responsibility to securely configure your services using alternative means.
-   [Gateway endpoints](https://docs.aws.amazon.com/vpc/latest/privatelink/gateway-endpoints.html) are not supported.
-   Appian Cloud supports inbound access via PrivateLink using a different set of configurations. This is because the nature of AWS PrivateLink is inherently unidirectional. See the [Access an Appian Cloud Environment Using AWS PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html) documentation for more details.

### Managed services inside your own VPC

You can create a [VPC endpoint service](https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html) inside your own VPC (service provider) to expose your resources. The end-to-end traffic flow is shown in the diagram below. In this example, the Appian Cloud environment forwards requests to the interface VPC endpoint over a private connection to your VPC endpoint service. In your VPC, this traffic is received by the Network Load Balancer (NLB) and routed to your service.

![privatelink image 1](images/privatelink1.png)

If your VPC endpoint service is enabled on multiple availability zones, you are required to enable [Cross Zone Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html) on your NLB. Appian Cloud will configure the VPC interface endpoints in each of the availability zones that the endpoint service advertises.

### AWS-managed services

You may also want to leverage PrivateLink to connect to supported [AWS managed services](https://docs.aws.amazon.com/vpc/latest/userguide/integrated-services-vpce-list.html). Work with your internal AWS team to configure and secure your AWS resources so that they can be accessed via the PrivateLink connection. When updating your Appian Support Case, use the managed service "service name" in your Appian Support Case notes.

Below are example AWS managed services that can be connected to Appian Cloud, however this list is not comprehensive, nor does it prescribe how you should configure your Endpoint Service. We strongly recommend that you conduct your own tests on your test and development Appian environments prior to implementing these configurations in production.

#### Bring Your Own Key (BYOK) support

Appian Cloud supports BYOK using AWS CloudHSM. CloudHSM can be configured behind a Network Load Balancer (NLB). You can configure a VPC Endpoint Service to route to this NLB. Ensure that appropriate access to [CloudHSM](https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html) is properly configured.

#### Amazon Simple Storage Service (S3) support

PrivateLink can be configured to connect to your [Amazon S3 Endpoint](https://docs.aws.amazon.com/AmazonS3/latest/userguide/privatelink-interface-endpoints.html),_com.amazonaws.region.s3_. Ensure that access your S3 bucket is securely configured.

#### Amazon Relational Database Service (RDS) support

You can create a PrivateLink connection using the [RDS Endpoint Service](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/vpc-interface-endpoints.html#vpc-endpoint-considerations) to perform [RDS API operations](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

If you need to integrate with RDS using database specific commands, you'll need to employ one of many workarounds to create a VPC endpoint service in your VPC because RDS cannot be configured behind a Network Load Balancer. There are three common options that you may attempt:

1.  **Using a private IP address of the RDS environment:** RDS does not support static IPs; however, an IP address can be obtained through a DNS lookup of the RDS FQDN. A private IP from this lookup can then be utilized as a target for the Network Load Balancer that will be configured as part of the creation of a VPC endpoint service. However, it should be noted that AWS does not guarantee this IP remains associated with the RDS environment; in the case of a server failure, AWS may change the IP address of the RDS environment, therefore losing connectivity from the Network Load Balancer.
2.  **Using a proxy EC2 environment(s):** Forward proxies can be utilized to connect to your RDS environment indirectly. The traffic flow in this case would be Network Load Balancer > EC2 environment(Proxy) > RDS environment. In this case, the DNS name can be referenced from the proxy server rather than the private IP address in _option 1_; however, you would have the added cost of the EC2 environment(s) and possible performance degradation depending on a variety of factors such as the computing power of the proxy server(s).
3.  **Using an AWS Lambda function:** In this approach; you would need to set up a Lambda function which runs a DNS lookup of the RDS environment similar to _option 1_. However, this lambda function would have the added responsibility of adding the set of IPs to an S3 bucket and deregistering stale targets from the Network Load Balancer. This way, the downside to _option 1_ can be mitigated. Reference this [AWS blog](https://aws.amazon.com/blogs/networking-and-content-delivery/using-static-ip-addresses-for-application-load-balancers/) on how a similar setup worked for an Application Load Balancer (in this case RDS).

## Example use cases

### Connecting to multiple services over PrivateLink

AWS PrivateLink [does not support](https://aws.amazon.com/privatelink/faqs/) connecting one PrivateLink VPC Interface Endpoint to multiple services. If you would like to connect to multiple services, consider using an [Application Load Balancer-type Target Group for Network Load Balancer](https://aws.amazon.com/blogs/networking-and-content-delivery/application-load-balancer-type-target-group-for-network-load-balancer/). This enables you to minimize the number of Endpoint Services you'll need to connect to your Appian Cloud environments. Work with your internal AWS team to consolidate and route requests to your services.

Alternatively, configure a PrivateLink connection to each Endpoint Service. Your environments can reuse this PrivateLink connection once it's established.

### High Availability (HA) Appian Cloud Environment integrated with an AWS-hosted service

You can use PrivateLink to connect your Appian Cloud [High Availability environment](High_Availability_for_Appian_Cloud.html) with your external resources. An Appian Cloud HA environment is composed of three nodes distributed across three different Availability Zones. The application server running on each node forwards requests to a single VPC interface endpoint located in the Appian Cloud VPC. From there, the traffic is routed to the customer's service in the same fashion as described in the [architecture](#architecture) section.

![privatelink image 2](images/privatelink2.png)

### Multiple Appian Cloud environments integrated with an AWS-hosted service

The below example displays two Appian Cloud environments (Production and Development) forwarding requests to a customer's service over PrivateLink. The request originates from the Appian Cloud environment, which is routed over the interface VPC endpoint, to the customer's NLB. In this case, the customer has configured their NLB to distribute traffic between two different EC2 instances hosted in separate availability zones.

![privatelink image 3](images/privatelink3.png)

### External systems accessed through AWS Direct Connect

You may also utilize PrivateLink in conjunction with your own AWS Direct Connect to expose your systems to your Appian Cloud environments. Rather than forwarding traffic from the NLB directly to an AWS hosted service, you may configure your NLB with the [target private IP address](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-type) of your resource behind AWS Direct Connect.

Once traffic is received by the NLB, traffic can be routed through the virtual private gateway linked to your AWS Direct Connect. With this connection model, requests can be made directly to a service hosted in your private network without traversing the Internet. Note that the exact traffic flow will depend on the architecture of your network.

![privatelink image 4](images/privatelink4.png)

## Prerequisites

The prerequisites below are not necessary to connect to a supported [AWS managed service](https://docs.aws.amazon.com/vpc/latest/userguide/integrated-services-vpce-list.html). To connect with one of these, open a Support Case and specify the service name that is provided in the AWS documentation for that managed service.

| **Prerequisite steps** | **Description** | **Organizational role** |
| --- | --- | --- |
| Create a VPC endpoint service | This service must be created in the same AWS region as your Appian Cloud environments. To create a VPC endpoint service, follow the steps [here](https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html#create-endpoint-service). | Your AWS Administrator |
| Allow principals | Upon creation of a VPC endpoint service, Appian will need access to send connection requests to the endpoint service. This can be achieved by adding IAM principals to the [allowed principals list](https://docs.aws.amazon.com/vpc/latest/privatelink/configure-endpoint-service.html#add-remove-permissions). You may add an entry of \`\*\` to allow connection requests from any principal. The connection request from Appian can then be manually approved. Alternatively, you may request Appian Support to provide a specific principal to allow. | Your AWS Administrator |
| Configure auto accept | Your VPC endpoint service will need to automatically accept connection requests. To set up your VPC endpoint service to automatically accept connection requests, follow the steps in the AWS documentation to [Configure an endpoint service](https://docs.aws.amazon.com/vpc/latest/privatelink/configure-endpoint-service.html#accept-reject-connection-requests). | Your AWS Administrator |
| Create a support case | Open a support case with Appian Support. Include the following information:
-   **Use case**: What type of service you are integrating with (i.e. LDAP, Data Source, etc)
-   **Service name**: The AWS provided Service Name generated when creating the VPC endpoint service.

-   Example: `com.amazonaws.vpce.us-east-1.vpce-svc-1234`

-   **Hostname**: The hostname that will be used when referencing this service in your Appian Cloud environments. This configuration is required.
-   **Allowed principals**: You should provide confirmation that you have added \* to the allowed principals list, or request for a specific principal to allow in the support case

 | Your Business Relationship Owner |

## Setup

Once the prerequisite steps above have been completed, Appian Support will work with you through the following configuration procedure.

**Note:**  We recommend testing on lower environments prior to elevating to production usage.

| Configuration Action | Description | Owner |
| --- | --- | --- |
| Create VPC endpoint | Appian will create a VPC endpoint to connect to the VPC endpoint service you have provided. | Appian |
| Provide endpoint-specific DNS hostname | The hostname that will be used when referencing this service in your Appian Cloud environments. This configuration is required.
**Note:**  Provide a DNS hostname that is not equivalent to, nor a subset of, the AWS default endpoint service name with which the VPC endpoint will connect.

 | Appian |
| Schedule a maintenance Window for the affected environments | Appian Support will work with you to schedule Maintenance windows for the affected environments once the request has been accepted. The changes will be applied during this window. | Appian |
| Update Admin Console to utilize new configurations | Admin Console updates may be required to begin integrating with the new endpoint service. You may need to make updates to pre-existing configurations using the new DNS hostnames resolving to PrivateLink. Alternatively, you may need to create new entries for brand new integrations. | Your Business Relationship Owner |
| Verify the integration works as expected | Appian Support will work with you to ensure connectivity to your resources is working as expected. | Appian / Your Business Relationship Owner |

## Handling server-side authentication

PrivateLink does not inherently encrypt traffic. In order to enhance your application level security, some implementations may employ encryption. Depending on the implementation, these clients may perform server-side authentication (for example, HTTPS, TLS, LDAPS) in order to prove the identity of the server to the client. This type of authentication may require the caller to reference your resource using a valid DNS hostname that matches the server certificate. This should be the same DNS hostname you provided in the Support Case to associate with your VPC endpoint.

In these cases, the certificate on your resource server will need to be trusted by a public certificate authority. Alternatively, in some implementations, you may be able to disable server certificate validation while still encrypting traffic; however, this is not recommended as your environment would still be susceptible to a man-in-the-middle attack to circumvent the encryption.

Using the hostname provided via the Support Case, Appian will resolve any calls to the provided hostname to an Appian Cloud interface VPC endpoint ENI (Elastic Network Interface) IP Address. This will allow any requests destined to that particular hostname to resolve directly to an ENI without traversing the Internet. It is required that you enable [Cross Zone Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html) on your NLB to ensure traffic is load balanced among your instances correctly.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...