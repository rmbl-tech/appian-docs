---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessFacade.html
original_path: api/com/appiancorp/suiteapi/process/ProcessFacade.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessFacade

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ProcessFacade

* * *

public class ProcessFacade extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Utility methods dealing with processes

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessFacade](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`

    `[loadProcessDiagram](#loadProcessDiagram\(java.lang.Long,int,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int typeOfNotesToRetrieve_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`

    `[loadProcessDiagram](#loadProcessDiagram\(java.lang.Long,int,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, int typeOfNotesToRetrieve_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Loads a process diagram.

    `static [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`

    `[saveProcessModelForProcess](#saveProcessModelForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.services.ServiceContext,java.util.Map\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") processDiagram_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap_)`

    Saves a process model for a process.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessFacade

        public ProcessFacade()

-   ## Method Details

    -   ### loadProcessDiagram

        public static [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") loadProcessDiagram([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int typeOfNotesToRetrieve\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Loads a process diagram. This method acquires the [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process"), calls [`ProcessExecutionService.getProcessDiagram(java.lang.Long, int)`](ProcessExecutionService.html#getProcessDiagram\(java.lang.Long,int\)), and populates the assignee display names and [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") in the process diagram.

        Parameters:

        `processId_` - id of process to load diagram for

        `typeOfNotesToRetrieve_` - This is one of [`ProcessExecutionService.RETRIEVE_PROCESS_MODEL_NOTES`](ProcessExecutionService.html#RETRIEVE_PROCESS_MODEL_NOTES) or [`ProcessExecutionService.RETRIEVE_PROCESS_NOTES`](ProcessExecutionService.html#RETRIEVE_PROCESS_NOTES)

        `sc_` - the user's service context

        Returns:

        the process diagram

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permissions to retrieve the process or the process diagram of the process.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `typeOfNotesToRetrieve_` is invalid

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        See Also:

        -   [`ProcessModelFacade.fillInAssigneeDisplayNames(com.appiancorp.suiteapi.process.ProcessModel, com.appiancorp.asl3.servicefw.connect.ServiceContext)`](ProcessModelFacade.html#fillInAssigneeDisplayNames\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))
        -   [`ProcessDiagram.fillInAppianTypes(com.appiancorp.suiteapi.process.AppianTypeCache)`](ProcessDiagram.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))

    -   ### loadProcessDiagram

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") loadProcessDiagram([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, int typeOfNotesToRetrieve\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Deprecated.

        since 6.0.3

        Loads a process diagram. This method acquires the [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process"), calls [`ProcessExecutionService.getProcessDiagram(java.lang.Long, int)`](ProcessExecutionService.html#getProcessDiagram\(java.lang.Long,int\)), and populates the assignee display names and [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") in the process diagram.

        Parameters:

        `processId_` - id of process to load diagram for

        `typeOfNotesToRetrieve_` - This is one of [`ProcessExecutionService.RETRIEVE_PROCESS_MODEL_NOTES`](ProcessExecutionService.html#RETRIEVE_PROCESS_MODEL_NOTES) or [`ProcessExecutionService.RETRIEVE_PROCESS_NOTES`](ProcessExecutionService.html#RETRIEVE_PROCESS_NOTES)

        `sc_` - the user's service context

        Returns:

        the process diagram

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - If the process does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permissions to retrieve the process or the process diagram of the process.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `typeOfNotesToRetrieve_` is invalid

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

        See Also:

        -   [`ProcessModelFacade.fillInAssigneeDisplayNames(com.appiancorp.suiteapi.process.ProcessModel, com.appiancorp.asl3.servicefw.connect.ServiceContext)`](ProcessModelFacade.html#fillInAssigneeDisplayNames\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))
        -   [`ProcessDiagram.fillInAppianTypes(com.appiancorp.suiteapi.process.AppianTypeCache)`](ProcessDiagram.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))

    -   ### saveProcessModelForProcess

        public static [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") saveProcessModelForProcess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") processDiagram\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Saves a process model for a process. This method simply acquires the [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process") and calls [`ProcessExecutionService.updateProcessModelForProcess(java.lang.Long, com.appiancorp.suiteapi.process.ProcessDiagram, com.appiancorp.suiteapi.process.ProcessModel[])`](ProcessExecutionService.html#updateProcessModelForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.suiteapi.process.ProcessModel%5B%5D\))

        Parameters:

        `processId_` - process to save to

        `processDiagram_` - process diagram to save

        `sc_` - service context of user

        `childProcessModels_` - the sub and linked process models for this updating process model

        Throws:

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the process ID does not refer to a valid process

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to the process diagram

        `ServiceException` - if any system-level error occurs

        `InvalidArgumentException` - if the ProcessDiagram bean passed in has any nodes with non-null IDs that are not in the current version of the

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

        See Also:

        -   [`ProcessExecutionService.updateProcessModelForProcess(java.lang.Long, com.appiancorp.suiteapi.process.ProcessDiagram, com.appiancorp.suiteapi.process.ProcessModel[])`](ProcessExecutionService.html#updateProcessModelForProcess\(java.lang.Long,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.suiteapi.process.ProcessModel%5B%5D\))