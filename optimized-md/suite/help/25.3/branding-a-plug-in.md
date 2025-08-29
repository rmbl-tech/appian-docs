---
source_url: https://docs.appian.com/suite/help/25.3/branding-a-plug-in.html
original_path: branding-a-plug-in.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add Logos

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how to brand your plug-in with an image representing your system.

Your branding will be used and seen by the designer in three places:

1.  When creating a new connected system (shown below)
2.  When creating a new integration from your plug-in
3.  When using an integration from your plug-in in a process model

![create a connected system/create_connected_system_modal.png](images/create_a_connected_system/create_connected_system_modal.png)

## Using a single image

To add a single logo for a connected system template add the image to the `resources/` directory that is parallel to your template's package.

For a template, `src/main/java/com/appian/MyConnectedSystemTemplate.java`, place the 80 pixel image at `src/main/resources/com/appian/MyConnectedSystemTemplate_80px.<ext>`.

-   Supported file types are .svg, .jpg, .jpeg, and .png.

## Using different images for each display location

To add multiple logos designed for the different resolutions, add the images to the `resources/` directory that is parallel to your template's package.

For a template, `src/main/java/com/appian/MyConnectedSystemTemplate.java`, place the images in the folder, `src/main/resources/com/appian/`.

Images for this template **must** follow this naming convention `MyConnectedSystemTemplate_<size>px.<ext>`.

-   Supported file types are: .svg, .jpg, .jpeg, and .png
-   Supported image sizes are: 40, 50, and 80

If you do not provide one of the optional sizes, the `_80px` image will be downsized to fit as appropriate.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...