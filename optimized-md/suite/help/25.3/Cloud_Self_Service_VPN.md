---
source_url: https://docs.appian.com/suite/help/25.3/Cloud_Self_Service_VPN.html
original_path: Cloud_Self_Service_VPN.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Self Service VPN

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

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>Customers must be on the <a href="https://appian.com/support/resources/success-plans">Foundation, Professional, or Signature Success Plans</a> to connect to resources in a self-managed network or in a private cloud environment.</td></tr></tbody></table>

Self Service VPN gives you the power to view and manage IPsec VPN connections from your Appian Cloud environment to other resources through [Cloud Resources](Cloud_Insights.html) in MyAppian.

Review the [VPN Integration](Cloud_VPN_Integration.html) documentation to get familiar with Appian Cloud VPN before configuring a VPN connection using the Self Service functionality.

## Prerequisites

-   You need a [MyAppian](https://forum.appian.com/suite/sites/myappian) account.
-   You need to be a support contact. A support contact has the ability to create Support cases.

## Considerations

Currently, Self Service VPN only allows you to manage a single, static, policy based VPN connection to a server in your cloud environment. If you need to have multiple tunnels per server or a Dynamic VPN, please open a Support case, and we will help you to configure it per the [Appian Cloud VPN Integration](Cloud_VPN_Integration.html) documentation.

## How to configure a new VPN tunnel

To configure a VPN connection:

1.  In MyAppian go to the [Health](https://forum.appian.com/suite/sites/myappian/page/health) tab and click **CLOUD RESOURCES**. > **CONNECTIVITY**.
2.  Select your Cloud Environment, then click **VPN Configuration Details**.
3.  If there are no existing VPN configurations for your server(s), click **Add a connection** to begin the configuration process.
4.  Select the appropriate server and fill out the following data:
    -   **Connection Name:** Alphanumeric string to identify the connection.
        -   The Connection Name should be unique per server.
    -   **Your Gateway IP:** The public IP of your VPN device to establish the IPSEC connection.
    -   **Your Subnets**: Specify all the subnets that the Appian server will connect to in your network.
        -   The format should follow the CIDR notation (i.e 192.168.1.0/24).
        -   To add a single IP, be sure to include a /32 at the end of the IP (i.e 192.168.1.1/32).
        -   The subnets that are added cannot be part of the restricted Appian Subnets. Review [Reserved IP Address Ranges](Cloud_VPN_Integration.html#setup) for more details.
    -   **Pre-Shared Key:** Key to establish the initial security association.
        -   Should be an alphanumeric, 40 character long string.

            **Note:**  IMPORTANT: Keep a backup of the pre-shared key; it will not be accessible after submitting the form.

5.  (Optional) If you want to reference your resources by specifying their fully qualified domain name (FQDN), configure DNS-based VPN Routing. See [Appian Cloud VPN Integration](Cloud_VPN_Integration.html#dns-based-vpn-routing) for more details.
    -   In the **DNS-based VPN Routing** section, click **Add FQDN**.
    -   Enter an FQDN using only alphanumeric characters and the '-' character.
    -   In the **Your DNS Server IPs** configuration that displays, add the IPs of your DNS servers. These IPs should be part of the VPN subnets.
6.  If necessary, configure the [additional settings](#additional-settings).
7.  After setting all required values in the form, click **Add**.
8.  Confirm to apply your changes and start your tunnel and click **Finish**.

You will be taken back to the VPN Configurations Details page and see your new connection was added for the chosen server in your cloud environment. Both the Appian Gateway IP and the Appian Network Interface IP have been assigned, and the next step for you would be to configure the VPN tunnel from your side.

The VPN tunnels are configured to accept your connection as soon as you start the connection from your VPN device. You can check the status of your connection by reviewing the IPSEC logs of your connection. See [Appian Cloud Web Administration](Appian_Cloud_Web_Administration.html#-log-files) to understand how to access these logs.

The IPSEC log files will have the following format ipsec.log.YYYY-MM-DD (i.e ipsec.log.2020.01-01) and will only be kept for seven days at a time.

### Additional settings

If you want to customize the specifics of your VPN connection, there is an additional settings section that can be expanded. The following fields and their default values will be used if no changes are made.

-   **Appian Network Interface IP:** The endpoint IP for your Appian server.
    -   If no IP is provided, we will automatically assign an IP in the 172.30.0.0/24 subnet to your server.
    -   If you do not want an IP in the 172.30.0.0/24 range, you can input an IP.
    -   Your IP cannot be a part of the Appian restricted IPs. Review [Reserved IP Address Ranges](Cloud_VPN_Integration.html#setup) for more details.
-   **IKE Version:** IKEv1 or IKEv2 (Default IKEv2)
-   **Perfect Forward Secrecy:** Determines whether or not new keying material will be generated for each IPsec SA. (Default: PFS enabled).
-   **Phase 1 Encryption Algorithm:** The encryption algorithm to use for the VPN tunnel for phase 1.
    -   Default AES256-CBC. For supported values see [VPN encryption configurations](Cloud_VPN_Integration.html#vpn-encryption-configurations).
    -   If an AEAD algorithm is selected (AES128-GCM or AES256-GCM), hashing is already included, and as a result, a hashing algorithm cannot be chosen.
-   **Phase 1 Hashing Algorithm:** The hashing algorithm to use for the VPN tunnel for phase 1.
    -   Default: SHA2-256. For supported values see [VPN encryption configurations](Cloud_VPN_Integration.html#vpn-encryption-configurations).
-   **Phase 1 Diffie-Hellman Group:** The Diffie-Hellman group to use for key exchange for phase 1.
    -   Default: DH21. For supported values see [VPN encryption configurations](Cloud_VPN_Integration.html#vpn-encryption-configurations).
-   **Phase 1 Lifetime:** How long the keying of a connection (IKE) should last before being renegotiated. (Default 28800 seconds)
-   **Phase 2 Encryption Algorithm:** The encryption algorithm to use for the VPN tunnel for phase 2.
    -   Default AES256-CBC. For supported values see [VPN encryption configurations](Cloud_VPN_Integration.html#vpn-encryption-configurations).
    -   If an AEAD algorithm is selected (AES128-GCM or AES256-GCM), hashing is already included, and as a result, a hashing algorithm cannot be chosen.
-   **Phase 2 Hashing Algorithm:** The hashing algorithm to use for the VPN tunnel for phase 2.
    -   Default: SHA2-256. For supported values see [VPN encryption configurations](Cloud_VPN_Integration.html#vpn-encryption-configurations).
-   **Phase 2 Diffie-Hellman Group:** The Diffie-Hellman group to use for key exchange for phase 2.
    -   Default: DH21. For supported values see [VPN encryption configurations](Cloud_VPN_Integration.html#vpn-encryption-configurations).
-   **Phase 2 Lifetime:** How long an instance of a connection should last, from successful negotiation to expiry. (Default 3600 seconds)
-   **DPD Action:** Dead peer detection (DPD) action. Defines what action to take when a DPD peer is declared dead. Supported values:
    -   **restart (default):** Restart the IKE session when DPD timeout occurs.
    -   **hold:** The IKE session will stay in hold status.
    -   **clear:** End the IKE session when DPD after timeout.
-   **DPD Delay:** Length of time between dead peer detection keepalives that are sent for this connection. (Default 30 seconds)
-   **DPD Timeout:** Length of time that the connection idles without hearing back from the other peer. (Default 120 seconds)

## How to modify an existing VPN tunnel

To configure a VPN connection:

1.  Visit [MyAppian](https://forum.appian.com/suite/sites/myappian/page/health) and click [CLOUD RESOURCES](Cloud_Insights.html).
2.  In the Connectivity subsection, click **VPN Configuration Details**.
3.  If your connection is supported for modification, inside of a connection’s details you will be able to click **Modify** to begin the modification process.
4.  You should always be able to modify the following:
    -   **Connection Name**
    -   **Your Subnets**
    -   **Pre-Shared Key**
5.  (Optional) You can add, modify, or remove DNS configurations in the **DNS-based VPN Routing** section.
6.  If your connection is fully supported for modification, you’ll also be able to modify the following settings:
    -   **IKE Version**
    -   **Perfect Forward Secrecy**
    -   **Phase 1 Encryption Algorithms**
    -   **Phase 1 Hashing Algorithms**
    -   **Phase 1 Diffie-Hellman Groups**
    -   **Phase 1 Lifetime**
    -   **Phase 2 Encryption Algorithms**
    -   **Phase 2 Hashing Algorithms**
    -   **Phase 2 Diffie-Hellman Groups**
    -   **Phase 2 Lifetime**
    -   **DPD Action**
    -   **DPD Delay**
    -   **DPD Timeout**
7.  After setting all required values in the form, click **Modify**.
8.  Confirm to apply your changes and restart your tunnel and click **Finish**.

You will be taken back to the VPN Configurations Details page, and you will see one of the following:

-   If your connection is being configured in your server, you will see a banner in your connection’s details indicating so and modification of the connection will be temporarily disabled
    -   Use the refresh button to verify the status of the configuration change. It should not take longer than a few minutes.
-   If your connection had problems being configured, you will see a banner in your connection’s details indicating so. No further modifications will be allowed, please contact Appian Technical Support if you run into this scenario.

## How to restart a VPN tunnel

To restart a connection:

1.  In MyAppian go to the [Health](https://forum.appian.com/suite/sites/myappian/page/health) tab and click **CLOUD RESOURCES** > **CONNECTIVITY**.
2.  Select your Cloud Environment, then click **VPN Configuration Details**.
3.  If restarting is supported for your connection, in the connection’s details you will be able to click a **Restart** button.
4.  Enter the **Connection Name** to confirm that you want to restart the connection.
5.  Click **Restart**.
6.  Confirm that you want to restart your tunnel, and click **Finish**.

## How to delete a VPN tunnel

To delete a connection:

1.  In MyAppian go to the [Health](https://forum.appian.com/suite/sites/myappian/page/health) tab and click **CLOUD RESOURCES** > **CONNECTIVITY**.
2.  Select your Cloud Environment, then click **VPN Configuration Details**.
3.  If deleting is supported for your connection, in the connection’s details you will be able to click a **Delete** button.
4.  Enter the Connection Name to confirm that you want to delete the connection.
5.  Click **Delete**.
6.  Confirm that you want to delete your tunnel, and click **Finish**.

## FAQ

### How do I configure VPN tunnels for High Availability environments?

You can add a connection for each server by following the steps mentioned in the [How to Configure a VPN Tunnel?](#how-to-configure-a-new-vpn-tunnel) section.

### Can I configure failover using self service VPN?

It is not possible to configure failover using the Self Service VPN interface at this time. If necessary, you can open a Support case, and we will help you to configure failover tunnels for your environment.

### I need to modify a VPN tunnel, and I am unable to do so through self service VPN. What should I do?

Open a Support case and our support team will help you to modify a tunnel.

### Who can view, add or modify VPN configurations?

Self Service VPN functionalities are only available to authorized technical support contacts for the account the environment belongs to.

### Why can't I see the options to restart or delete my VPN?

Your environment is running in a release that does not support restarting or deleting VPN connections. Please contact Appian Support to upgrade your environment and get those features for Self Service VPN.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...