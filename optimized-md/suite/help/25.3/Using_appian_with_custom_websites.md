---
source_url: https://docs.appian.com/suite/help/25.3/Using_appian_with_custom_websites.html
original_path: Using_appian_with_custom_websites.html
version: "25.3"
title: "Connecting Appian to Custom Websites"
page_id: "Using_appian_with_custom_websites"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Connecting Appian to Custom Websites

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Appian has multiple features that allow you to design user interfaces to connect external users to the information and processes that you already have in Appian. For example, [Appian Portals](portals-home.html) lets you leverage the power of low-code to build public websites that act as a front door to your Appian applications.

However, it's common for businesses to have strict style standards when it comes to designing web experiences for their customers. Strong brand identities and the need for pixel-perfect UIs can often act as hurdles to adopting and integrating certain technologies into an organization's workflows.

Appian offers two flexible options to integrate your existing website with your Appian applications:

-   **[Displaying a portal in your custom website](#displaying-portals-in-your-custom-website)**: Ideal when you want to display a portal in your website. This option allows you to display Appian-styled components alongside your site's custom styling, similar to [embedding interfaces](Embedded_Interfaces.html).
-   **[Using web APIs to connect Appian to your custom website](#using-web-apis-to-connect-appian-to-your-custom-website)**: Designed for scenarios where you need to maintain complete control over your website's styling while leveraging Appian's process automation and data capabilities in the background.

In both cases, you can still tap into that same data that already lives in Appian and leverage the power of low-code in a different way. This page explores both approaches, helping you determine the best fit for your needs and providing step-by-step instructions to get started.

## Displaying portals in your custom website

If you want to integrate a specific page of your website with Appian while maintaining your website's overall styling, you can display a portal directly in your site using an iframe. This approach is ideal for scenarios where you are comfortable using Appian's styling for the portal, while the rest of your site retains your pixel-perfect styling.

To display a portal in a custom website:

1.  [Add your website to the Origins list](Appian_Administration_Console.html#origins) in the Admin Console.
2.  [Republish the portal](portals-manage-portals.html#manually-republish-a-portal).
3.  Make sure that your website allows iframes.
4.  Display the portal in an iframe on your website.

## Using web APIs to connect Appian to your custom website

Web APIs are the perfect solution when you have an external website that requires complete control over its styling but still needs to connect to Appian to initiate processes and exchange data. This approach allows you to maintain your website's unique design while leveraging Appian's powerful automation and data management capabilities in the background.

To illustrate how web APIs enable this integration, let's explore a hypothetical example of a financial services company.

### Example: ACME Financial

ACME Financial is an established financial services provider that has been serving their customers for decades. They have developed a strong brand identity that their customers and prospects trust and recognize. Every page on their website adheres to strict branding guidelines using custom CSS to ensure a consistent look and feel.

![screenshot of blank mortgage application form](images/Web_API_ACME_Mockup1_Blank.png)

Since ACME Financial already uses Appian to automate several internal business processes like mortgage underwriting and customer onboarding, they want to leverage the power of Appian to integrate some of the workflows carried out on their public-facing website into their Appian applications.

Let's explore a workflow ripe for integration: a prospective customer comes to the ACME website to apply for a mortgage. ACME Financial receives and processes upwards of 1,000 mortgage applications every week. As a result, loan officers and underwriters spend around 1,200 hours each month manually processing and moving that data into their loan management solution built with Appian.

By configuring just a handful of web APIs in their loan origination application, ACME Financial can integrate their external mortgage application workflow with their internal loan origination and review process in Appian. These integrations allow them to cut review and processing time by 50% or more, saving them hundreds of labor hours and increasing both productivity and profitability.

### How web APIs help

When you need to expose data and services in Appian to an external system like your company website, [web APIs](Web_APIs.html) act as the missing puzzle piece that connects the two systems so they can share information.

Appian makes it easy for you to quickly [design your own web APIs](Designing_Web_APIs.html) in your existing applications so they can share information with your external systems.

![screenshot of web API diagram 1](images/Web_API_diagram_1.png)

ACME Financial can configure web API objects in their loan origination solution to expose their Appian data and processes to the mortgage application workflow on their website.

Here is a snapshot of what ACME wants to accomplish and the web API methods they'll use to get them there:

| ACME wants to… | Web API method |
| --- | --- |
| Send application data from the ACME website to Appian, kick off a process, and write data to the mortgage record. | [POST](#start-a-process-and-write-data-post) |
| Allow customers to view the most up to date status and information about their application using the ACME website. | [GET](#read-data-from-appian-get) |
| Make it easy for customers to attach supporting documentation using the ACME website. | [POST](#upload-documents-post) |

Once ACME configures these three web APIs, they can then invoke them in the appropriate places on their custom forms and they're well on their way to integrating the mortgage application workflow with their Appian application.

Before we dive a little deeper into each of these web APIs, it's important to note that this is a simplified, high-level overview of how ACME Financial can accomplish their goals. There are other, more advanced considerations related to security, [authentication](Web_API_Authentication.html), and [service accounts](Web_API_Authentication.html#service-accounts) that developers should be familiar with before connecting Appian to their own custom websites.

### Start a process and write data (POST)

When someone takes an action on a website, like filling out and submitting a form, you can invoke a web API to send that data to another system and use it to create resources there.

This type of request is known as a POST request and can be used to create information in a different system.

#### What ACME needs to do

In the case of ACME Financial, when a customer submits a mortgage application, a web API using the POST method can take application data and send it to Appian to create a record.

When Appian receives the request, it [starts a process](Ways_to_Start_a_Process_From_a_Process.html#starting-a-process-from-outside-appian) that writes the data directly to the mortgage record in Appian and notifies loan officers that an application is in need of review.

The following process model shows a simplified version of the workflow ACME Financial wants to kick off by invoking a POST web API on their website:

![screenshot of process model](images/Web_API_ACME_Process_Model.png)

Next, we'll take a look at how they'll configure the web API object in Appian to do just that.

#### Create application web API

[![images/Web_API_ACME_1.png](images/Web_API_ACME_1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img328)

[![](images/Web_API_ACME_1.png)](#_)

1.  ACME Financial selects the **Web API** option from the **NEW** menu in Appian Designer.
2.  Rather than creating the object from scratch, ACME elects to use the **START PROCESS** [template](Designing_Web_APIs.html#create-a-web-api-using-a-template) to make configuration quick and easy.
3.  In the **Create Web API** dialog, they enter the constant for the process model shown above, `cons!CREATE_OR_UPDATE_APP` and give the web API a name, `Create or Update Application`.
4.  The **HTTP Method** is already defined for them. Since they want to send data and start a process, the POST method is required.
5.  ACME defines an **Endpoint** value for the URL that the website will use when it wants to invoke the web API on the mortgage application form.
6.  After clicking **CREATE**, the web API object loads with a pre-populated expression.
7.  The only thing ACME Financial needs to configure in this expression is where to put the formatted JSON from the request body. In this case, they want it to go to the application record so they'll use the process variable defined for that record in their process model:

    ![screenshot of code snippet from web API 1](images/Web_API_ACME_CodeSnippet1.png)

8.  After they click **SAVE**, the web API is ready to accept incoming data from ACME Financial website.

ACME Financial will then do some additional configuration on their website to invoke this web API and send it mortgage application data when the customer clicks SUBMIT APPLICATION.

![screenshot of ACME website submit button](images/Web_API_ACME_Mockup2_Submit.png)

With the new web API configured and the website setup to invoke the web API, here's what the ACME Financial mortgage application workflow looks like when an applicant clicks submit application:

1.  The POST web API gets invoked when a customer clicks the submit button on their application form via the ACME Financial website.
2.  The website sends the customer application data, formatted as key value pairs in JSON, in the body of that request.
3.  The server sends the customer application data, formatted as key value pairs in JSON, in the body of that request.
4.  The `Create or Update Application` web API receives the request, converts the JSON values into values in Appian, and starts the process model.
5.  The incoming application data is written to the Application record in ACME Financial's loan origination system in Appian and a new application record is created.
6.  Finally, the process model sends E-mails to the ACME Loan Officers group to let them know an application has been received and is ready for review.

This diagram provides a visual representation of what happens when a customer submits an application on the ACME Financial website.

![screenshot of web API diagram 2](images/Web_API_diagram_2.png)

### Read data from Appian (GET)

When information on a company website depends on information that resides in another system, that system can be said to be the “source of truth” for that information.

Since the data may be constantly changing and acted upon, the company website needs access to the most up to date version. By making a request to that external system, you can ensure the company website is displaying the correct information at all times.

This type of request is known as a GET request and can be used to request certain information from a server, like data in a database.

#### What ACME needs to do

ACME Financial can use this method to retrieve the loan application status and other key details whenever the customer wants it. This way, when a customer needs an update on the progress of their application, they can simply return to the company site and pull up their information by entering their unique application number.

Let's take a look at the steps ACME will follow to create this web API.

#### Create get application status web API

[![images/Web_API_ACME_2.png](images/Web_API_ACME_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img329)

[![](images/Web_API_ACME_2.png)](#_)

1.  ACME Financial selects the **Web API** option from the **NEW** menu in Appian Designer.
2.  Rather than creating the object from scratch, ACME elects to use the **QUERY RECORD TYPE** template to make configuration quick and easy.
3.  In the **Create Web API** dialog, they select `Application` as the record type they want to query and give the web API a name, `Get Application Status`.
4.  The **HTTP Method** is already defined for them. Since they want to retrieve data and to display on their website, the GET method is required.
5.  ACME defines an **Endpoint** value for the URL that the website will use when it wants to invoke the web API on the mortgage application form.
6.  After clicking **CREATE**, the web API object loads with a pre-populated expression.
7.  The only thing ACME Financial needs to configure in this expression is the query filter for the record type. In this case, they want to get the application status based on the confirmation number the customer enters:

    ![screenshot of code snippet from web API 2](images/Web_API_ACME_CodeSnippet2.png)

8.  After they click **SAVE**, the web API is ready to send application data from the Appian loan management solution to the ACME Financial website.

ACME Financial will then do some additional configuration on their website to invoke this web API when the customer clicks the SEARCH button after entering their confirmation number.

![screenshot of ACME status screen](images/Web_API_ACME_Mockup3_Search.png)

With the new web API configured and the website setup to invoke the web API, here's what the ACME Financial mortgage application workflow looks like when an applicant clicks search:

1.  The GET web API gets invoked when a customer enters their confirmation number and clicks the search button on the Check Application Status screen via the ACME Financial website.
2.  The website sends the customer's unique application ID as a query parameter in the request.
3.  The Get Application Status web API receives the request and retrieves the application status from Appian based on the unique application ID.
4.  The web API responds with the application status to be displayed on the ACME Financial website.

This diagram provides a visual representation of what happens when a customer checks their application status on the ACME Financial website.

![screenshot of an error in the record sync alert dialog](images/Web_API_diagram_3.png)

### Upload documents (POST)

Similar to the first web API, when data and resources need to be modified because someone takes an action in a different system, a POST request can also be used to send the updated information to the external system so the resource can be modified.

#### What ACME needs to do

During the application review process, it's not uncommon for loan officers to request additional documentation, like copies of wage statements and tax returns, during the review process.

Using another POST web API to start the same process model, ACME Financial can have customers upload documents to their application via their website and then route those documents to the appropriate folders in Appian using the existing record as context.

Let's take a look at the steps ACME will follow to create this web API.

#### Create document upload web API

[![images/Web_API_ACME_3.png](images/Web_API_ACME_3.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img330)

[![](images/Web_API_ACME_3.png)](#_)

1.  ACME Financial selects the **Web API** option from the **NEW** menu in Appian Designer.
2.  Rather than creating the object from scratch, ACME elects to use the **DOCUMENT UPLOAD** template to make configuration quick and easy.
3.  In the **Create Web API** dialog, they give the web API a name, `Document upload` and select the document folder to save the uploaded documents to.
4.  The **HTTP Method** is already defined for them. Since they want customers to send documents to Appian, the GET method is required.
5.  ACME defines an **Endpoint** value for the URL that the website will use when it wants to invoke the web API.
6.  After clicking **CREATE**, the web API object loads with a pre-populated expression.
7.  The only thing ACME Financial needs to configure is the values for the start process function they'll add to the expression. In this case, they want to send documents to Appian using the customer's existing application record as context:

    ![screenshot of code snippet from web API 3](images/Web_API_ACME_CodeSnippet3.png)

8.  After they click **SAVE**, the web API is ready to send application data from the Appian loan management solution to the ACME Financial website.

ACME Financial will then do some additional configuration on their website to invoke this web API when the customer uploads their documents and clicks SAVE.

![screenshot of ACME website upload button](images/Web_API_ACME_Mockup4_Upload.png)

With the new web API configured and the website setup to invoke the web API, here's what the workflow looks like when an applicant uploads documents and clicks save:

1.  The POST web API gets invoked when a customer clicks the save button on the Upload Documents dialog via the ACME Financial website.
2.  The website sends the documentation along with the customer's unique application number to Appian.
3.  The Create or Update Application web API receives the request and starts the process model.
4.  The incoming document data is written to the existing customer application record in ACME Financial's loan origination system in Appian and the existing record is updated.
5.  Finally, the process model sends E-mails to the ACME Loan Officers group to let them know the documentation has been received.

This diagram provides a visual representation of what happens when a customer submits an application on the ACME Financial website.

![screenshot of web API diagram 4](images/Web_API_diagram_4.png)

## Conclusion

As you can see, the strict requirements that often come with custom, external web experiences don't have to get in the way of integrating Appian into your external workflows. Whether you're displaying Appian portals in your existing website or leveraging web APIs to connect Appian to a fully customized web experience, you have the flexibility to create seamless workflows for your organization.

In our example, ACME Financial was able to quickly and easily configure just a few web APIs in their Appian loan management solution to save their underwriters and loan officers hundreds of working hours per month. The 50% reduction in manually executed tasks has nearly doubled the productivity and profitability of their mortgage business.

Whether you already have a custom website or are in the process of creating one, you can still use data and processes from Appian to power those experiences. Providing a custom web experience that meets your style standards and is still powered by Appian is not only possible—it's easy!

To get started or to learn more about web APIs in Appian, check out these API tutorials in our docs: [API Tutorial I](Web_API_Tutorial.html) and [API Tutorial II](Web_API_Tutorial_-_Level_II.html).

For information on connecting Appian with custom, internal websites, see [Embedded Interfaces](Embedded_Interfaces.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...