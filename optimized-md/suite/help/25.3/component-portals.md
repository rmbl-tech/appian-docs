---
source_url: https://docs.appian.com/suite/help/25.3/component-portals.html
original_path: component-portals.html
version: "25.3"
title: "Develop Component Plug-ins for Portals"
page_id: "component-portals"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Develop Component Plug-ins for Portals

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Portals connect users who aren't logged in to Appian to the information and processes that live in an Appian environment. Component plug-ins can be used to enhance portals with capabilities such as custom styling, specialized file handling, or location services. Whether you are creating a private plug-in for your organization or a public plug-in for the [AppMarket](https://community.appian.com/b/appmarket), follow these guidelines to ensure your plug-in can be used effectively and securely in portals.

**Note:**  Portals are accessible to unauthenticated users, which can increase the number of potential attackers on a component plug-in. Be mindful of security vulnerabilities and other risks when developing a component plug-in for a portal.

## Traffic implications of component plug-ins in portals

Interfaces in portals are exposed to the open internet. Keep this in mind when developing component plug-ins that connect to external systems since it could affect the amount of traffic to the external system.

External systems will be affected differently depending on if you use a [connected system plug-in](connected-system-plug-in-landing.html) to connect to the external system or not.

### When connecting to external systems without a connected system plug-in

When you use a component plug-in in a portal that communicates with an external system without using a connected system plug-in, the traffic to the external system will be driven by the open internet. Network load from the open internet can be unbounded. When developing these component plug-ins, it is important to be aware of any rate limits or throttling present within the external systems and how traffic driven by portal users could interact with these.

### When using connected system plug-ins

If you are using a connected system plug-in in a portal to communicate with an external system, there is little chance that the external system will be affected by portal traffic. This is because connected system plug-ins have certain [protections](portals-security.html#user-experience-when-portal-traffic-is-high) that ensure logged-in users will not see performance impacts if there are spikes in portal traffic. Note that [connected system objects](Connected_System_Object.html) do not have these same protections.

These portals still need to be [load tested](portals-design.html#testing-plug-ins-in-a-published-portal) since these protections may cause requests to Appian to be throttled, which could result in slow performance of the portal.

## Guidelines

### Don't use references to objects or data in Appian

Portals have no knowledge about objects or data in Appian that are available to authenticated Appian users. When communicating with external systems, ensure that component plug-ins don't rely on references to objects or data in Appian.

Examples of things that should be avoided:

-   Links to objects in Appian.
-   Object IDs, such as document IDs.
-   Groups, group types, or Appian users.

### Keep the plug-in zip file small

In order to publish successfully, portals must be under 25 MB. When a plug-in is used in a portal, the size of the plug-in file affects the size of the portal. Using a plug-in with a large file size may cause the portal to fail to publish.

### Let your users know that the plug-in is compatible with portals

If you list your component and/or connected system plug-ins on the [AppMarket](https://community.appian.com/b/appmarket), indicate in the plug-in summary whether or not the plug-in was designed to work with portals.

### Guidelines for using connected system plug-ins with component plug-ins

#### Use client APIs

Component plug-ins used in portals can call connected system plug-ins through [client APIs](server-side-logic-for-cp.html). Integration templates cannot be called directly from a portal, but it is okay for a connected system plug-in to contain an integration template if only the client API is used in the portal.

#### Don't use object IDs as arguments

Appian object IDs are not guaranteed to be the same across environments including in portals, so IDs belonging to documents or other Appian objects should not be used as arguments to client APIs for connected system plug-ins.

#### Don't include links to objects or object IDs in responses from the client API

When called from a portal, the client API for a connected system plug-in has access to the same objects that that the [portal service account](portals-service-accounts.html) can access. However, if you include a link to an object in the response from a client API, the portal will not be able to access it. This is because it is the component plug-in itself that would need access to the object and you cannot grant permissions to the component plug-in, only to the client API.

For example, if a client API sends a response like the following to a component plug-in so that the plug-in can display an image, the portal would error. The component plug-in will not have access to the document in order to display it.

```
1
2
3
4
{
 "docID": 1234,
 "docURL": "https://example.appiancloud.com/suite/doc/igV4V7qgl8KZ_zCVp4RkaEtv5831VacaHxG5p4qeq8p5-fVx2YyS8SD"
}
```

#### Add a service account to the portal

When you use any connected system plug-in in a portal, be sure to add a [service account](portals-service-accounts.html) to the portal that has **Viewer** permissions to the connected system.

## Testing component plug-ins in a portal

Portals are only supported in Appian Cloud environments. Therefore, there isn't a way to simulate a portal environment within a local [developer setup](https://docs.appian.com/suite/help/23.4/component-developer-setup.html).

If your component plug-in does not interact with external systems and it works in a local Appian installation, it should work in a portal.

If your component plug-in relies on a connected system plug-in, be sure to follow the [guidelines for using connected system plug-ins with component plug-ins](#guidelines-for-using-connected-system-plug-ins-with-component-plug-ins). Additionally, be sure to fully test the plug-in in a [published portal](portals-create.html). Before being able to test it in a portal, you will need to register the plug-in in the AppMarket and have access to an Appian Cloud environment.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...