---
source_url: https://docs.appian.com/suite/help/25.3/Mobile_Authentication_Requirements.html
original_path: Mobile_Authentication_Requirements.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Mobile Authentication Requirements

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

If you have special network configurations and are using Appian Mobile, it is important to understand how the mobile application authenticates with the Appian server, so that your users are able to seamlessly use the application. This page explains how mobile authentication works, the network requirements, and the supported methods for restricting access to the Appian server.

## How Mobile Authentication Works

To understand Appian Mobile's network requirements, it helps to understand how the client and server communicate during mobile authentication.

![mobile authentication sequence diagram](images/mobile_auth_sequence_diagram.png)

1.  The mobile app requests a resource from the server.
2.  The server determines that the request is not authenticated.
3.  The server replies with a 401 status code and a JSON payload containing a context URL and token URL. Example:

    ```
    1
    2
    3
    4
      {
       "contextUrl": "https://mysite.appiancloud.com/suite",
       "tokenUrl": "https://mysite.appiancloud.com/suite/mobileAuthTokenConsumer"
      }
    ```

4.  The mobile app examines the response and determines two things:
    -   The response has a 401 status code with `contextUrl` and `tokenUrl` keys and came from an Appian server.
    -   The app needs to authenticate with the server.
5.  The app constructs a "login" URL that contains a number of important query parameters needed to set state on the server. It then prompts the user to sign in by opening the login URL in the user's web browser. Example:

    ```
    1
      https://mysite.appiancloud.com/suite?codeChallenge=zWNaqbvS3TXav7Kq4TNtwT196dIIB3yS50JG2TrzKkQ&scheme=com.appian.tempo
    ```

6.  The user signs in using the web browser. If the web browser already has a session with the Appian server, it will be terminated prior to prompting the user to sign in.
7.  When the user successfully authenticates with the Appian server, the server redirects the web browser to a "callback" URL that uses the scheme provided by the login URL and contains a "token" value. Realizing that the scheme of the requested URL corresponds to the mobile app, the web browser forwards the callback URL to the app. Example:

    ```
    1
      com.appian.tempo://mysite.appiancloud.com/suite?result=login&token=jA0ECQMC1PKb87zVWJUB0qsB9euIDt4oB1CgxLd5Y5IO6lSDiFCkxsIXj_58PDNTLWRfV-B6hYCaFbPOrF3IfkEUyfgWt2SKAy9X28IsnTG7xozdOhouP934xUR5-Ionb-qrQ0T9MNJT3f4cUa__1Vhn9k9r2KOqEdvCGwbGUocgacJH54o_vQUB9C7yhfLNz6vGsZvtpQ-PW5N8C_edCm7saNq18yRcf7grOzaZnVrWFATLFyVQFxeOAvo
    ```

8.  The app closes the web browser.
9.  The app makes a POST request to the "token" URL received in step 3. The body of the request contains the token returned by the web browser.
10.  The server uses the token to establish an authenticated session.
11.  The server returns a "bootstrap" response with information about the user and session cookies that allow the app to make subsequent requests without reauthenticating.

## Network Requirements

### Mobile app requires direct communication with the Appian server

In order for the authentication flow described above to complete successfully, the mobile app must be able to communicate directly with the Appian server.

Appian does not support any configuration in which Appian Mobile needs authentication cookies to reach the Appian server.

### Requests and responses cannot be modified

If communication between the mobile app and server is routed through an intermediary, such as a load balancer or proxy, both the request and response must remain unmodified.

Appian does not support any configuration in which Appian Mobile receives HTTP responses from a server other than an Appian server.

## Supported Methods for Restricting Network Access to the Appian Server

Appian Mobile supports two methods of restricting network access to the server: VPNs and Client Certificates.

### VPN

Appian Mobile can connect to a [VPN-protected server](Cloud_VPN_Integration.html) as long as the mobile device is connected to the VPN. Mobile devices can connect to a VPN at the operating system level or with a per-app VPN configured through [MDM](Appian_for_Enterprise_Mobility_Management_EMM.html).

### Client Certificates

The Appian server can be secured behind a network gateway that issues certificate challenges. Appian Mobile allows users to import a client certificate to be used whenever a certificate challenge is received. See [Client Certificate Access](Appian_for_Mobile_Devices.html#client-certificate-access) for more information.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...