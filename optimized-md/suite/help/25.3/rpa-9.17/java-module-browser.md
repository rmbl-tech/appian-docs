---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-browser.html
original_path: rpa-9.17/java-module-browser.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Browser Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Browser module contains a number of Java methods that enable a robotic task to open and interact with web browsers. Through this module, you can navigate to a URL and interact with the web page just as a human would: click on the page controls, select options, enter values in text fields, retrieve HTML items, and more.

This page describes how to integrate browser methods into your robotic task using the Java module. See the [low-code Browser module](actions-browser.html) page for guidance in an easier and more robust development experience.

To use the Browser module in your projects, you first must [include the module dependency](develop-java.html#add-dependencies) in the pom.xml.

## Browser actions architecture

Browser actions require [Selenium](https://www.seleniumhq.org) to work properly and interact with browsers.

### Automatically update web drivers

**Note:**  Appian can only update web drivers automatically when the robotic task uses Chrome, Firefox, or Edge. If you are using Edge (IE Mode), you must add and maintain the web driver support file manually.

Instead of having to manually download and add web drivers to your support files, Appian can automatically maintain Selenium web drivers for you. This option is turned off by default.

When you select this option, Appian automatically provides the necessary web drivers for the browser you are using in your robotic tasks and the task recorder. When you allow Appian to add and update web drivers automatically, you avoid the common problem of having a web driver go out of date when the corresponding browser updates.

**Note:**  The option to automatically provide web drivers is not supported for [Appian Government Cloud (AGC)](../appian-government-cloud-overview.html) customers.

To allow Appian to automatically provide web drivers:

1.  Go to the **Settings** tab.
2.  In the **Configuration** tab, go to **Security policies**.
3.  Select **Allow Appian to provide selenium web drivers**.
4.  Click **Save security policies**.

That's it! With this option selected, there isn't anything else to configure.

### Components

This area describes each of the components needed to work with the Appian RPA Browser actions:

-   **Java Selenium drivers**: Appian RPA uses the Selenium WebDriver API, which contains different language-specific implementations, such as Java. The Java implementations, included in the Maven dependency `selenium-java`, are called **drivers**. It is important to know this terminology to avoid confusion.
-   **Servers**: executable programs that drivers communicate with. Drivers use **servers** to interact with browsers. These servers, sometimes known as _proxies_, are necessary and are available to download as external components, since they are developed by third parties. This page uses the term **servers** to avoid confusion.
-   **Browsers**: the web browsers to use in the automation. The following table summarizes browser and operating system compatibility:

    |   | Windows | Mac | Linux |
    | --- | --- | --- | --- |
    | **Chrome** | Supported | Supported | Supported |
    | **Firefox** | Supported | Supported | Supported |
    | **Edge** | Supported | Supported | Unsupported |
    | **Edge (IE Mode)** | Supported | Unsupported | Unsupported |
    | **Opera** | Unsupported | Unsupported | Unsupported |

    **Note:**  [Opera Browser](https://www.opera.com/) is only supported for RPA 9.11 and previous. Support was removed in RPA 9.12.

The following image shows how all these components are connected:

![rpa-browser-module-components](images/rpa-browser-module-components.png)

**Note:**  Edge (IE mode) requires the Internet Explorer driver support file.

Different servers available for each supported browser:

-   [**ChromeDriver**](https://sites.google.com/chromium.org/driver/): server to link Browser actions with Chrome.
-   [**EdgeWebDriver**](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/): server to link Browser actions with Edge. You'll need a specific web driver version to [use Edge (IE Mode) with the task recorder](task-recorder.html#recording-with-edge-ie-mode).
-   [**InternetExplorerDriver**](https://docs.seleniumhq.org/download/): server to link Browser actions with Edge (IE mode).
-   [**GeckoDriver**](https://github.com/mozilla/geckodriver/releases): server to link Browser actions with Firefox.

**Tip:**  If you are not [allowing Appian to provide drivers automatically](#automatically-update-web-drivers), you must add the downloaded driver to the robotic task definition as [Support Files](configure-advanced-configuration-tab.html#support-files). You must put the driver into a folder that you create with a specific name, depending on the operating system and browser, as shown below. Usually, a robotic task will only have to interact with one browser, so you don't need to upload all the files shown in the image.

Here is what the support file structure looks like for the various host machine types:

**Windows**:

![rpa-browser-windows](images/rpa-browser-windows.png)

Driver paths for Windows are case insensitive. The path can begin with an upper or lowercase letter (`ChromeWebDriver` or `chromeWebDriver`)and the robotic task will reference either with the same result.

**Mac**:

![rpa-browser-mac](images/rpa-browser-mac.png)

Driver paths for Mac are case insensitive. The path can begin with an upper or lowercase letter (`ChromeWebDriver` or `chromeWebDriver`) and the robotic task will reference either with the same result.

**Linux**:

![rpa-browser-linux](images/rpa-browser-linux.png)

Driver paths for Linux are case sensitive and must begin with an uppercase letter, for example: `ChromeWebDriver`. If the path doesn't begin with an uppercase letter, the robotic task won't be able to reference the support file.

### Compatibility between components

Not all versions of each component are compatible with each other. We recommend that you always work with the most recent versions of the browsers and their bridge servers. In all cases, they must be compatible with the Selenium version integrated into the Appian RPA Browser actions. Visit the links below for each web browser to know what versions are supported for the rest of the components:

-   **Chrome**: [See the supported versions for _ChromeDriver_](https://sites.google.com/chromium.org/driver/).
-   **Edge**: [See the supported versions for _EdgeWebDriver_](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/).
-   **Firefox**: [See the supported versions for _geckodriver_](https://firefox-source-docs.mozilla.org/testing/geckodriver/geckodriver/Support.html).
    -   Note: For Mac developers we recommend using the non-64-bit version of _geckodriver_ (ending in `macos.tar.gz` rather than `macos-aarch64.tar.gz`).

## Using the Browser Java module

This section highlights some commonly used aspects of the Browser Java module. You can find complete documentation for Appian RPA's Java methods in the Appian RPA console by clicking **Help** > **Javadoc**.

### Initialize the browser and set timeout

The core interface of the Appian RPA Browser module is `com.novayre.jidoka.browser.api.IWebBrowserSupport`. This interface provides the methods to interact with the browser and the components of a page.

This code snippet calls the interface:

```
1
2
IWebBrowserSupport browser =
    IWebBrowserSupport.getInstance(this, client);
```

Where _client_ is an instance of _IClient_ and _this_ is a reference to the robotic task that uses the module.

Once the instance of _IWebBrowserSupport_ is called, we should properly initialize it. Set the browser to use and the default timeout:

```
1
2
3
// Set the browser to Chrome
browser.setBrowserType(EBrowsers.CHROME);
browser.setTimeoutSeconds(60);
```

In this example, Google Chrome is set as the browser with a timeout of `60` seconds.

The enumerator type _EBrowsers_ contains the identifiers for all the supported browsers: `CHROME`, `EDGE`, `INTERNET_EXPLORER`, `FIREFOX`, and `OPERA`.

To set other browsers:

```
1
2
3
4
5
6
7
8
// Set the browser to Edge
browser.setBrowserType(EBrowsers.EDGE);

// Set the browser to Internet Explorer
browser.setBrowserType(EBrowsers.INTERNET_EXPLORER);

// Set the browser to Mozilla Firefox
browser.setBrowserType(EBrowsers.FIREFOX);
```

Putting it all together, the full code to initialize the Browser module is:

```
1
2
3
4
5
6
7
8
9
10
// IClient
IClient client = IClient.getInstance(this);

// IWebBrowserSupport
IWebBrowserSupport browser =
IWebBrowserSupport.getInstance(this, client);

// Set the browser to Internet Explorer
browser.setBrowserType(EBrowsers.INTERNET_EXPLORER);
browser.setTimeoutSeconds(60);
```

### Opening the browser and loading a web page

Now that you have properly initialized the browser, you can open it and navigate to a web page. This example will open the browser and visit the Appian website:

```
1
2
3
4
5
6
// Open browser
browser.initBrowser();

// Navigate to a URL
String url = "https://www.appian.com";
browser.navigate(url);
```

## FAQ

### To use the Browser module, I need three components. How can I know which version of each component to use?

Appian RPA relies on the Selenium WebDriver API to simulate user interaction in the browsers. Consult the Selenium documentation below for your browser and your browser version. Refer to the [Browser module architecture](#browser-module-architecture) for instructions on how to configure the robotic tasks.

| Browser | Page |
| --- | --- |
| Firefox | [https://firefox-source-docs.mozilla.org/testing/geckodriver/Support.html](https://firefox-source-docs.mozilla.org/testing/geckodriver/Support.html) |
| Chrome | [https://googlechromelabs.github.io/chrome-for-testing/](https://googlechromelabs.github.io/chrome-for-testing/) |
| IE11 | [https://raw.githubusercontent.com/SeleniumHQ/selenium/master/cpp/iedriverserver/CHANGELOG](https://raw.githubusercontent.com/SeleniumHQ/selenium/master/cpp/iedriverserver/CHANGELOG) |

For further information, go to the [Selenium website](https://www.selenium.dev/downloads/).

### How can I move through tabs that open in the browser?

When a new tab is opened by the browser either automatically or as the result of a user action, you are required to explicitly switch to this tab if you want to interact with it.

To change from one tab to another in the Browser module, you must call the _switchTo()_ method as described below:

-   Get the open windows/tabs using the driver with the method _browser.getDriver().getWindowHandles();_
-   Switch to the desired window/tab using the method _browser.getDriver().switchTo().window(…);_

Example:

```
1
2
3
List<String> tabs = new ArrayList<String>(browser.getDriver().getWindowHandles());

browser.getDriver().switchTo().window(tabs.get(tabs.size() - 1));
```

### The Browser module does not locate an element I'm visualizing in the browser inspector because it is in another frame. How do I access it?

To access the elements contained in another frame or another pop-up window, you must be positioned inside it. Using the element inspector of the browser, get the name of the frame containing the element to find and use it in the method _browser.frameSetNavigation(String frame)_.

### Can I use JavaScript in my robotic task code?

Yes, the Browser module is developed from Selenium and the developer can use all the options that Selenium offers by getting the driver invoking `browser.getDriver()`.

To run JavaScript, use the following code:

```
1
2
3
JavascriptExecutor jsExecutor = ((JavascriptExecutor) browser.getDriver());

jsExecutor.executeScript("YOUR CODE HERE");
```

### The findElement(By by) method take a lot of time when the WebElement is not present. Why?

The purpose of the method _findElement_ is to wait for a page to be completely loaded and to find an element on this page. As such, this method uses the default timeout defined in the Browser module (60 seconds). This means that if the element is not present on the page, the method keeps looking for up to 60 seconds.

To find a WebElement that is not always present in the page, use one of the following options:

-   Use the _existsElement()_ method, which has a shorter default timeout.

    ```
    1
    2
    3
    4
    5
      if (browser.existsElement(By.xpath("//xpath/expression"))) {
            server.info("Doesn't exist the element");
      } else {
            // ...
      }
    ```

-   Modify the timeout used by the _findElement_ method: `browser.setTimeOutSecondsWaitElement(int second);`

If you change this timeout for a specific action, it is recommended to restore it afterwards.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...