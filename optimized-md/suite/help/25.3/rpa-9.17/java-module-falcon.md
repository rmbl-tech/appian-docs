---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-falcon.html
original_path: rpa-9.17/java-module-falcon.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Falcon Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Falcon module enables your robotic task to locate images on the screen. With this functionality, a robotic task can extract text from an image, search for elements on the screen, or take full or partial screenshots.

This page describes how to integrate Falcon methods into your robotic task using the Java module. See the [Image Recognition Low-code Module](actions-image-recognition.html) page for guidance in an easier and more robust development experience.

## Using the Falcon Java module

To use the Falcon Java module, you must first [include the module dependency](develop-java.html#add-dependencies) in the pom.xml.

The core interface of the Falcon module is _IFalcon_. This interface provides methods to take full or partial screenshots and search for images.

This code snippet calls the interface:

```
1
2
IFalcon falcon =
    IFalcon.getInstance(this, windows);
```

Where `windows` is an instance of _IWindows_ and `this` is a reference to the robot that uses the module.

Once you have called the interface, you can utilize the following methods to take advantage of computer vision capabilities.

### Taking screenshots

The Falcon module allows the robotic task to take full or partial screenshots using the following methods:

| Method | Description |
| --- | --- |
| _File copyScreenToTemporalFile()_ | Take a screenshot of the entire screen and save it in a temporary file. |
| _File copyPartialScreenToTemporalFile(Rectangle crop)_ | Take a screenshot from a cropped area and save it in a temporary file. |
| _void copyScreenToFile(File file)_ | Take a screenshot of the entire screen and save it in the file received as a parameter. |
| _void copyPartialScreenToFile(File file, Rectangle crop)_ | Take a screenshot from a cropped area and save it in the file received as a parameter. |

### Searching images

The Falcon module allows you to search for images on the screen or images located within other images.

Before you can search for images, you must first add the image you want the robot to search for to your support files. The image must be taken from the resource where the robot will run to avoid differences in screen settings.

To search for images, you'll need to do three things:

1.  [Capture support images](#capturing-support-images)
2.  [Initialize the images as _IFalconImage_ instances](#initializing-images)
3.  [Utilize the _searchInScreen_ methods](#locating-images)

#### Capturing support images

The first step to searching for an image with the Falcon module is to capture the image. You can use the [**Capture support image**](actions-image-recognition.html#create-support-image-tool) tool to automate sending this image to the robotic task as a support file.

#### Initializing images

Images must be of type _IFalconImage_ to work directly with the Falcon module. _IFalconImage_ is the image abstraction used by the Falcon module. We recommend using the Appian RPA maven plugin, _jidoka-maven-plugin_, to convert support files to _IFalconImage_.

The plugin is integrated in all robotic tasks and generates a support class to automatically obtain supporting code for images. The generated class is created with the package and the name defined in the properties.

This class is mainly used to initialize all images as _IFalconImage_. The generated class will assign default values to options related to the image (_FalconImageOptions_):

-   _description_: The file name.
-   _file_: The object file with the file.
-   _colorTolerance_: .05f.

Although you can change the implementation of this class, it is not recommended since you may need to generate the class again after adding more images to the support files. Instead, if you want to modify the class, create a new class that inherits from the generated class.

To use the plugin, specify the following properties in the robot's pom.xml:

```
1
2
3
4
5
6
7
<properties>
    <jidoka.serverId>server-id</jidoka.serverId>
    <jidoka.consoleURL>consoleURL</jidoka.consoleURL>
    <jidoka.robotName>robot-id</jidoka.robotName>
    <jidoka.imageSupportClassFullName>com.novayre.jidoka.robot.JidokaImageSupport</jidoka.imageSupportClassFullName>
    <jidoka.createImageSupportClass>true</jidoka.createImageSupportClass>
</properties>
```

-   _jidoka.serverId_: The server's identifier located in `settings.xml` with the credentials of the console that contains the images. Be sure the `settings.xml` configuration file includes the API key in the password field.

    **Note:**  The credentials are the Appian service account username and [API key](../Appian_Administration_Console.html#api-keys) created in the Appian Admin Console. Note that this isn't the same API key used to authenticate with Maven.

    ```
    1
    2
    3
    4
    <server>
    <id>server-id</id>
    <password>APY_KEY_VALUE</password>
    </server>
    ```

-   _jidoka.consoleURL_: The URL of the Appian RPA Console that contains the images. For example `https://mycompany.appiancloud.com/rpa/`
-   _jidoka.robotName_: The technical identifier of the robotic task for which the support class is going to be generated. The identifier is located on the robotic task configuration page, under the General Information tab.
-   _jidoka.createImageSupportClass_: This must be set to `true` to generate the support class.

Alternatively, if you do not want to use the plugin, you can use the following methods to initialize your images as _IFalconImage_:

| Method | Description |
| --- | --- |
| _IFalconImage getImage(File file)_ | Returns a falcon image from a file. |
| _IFalconImage getImage(File file, float tolerance)_ | Returns a falcon image from a file depending on the specified tolerance. |
| _IFalconImage getImage(InputStream inputStream)_ | Returns a falcon image from an input stream. |
| _IFalconImage getImage(InputStream inputStream, float tolerance)_ | Returns a falcon image from an input stream depending on the specified tolerance. |
| _IFalconImage getImage(URL url)_ | Returns a falcon image from a URL. |
| _IFalconImage getImage(URL url, float tolerance)_ | Returns a falcon image from a URL depending on the specified tolerance. |
| _IFalconImage getImage(ImageInputStream imageInputStream)_ | Returns a falcon image from the interface _ImageInputStream_, located in the package `javax.imageio.stream`. |
| _IFalconImage getImage(ImageInputStream imageInputStream, float tolerance)_ | Returns a falcon image from the interface _ImageInputStream_, located in the package `javax.imageio.stream`, depending on the specified tolerance. |

Tolerance is the precision with which the original image is identified inside another image. Tolerance values are type _float_ and range from 0 to 1. A low tolerance may cause Falcon to be unable to identify the image because it is looking for an image with minimal differences from the searched image. Alternatively, high tolerance may cause Falcon to identify the wrong image since it will accept images with more differences than the searched image. The recommended starting value is 0.05 and can be adjusted as necessary.

To access the support file that contains your falcon image, use the _getCurrentDir()_ method. For example:

```
1
Paths.get(server.getCurrentDir(), "test.png")
```

#### Locating images

Once you have saved the image to search for in your support files and initialized it as _IFalconImage_, your robotic task can then locate the image.

When looking for an image, it's recommended to use the interface _IWaitFor_ to determine how long the robotic task should look for an image. You can indicate if an exception should be thrown if the image is not found during the allocated time.

For example, the code below tells the robotic process to search for the image defined in the _image_ parameter for 20 seconds.

```
1
windows.waitFor(this).image(20, image));
```

For more information about the interface _IWaitFor_, see the Javadocs.

You can use any of the following methods to search for the image:

| Methods | Description |
| --- | --- |
| _boolean searchInScreen(IFalconImage falconImage)_ | Locates an image on the screen. The method returns true if the image is found and updates the parameter _falconImage_ with information about its position. |
| _boolean searchInScreen(IFalconImage falconImage, boolean searchAll)_ | When _searchAll_ is true, this method locates all possible instances of an image on the screen. |
| _boolean searchInScreen(IFalconImage falconImage, Rectangle crop)_ | Searches an image using a specified rectangle on the screen. The method returns true if the image is found and updates the parameter _falconImage_ with information about its position. |
| _boolean searchInScreen(IFalconImage falconImage, Rectangle crop, boolean searchAll)_ | When _searchAll_ is true, this method locates all possible instances of an image within the specified rectangle. |

## FAQ

### Why can't Falcon find my image in the robotic process working folder?

For Falcon to find the images, you must include them in the Support Files area of the robotic process configuration.

To access images added as support files and assign them to a File variable, use the code:

```
1
File supportFile = Paths.get(server.getCurrentDir(), "folder", "fileName").toFile();'
```

Where:

-   `server.getCurrentDir()`: The working directory of the robotic process, which is where the contents of the root folder are downloaded.
-   `"folder"`: Must be an existing folder within the support files.
-   `"fileName"`: The name of the file.

### Why isn't the robotic process clicking on the image?

The problem may be that your scale setting is above 100%. On a Windows machine, the Scale and layout setting must be set to 100%.

To check your scale setting percentage, navigate to the Windows Display menu.

![rpa-faq-3.png](images/rpa-faq-3.png)

## Related tutorials

[Tutorial: Build a Low-Code Bot with Image Recognition](https://academy.appian.com/#/online-courses/20808e4e-8366-4e3a-a1aa-449271c02bdb)

Learn how to use the Image Recognition module in a robotic process

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...