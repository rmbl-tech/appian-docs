---
source_url: https://docs.appian.com/suite/help/25.3/Publishing_Process_Models_as_Web_Services.html
original_path: Publishing_Process_Models_as_Web_Services.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Publishing Process Models as Web Services

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  We recommend designers instead use [web APIs](Web_APIs.html) and the [Start Process smart service](Start_Process_Smart_Service.html) to expose process models to external systems.

You can configure your process model so that it can be launched by a web service call. When the model is published as a web service, a WSDL is created that describes the parameters that must be passed and the protocol used to pass them. Authentication credentials must be passed as parameters to the web service.

[Custom data types](Custom_Data_Types.html) cannot be passed as parameters (variables required at the start of a process) to process models exposed as web services.

## Publishing process models as web services

1.  Under the **Integrations** section of the [Admin Console](Appian_Administration_Console.html), click **Legacy Web Services**
2.  In the new tab, click **Add Service**
3.  Browse to select the process model you want to publish
4.  Provide the **Service Name** and **Service Description** for the process model
5.  Click **Publish**. The following WSDL URL is published for your process model

    ```
    1
    http://... /suite/webservice/processmodel/<SERVICE_NAME>?WSDL
    ```

    `<SERVICE_NAME>` refers to the name you assigned previously (in step five).

## Web service credentials

Systems wishing to start a process published as a web services need to pass in a valid `username` and `password` to successfully start the process. These fields should be part of the SOAP request message.

-   Usernames and passwords are passed in plain text. We strongly recommend using this feature with SSL enabled.
-   The username and password submitted when calling the web service must be those of the Appian user account that is intended to start the service.
-   The user account must (at a minimum) hold initiator rights for the process model that is exposed as the web service.
-   The user account must not be configured to authenticate via [SAML](Appian_Administration_Console.html#saml-authentication)
-   Credentials used to start a process must be stored on the remote system. Take precautions to ensure that these credentials are stored securely.
-   Credentials stored on remote systems must be kept synchronized when user account passwords expire.
-   If you have a third-pary Single Sign On (SSO) solution configured to restrict URLs by redirecting unauthenticated requests to the login page, the URLs for the web services (suite/webservice/\*) must be excluded so that calls to the WSDL and endpoint are not redirected.

## Removing a published process model

Select the published process model you want to remove. Click **Delete**.

## Data type formats

The following formats must be used for date and date/time values passed to an Appian process using a web service.

### Date

_yyyy-mm-dd_

— For example —

2010-06-23

### Date/time

_yyyy-MM-dd_**T**_HH:mm:ss_

-   The letter Z must be appended to any date/time values to indicate that the time is offset from UTC/GMT/Zulu time.

— For example —

2009-12-01T19:28:31Z

## See Also

[Call Web Service Smart Service](Call_Web_Service_Smart_Service.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...