---
source_url: https://docs.appian.com/suite/help/25.3/control-panel.html
original_path: control-panel.html
version: "25.3"
title: "Control Panel"
page_id: "control-panel"
section: "About the Control Panel"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Control Panel

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## About the Control Panel

The Control Panel is a new workspace that provides business users with an entirely no-code experience where they can configure data and interfaces for their business critical applications and workflows.

Unlike Designer, where low-code developers can build, manage, deploy, and monitor entire applications, the Control Panel is a workspace tailored specifically to business users. Here they can use 100% no-code tools to create the parts of the application that they know best given their in-depth knowledge of their use cases and processes.

**Note:**  The Control Panel workspace and control panel object can only be accessed on environments that have [Case Management Studio](case-management-studio-overview.html). Case Management Studio comes out-of-the-box with a pre-configured control panel object that includes the basic Case Management Studio functionality. To learn more about configuring Case Management Studio, see the [Case Management Studio documentation](configure-cms-control-panel.html).

### The relationship between workspace and object

The Control Panel workspace relies on the [control panel object](control-panel-object.html) configured by low-code developers in Designer to provide the structure for business users using the no-code tools in the Control Panel workspace.

This relationship between object and workspace allows low-code developers to set guardrails for what can be configured in the Control Panel workspace and allows business users to create the parts of the app that they know best given their knowledge of their use cases and processes.

## Who can use the Control Panel workspace and control panel object

There are a variety of roles that are involved with the configurations, access, and use of both the control panel object and the Control Panel workspace.

| Role | Workspace or object | Action |
| --- | --- | --- |
| Business user | Control Panel workspace | Configure data, interfaces, and case processes |
| End-user | Control Panel workspace | Interact with cases |
| Low-code developer | Control panel object | Configure object |
| System administrators | Both | Grant access |

**Note:**  Only users that have been [granted access](#access-the-control-panel) and are in environments with Case Management Studio can access the Control Panel workspace and the associated control panel objects.

### Business users

Business users are any users that are working inside the Control Panel to define the data and workflows for their business and case processes. Business uses can have a variety of roles, ranging from case managers to individual contributors.

Business users are typically familiar with the data and case processes for their organization, but do not have experience developing in Appian. With the Control Panel, they don’t need developer experience. Instead, they have a tailor-made workspace that allows them to create workflows and data structures that reflect their unique processes and needs.

In the Control Panel, business users can:

-   Create and organize data structures and data fields.
-   Create and edit interfaces and forms.
-   Create types and categories for cases.

Before business users can start configuring workflows and data in the Control Panel workspace, [low-code developers](#low-code-developers) need to set up the control panel object in Designer.

### End-users

End-users are any users that are using the front-end experience configured by the Control Panel workspace to interact with cases, either by submitting cases or resolving cases.

They can have a different range of activities depending on which side of the process they are on, but generally they can submit cases, go through a workflow, resolve cases, or view case details.

### Low-code developers

Low-code developers are responsible for making the [low-code configurations to the control panel object](control-panel-object.html), which provides the underlying structure for the apps in Control Panel workspace.

The low-code configurations to the control panel object can include the terms to use for cases, guardrails for how to organize the overall data structures, and even the types of forms and interfaces that can be used in the app.

### System administrators

System administrators [assign users to the appropriate groups and set security](#access-the-control-panel) for both the objects and types and categories within the Control Panel.

## Access the Control Panel

To access the Control Panel, users must be in the Control Panel Users system group. System administrators must add members to this group, and can restrict access as necessary.

Users can access the Control Panel by clicking the navigation menu and selecting **Control Panel**.

To make configurations in the Control Panel workspace, users must have the appropriate permissions to the control panel object. To learn more about, see the [control panel object security page](control-panel-object-security.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...