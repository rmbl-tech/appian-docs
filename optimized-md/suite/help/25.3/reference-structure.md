---
source_url: https://docs.appian.com/suite/help/25.3/reference-structure.html
original_path: reference-structure.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Package Structure

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Component plug-ins are packaged in ZIP files. This page describes the required ZIP structure.

**Tip:**  This version of Appian supports component plug-ins that use [SDK version](reference-manifest.html#component) 2.0.0. Refer to the [Integration SDK compatibility table](integration-sdk-versions.html) for version details.

## Package structure

The folder structure of your component plug-ins references properties from the plug-in [manifest](reference-manifest.html#plug-in-manifest) file including the component's `rule-name` and `version` attributes.

-   ![file](images/icon/file-zip-o.png) Plug-in, packaged as a ZIP file
    -   ![file](images/icon/file-o.png) appian-component-plugin.xml - Component plug-in package [manifest](reference-manifest.html#plug-in-manifest)
    -   ![folder](images/icon/folder.png) Component folder, one for each [component rule-name](reference-manifest.html#component) defined in the plug-in
        -   ![folder](images/icon/folder.png) Component version folder, one for each major version (For example: `v1`, `v2`)
            -   ![file](images/icon/file-o.png) Plug-in web content, including HTML, JS, CSS, etc. files. The HTML file used as the component's [html-entry-point](reference-manifest.html#component) should be placed in this folder. Use subfolders for organization.
            -   ![file](images/icon/file-o.png) [Internationalization bundles](reference-manifest.html#internationalization-bundles) (For example: `<rule-name>_en_US.properties`)

### Notes

-   The `appian-component-plugin.xml` manifest file and all component rule name folders must be at the root directory of the zip file.
-   All paths for web content should be relative to its version folder as it will be unpacked into separate directories inside the container on deployment.
-   Internationalization bundles are removed from the folder structure when the plug-in is deployed. Don't reference these files in your code.

## Example

In the following example:

-   The package version is 2.1.0
-   The package contains two components: mapField and directionsField
-   mapField has two major versions
-   directionsField has a single major version

![file](images/icon/file-zip-o.png) **geo-components\_2.1.0.zip**

-   ![file](images/icon/file-o.png) appian-component-plugin.xml
-   ![folder](images/icon/folder.png) mapField
    -   ![folder](images/icon/folder.png) v1
        -   ![file](images/icon/file-o.png) index.html
        -   ![file](images/icon/file-o.png) map.js
        -   ![file](images/icon/file-o.png) mapField\_en\_US.properties
        -   ![folder](images/icon/folder.png) images
            -   ![file](images/icon/file-o.png) maps.svg
    -   ![folder](images/icon/folder.png) v2
        -   ![file](images/icon/file-o.png) index.html
        -   ![file](images/icon/file-o.png) map-advanced.js
        -   ![file](images/icon/file-o.png) mapField\_en\_US.properties
        -   ![file](images/icon/file-o.png) mapField\_en\_GB.properties
        -   ![folder](images/icon/folder.png) images
            -   ![file](images/icon/file-o.png) maps.svg
-   ![folder](images/icon/folder.png) directionsField
    -   ![folder](images/icon/folder.png) v1
        -   ![file](images/icon/file-o.png) index.html
        -   ![file](images/icon/file-o.png) directions.js
        -   ![file](images/icon/file-o.png) directionsField\_en\_US.properties
        -   ![file](images/icon/file-o.png) directionsField\_en\_GB.properties
        -   ![folder](images/icon/folder.png) images
            -   ![file](images/icon/file-o.png) directions.svg

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...