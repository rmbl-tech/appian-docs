---
source_url: https://docs.appian.com/suite/help/25.3/configuring_site_typefaces.html
original_path: configuring_site_typefaces.html
version: "25.3"
title: "Custom Typefaces"
page_id: "configuring_site_typefaces"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Typefaces

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Know Your Typography

This video from the UI Design Tips series introduces you to fonts and typefaces, as well as how to use rich text. For more tips, check out the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity).

## Overview

Appian lets you select a custom typeface to use universally across all [sites](Sites.html) in the environment and all [portals](portals-home.html) published from the environment. This should be used if your company has a style guide that requires a specific typeface.

![gif of a dashboard with fonts that change from an sans serif font to a serif font](images/dashboard-fonts-29.png)

Custom typefaces for sites and portals are configured in the [Administration Console](Appian_Administration_Console.html#typefaces). This page walks through the process for setting up a custom typeface.

## Font files

Font files must be hosted outside of Appian to use this feature. Files can be hosted at any trusted location. You can consider Google Fonts as a source. If your instance is self-managed, we recommend hosting the files at the same domain as your Appian instance to optimize performance.

### Which files do I need?

This feature can use WOFF 1.0, WOFF 2.0, TTF, or OTF files. WOFF 1.0, TTF, and OTF work on all supported browsers. WOFF 2.0 works on all supported browsers. Either TTF or OTF, but not both, are required for use on [Appian Mobile](Appian_for_Mobile_Devices.html).

WOFF 2.0 offers the best performance and we recommend that you always add these files if they are available. We recommend you add either TTF or OTF files if your users use Appian Mobile.

Font files typically come in nine weights:

-   Thin (100)
-   Extra-Light (200)
-   Light (300)
-   Regular (400)
-   Medium (500)
-   Semi-Bold (600)
-   Bold (700)
-   Extra Bold (800)
-   Black (900)

Each of these nine weights typically also come in italic and non-italic forms.

Appian only uses four weights:

-   Light (300)
-   Regular (400)
-   Semi-Bold (600)
-   Bold (700)

These are the only four weights we ask for on the configuration screen. If you are configuring the typeface for use on Appian Mobile, you will also be asked to provide the italic version of these four weights. For web browsers, Appian only requires the non-italic font files.

You should also consider the languages that your users will need. There is no standard organization of font files: some fonts provide every unicode character (glyph) for multiple languages in a single file while others split the glyphs across multiple files. English characters are typically found in a file labeled "Latin". The additional accented characters used by non-English Romance languages, such as the é, î, ü, are found in a file labeled "Latin-Extended".

Before you begin setting up the typeface, make sure you have a link to the WOFF 1.0, WOFF 2.0, TTF, and/or OTF font files ready for every language you need to support in the four weights (300, 400, 600, 700) used in Appian and the matching italic files if you are configuring typefaces for Appian Mobile.

### Fallback behavior

If a user tries to type or view a glyph that is missing from the font files provided in the Admin Console, the glyph will still render. Depending on the browser and the set of files provided, the glyph will either render in a different weight or in the default Appian typeface: Open Sans on web, Roboto on Android, and San Francisco on iOS.

For example, if a user fills out a form in Arabic but only Latin files were provided, those characters will render in Open Sans. If a user renders bold text but only the Regular (400) weight file was provided, they will most likely see the text using the 400-weight files, possibly with a bold styling applied.

## Adding a custom typeface in the Administration Console

Let's walk through configuring a typeface for web browsers. For this example, we will set up Roboto Slab in English and Spanish using font files hosted at Google Fonts. We only have three files to use. The URLs for these font files are as follows:

| Weight + Alphabet | WOFF 2.0 | WOFF 1.0 |
| --- | --- | --- |
| Latin All Weights | https://fonts.gstatic.com/s/robotoslab/v11/BngMUXZYTXPIvIBgJJSb6ufN5qU.woff2 | https://fonts.gstatic.com/s/robotoslab/v11/BngbUXZYTXPIvIBgJJSb6s3BzlRRfKOFbvjo0oSmb2Rl.woff |
| Latin-Extended | https://fonts.gstatic.com/s/robotolab/v11/BngMUXZYTXPIvIBgJJSb6ufA5qW54A.woff2 |  |

To add new typefaces and language groups:

1.  In the Administration Console, under **SYSTEM** properties, select **Typefaces**.
2.  Click **\+ Add Typeface**.

    ![screenshot of the sites typefaces page in the Admin Console with the default set to Open Sans](images/sitesTypefacePageDefault.png)

3.  For **Typeface Name**, enter `Roboto Slab`.
    -   The name is never exposed to users, but should be descriptive to the Administrator so they know which typeface is selected.
4.  Add the WOFF 2.0 Latin files.
    -   Since we only have one file with all Latin weights in this example, we will put the same URL into each row under **WOFF 2.0 URL (.woff2)**.
5.  Add the WOFF 1.0 Latin files.
    -   As above, we will put the same URL into each row under **WOFF 1.0 URL (.woff1)**.
6.  Click **Add another language group** to add additional language files.
7.  For **Name** of the first language group, enter `Latin`. For **Name** of the second group, enter `Latin Extended`.
    -   The language group names are not required and are only used on this interface to help you keep track of the files that have been added.
8.  In the new language group, add the file for **Latin-Extended** by pasting the same URL into each row for **WOFF 2.0**.
    -   In this example, we do not have WOFF 1.0 files for Latin-Extended, so we'll leave this column blank. This means all web browsers will render using Roboto Slab.
9.  Click **OK**.

    ![screenshot of the typefaces weights grid with all the present URLS for Roboto Slab](images/typefaceGridWeights.png)

To make your typeface active and preview the font:

1.  Under **Active**, select the checkbox to set the **Roboto Slab** typeface to active.
2.  In the preview, visually check to make sure that each line in the new font displays unitalicized and with the correct weight.
3.  Click **Save Changes**.

Now all sites and future published portals will use the Roboto Slab typeface on web browsers.

![screenshot of the sites typeface page with Roboto Slab as the active typeface and shown in the preview](images/sitesTypefacePageRobotoSlab.png)

## Adding a typeface for use in Appian Mobile

Now let's continue the above example and configure a typeface for Appian Mobile.

We will use URLs that do not evaluate to anything for the example. You should replace the URLs with your own functioning font files.

| Weight + Alphabet | Regular | Italic |
| --- | --- | --- |
| Latin 300 | https://appian.com/300.ttf | https://appian.com/300-italic.ttf |
| Latin 400 | https://appian.com/400.ttf | https://appian.com/400-italic.ttf |
| Latin 600 | https://appian.com/600.ttf | https://appian.com/600-italic.ttf |
| Latin 700 | https://appian.com/700.ttf | https://appian.com/700-italic.ttf |

To add these files:

1.  Next to the Roboto Slab typeface that you [just added](#adding-a-custom-typeface-in-the-administration-console), click **Edit** .
2.  Select **Include TTF or OTF files (required for mobile)**. This will add two more columns to the grid.
3.  In your `Latin` language group, paste the non-italic URLs into the **.ttf or .otf URL (Regular)** column in the corresponding row for each weight.
4.  Paste the italic URLs into the **.ttf or .otf URL (Italic)** column in the corresponding row for each weight.
5.  Click **OK**

![screenshot of adding the mobile font files into the Add Typeface dialog](images/typefaceGridMobile.png)

Since you set `Roboto Slab` to be the active typeface above, these changes will take effect in sites immediately. To see the new typeface on sites on Appian Mobile, sign out and back in the application.

## Using an operating system typeface

There is a small set of typefaces that are available on most modern operating systems. These will work on web browsers but not Appian Mobile.

To add an operating system typeface:

1.  In **Typefaces**, click **\+ Add Typeface**.
2.  For **Typeface Name**, enter one of the following:
    -   Arial
    -   Courier New
    -   Georgia
    -   Helvetica
    -   Tahoma
    -   Times New Roman
    -   Verdana

![screenshot of adding the Arial typeface into the Add Typeface dialog](images/typefaceGridArial.png)

If a user's operating system does not have the specified typeface installed on their system, it will use the default Appian typeface: Open Sans on web browsers, Roboto on the Android app, and San Francisco on the iOS app.

## Troubleshooting

### Troubleshooting performance

If the typeface is rendering but there are performance issues, ensure that the following are true:

-   Caching is allowed on the font files.
-   If your instance is self-managed, fonts are hosted at the same domain as the Appian instance.
-   Font files are as small as possible.
-   WOFF 2.0 is provided.
-   The language groups are organized with the most commonly used languages/glyphs at the top and the least commonly used languages/glyphs at the bottom.

### Troubleshooting glyphs

If some glyphs are not appearing in the correct typeface, try the following troubleshooting steps.

In the interface, open the **developer tools** by pressing `F12` on a web browser. See if there are any console errors related to the font files, such as `Failed to decode downloaded font`, `Access to the font at [x] from origin [y] has been blocked`, or an error originating from the URL that the font files are hosted at. If so:

-   Check if the server that is hosting the font files is up and valid.
-   Check if the domain that is hosting the font files is allowed on your Appian instance.

In the Typefaces configuration in the Administration Console, check that the preview behaves as expected:

-   Ensure each row in the preview displays in the correct font and weight.
-   Ensure each row is shown in regular font rather than italic.
-   Change the internationalization settings for your users to the language that is having the issue. Refresh and make sure the custom typeface displays in the preview using the selected language.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...