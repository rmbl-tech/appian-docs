---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-client.html
original_path: rpa-9.17/java-module-client.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Client Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Client module provides basic interfaces, classes, and methods you'll use to develop robotic tasks. Because it contains essential functionality, this module is available for every robotic task.

This page describes the Client module's functions in a robotic task. The Client module comprises many core functions, such as initializing other modules, communicating with the RPA console, interacting with the screen, using the keyboard, and verifying or resetting conditions on the host machine.

This page describes how to integrate Client module methods into your robotic task. Appian RPA's [low-code Client methods](#using-the-client-low-code-methods) provide an easier and more robust development experience. For more experienced developers, this page also discusses the options available using the [Java module](#using-the-client-java-module).

## Using the Client low-code methods

The Client module includes many methods that provide essential functionality to robotic tasks. In the Appian RPA console, you won't find a single module labeled **Client**. Instead, the methods are grouped by their common functionality:

-   [**Keyboard**](actions-keyboard.html) - The methods in this group tell the robotic task to mimic interaction with the keyboard, such as pressing enter, typing text, or releasing a key it previously activated. [_IKeyboard_](#use-the-keyboard) is the corresponding Java module.
-   **MultiOS** - These methods interact with the host machine's operating system. You can configure the robotic task to return information about the environment, activate a certain window, or terminate a running process. [_MultiOS_](#interact-with-screen-elements) is the corresponding Java module.
-   **Robot** - These methods also interact with the keyboard, but can do common tasks more simply. For example, you can use these methods to execute code, copy text, and prevent the screensaver from activating. [_IJidokaRobot_](#interact-with-screen-elements) is the corresponding Java module.
-   **Server** - These methods communicate with the RPA server and console. You can use these methods to log information during the robotic task execution. [_IJidokaServer_](#communicate-with-the-appian-rpa-console) is the corresponding Java module.
-   **Smart delay** - This collection of methods mainly acts on images after waiting for specific conditions. [_IWaitFor_](#dynamic-pauses) is the corresponding Java module.
-   **Window** - These methods are similar to those in the MultiOS group, except they are specific for Windows environments. [_IWindows_](#iwindows-methods) is the corresponding Java module.

## Using the Client Java module

Because the Client module is used by every robotic task, it's added as a dependency by default. In the Maven `pom.xml` file, the dependency is listed as `jidoka-client-api-x.y.z.jar`, where `x.y.z` represents the version number.

The Client module's most important interfaces, classes, and methods are grouped in these packages:

### com.novayre.jidoka.client.api package

-   [_iRobot_](#key-actions-in-a-robotic-task): This interface defines the robotic task and publishes multiple basic methods to prepare the robotic task for execution.
-   [_JidokaFactory_](#obtain-a-module-instance): This is a utility class that enables the installation of the different modules of Appian RPA. It is used to obtain an instance of _IJidokaServer_. Although module implementations can be obtained through this class, you may find it easier to obtain them directly from static methods of the module interfaces themselves.
-   [_IJidokaServer_](#communicate-with-the-appian-rpa-console): This enables functionality for the robotic task to communicate with the Appian RPA Server. It is used to send information to the console, write in the execution log, report the number of items to be processed, report when an item begins processing, report when an item is finished processing, and report its result. It inherits from org.apache.commons.logging.Log, from _IJidokaContext_ and from _IJidokaStatistics_.
-   [_IJidokaRobot_](#interact-with-screen-elements): This interface enables functionality for keyboard and mouse control, clipboard content management, and delays.
-   [_IKeyboardSequence_](#use-the-keyboard): This interface emulates a combination or sequence of keystrokes just as a human would do. For example, the combination of keys Alt+F4 may be considered a sequence.

### com.novayre.jidoka.client.api.multios package

-   [_IClient_](#interact-with-screen-elements): This interface represents an abstraction to make low-level operating system API calls. This interface is preferred over _IWindows_, because it makes development independent of specific operating systems. Along with this interface, there are specific interfaces for Windows, Linux, and Mac.

### com.novayre.jidoka.windows.api package

-   [_IWindows_](#iwindows-methods): This interface of the module represents a Windows operating system, inherited from _IJidokaRobot_. It enables functionality to handle, enable, minimize, or maximize each window; obtain its controls; and access and manage processes.

### Key actions in a robotic task

Every robotic task must implement the _IRobot_ interface, located in the `com.novayre.jidoka.client.api.IRobot` package, as well as use the annotation _@Robot_. A class implementing this interface and annotated with _@Robot_ is a robotic task. One project can have several robotic tasks if there are several classes implementing the interface.

#### Verify conditions before the robotic task begins

There are several methods that can be called to verify the conditions of your host machine and your robotic task before execution. Some of these methods can be particularly helpful in preparing your robotic task for execution, like the _startUp()_, _beforeGetInstructions()_, and _beforeGetSupportFiles()_ methods. Note that these methods return a boolean value. If the result is `false`, the execution will not start.

The _iRobot_ interface publishes the _startUp()_ method, which will always called at the beginning of the execution of a robotic task, prior to executing the actions of the workflow. This method can be useful to verify any condition on the host machine, such as determining if a certain application is available, the screen resolution, or if the robotic task can be executed. The method can also initialize the different instances needed by the robotic task, such as _IJidokaServer_ or _IWindows_.

The code sample below shows how these instances are initialized, in addition to how to check if the robotic task can be executed or not. If possible, then the robotic task continues and starts executing the workflow.

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
11
12
13
@Override
public boolean startUp() throws Exception {
    // Initialization of the robotic task components
    server = JidokaFactory.getServer();
    windows = IJidokaRobot.getInstance(this);

    String robotName = server.getExecution(0).getRobotName();
    boolean robotAllowedNow = server.getExecution(0).isRobotAllowedNow(robotName);

    server.info(String.format("Is this robotic task allowed now?: %s", robotAllowedNow));

    return robotAllowedNow;
}
```

Another method called before execution is _beforeGetInstructions()_, which is invoked before the server gets the parameters from the console. In the following code, you can see how the _beforeGetInstructions()_ method is used to calculate the available free space.

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
11
@Override
public boolean beforeGetInstructions() throws Exception {
    server = (IJidokaServer< ? >) JidokaFactory.getServer();

    File file = new File(server.getCurrentDir());
    long freeSpace = file.getFreeSpace();

    server.info(String.format("Free space: %d bytes", freeSpace));

    return IRobot.super.beforeGetInstructions();
}
```

#### Remove previously downloaded support files

Another method to invoke before starting the execution is _beforeGetSupportFiles()_, which is invoked before obtaining the robotic task's support files from the console. This method can be used to remove previously downloaded support files.

The following code example shows how this method is used to list the previously downloaded support files.

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
11
12
13
@Override
public boolean beforeGetSupportFiles() throws Exception {
    server = (IJidokaServer< ? >) JidokaFactory.getServer();

    File folder = new File(server.getCurrentDir());
    File[] files = folder.listFiles();

    for(File file:files) {
        server.info(file.getPath());
    }

    return IRobot.super.beforeGetSupportFiles();
}
```

#### Handle errors

As in any Java program, error handling consists of handling exceptions thrown during the execution that may cause a change in the execution sequence. By default, a robotic task's execution will end if an exception is thrown from the action that is currently running.

There are two strategies for exceptions: catch and treat exceptions when they occur, or raise exceptions so that they can be treated in the code that called the method where the exception was detected.

Appian RPA allows you to cluster the code that handles the exceptions, and allows the robotic task to continue processing items from any point of the workflow immediately after treating the exception. This eliminates the need to build conditional blocks in the workflow for each possible error that may happen.

All these advantages are obtained by overwriting the _manageException()_ method from the _IRobot_ interface:

```
1
2
3
4
5
@Override
public String manageException(String action, Exception exception)
    throws Exception {
    ...
}
```

Appian RPA will invoke this method whenever an action throws an exception without catching it. It passes the method name associated to the action and the exception as parameters, encapsulated in a _InvocationTargetException()_. To retrieve the original exception, use the _getCause()_ method from _Exception_. The method must return the name of the method associated with the action where the execution will resume once the exception handling finishes. If it isn't returned, it will throw an exception and end the robotic task's execution. The default method's implementation throws the exception received as a parameter, without processing it, which causes the corresponding end of the robotic task's execution. It is recommended to call this default implementation at the end of the _manageException()_ method as a fallback to prevent the loss of exceptions that have not been caught due to having overwritten the method.

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
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
@Override
public String manageException(String action, Exception exception) throws Exception {

  // We get the message of the exception
  String errorMessage = ExceptionUtils.getRootCause(exception).getMessage();

  // We send a screenshot to the log so the user can see the screen in the moment
  server.sendScreen("Screenshot at the moment of the error");

  // If we have a FatalException we should abort the execution.
  if (ExceptionUtils.indexOfThrowable(exception, JidokaFatalException.class) >= 0) {
    server.error(StringUtils.isBlank(errorMessage) ? "Fatal error" : errorMessage);
    return IRobot.super.manageException(action, exception);
  }

  // If the error is processing one items we must mark it as a warning and go on with the next item
  if (ExceptionUtils.indexOfThrowable(exception, JidokaItemException.class) >= 0) {
    server.warn(StringUtils.isBlank(errorMessage) ? "Item error" : errorMessage);
    server.setCurrentItemResultToWarn(errorMessage);
    return "moreItems";
  }

  server.warn("Unknown exception!");

  // If we have any other exception we must abort the execution, we don't know what has happened
  return IRobot.super.manageException(action, exception);
}
```

Even though this method ends by throwing an exception, Appian RPA calls the _cleanUp()_ method from the relevant workflow libraries and the robotic task itself regardless.

When managing exceptions globally, carefully consider whether the same method is called by more than one action in the workflow. Under these circumstances, the action that should continue the execution of the workflow would be undetermined. To avoid this, encapsulate the code in a method, which will be called from the methods associated with the actions involved. This way, the robotic task can have several actions, each calling different methods, but finally executing the same piece of code.

In short, when you use global error handling, avoid using the same method in different actions to prevent the robotic task from resuming on an undetermined point of the workflow.

#### Reset the host machine after execution

The _IRobot_ interface publishes the _cleanUp()_ method. Appian RPA will always call this method, regardless of the result of the robotic task's execution. Whether it has ended successfully or it has failed throwing some exception, the end of an execution is a good moment to close the applications that the robotic task has opened or send the files that have been generated during the execution to the server.

In the example below, the `String[]` returned by the method must contain the local paths to the generated files in order to send the files to the server.

```
1
2
3
4
5
6
@Override
public String[] cleanUp() throws Exception {
	// Output file of the robot. Will be shown in the Appian RPA console
	return new String[] { inputFile };
}

```

### Library interfaces and methods

Every [Appian RPA workflow library](../libraries.html) — also known as a nanorobot — must implement the interface _INano_ and use the annotation _@Nano_ at class level. A single project can have several nanorobots.

```
1
2
3
4
@Nano
public class NanoRobot implements INano {
    ...
}
```

The _INano_ interface publishes the methods _init()_ to initiate the nanorobot (before any other action) and _cleanUp()_ to end the execution of the robotic task that is using the Appian RPA workflow library. The Appian RPA platform will always call these methods.

#### Share library values

Libraries use the _@FieldLink_ annotation to share values between the Appian RPA libraries and the robotic tasks. This annotation automatically shares the value associated with the annotation's attribute between a robotic task and an Appian RPA library. The annotation receives one parameter, which defines the value name in the Appian RPA context.

When you use the annotation in a robotic task, you must specify the name of the library followed by `::`, and the name of the attribute. If you use the annotation within the library, you must only specify the name of the attribute.

In the following code sample, we can see how a nanorobot's attribute is defined. Below it, another snippet shows how that attribute would be used within a robot.

```
1
2
3
4
5
/**
 * Application directory location
 */
@FieldLink("NanoRobot::applicationDirectory")
private String applicationDirectory;
```

When specifying the name of the library, you can indicate the version between two colons (`::`). If you don't indicate the version, any version of the library with the specified name will receive the attribute.

You can also define the annotation within the robotic task using `::` followed by the name of the attribute, which makes the value global so it can be used in any Appian RPA library.

The following code sample shows the definition of an attribute that is published globally in the Appian RPA platform:

```
1
2
3
4
5
/**
 * Server instance
 */
@FieldLink("::server")
private IJidokaServer<?> server;
```

Further on, this page describes how you can interact with the robotic tasks from the Appian RPA API in the [_IJidokaContext_](#communicate-with-the-appian-rpa-console). For now, here is a brief reference to the use of the Appian RPA API to see how the literal `:` works.

When you call a library method from the Appian RPA API using the _callNano()_ method (described later in more detail), you use construction similar to the one specified for _@FieldLink_. For methods, indicate the library name followed by the method name, with `:` as a separator. You can also add the library version between the library and method name, also separated by `:`.

### Obtain a module instance

The _JidokaFactory_ class allows you to obtain an instance of an Appian RPA module. If any error occurs, the returned value will be `null`.

To get an instance of a particular class, use the method: `getInstance(IRobot robot, String className);` where `className` is the name of the class to get.

Additionally, you can get a reference of _IJidokaServer_ by calling the method `getServer()`.

### Communicate with the Appian RPA console

An object implementing the _IJidokaServer_ interface communicates with the Appian RPA server and console. In addition to sending log messages to the console, this object does three important things to monitor a robotic task in the Appian RPA console:

-   **Notify the server about the number of items to be processed**: Robotic tasks typically operate based on items. To help determine execution progress, it's important to identify items during development. For example, a robotic task that checks warehouse stock from a list of products should read each input product (INPUT), connect to the stock database and check the stock available for the product in process, and save this information somehow (OUTPUT). In this example, an item is the product, and so each product is an item to be processed. The console needs to be notified of the total number of items to be processed to effectively monitor the robotic task's operation, evaluate each item's processing time, determine the step it is on, and estimate the total processing time. Later, we will see how to send this information to the Appian RPA Server.
-   **Notify the server when an item is being processed**: The robotic task must inform the server when an item begins processing, including:
    -   The order of the item, noting its position in the list of all items.
    -   An identifier, such as "Item 1" or "Product 5". This identifier may be any text string, but it should be descriptive. This information will appear in the execution log, so the more descriptive it is, the more it will help you identify the item on which the operation was performed.
-   **Notify the server when an item has been processed and its result**: The execution log in the console will need to list the time spent on processing each item, as well as the results of that process.

The [Item Data](#item-data) section explains how to implement these actions.

Data regarding a robotic task execution is important for the system to work properly, so be sure to use these operations and this API appropriately.

The _IJidokaServer_ interface can use generics, _IJidokaServer<T extends Serializable>_, although this is optional. The specified parameter is a class implementing _Serializable_. In Appian RPA, the generic class associated to _IJidokaServer_ is called a **context class**.

_IJidokaServer<?>_ inherits from _IJidokaStatistics_, _IJidokaContext_, and _Log_. These interfaces are described in more detail in the following sections.

#### Communication methods

Methods directly present in the _IJidokaServer_ interface override those in the _Log_ interface of _apache-commons_, except the _activeThirdPartyLog()_ method. This method allows you to send third-party logs to the execution trace using the _org.apache.commons.logging.Log_ interface. Be aware that this way of sending log to the trace will work if the classes sending it are not inside _com.novayre.jidoka_ package.

#### Item data

_IJidokaStatistics_ allows you to notify the server about the number of items to be processed, the beginning of the item processing, and its result. When the result is sent, the console considers item processing to be finished.

The methods included in _IJidokaStatistics_ are:

-   _void setNumberOfItems(int numberOfItems)_: informs the server about the total number of items to be processed.
-   _void setCurrentItem(int itemIndex, String itemKey)_: informs the server that an item began processing, including the item position (1-based) within the list of items and an item description.
-   The methods for notifying the result of an item processing are:
    -   _void setCurrentItemResultToOK()_
    -   _void setCurrentItemResultToWarn()_

The _setCurrentItemResult_ methods inform the server about a result with no error or a process with some warning. The developer chooses what kind of results to send to the server. These methods are overloaded and allow you to send a description of the processing result. This description (contained in _String detail_ below) is shown in the execution log.

-   The methods for notifying the result of an item processing, including a description, are:
    -   _void setCurrentItemResultToOK(String detail)_
    -   _void setCurrentItemResultToWarn(String detail)_

These methods have been overloaded to allow you to include information about statistics per item. This is aimed to be able to provide additional information about the result of an item processing. For example, you could add a parameter to include the cause of a warning. The overloaded methods are as follows:

-   _void setCurrentItemResultToOK(String detail, Map<String, String>)_
-   _void setCurrentItemResultToWarn(String detail, Map<String, String>)_

The example below shows how to add the statistics per item within the map in the second parameter. The code uses a Map in which the keys RESULT and DETAIL and the values OK and PASSED are added. This way, the console is informed about the properties defined in the Map for each item.

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
11
12
13
14
15
16
17
/**
 * Set the result of the process of the current item to OK.
 */
private void itemOk() {

    Map<String, String> map = new TreeMap<>();
    map.put(ETestCaseProperty.RESULT.name(), EResult.OK.name());
    map.put(ETestCaseProperty.DETAIL.name(),
            ETestCasePropertyDetail.PASSED.name());

    Enum<?> currenTestCase = tests.get(currentItem - 1);

    server.setCurrentItemResultToOK(currenTestCase.name(),
            map);

    currentItem++;
}
```

Previous methods can be emulated with _setCurrentItemResult(ItemData item)_, which extends the possibilities for notifying the server about results of an item.

The support class _ItemData_ is used to specify different options:

-   _index(int i)_: indicates the index corresponding to the item.
-   _key(String k)_: the item key.
-   _result(EResult r)_: the item result, which can be OK or WARN.
-   _subResult(ESubResult sr)_: subresult for the item, which is also a categorization of the result.
-   _detail(String d)_: detail for the item result.
-   _properties(Map<String, String> p)_: properties for the item.
-   _void setDumpSection(String dumpSection)_: allows you to send text that will be part of the notifications of the event ROBOT\_END of the console. The text supports HTML format.

In developing a robotic task in Appian RPA, remember that it is very important to notify the server about these three key aspects:

-   Total number of items to be processed
-   When an item begins processing
-   The process result, with or without description, including the index of the item whose processing has ended

#### Persist information between executions

The _IJidokaContext_ context class enables you to save persistent information between executions, such as the status or the value of the context class from a previous execution. This context class is helpful for those cases in which you are expecting that the robotic task won't be able to process all the items. Sometimes, the list of items is too large and the robotic task may need hours to process them all.

In such cases, external factors may interrupt the robotic task. For example, the applications it is using are not prepared for long processing times, machine performance, etc. Through the context class, you can specify that the robotic task resume its operation on the item where it was interrupted. This is helpful because if it starts again from the first item, it could lead to the same situation as long as the conditions that caused the interruption don't change. This would lead to never completely processing the list of items.

If the list of items to be processed is obtained from an Excel file or any other input provided by the user, the context class may not be necessary. Tracking of what has been processed and what hasn't may be registered in the Excel file or the specified input itself. The file serves as an output of the process and can be used in turn as input for the next execution.

Sometimes, the list of items to be processed is not known when the process starts, because it is dynamically gathered by the robotic task. In such cases, the context class can indicate which item is being processed from the list of items.

As mentioned earlier, the context class must be serializable because it's sent to the server to be stored and reused in a later execution. Remember that a serializable class is every class implementing the interface _Serializable_, and whose members are also _Serializable_. Typically, the context class stores values that allow our robotic task to resume at the point where it was interrupted.

##### Example

Suppose a robotic task must email the purchase invoice in PDF format to a list of customers of a shop. This list is stored in an Excel file and it contains the name, ID card, email, and details of the purchase made. Each row in the Excel file contains one purchase, so there may be more than one row per client and not necessarily consecutive, depending on the number of purchases and the moment when a customer has made them. Imagine the file contains 1000 rows. The robotic task should read the Excel file, starting at the first row, retrieve the name, the email address, the ID card, and the purchase data, generate the PDF with the invoice, and send it by email.

If for some reason the robotic task is interrupted, the next time the robotic task is launched, it will have to start again. This could result in a lot of time wasted, assuming a long processing time per row. Moreover, it doesn't seem like a good idea to send repeated emails to customers who have already received their invoices.

This can be avoided by one of two ways:

You could write the result of each item processed (each invoice) in the input Excel file and use it as an output Excel file. In turn, you could use this file again as input for the next execution.

Alternatively, you could create a context class called _ClientsContext_, which would have a property called _lastRowProcessed_. It will store the number of the last row of the Excel file that has been processed correctly. The class would look like this:

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
11
12
13
14
import java.io.Serializable;
public class ClientsContext implements Serializable {

    private static final long serialVersionUID = 1L;
    private int lastRowProcessed = 0;

    public int getLastRowProcessed() {
        return lastRowProcessed;
    }

    public void setLastRowProcessed(int lastRowProcessed) {
        this. lastRowProcessed = lastRowProcessed;
    }
}
```

The object server would be declared as follows:

```
1
2
private IJidokaServer<ClientsContext> server;
server = (IJidokaServer<ClientsContext>) JidokaFactory.getServer();
```

Later, when the item is processed, the robotic task sends an instance of _ClientsContext_ to the server to create the persistent context. The methods that retrieve and set the context class are:

-   _server.getPersistentContextValue()_, which retrieves the _context_ class. If the _context_ class did not exist, it would receive `null`.
-   _server.setPersistentContextValue(clientsContext)_, which sets or updates the _context_ class (_clientsContext_ is an instance of _ClientsContext_).
-   _server.resetPersistentContextValue()_, which resets or removes the stored _context_ class.

Context is only read once at the beginning of the execution. This way, any change made on it will not be reflected until next execution. This class was meant for that purpose, to get it at the start and update it at the end. Additionally, it is a best practice to set the context class every time an item is correctly processed.

The following code snippet lets you set which row was the last row to be successfully processed. Here `row` is the position of the last processed row:

```
1
2
clientsContext.setLastRowProcessed(row);
server.setPersistentContextValue(clientsContext);
```

When all rows have been processed, it is a good practice to send an empty context class:

```
1
server.setPersistentContextValue(new ClientsContext());
```

Then, when a new execution starts, the robotic task would obtain that empty class as the context class, thus managing the case of receiving null:

```
1
2
3
4
5
clientsContext = server.getPersistentContextValue();

if(clientsContext == null) {
    clientsContext = new ClientsContext();
}
```

Another option for more complex context classes is to send a _String_ as a class, whose value is a JSON obtained through the serialization of an object. Appian RPA will store the _String_ and it's up to the developer to restore (deserialize) the object once retrieved through _server.getPersistentContextValue()_.

##### Methods to manage context

This section describes the methods the _IJidokaContext_ interface provides to _IJidokaServer<?>_. The interface allows you to manage the context between robotic task executions and obtain parameters.

-   _Map<String, IRobotVariable> getWorkflowParameters()_: returns the robotic task execution parameters. When you run a robotic task from the Appian RPA console, you can include a value for the parameters previously created in the robotic task configuration. These parameters may be required or optional. If required, a default value may be specified.

###### Example

Suppose you're developing a robotic task to get a list of books from a bookstore's web page. Create a parameter called "author", whose default value could be `**`. This parameter will allow you to filter the books by author, so that if your robotic task receives the parameter with the value `**`, it will retrieve all the books. If it receives any other value, for example `Carl Sagan`, it will only retrieve the books whose author is Carl Sagan.

The function retrieves the parameter this way:

```
1
String paramAuthor = server.getWorkflowParameters().get("author");
```

-   \*List getSupportFiles()\*: returns the paths of the support files that the robotic task has configured in the console.
-   _String getCurrentDir()_: returns the robotic task's folder. Every robotic task has its own folder within the client's folder. This page assumes that the client is on `C:\AppianRPA`, though it can be any other folder. If, for example, the robotic task is called RobotLibrary, this method will return:

    ```
    1
      C:\AppianRPA\AppianRPA-workspace\RobotLibrary
    ```

    This method is helpful to find the folder where the workFlow variables of type `File` are stored, and to save the files generated by the robotic task, which should be in the robotic task's working directory. You can also create subfolders to save the files by using the class `Paths`:

    ```
    1
    2
    3
    4
    5
    6
    7
      // Creating the path for file.txt in the robotic task local working directory
      File file = Paths.get(server.getCurrentDir(), "file.txt").toFile();

      // Creating the path for file.txt in a subdirectory of the robotic task local
      // working directory
      File file = Paths.get(server.getCurrentDir(), "subdir",
      "file.txt").toFile();
    ```

-   _void sendScreen(String description)_: takes a screenshot of the machine where the robotic task is running and sends it to the server, passing a description as a parameter.
-   _void sendScreenIfCaptureModeEnabled(String description)_: similar to the previous method, but it only takes the screenshot if screen capture was enabled from the console when the robotic task was launched.
-   _BufferedImage getScreen()_: returns the screenshot by using an object `BufferedImage` (`java.awt.image.BufferedImage`), so you can perform some operation on it.
-   _BufferedImage getScreen(Rectangle rectangle)_: similar to the previous method, but it only captures the area delimited by the rectangle received as a parameter.
-   _T getPersistentContextValue()_: returns the context class saved in previous execution, or null if there is no previous context class.
-   _void setPersistentContextValue(T value)_: allows you to set or update the context class. It's a best practice to set it or update it immediately after an item has been processed. See [Persist information between executions](#persist-information-between-executions) for more information.
-   _void resetPersistentContext()_: this method resets or removed the persistent context for the robot.
-   _<C extends Serializable> IJidokaGlobalContext<C> getGlobalContext()_: returns a global context in which we can save and retrieve data beyond executions scope and may even be shared between different robotic tasks.
-   _Map<String, Object> getFieldLinks()_: allows you to access the fields that enable communication with the Appian RPA libraries. This method returns a Map, whose key will match the field's annotation `@FieldLink` in the library. With that key, you can set or get its value. The value of the elements in the Map is updated between the different calls to the robotic task or library actions. Likewise, if the value is updated directly on the Map, it will be available for the next execution within the attribute with the associated `FieldLink`.

```
1
2
3
4
// Update a value in the map with the shared attributes
server.getFieldLinks()
    .put("Aeb3411BancoPastorLibrary::applicationPassword",
            server.getWorkflowParameters().get("applicationPassword"));
```

If you're using linked attributes, it is not recommended to manage the map programmatically. Instead, assign a new value for the attribute.

-   _void callNano(String nanoAction)_: allows you to call an action defined in an Appian RPA library. This action does not accept input or output parameters.

    ```
    1
    2
      // Call nanorobot with API method to close application
      server.callNano("Aeb3411BancoPastorLibrary:closeApplication");
    ```

-   _Object callNanoObject(String nanoAction, Object… parameters)_: allows you to call an action defined in an Appian RPA library with parameters, and the called method to return the result. The called method must receive an object `Object...` as a parameter.
-   _List<IUsernamePassword> getCredentials(String application)_: allows you to get a list of credentials associated with an application name.

    ```
    1
    2
      // Get first credentials for Banco Pastor
      IUsernamePassword credentials = server.getCredentials("BANCO_PASTOR").get(0);
    ```

-   _void releaseCredential​(String application, String username)_: releases a previously reserved credential. When the robotic task reaches a part of the workflow where credentials are referenced, it will populate the chosen field with the username associated with the credential. If the credential has a maximum usage limit, the credential will be automatically reserved at this point as well. The credential is released when the robotic task execution ends, or you can use this method to release a credential earlier in the robotic task, rather than at the end.
-   _IUsernamePassword getCredential(String application, boolean reserve, ECredentialSearch search)_: gets a credential associated with an application, with the option to reserve the credential and specify the search algorithm, distributed or first listed. By default, the first credential listed will be the one returned.
-   _void downloadSupportFile(String relativePath)_: allows you to download [support files](configure-advanced-configuration-tab.html#support-files). Enter support files' storage location as the relative path parameter. It will be downloaded in the specified path in the host machine, with respect to the robotic task's working directory. Although the robotic task automatically downloads the needed files at the beginning of the execution, this functionality is very useful when using Falcon. The method allows you to add and change images during debugging, helps you through breakpoints to pause the execution, and provides the Display view in Eclipse when debugging remotely without needing to cancel the robot's execution.
-   _boolean updateCredential(String application, String username, String password)_: allows you to update a password associated with a specific username and application previously registered in the console. It returns `true` if the update is possible and `false` if not.

    This method is useful when a password is about to expire. In that situation, the robotic task can update the password, so that in future executions it can still log in.

    ```
    1
    2
    3
      if (mustUpdate) {
          server.updateCredential("BANCO_PASTOR", "admin", "NEW_PASSWORD");
      }
    ```

-   _void registerEvent(String eventDetailText)_: allows you to create an event within the platform with a specific associated text. The event will appear as type `ROBOT_EVENT` in the console.
-   _String getPreviousAction()_: returns the previously executed action. If the current action is the first one, it will return `null`.
-   _String getCurrentAction()_: returns the current action.
-   _IExecution getExecution(int numberOfOlderExecutionsToGet)_: allows you to get data about the current and the previous robotic task's executions. The parameter `numberOfOlderExecutionsToGet` indicates the number of previous executions that will be retrieved: `0` means that only the information about the current execution will be retrieved, `-1` means that the data about all the existing executions will be retrieved. This option should be avoided or used carefully, since it may impact console performance.
-   _executionNeedless(String reason)_: indicates that the current execution must be removed after it ends. Some robotic tasks are designed to be executed very frequently, usually to account for functional criteria. When a robotic task does not capture data to process any items, you cna remove the execution results. The parameter is the reason for the removal, which will appear in the `EXECUTION_NEEDLESS` event, generated at the same time. Note that this type of execution will always be removed, so only the event remains for later queries.

Another important functionality provided by this interface is accessing methods that can be used to encrypt or decrypt sensitive information before displaying it in places such as the execution log.

-   _String encrypt(String key, String text)_: Encrypts text using an 8-character key.
-   _String decrypt(String key, String text)_: Decrypts encrypted text using an 8-character key.
-   _String encrypt2(String key, String text)_: Encrypts text using a 32-character key.
-   _String decrypt2(String key, String text)_: Decrypts encrypted text using a 32-character key.

#### Global data

The _IJidokaGlobalContext_ interface exposes the methods needed to save and retrieve data from the global context, which is a persistent key-value type storage. You can persist objects of any type only if they are serializable.

The global context is shared between every robotic task in the console, regardless of the permissions they have assigned.

-   _T read(String id)_: reads the object ID passed as a parameter from the global context. If the specified identifier refers to an object that is locked by another execution, this method will wait until the lock ends to return the requested information.
-   _IJidokaGlobalContextHolder`<T>` readAndWrite(String id, Function<T, T> function)_: This is an atomic operation that reads the object ID passed as the first parameter and writes it after applying the function specified in the lambda expression (passed in the second parameter). The method returns an aggregation with the original object and the modified one. If the specified identifier refers to an object that is locked by another execution, this method will wait until the lock ends to return the requested information.
-   _T write(String id, T value)_: writes the object in the global context, overwriting it in case it already exists. If the specified identifier refers to an object that is locked by another execution, this method will throw an exception `JidokaGlobalContextBlockedByAnotherExecutionException`.
-   _boolean remove(String id)_: removes an object identified by the parameter ID from the global context. It returns `true` only if the object is actually removed.

#### Get data about executions

The _IExecution_ interface provides methods to get the values from executions, as well as capabilities such as programmatically launching robotic tasks. It is necessary to differentiate between a current execution and previous executions, for which you must use the _ICurrentExecutionDetail_ and _IPreviousExecutionDetail_ interfaces.

##### Methods to retrieve information

Use the _server.getExection(int executionNumber)_ method to request a specific execution. In addition to the _ICurrentExecutionDetail_ and _IPreviousExecutionDetail_ interfaces, there are a few other methods that allow you to retrieve information from the robotic task.

-   _String getRobotName()_: Returns the **ID** of the robot. The ID is a unique identifier set when the robotic task is created.
-   _ICurrentExecutionDetail getCurrentExecution()_: For the current execution, gets the execution number, date, description, robot, and parameters.
-   _List<IPreviousExecutionDetail> getPreviousExecutions()_: For the previous executions, gets the result, total number of items processed, total number of items with an OK result, and the total number of items with a WARN result.
-   _List<IRobotExecutionDetail> robotExecutions()_: Gets all executions that are staged or running at the current time. RPA's permission system is still valid in this method. The robotic task using this method must share a permission with the robotic task execution to be able to retrieve that information.

###### Current execution information

The _ICurrentExecutionDetail_ interface gets information about the current execution. The following code shows how to get an instance of this interface for a specific robotic task:

```
1
ICurrentExecutionDetail currentExecution = server.getExecution(0).getCurrentExecution();
```

A value of `0` is passed in to the _getExecution(int n)_ method to obtain an object of _IExecution_. Then, we will be able to get a reference to _ICurrentExecutionDetail_. This interface provides information through the following methods:

-   _int getExecutionNumber()_: returns the execution number.
-   _long getExecutionDate()_: returns the time when the execution started as a _long_.
-   _String getExecutionDescription()_: returns the description of the execution.
-   _Map<String, String> getWorkflowParameters()_: returns the parameters passed to the execution as a _Map_, whose key is the name of the parameter and the value is a _String_ that represents the real value of the parameter.
-   _String getPlanetName()_: returns the robot identifier where the robotic task is executed.
-   _String getPlanetCustomName()_: returns the robot name where the robotic task is executed.
-   _String getUsername()_: returns the user name who launched the execution.
-   _boolean isTesting()_: whether the execution is marked as testing or not.

###### Previous execution information

The _IPreviousExecutionDetail_ interface gets information about a finished execution. For this reason, it will return more information because data about the execution results is already known.

To get information about previous executions, use the _getExecution(int n)_ method of _IJidokaContext_, indicating the number of finished executions to retrieve. As in the previous example, the code to get this information is as follows:

```
1
List<IPreviousExecutionDetail> previousExecutions = server.getExecution(10).getPreviousExecutions();
```

This method could potentially get information about several executions, so the _getPreviousExecutions()_ method returns a list of objects of type _IPreviousExecutionDetail_. If you pass `10` as the parameter value, the method obtains the last 10 executions of the robot, if that many exist, from the most recent to the oldest.

_IPreviousExecutionDetail_ contains all the same methods as the _ICurrentExecutionDetail_ interface, plus:

-   _EExecutionResult getResult()_: returns the result of the execution, represented by the _EExecutionResult_ enumerator.
-   _int getItemsTotal()_: returns the total number of items that were processed in the execution.
-   _int getItemsOk()_: returns the number of items processed with OK.
-   _int getItemsWarn()_: returns the number of items processed with warnings.

###### Staged and in process execution information

The _IRobotExecutionDetail_ interface shows information about executions currently in progress or staged waiting for a robot.

To obtain this information, invoke the _robotExecutions()_ method of the execution obtained through the method _getExecution(int n)_:

```
1
List<IRobotExecutionDetail> actualExecutions = server.getExecution(0).robotExecutions();
```

_IRobotExecutionDetail_ contains all the same methods as the _IPreviousExecutionDetail_ interface, plus:

-   _String getRobotName()_: Returns the robotic task's id.
-   _Map<String, String> getResultProperties()_: These properties represent the global result status from a functional point of view, it can be used to easily extract information from other computational systems.

##### Methods for launching robotic tasks

To programmatically launch a robotic task, the interface exposes an overloaded method _launchRobot()_. Depending on the parameters passed, it allows you to launch the robot, launch it on the same robot as the current robot, and launch the robotic task with parameters. These parameters can be used to pass values for the robotic task's parameters.

-   _void launchRobot(String robotName)_: launches the robotic task whose name matches the `robotName`.
-   _void launchRobot(String robotName, boolean mustBeHere)_: launches the robotic task on the current robot or on any other robot with the necessary permissions, depending on whether `mustBeHere` is `true` or `false`.
-   _void launchRobot(String robotName, boolean mustBeHere, String description, List<ExecutionParameter> parameters)_: launches the robotic task on the same robot with the specified parameters. It receives a list of parameters. Each parameter attribute name must match the name given to the parameter in the console.
-   _void launchRobot(String robotName, String robot, String description, List<ExecutionParameter> parameters)_: launches the robotic task on the specified robot. If the parameter robot is `null`, the robotic task will run on the first available robot. You can specify execution parameters.

###### Launch a robotic task with execution options

All these methods can be emulated with the next one:

-   _void launchRobot(LaunchOptions options)_

With the _LaunchOptions_ support class, it is possible to define [execution options](robotic-task-execution.html), except for the robotic task and robot. The options include:

-   _robotName(String name)_: defines the robotic task name.
-   _mustBeHere(boolean b)_: indicates that the current robot must be used or any other else.
-   _node(String n)_: indicates the name of the robot where the robotic task must be launched.
-   _description(String d)_: description of the execution.
-   \*parameters(List p)\*: parameters for the robotic task.
-   _deferredDate(long l)_: specifies that the execution must be launched in the future as defined by the parameter.
-   _executionsToLaunch(int n)_: specifies how many executions have to be launched.

Remember that an execution is subject to the availability of a free robot. Therefore, the execution is staged and awaiting a robot, just as it does when manually launched from the console.

##### Rest of the methods

The following methods are included in the _IExecution_ interface:

-   _boolean isRobotAllowedNow(String robotId)_: Checks that the specified robotic task can be executed attending the restrictions in the console configuration.
-   _Map<EPlanetToRunRobot, List <String>> planetsForRobot(String robotId)_: Obtains a _Map_ with the list of all the robots and their status related to the robotic task passed as parameter. When `null` is passed, the method gets the information for the current robot. This method is useful to know what robots are compatible with a robotic task.
-   _IExecutionPendingWithHigherPriority existsExecutionPendingWithHigherPriority()_: Checks that one or more pending executions with higher priorities exist and are compatible with the current robot.

#### Send information to the server

The _Log_ interface provides methods that allow you to send log information to the server. This information will be shown in the execution log and it can be of type trace, debug, info, warn, error, or fatal. The log messages are sent through the following methods, in order of increasing severity:

-   _server.trace("This is a trace message");_
-   _server.debug("This is a message provided by the debugger");_
-   _server.info("Informative message");_
-   _server.warn("Warning message");_
-   _server.error("This is an error message");_
-   _server.fatal("A fatal error has occurred");_

Messages should be sent to the server depending on the message they are trying to convey. For example, the _debug_ messages help with development, while the _info_ messages help monitor and understand the log.

The _IJidokaContext_, _IJidokaStatistics_, and _Log_ interfaces provide great versatility to the interface _IJidokaServer_ when it comes to communicating with the server, resuming a robotic task at a certain task (avoiding starting an interrupted task over again), and other actions that help monitoring the robotic task's operation (such as sending screenshots of steps that may be of interest).

### Interact with screen elements

The _IJidokaRobot_, _IClient_, and _IWindows_ interfaces represent the robotic task.

_IJidokaRobot_ offers methods that allow you to use screen elements such as the keyboard and the mouse. Its methods also help adapt the working speed to a human's working pace when necessary through actions such as pausing the execution.

_IWindows_ is suitable for robotic tasks running on Windows operating systems and inherits all its functions and capabilities from _IJidokaRobot_. It offers Windows low-level handling and control support. A robotic task running on Windows systems could use:

```
1
IWindows windows = IWindows.getInstance(this);
```

This accesses methods for Windows handling and control offered by _IWindows_. However, if you need to ensure that your automation can be executed on any operating system, use the _IClient_ interface. This interface also inherits from _IJidokaRobot_, but the available methods are valid on any operating system:

```
1
IClient client = IClient.getInstance(this);
```

Additionally, you can use an _ILinux_ instance. Appian RPA instantiates the following interfaces:

-   When you use _IWindows.getInstance(this)_, _IWindows_ will always request an _IWindows_ instance to _JidokaFactory_.
-   When you use _IJidokaRobot.getInstance(this)_, _IJidokaRobot_ will determine which instance is required to _JidokaFactory_ depending on the operating system. If it is Mac, the _IJidokaRobot_ instance will be returned. If it is Windows it will return an _IWindows_ instance. If it is Linux, it will return an _ILinux_ instance.

The next section defines the methods provided by _IJidokaRobot_, which are inherited by _IWindows_ and _ILinux_. Additional methods in _IWindows_ are described later.

#### IJidokaRobot methods

_IJidokaRobot_ provides other methods to help us in other common tasks.

##### Copy/paste information with the clipboard

It's very common to copy or paste information using a computer's clipboard. Appian RPA can do these tasks with two methods: _clipboardSet(String value)_ to save the value to the clipboard, and _clipboardGet()_ to return a _String_ with the information contained in the clipboard.

##### Repeating actions

The _repeat()_ method allows you to perform an action repeatedly. It receives three arguments: a lambda expression with the action, the number of repetitions, and the pause duration between iterations. An example is shown below:

```
1
client.repeat(IWorker action, int repetitions, long millis)
```

This method can be helpful to perform repeated keystrokes and then pause for each iteration. For example:

```
1
client.repeat(() -> keyboard.tab(), 3, 1000);
```

This will press the tab key three times, waiting one second between each keystroke. _IJidokaRobot_ has more methods, such as _antiScreenSaver()_ to perform a slight mouse movement to prevent the screensaver to start or stop it if it is active. Along with this method there are _activateScreenSaver()_ and _deactivateAntiScreenSaver()_, used to activate and deactivate this capability.

Other methods, like _waitCondition_, are detailed in a later section.

#### IWindows methods

The _IWindows_ interface inherits many methods from _IJidokaRobot_ and provides a lot of Windows-specific functionalities. If your robotic task is going to run on a Windows operating system and operate applications which run on Windows, use this interface. The [_UIAutomation_ module](java-module-ui-automation.html) is preferred for handling Windows over this interface.

The example below shows how to get an instance of _IWindows_ on Windows environments:

```
1
IWindows windows = IWindows.getInstance(this);
```

_IWindows_ uses [JNA (Java Native Access)](https://github.com/java-native-access/jna) for easier windows handling.

_IWindows_ contains the following methods:

-   _HWND getForegroundWindow()_: provides a handler for the application window in the foreground.
-   _String getActiveWindowTitle()_: gets the active window's title in String format.
-   _HWND getActiveWindow()_: gets the active window's HWND, which is only valid it we are the window's owners. Most of the times we should use _getForegroundWindow()_.
-   _boolean isWindowVisible(HWND hWnd)_: determines whether the window represented by HWND is visible or not.
-   _boolean activateWindow(String regexp)_: activates the window specified by regular expression to find the window by its title. For example, when you open the Notepad, the application window title is "Untitled - Notepad". Use this method:

    ```
    1
      robot.activateWindow("Untitled - No.*");
    ```

-   _WindowInfo getWindow(String regexp)_: gets the object _WindowInfo_, from a regular expression. _WindowInfo_ implements _IActionable_, so you can use the _IActionable_ methods in the window. For example, this code sample shows how to click with the left mouse button on the coordinates (100, 50) relative to the window that we have just obtained with the method _getWindow("Untitled – N.\*")_:

    ```
    1
      robot.getWindow("Untitled - No.*").mouseLeftClick(new Point(100,50));
    ```

    Conversely, this example show how to click with the left mouse button on the coordinates (100, 50) of the screen, which most likely won't match the previous coordinate:

    ```
    1
      robot.mouseLeftClick(new Point(100,50));
    ```

-   _String getWindowText(HWND hWnd)_: obtains the text from the window or control specified by hWnd.
-   _RECT getWindowRect(HWND hWnd)_: obtains the object RECT (`com.sun.jna.platform.win32.WinDef.RECT`) from the window specified by hWnd.
-   _WINDOWINFO getWindowInfo(HWND hWnd)_: gets the object _WINDOWINFO_ (`com.sun.jna.platform.win32.WinDef.WINDOWINFO`) from the window specified by hWnd.
-   _String getWindowClassName(HWND hWnd)_: returns the _Windows_ class name of the window specified by _hWnd_.
-   _WindowInfo getWindowInfoClass(HWND hWnd)_: returns an instance of _WindowInfo_ from the HWND specified by _hWnd_.
-   _boolean showWindow(HWND hWnd, EShowWindowState cmdShow)_: shows the window specified by _hWnd_, specified by _cmdShow_, of type _EShowWindowState_. This is an enum type which contains several ways of showing a window. The possible values are:
    -   SW\_FORCEMINIMIZE: minimizes the window, even if the process is not responding.
    -   SW\_HIDE: hides the window and activates the next one.
    -   SW\_MAXIMIZE: maximizes the window, but does not activate it.
    -   SW\_MINIMIZE: minimizes the window and activates the one immediately above it in the desktop windows queue.
    -   SW\_RESTORE: activates and shows the window. If the window is minimized or maximized, it is restored it to its original position and size.
    -   SW\_SHOW: activates the window and shows it in its current position and size.
    -   SW\_SHOWDEFAULT: shows the window in the position and size that were determined when the process that created the window was launched.
    -   SW\_SHOWMAXIMIZED: activates the window and maximizes it.
    -   SW\_SHOWMINIMIZED: activates the window and minimizes it.
    -   SW\_SHOWMINNOACTIVE: similar to SW\_SHOWMINIMIZED but it does not activate the window.
    -   SW\_SHOWNA: similar to SW\_SHOW but it does not activate the window.
    -   SW\_SHOWNORMAL: activates and shows the window. If the window is minimized or maximized, it is restored it to its original position and size.
    -   SW\_SHOWNOACTIVATE: shows the window using its most recent position and size, but it does not activate it.
-   _List<WindowInfo> enumWindows()_: obtains a list of objects _WindowInfo_ with the main windows. _WindowInfo_, which also implements _IActionable_, is a container that stores the information related to a window. It allows you to get an object _Rectangle_ (`java.awt.Rectangle`) for the window, perform mouse operations on the window, and obtain and modify the object _WINDOWINFO_ (`com.sun.jna.platform.win32.WinUser.WINDOWINFO`).
-   _List<WindowInfo> enumChildWindows(HWND parent)_: similar to the previous method, gets a list of _WindowInfo_ objects, each of which is a child of a window identified by the _parent_.
-   _boolean destroyWindow(HWND hWnd)_: closes and clears the window identified by hWnd.

The following methods are related to **Windows controls**. Although, as mentioned above, we recommend using the UIAutomation module:

-   _HWND getControl(HWND hWndParent, int id)_: gets the handler of a Windows control whose container is the one identified by _hWndParent_, using the control _id_.
-   _int getControlId(HWND hWndControl)_: gets the control _id_ of the control identified by _hWndControl_.
-   _boolean selectControlText()_: selects the text within a control.
-   _IField getField(Point location)_: obtains a text field located on the position specified by location. This method should only be used to work with text fields (Edit). The interface _IField_ contains the following methods:
    -   _String getValue()_: gets the text field value.
    -   _default void setValue(String value)_: sets the text field value.
    -   _void setValue(String value, boolean clean)_: sets the text field value, after erasing the previous text.
-   _ICombo getCombo(HWND hWnd)_: returns an _ICombo_ object, which enables access to these kind of controls. The parameter _hWnd_ corresponds with a Windows type _ComboBox_ control. The _ICombo_ methods may not work if the _HWND_ parameter is of any other Windows type or class. The _ICombo_ interface has the following methods:
    -   _String getValue()_: obtains the text from the currently selected item within the ComboBox.
    -   _void setValue(String value)_: establishes the selected item based on its text.
    -   _int getValueIndex()_: obtains the currently selected item index (0-based).
    -   _void setValueIndex(int index)_: establishes the selected item based on its index (0-based).

The following methods are related to the **mouse and the cursor**:

-   _CursorInfo getCursorInfo()_: obtains the current _CursorInfo_ object. _CursorInfo_ stores information about the mouse pointer. There are two important properties concerning _CursorInfo_:
    -   _CursorInfoStruct_ info is a container for the pointer structure, which inherits from `com.sun.jna.Structure`.
    -   _ECursorType_ type is an enum type which contains the different pointer types. The Appian RPA client provides information about the current pointer type through the "Element Inspector" menu.
-   _boolean isCurrentCursor(ECursorType cursorType)_: returns `true` if the current pointer type is the one specified by _cursorType_. This is useful to know if the mouse pointer has changed after moving it to a specific position.
-   _String copyAndGet()_: represents the key combination `Ctrl + C`. It copies the current selection to the clipboard. If it can't access the clipboard or the selection is empty, it will return `null`.
-   _String cleanCopyAndGet()_: similar to the previous method, but this one previously cleans the clipboard. It returns `null` under the same conditions as the previous method.

Next, let's have a look at the **process-related methods**:

-   _List<Process> enumProcesses()_: returns a list of processes, which are represented by the class _Process_. This class is a representation of a Windows process.
-   _void killProcess(String name)_: ends a process by its name. The _Process_ property _name_ returns the process's name including the `.exe` extension.
-   _void killAllProcesses(String name, long pauseBetweenProcess)_: ends all processes specified by name, making a pause that lasts _pauseBetweenProcess_ (expressed in milliseconds) after each process ending.
-   _Process getProcess(String name)_: obtains the process by its name.

Other methods related to the _IWindows_ interface are:

-   _void setNumLock(boolean active)_: activates or deactivates _NumLock_ depending on the active value.
-   _void sendRawKey(int key, boolean pressed, int scanCode)_: low-level method that allows you to interact with the keyboard through the scan code associated with the key. This method is only valid for Windows systems. The parameters are as follows:

    -   _key_: corresponds with the values of the Java class `java.awt.event.KeyEvent`. It only takes effect when _scanCode_ is 0.
    -   _pressed_: indicate whether to press or release the key.
    -   _scanCode_: value Windows uses to obtain the real key to be used, provided its value is different from 0.

    For example, to press the intro key in the numeric keypad, use the following code snippet:

    ```
    1
    2
      windows.sendRawKey(0, true, 0xe01c);
      windows.sendRawKey(0, false, 0xe01c);
    ```

-   _void resetModKeys()_: makes the operating system release the keys `alt`, `shift`, and `control` if any of them are pressed.
-   _boolean virtualKeyPressed(int virtualKey)_: returns the key status. For example, you can check if the `alt`, `shift`, or `control` keys are pressed. The parameter may correspond with the values of the Java class `java.awt.event.KeyEvent`, though this Java class does not cover all the possibilities and you can also indicate some other values.
-   _void setCapsLock(boolean active)_: If _active_ is `true`, activates caps lock. If `false`, deactivates caps lock.

For more methods provided by this interface, consult the Javadocs in the Appian RPA Console. In the console, click **Help > Javadoc** in the left menu.

### Use the keyboard

To emulate keyboard use, Appian RPA uses scan codes, also known as the "physical codes" associated with the keys.

Due to the diversity of keyboard distributions for different languages on the operating system, the scan codes may not represent the key that you want to press. For example, the character "?". The key assigned to the question mark is different for English and Spanish. If the operating system is working in English, the received character would be `_`, which is in the same keyboard position.

To account for this, you can change the keyboard distribution to use, so that the emulation is done through the key combination _ALT+ number_. This option is available by using the method _setVariant_ of _IJidokaRobot_.

An exception is thrown when a character isn't supported, regardless of the keyboard distribution you are using.

_IJidokaRobot_ provides the following methods for keyboard usage:

-   _void typeText(String text)_: allows you to enter the text specified within text just as a human would do.
-   _void typingPause(long millis)_: sets the duration the robotic task must pause (in milliseconds) after it has entered the text or an _IKeyboardSequence_. To override a default pause, set the parameter millis to 0.
-   _long getTypingPause()_: gets the duration the robotic task must pause (in milliseconds) after it has entered the text or an _IKeyboardSequence_.
-   _void setVariant(EKeyboardVariant variant)_: changes the keyboard distribution, choosing either _SCAN_, which is the default option, or _ALT_.
-   _IKeyboardSequence getKeyboardSequence()_: gets an instance of the _IKeyboardSequence_ interface.
-   _IKeyboardSequence keyboardSequence()_: similar to the previous method, returns an instance of _IKeyboardSequence_.
-   _IKeyboard getKeyboard()_: gets an instance of the _IKeyboard_ interface.
-   _IKeyboard keyboard()_: similar to the previous method, returns an instance of _IKeyboard_.
-   _void typeText(IKeyboardSequence sequence)_: allows you to process key combinations through _IKeyboardSequence_.

As you can see, the method _typeText_ is overloaded. It accepts both text (String text) and _IKeyboardSequence_ (_IKeyboardSequence_ sequence). The _IKeyboardSequence_ and _IKeyboard_ interfaces are described below.

#### Use the keys with IKeyboardSequence

Every time you press _Ctrl + C_ to copy, _Ctrl + V_ to paste or _Alt + F4_ to close a window in most applications, you are executing keystroke sequences. The _IKeyboardSequence_ interface lets you enter such sequences using the robotic task. You can also accomplish other actions such as entering text or caps locking. You can chain calls to this interface's methods so that several methods make up a full key sequence or text typing.

To get an instance of _IKeyboardSequence_, enter the following:

```
1
robot.getKeyboardSequence();
```

Once you obtain the instance, add the necessary methods to build the key sequence. Use the _type()_ method to enter text and keystrokes. Let's see some examples.

##### Type text or activate keys

In this example, the goal is to enter some text or one keystroke by using _IKeyboardSequence._ This example uses the _type(String text)_ method of _IKeyboardSequence_. The following code applies the sequence just as a human would:

```
1
robot.getKeyboardSequence().type("Example text).apply();
```

Using _IKeyboardSequence_ to enter text is recommended if it is part of a keystroke sequence or other key combination. If you only want to enter text, it is more appropriate to use the _typeText()_ method of _IJidokaRobot_:

```
1
robot.typeText("Example text);
```

The _type()_ method is an emulation of a keystroke. This code will engage the "r" key, for example:

```
1
robot.getKeyboardSequence().type("r").apply();
```

One of the overloaded versions of the _type_ method allows you to specify how many times you want to engage the key:

_type(String text, int repetition):_

For example, this code will engage the "r" key three times.

```
1
robot.getKeyboardSequence().type("r", 3).apply();
```

##### Key sequences and common combinations

_IKeyboardSequence_ also provides a number of methods that simplify certain keystrokes.

The _press(int key)_ and _release (int key)_ methods respectively press and release the specified key using the key code. When using the _press_ method, the key will remain pressed until it is released with the _release()_ method. The integer representing the key in these methods must match the values provided by the Java class `java.awt.event.KeyEvent`.

Some frequently used combinations, such as pressing _Alt + key_ or _Ctrl + key_, are made easier with specific methods. For example, you could use _pressAlt()_ and _releaseAlt()_, which respectively press and release the Alt key. The following example shows the sequence with Alt + E:

```
1
robot.getKeyboardSequence().pressAlt().type("e").releaseAlt().apply();
```

The alternative is:

```
1
robot.typeText(robot.getKeyboardSequence().pressAlt().type("e").releaseAlt());
```

There are additional methods for specific actions, such as _pressShift_ and _releaseShift_, or _pressControl_ and _releaseControl_. Remember that it is important to release the key that have been previously pressed.

There are also some methods to press and release keys in the same action, such as _typeReturn()_, _typeTab()_, _typeControl()_, and _typeEscape()_. There is even a method that emulates the sequence _Alt + Fx_: _typeAltF(int numberF)_. The following example shows the _Alt + F2_ key sequence:

```
1
robot.getKeyboardSequence().typeAltF(2).apply();
```

Additionally, these methods are overloaded to specify how many keystrokes you want. This way, you can easily move throughout a form, for example, by using the method _typeTab( int repetitions)_. Other methods resolve some common tasks. For example, the following line is equivalent to "select all".

```
1
robot.getKeyboardSequence().selectAll().apply();
```

##### Other common keys

There are also methods to emulate other keystrokes such as Home, End, Page Up, Page Down, and the up, down, left and right arrows. The following code sample emulates a keystroke of the up arrow key and two keystrokes of the right arrow key. The second line presses the Page Down key.

```
1
2
robot.getKeyboardSequence().up().right(2).apply();
robot.getKeyboardSequence().pageDown().apply();
```

Many of these methods are overloaded and accept an integer parameter to indicate the number of keystrokes needed for the specified key.

##### Pauses

Sometimes you may need the robotic task to pause within a sequence. To make _IKeyboardSequence_ do so, use the _pause_ method. The following code emulates a keystroke on the space bar, followed by a pause, a keystroke on the _E_ key, and the _Return_ key:

```
1
robot.getKeyboardSequence().typeSpace().pause().type("e").typeReturn().apply();
```

##### Scan codes in IKeyboardSequence

The _IKeyboardSequence_ interface uses key scan codes to interact with the less common keys or those which are not represented by a single character. For example, the keys located on the numeric pad can't be represented like their counterparts on the conventional keyboard. The following methods work properly only on Windows systems:

-   _IKeyboardSequence pressScanCode(int scanCode)_: presses the key associated with the scanCode.
-   _IKeyboardSequence releaseScanCode(int scanCode)_: releases the key associated with the scanCode.
-   _IKeyboardSequence typeScanCode(int scanCode)_: presses and releases the key associated with the scanCode.

For example, the following code shows how to press the intro key on the numeric pad:

```
1
windows.getKeyboardSequence().typeScanCode(0x0e01c).apply();
```

#### Simplified keystrokes with IKeyboard

_IKeyboard_ is very similar to _IKeyboardSequence_ but it simplifies even more the emulation of the most common keystrokes. The main difference is that each method emulates the keystroke directly. To get an instance of _IKeyboard_, use:

```
1
robot.keyboard();
```

Some methods are similar to their counterparts in _IKeyboardSequence_. For example, _type (String text)_ or _type (String text, int repetition)_, and some others simplify the simultaneous keystrokes, such as _alt (String letter)_, _altF (int numberF)_ or _control (String letter)_.

The pause method in _IKeyboard_ is overloaded and allows you to set the pause duration in milliseconds: _pause (long millis)_.

_IKeyboard_ aims to simplify some keyboard functions already provided by _IKeyboardSequence_.

For example, with _IKeyboardSequence_ you could emulate the key sequence Ctrl + E using this code:

```
1
robot.getKeyboardSequence().pressControl().type("e").releaseControl();
```

But with _IKeyboard_, you can simplify it to:

```
1
robot.keyboard().control("e");
```

##### Scan codes in IKeyboard

The _IKeyboard_ interface uses the same methods and scan codes as _IKeyboardSequence_ to let you work with the keys at a low level. For example, the following code shows how to press the intro key on the numeric pad:

```
1
windows.getKeyboard().scanCode(0xe01c);
```

#### Using the mouse

_IJidokaRobot_ inherits methods from _IActionable_, which is an interface that provides methods for mouse handling as well as other capabilities and access to objects that we will need to manage the mouse.

For example, the _getRectangle()_ method returns the _Rectangle (java.awt.Rectangle)_ of the screen. A _Rectangle_ object represents a rectangular area which is determined by x/y coordinates representing its upper left-hand corner, its width and height, as well as many other properties and useful methods.

##### Moving the cursor

The _mouseMove_() and _mouseMove(Point coordinates)_ methods move the cursor to the object's upper left-hand corner or to the position specified by coordinates. The coordinates are **relative** to the object's upper left-hand corner. The _mouseMoveToCenter()_ method moves the cursor to the object's center.

##### Clicking an object

There are several methods for clicking an object:

-   _clickOnCenter()_ emulates clicking on an object's center.
-   _mouseLeftClick()_ and _mouseLeftClick(Point coordinates)_ emulate left-clicking.
-   _mouseRightClick()_ and _mouseRightClick(Point coordinates)_ emulate right-clicking.

There are also methods to emulate double-clicking an object: _mouseDoubleLeftClick()_ and _mouseDoubleLeftClick(Point coordinates)._

#### Pauses

_IJidokaRobot_ also contains a _pause_ method to adapt the robot's working speed to the applications it is using. You can specify the pause duration with _pause(long millis)_.

The _defaultPause(long millis)_ method sets the pause's default duration in milliseconds. The robotic task will pause for this time each time it calls the _pause()_ method without a specific duration parameter.

You can also use the _characterPause(long millis)_ method, which allows you to set a pause between characters while typing a text string to mimic how long it might take a human to type the words.

##### Dynamic pauses

Appian RPA robotic tasks must adapt their working pace to the applications they're using. This means that it should consider that applications have been designed to be used by a human. You can use methods to set the robotic task's pace so it doesn't overwhelm or work faster than the applications it interacts with.

This waiting time will depend on a number of factors such as the performance of the machine on which the robotic task is running (processor, RAM, virtual environment), the execution speed of the application itself (it must previously load certain modules or files), or the machine overload at that time.

The pause (_pause()_ and _pause(long millis)_) methods pause a robotic task execution for a fixed amount of time. However, there may be occasions when the developer needs a way to optimize this waiting time. The _waitCondition_ method and the _IWaitFor_ interface address this issue.

##### Pause and wait for a condition

The _waitCondition_ method makes the robotic task pause and wait for a certain condition to resume. The method's signatures are:

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
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
<T> boolean waitCondition(int numberOfAttempts,
    long pauseInMillisBetweenAttempts,
    String logName,
    T context,
    ICondition<T> condition)

<T> boolean waitCondition(int numberOfAttempts,
    long pauseInMillisBetweenAttempts,
    String logName,
    T context,
    boolean throwExceptionIfNotSatisfied,
    ICondition<T> condition)
    throws JidokaUnsatisfiedConditionException

<T> boolean waitCondition(Date untilDate,
    long pauseInMillisBetweenAttempts,
    String logName,
    T context,
    ICondition<T> condition);

<T> boolean waitCondition(Date untilDate,
    long pauseInMillisBetweenAttempts,
    String logName,
    T context,
    boolean throwExceptionIfNotSatisfied,
    ICondition<T> condition)
    throws JidokaUnsatisfiedConditionException;
```

The two first methods are similar, except that the second one throws an exception of type _JidokaUnsatisfiedConditionException_ if the condition has not been met after a specified number of attempts. The third and fourth methods are also similar, except for the exception. The main difference between both versions is that the two first methods base the wait on a specified number of attempts (_int numberOfAttempts_), whereas the two last methods use a specific moment in time (_Date untilDate_):

-   _int numberOfAttempts_: indicates how many times the robotic task will check whether the condition is met.
-   _Date untilDate_: indicates the point in time the robotic task will stop checking whether the condition is met.

Additional parameters are:

-   _long pauseInMillisBetweenAttempts_: time lag between attempts, expressed in milliseconds.
-   _String logName_: text that identifies the condition in the log.
-   _T context_: context.
-   _ICondition<T> condition_: the condition to be met.
-   _boolean throwExceptionIfNotSatisfied_: determines whether the exception should be thrown or not in case the condition is not met.

Here is an example of a robotic task that wants to open WordPad to work with it:

```
1
2
3
4
5
6
7
robot.waitCondition(10,
    3000,
    "WordPad opened",
    null,
    true,
    (i, context) ->
        robot.getWindow("Document - WordPad.*") != null);
```

The robotic task will wait until WordPad is open. In this case, it will make 10 checks (or attempts), waiting for 3 seconds (3000 milliseconds) after each attempt. The condition is identified in the log by the text "WordPad opened". An exception of type _JidokaUnsatisfiedConditionException_ should be thrown if the condition is not met after all attempts have been made. Additionally, if the condition is not met after all the attempts, a screenshot will be sent to the execution log to check why the condition has not been met.

The condition is represented by the [Lambda Expression](https://docs.oracle.com/javase/tutorial/java/javaOO/lambdaexpressions.html). It refers to the following method, found in the _ICondition<\\T>_ [functional interface](https://docs.oracle.com/javase/specs/jls/se8/html/jls-9.html#jls-9.8):

```
1
boolean satisfied(int numberOfAttempt, T context);
```

A **functional interface** is any interface with only one abstract method and may be annotated with _@FunctionalInterface_.

**Lambda expressions** allow you to simplify the code and perform in-line implementations of functional interfaces. In the example, the code snippet is passed as a parameter. A lambda expression encapsulates a specific functionality.

Since the interface _ICondition_ has only one abstract method, the example passes a lambda expression as a parameter to the _waitCondition_ method:

```
1
(i,context) -> robot.getWindow("Document - WordPad.*") != null
```

The condition is that _robot.getWindow("Document - WordPad._")\* is not null, which means that WordPad has started properly and is available to interact with it.

The _getWindow(String regexp)_ method belongs to the _IWindows_ interface. It returns a _WindowInfo_ object corresponding with the window whose title matches the regular expression in the _regexp_ parameter. This example uses the pattern `Document - WordPad.*`.

##### Wait for pre-defined conditions

The _IWaitFor_ interface simplifies managing the robotic task's waits. This interface has pre-implemented conditions to search for images, files, or windows. There is no need to implement the satisfied method described in the previous section. Access it through _IJidokaRobot_ using the methods:

-   _IWaitFor getWaitFor(IRobot robot)_
-   _IWaitFor waitFor(IRobot robot)_

Both methods are similar and return an instance of the interface _IWaitFor_.

Let's analyze this interface:

-   _static final int DEFAULT\_TIMEOUT\_SECONDS = 30_: the default timeout, expressed in seconds.
-   _void defaultTimeOutSeconds(int timeOutSeconds)_: allows you to set the default timeout, through the parameter _timeOutSeconds_.
-   _int getDefaultTimeOutSeconds()_: gets the value of the default timeout.

###### Wait for an image on screen

-   _boolean image(File file) throws IOException_: waits for an image (_file_ parameter) to appear on screen for the default timeout. This means that once the timeout expires, it will stop waiting and will return `false`.
-   _boolean image(File file, int timeOutSeconds) throws IOException_: similar to the previous method, but this one allows you to set the duration of the timeout through the _timeOutSeconds_ parameter.
-   _boolean image(File file, float tolerance) throws IOException_: performs the same functionality as _image (File file)_ and allows you to set the tolerance. This concept is discussed in the [Falcon module](java-module-falcon.html). Tolerance is how close an image should be with respect to a pattern to accept it. For example, given an image A, which acts as a pattern and is specified in file, the robotic task will search on screen for an image B that matches A within the range defined by tolerance. This value is of type _float_ and will range between `0f` and `1f`. Typically, tolerance values of `.05f` give good results.
-   _boolean image(File file, float tolerance, int timeOutSeconds) throws IOException_: like the previous method, but this one allows you to set the duration of the timeout through the _timeOutSeconds_ parameter.

Other versions of these methods differ only on the type of object used as a pattern for the image to be searched. For example, you can use:

-   An _InputStream_ object:

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
    11
      boolean image(InputStream inputStream) throws IOException;

      boolean image(InputStream inputStream, int timeOutSeconds)
          throws IOException;

      boolean image(InputStream inputStream, float tolerance)
          throws IOException;

      boolean image(InputStream inputStream, float tolerance,

      int timeOutSeconds) throws IOException;
    ```

-   A _URL_ object:

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
      boolean image(URL url) throws IOException;

      boolean image(URL url, int timeOutSeconds) throws IOException;

      boolean image(URL url, float tolerance) throws IOException;

      boolean image(URL url, float tolerance,

      int timeOutSeconds) throws IOException;
    ```

-   An _ImageInputStream (javax.imageio.stream.ImageInputStream)_ object:

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
    11
      boolean image(ImageInputStream imageInputStream) throws IOException;

      boolean image(ImageInputStream imageInputStream, int timeOutSeconds)
          throws IOException;

      boolean image(ImageInputStream imageInputStream, float tolerance)
          throws IOException;

      boolean image(ImageInputStream imageInputStream, float tolerance,

      int timeOutSeconds) throws IOException;
    ```

There are also several methods to wait for an image to appear on screen, among a set of candidate images. When one of them is detected, the method will return that image. Once an image has been found, its description will be sent to the execution log.

```
1
2
IImageResource image(IImageResource... images) throws IOException
IImageResource image(int timeOutSeconds, IImageResource... images) throws IOException
```

There are also methods that wait for a window to appear:

-   _String window(String… windowTitleRegExp)_: given a series of regular expressions specified by _windowTitleRegExp_, this method waits for a window whose title matches one of the expressions to appear, and returns the regular expression that has been met, or `null` otherwise.
-   _String window(int timeOutSeconds, String… windowTitleRegExp)_: similar to the previous method, this one allows you to specify the maximum waiting time.

The following methods allow you to wait for window to be activated:

-   _String windowActive(String… windowTitleRegExp)_: this method waits for an active window whose title matches one of the titles specified in the _windowTitleRegExp_ parameter, using the default waiting time. If none is found, it will return `null`.
-   _String windowActive(boolean throwExceptionIfNotSatisfied, String… windowTitleRegExp)_: similar to the previous method, but you can also specify whether an exception should be thrown if nothing is found, or not.
-   _String windowActive(int timeOutSeconds, String… windowTitleRegExp)_: this version of _windowActive_ allows you to specify the waiting timeout as a parameter.
-   _String windowActive(int timeOutSeconds, boolean throwExceptionIfNotSatisfied, String… windowTitleRegExp)_: this version of _windowActive_ joins the three previous functionalities: you can specify the waiting timeout and whether an exception should be thrown or not if no active window is found.
-   _String windowActive(int timeOutSeconds, boolean throwExceptionIfNotSatisfied, boolean saveScreenIfNotSatisfied, String… windowTitleRegExp)_: similar to the previous method, but you can also specify whether to capture and send a screenshot to the execution log if no active window is found.

You can also wait for the mouse cursor to change appearance. The Appian RPA enum type _ECursorType_ represents the possible kinds of cursors available. For further information please refer to [LoadCursor function](https://msdn.microsoft.com/es-es/library/windows/desktop/ms648391\(v=vs.85\).aspx).

-   _ECursorType cursor(ECursorType… types)_: waits until the mouse cursor turns into one of the values of _ECursorType_ specified by _types_, and returns the _ECursorType_ value detected, or `null` if no match was found after the default waiting timeout.
-   _ECursorType cursor(int timeOutSeconds, ECursorType… types)_: like the previous method, but this one allows you to set the duration of the timeout through the _timeOutSeconds_ parameter.

With these methods you can wait for files to exist:

-   _File file(File… files) throws IOException_: waits until one of the specified files exists, and returns the matching file, or `null` if no file has been found after the default timeout.
-   _File file(int timeOutSeconds, File… files) throws IOException_: like the previous method, but this one allows you to set the duration of the timeout through the _timeOutSeconds_ parameter.

###### Using conditions

In addition to the predefined conditions explained above, _IWaitFor_ provides the _wait()_ method. This method enables the evaluation of an _IEasyCondition_. _IEasyCondition_ is a functional interface to build conditions that should be met, implementing the _boolean satisfied()_ method in the same way as the interface _ICondition_.

-   _boolean wait(String logName, IEasyCondition condition)_
-   _boolean wait(int timeOutSeconds, String logName, IEasyCondition condition)_

You can specify the descriptive text for the execution log through the _logName_ parameter. In the second version of the method, you can also set the timeout (_timeOutSeconds_), expressed in seconds, which is the maximum time the robotic task will wait for the condition to be met.

Suppose you want your robotic task to wait 20 seconds for a window named "New document" to be active. To get the active window's title, use _getActiveWindowTitle()_ of the interface _IWindows_, which returns the active window's title.

```
1
2
3
4
IWaitFor wf = robot.getWaitFor(this);
    wf.wait(20,
    "Waiting until the window "New document" is in the foreground ",
    ()-> robot.getActiveWindowTitle().matches("New document"));
```

In this example, you have set:

-   _timeOutSeconds_: `20`
-   _logName_: `"Waiting until the window \\"Title example\\" is in the foreground"`
-   _condition_: `() -> robot.getActiveWindowTitle().matches("New document")`

The condition (for which the robotic task will wait for 20 seconds) is the active window's title is or contains "New document". This example builds it using a lambda expression:

```
1
()-> robot.getActiveWindowTitle().matches("New document");
```

_IWaitFor_ provides the following methods:

-   _IEasyCondition windowExists(String windowTitleRegExp)_: this condition will be met if there is a window whose title matches the regular expression defined in _windowTitleRegExp_.
-   _IEasyCondition cursorIs(ECursorType type)_: this condition will be met when the type of cursor is the one specified by _type_.
-   _IEasyCondition fileExists(File file)_: this condition will be met when the file specified exists.

Lastly, you can combine _IEasyCondition_ conditions using logical operators AND, OR, and NOT. To do so, the _IWaitFor_ interface includes three methods whose parameters are one or more _IEasyCondition_ conditions:

-   _IEasyCondition and(IEasyCondition… conditions)_: returns one _IEasyCondition_ that will be met if all the _IEasyCondition_ passed as parameters are met (are `true`).
-   _IEasyCondition or(IEasyCondition... conditions)_: returns one IEasyCondition that will be met if any of the IEasyCondition passed as parameters is met (is `true`).
-   _IEasyCondition not(IEasyCondition condition)_: returns one _IEasyCondition_ that will be met if the _IEasyCondition_ received as a parameter is not met (is `false`).

To demonstrate how to use _IEasyCondition_, consider these three conditions:

-   A: the file "example.txt" must exist.
-   B: the window with the title "example.txt – Notepad" must be visible.
-   C: the 100th item must be processed (the variable `int currentItem` stores the current item).

Condition A will be met if the file "example.txt" exists, so you can use the _fileExists(File file)_ method provided by _IWaitFor_:

```
1
wf.fileExists(new File("example.txt"));
```

Condition B will be met if a window with the title "example.txt – Notepad" is visible. Now, you'll need to create the _IEasyCondition_. Use the _isWindowVisible(HWND hWnd)_ method of _IWindows_. This method accepts _Windows handler_ as a parameter to identify a window's visibility. To get this handler, use the _getWindow(String regexp)_ method. These methods and the interface _IWindows_ are described in detail in [IWindows methods](#iwindows-methods).

Build the condition as a lambda expression, which only works in the proper context:

```
1
2
() -> robot.isWindowVisible(
    robot.getWindow("example.txt.*").gethWnd())
```

Condition C is quite simpler. Assuming that there is an integer type variable that stores the current item: `int currentItem`, _IEasyCondition_, as a lambda expression, will appear as:

```
1
() -> currentItem > 100
```

Now let's code several "nested" _IEasyCondition_ examples:

**Example 1:** At least one of the three conditions, A, B, C must be met, that is, it's enough for us if any of them is met. The three conditions are passed as parameters to the _or_ method (_IEasyCondition_… conditions):

```
1
2
3
4
5
6
7
wf.wait(
    20, "At least one of A, B, or C",
    wf.or(
    wf.fileExists(new File("example.txt")),
    () -> robot.isWindowVisible(robot.getWindow("example.txt.*").gethWnd()),
    () -> currentItem > 100)
);
```

For clarity, this example puts each _IEasyCondition_ in a different line.

**Example 2:** The three conditions A, B, and C must be met. In this case, we just need to use the _and_ method:

```
1
2
3
4
5
6
7
8
wf.wait(20,
    "At least one of A, B, or C",
    wf.and(
        wf.fileExists(new File("example.txt")),
    () -> robot.isWindowVisible(
        robot.getWindow("example.txt.*").gethWnd()),
    () -> currentItem > 100)
);
```

You can create as many combinations as needed, of greater or lesser complexity. If you need more complex conditions, you can create your own classes to implement the _IEasyCondition_ interface:

```
1
2
3
4
5
6
7
8
private class MyCondition implements IEasyCondition {

    @Override
    public boolean satisfied() {
        // Implement condition here
        return false;
    }
}
```

And in use:

```
1
2
3
4
5
IWaitFor wf = robot.getWaitFor(this);

MyCondition cond = new MyCondition();

wf.wait(20, "My condition", cond);
```

### Interacting with mail

The _IMail_ interface allows you to send and receive mails. You can send mail from a host machine or from the Appian RPA server. You can also attach files to the mail or send the content in HTML format or plain text.

It is worth highlighting that sending mail from the server or the host machine only has an impact on which machine should have access to the mail server we are using from the robot. In other words, the only difference is the machine from which mail are sent.

To get an instance of the interface, use the following method:

```
1
IMail mail = IMail.getInstance(this);
```

The _IMail_ interface has the following methods:

-   _void sendMail(MailSendOptions options)_: sends an email with the information provided by the parameter options. The mail is sent from the host machine on which the robotic task is running.
-   _void sendMailFromServer(MailSendOptions options)_: similar to the previous method, but the mail is sent from the Appian RPA platform server.
-   _ReceivedEmail\[\] receiveMail(MailReceiveOptions options)_: checks the mailbox specified by the parameter options and retrieves all existing messages.

These methods use the _MailSendOptions_ and _MailReceiveOptions_ classes, which have the necessary information to connect with the mail server. These classes provide a fluid API that allows you to easily define all the necessary information.

The _MailSendOptions_ class allows you to send mail in HTML format or plain text. It also allows you to specify whether you want to use a cached session to send the mail from the server. Here are some of its methods:

-   _MailSendOptions sslHost(boolean sslHost)_: allows you to specify whether the server connection will use SSL.
-   _MailSendOptions host(String host)_: specifies the server that will be used to send the mails.
-   _MailSendOptions port(int port)_: specifies the port to which the mail server is listening.
-   _MailSendOptions username(String username)_: allows you to specify the username to access the mail server.
-   _MailSendOptions password(String password)_: allows you to specify the password to access the mail server.
-   _MailSendOptions fromAddress(String fromAddress)_: specifies the mail address from which the mail will be sent.
-   _MailSendOptions toAddress(String… toAddress)_: allows you to specify the list of recipients of the mail.
-   _MailSendOptions subject(String subject)_: specifies the mail subject.
-   _MailSendOptions textContent(String textContent)_: allows you to specify the mail body in plain text.
-   _MailSendOptions htmlContent(String htmlContent)_: allows you to specify the mail body in HTML format.
-   _MailSendOptions attachments(MailAttachment attachment)_: allows adding attachment files to the mail by using the class MailAttachment.

An example to send a mail with HTML content would be:

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
11
12
// Create mail options from parameters
mailSendOptions = new MailSendOptions();

mailSendOptions.toAddress(server.getWorkflowParameters().get("notificationTo"))
        .fromAddress(server.getWorkflowParameters().get("notificationFrom"))
        .subject(server.getWorkflowParameters().get("notificationSubject"))
        .host(server.getWorkflowParameters().get("mailServerHost"))
        .port(Integer.parseInt(server.getWorkflowParameters().get("mailServerPort")))
        .username(server.getWorkflowParameters().get("mailServerUser"))
        .password(server.getWorkflowParameters().get("mailServerPassword"));

mail.sendMail(mailOptions);
```

### Execute a script in the workflow

In the workflow, it is possible to call specific methods of the API to execute code. Currently, only _Groovy_ scripts are supported.

When you add an action to a step in the workflow, you can select an option to execute code.

In the _Modules_ menu, select either _Execute code_ or _Execute code with result_ in the _Robot_ module area.

After you select a method, the right-side of the screen shows a few options:

-   **Language**: only GROOVY is supported.
-   **Code**: add the code to execute

Before giving an example of what code could be added, keep in mind that Appian RPA provides a context with several variables to be used, such us:

Before giving an example of what code could be added, keep in mind that Appian RPA provides a context with several variables to be used, such as:

-   _server_: the _IJidokaServer_ instance that must exist in the robotic task.
-   _robot_: the robotic task itself, an instance of _IRobot_.
-   _client_: the instance of _IClient_ that must exist in the robotic task.

Using these variables, you can invoke their attributes and methods. Additionally, it is possible to access to the robotic task parameters, which are available through the variable _parameters_, of type _Map_.

For example, you can send a log message of type _info_ to the execution trace with the value of a robotic task attribute:

```
1
server.info(robot.negations[1])
```

In this case, the log would be written with the value of the position 1 of the _negations_ attribute of the _robot_ class.

To make this code work, the _server_ and _robot_ instances must exist in our robot, as well as an attribute in the robotic task called _negations_ of type array.

### FAQ

#### A sequence of key combinations using IKeyboardSequence is not working. What's happening?

Make sure that the _apply()_ method has been called at the end of the sequence. Otherwise, the sequence will be created but won't be executed.

#### There are key combinations that do not work. How can this be solved?

In a robotic task, the keyboard behaves in the same way that it does when a person uses it. Therefore, if the numerical or uppercase block is active, a sequence of keys may not behave as expected.

It could also happen that after the completion of a robotic task, a key remains pressed by accident, such as Alt or Control. The best way to ensure the desired behavior is to reset the special keys before launching any combination of keys. For that, in the _IWindows_ robotic task object, use the method _windows.resetModKeys();_

#### Why can't I write special characters?

Special characters may not be available on all machines.

For the robotic task to enter special characters, use scan codes, which are codes sent by the keyboard to the computer to indicate which key is pressed.

Scan codes are dependent on the selected language, so the same machine using the same scan code can produce different outputs depending on the selected language. For example, scan code 0x27 is ";" when language is English and "ñ" when language is Spanish. Refer to the constants defined in the [KeyEvent](https://docs.oracle.com/javase/7/docs/api/java/awt/event/KeyEvent.html) class, to get the values of each Key.

In order to use the scan codes in your robotic task, use the following code snippet:

`windows.getKeyboardSequence().typeScanCode(ENTER SCAN CODE HERE).apply();`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...