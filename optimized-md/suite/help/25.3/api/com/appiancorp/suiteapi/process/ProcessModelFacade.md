---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModelFacade.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModelFacade.html
version: "25.3"
title: "Class ProcessModelFacade"
page_id: "api/com/appiancorp/suiteapi/process/ProcessModelFacade"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModelFacade

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ProcessModelFacade

* * *

public class ProcessModelFacade extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Manages the loading and storing and other utility functions of process models.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelFacade](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static void`

    `[clearProcessDiagramNoteIds](#clearProcessDiagramNoteIds\(com.appiancorp.suiteapi.process.ProcessDiagram\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd_)`

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[createProcessModel](#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[createProcessModel](#createProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.services.ServiceContext\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Creates a process model in the database.

    `static void`

    `[fillInAssigneeDisplayNames](#fillInAssigneeDisplayNames\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    Assignee display names will be populated automatically by the [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

    `static com.appiancorp.process.design.validation.Errors`

    `[getErrorsForParentsOfProcessModel](#getErrorsForParentsOfProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static com.appiancorp.process.design.validation.Errors`

    `[getErrorsForParentsOfProcessModel](#getErrorsForParentsOfProcessModel\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Gets errors associated with the given process model having parents

    `static com.appiancorp.process.design.validation.Errors`

    `[getErrorsForParentsOfUnpublishedChildren](#getErrorsForParentsOfUnpublishedChildren\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static com.appiancorp.process.design.validation.Errors`

    `[getErrorsForParentsOfUnpublishedChildren](#getErrorsForParentsOfUnpublishedChildren\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Gets errors associated with the parents of unpublished process models for a process model

    `static com.appiancorp.process.design.validation.Errors`

    `[getErrorsForUnpublishedChildren](#getErrorsForUnpublishedChildren\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static com.appiancorp.process.design.validation.Errors`

    `[getErrorsForUnpublishedChildren](#getErrorsForUnpublishedChildren\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Gets errors for a process model if it has unpublished child processes

    `static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getNotesFromProcessModel](#getNotesFromProcessModel\(com.appiancorp.suiteapi.process.ProcessDiagram\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm_)`

    Gets note from a process model

    `static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getNotesFromProcessModel](#getNotesFromProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_)`

    `static [Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotesWithContent](#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[getNotesWithContent](#getNotesWithContent\(com.appiancorp.suiteapi.process.Note%5B%5D,com.appiancorp.services.ServiceContext\))([Note](Note.html "class in com.appiancorp.suiteapi.process")[] notes_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    `static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessParameters](#getProcessParameters\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getProcessParameters](#getProcessParameters\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Retrieve the process parameters used to start of the process model of the given ID

    `static int`

    `[getRecursiveRelationship](#getRecursiveRelationship\(java.lang.Long,java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subPmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static int`

    `[getRecursiveRelationship](#getRecursiveRelationship\(java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subPmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Returns that status of the recursive relationship between the two supplied ProcessModels

    `static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getVisibleProcessVariables](#getVisibleProcessVariables\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getVisibleProcessVariables](#getVisibleProcessVariables\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Retrieve all visible process variables used in the process model given

    `static com.appiancorp.process.design.validation.Errors`

    `[handleProcessModelErrors](#handleProcessModelErrors\(java.lang.String%5B%5D,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errors_, boolean isEPEx)`

    `static com.appiancorp.process.design.validation.Errors`

    `[handleProcessModelErrors](#handleProcessModelErrors\(java.lang.String%5B%5D,com.appiancorp.process.design.validation.Errors,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errors_, com.appiancorp.process.design.validation.Errors err_, boolean isEPEx)`

    Creates Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[loadLatestPublishVersionOfProcessModel](#loadLatestPublishVersionOfProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[loadLatestPublishVersionOfProcessModel](#loadLatestPublishVersionOfProcessModel\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Loads the latest published version of the process model or the draft if there is no published version from the database.

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[loadProcessModel](#loadProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[loadProcessModel](#loadProcessModel\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Loads the working draft of a process model from the database.

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[loadProcessModelVersion](#loadProcessModelVersion\(java.lang.Long,java.lang.String,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[loadProcessModelVersion](#loadProcessModelVersion\(java.lang.Long,java.lang.String,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Loads a process model version from the database.

    `static void`

    `[lockProcessModel](#lockProcessModel\(java.lang.Long,boolean,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, boolean overrideLock_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static void`

    `[lockProcessModel](#lockProcessModel\(java.lang.Long,boolean,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, boolean overrideLock, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Locks the process model pmId\_, overrides the lock of a previous user if overrideLock is `true`

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[saveProcessModel](#saveProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[saveProcessModel](#saveProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.services.ServiceContext\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc)`

    Saves a process model in the database.

    `static final void`

    `[saveProcessModelAndNodeNotes](#saveProcessModelAndNodeNotes\(java.util.Map,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") newModel_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static final void`

    `[saveProcessModelAndNodeNotes](#saveProcessModelAndNodeNotes\(java.util.Map,com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.services.ServiceContext\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") newModel_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    `static final void`

    `[saveProcessModelAndNodeNotes](#saveProcessModelAndNodeNotes\(java.util.Map,com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") newModel_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static final void`

    `[saveProcessModelAndNodeNotes](#saveProcessModelAndNodeNotes\(java.util.Map,com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.services.ServiceContext\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") newModel_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Saves the notes for a process model and nodes

    `static void`

    `[unlockProcessModel](#unlockProcessModel\(java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static void`

    `[unlockProcessModel](#unlockProcessModel\(java.lang.Long,com.appiancorp.services.ServiceContext\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Unlocks a process model

    `static void`

    `[updateProcessModelWithMapNotesContent](#updateProcessModelWithMapNotesContent\(java.util.Map,com.appiancorp.suiteapi.process.ProcessModel\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_)`

    reinserts notes content into pm from the given map

    `static void`

    `[updateProcessModelWithNotesContent](#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessDiagram\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm_)`

    Deprecated.

    use updateProcessModelWithNotesContent(ProcessDiagram, ServiceContext)

    `static void`

    `[updateProcessModelWithNotesContent](#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static void`

    `[updateProcessModelWithNotesContent](#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.services.ServiceContext\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    `static void`

    `[updateProcessModelWithNotesContent](#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_)`

    Deprecated.

    use updateProcessModelWithNotesContent(ProcessModel, ServiceContext)

    `static void`

    `[updateProcessModelWithNotesContent](#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static void`

    `[updateProcessModelWithNotesContent](#updateProcessModelWithNotesContent\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.services.ServiceContext\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Inserts note values from the file system into the process model

    `static com.appiancorp.process.design.validation.Errors`

    `[validateAdminConfigSettings](#validateAdminConfigSettings\(com.appiancorp.process.design.validation.Errors,java.lang.String...\))(com.appiancorp.process.design.validation.Errors err_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors_)`

    `static com.appiancorp.process.design.validation.Errors`

    `[validateAiSkillGenerativeAiInformation](#validateAiSkillGenerativeAiInformation\(com.appiancorp.process.design.validation.Errors,java.lang.String...\))(com.appiancorp.process.design.validation.Errors err_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors_)`

    Converts validation messages for nodes of type Generative AI Skill into `Error` instances.

    `static void`

    `[validateAndSetPvDefaults](#validateAndSetPvDefaults\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_)`

    `static com.appiancorp.process.design.validation.Errors`

    `[validateCallIntegrationInformation](#validateCallIntegrationInformation\(com.appiancorp.process.design.validation.Errors,java.lang.String...\))(com.appiancorp.process.design.validation.Errors err_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors_)`

    `static com.appiancorp.process.design.validation.Errors`

    `[validateExecuteRoboticProcess](#validateExecuteRoboticProcess\(com.appiancorp.process.design.validation.Errors,java.lang.String...\))(com.appiancorp.process.design.validation.Errors err_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors_)`

    `static com.appiancorp.process.design.validation.Errors`

    `[validateInterfaceInformation](#validateInterfaceInformation\(com.appiancorp.process.design.validation.Errors,java.lang.String...\))(com.appiancorp.process.design.validation.Errors err_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors_)`

    Create Interface Information Errors from list of String arrays and adds them to the passed in `Errors` list.

    `static com.appiancorp.process.design.validation.Errors`

    `[validateOtherErrors](#validateOtherErrors\(java.lang.String%5B%5D,com.appiancorp.process.design.validation.Errors\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errors_, com.appiancorp.process.design.validation.Errors err_)`

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[validateProcessModel](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") apm_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[validateProcessModel](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.services.ServiceContext\))([AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") apm_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Validates the process model

    `static com.appiancorp.process.design.validation.Errors`

    `[validateProcessModelExpressions](#validateProcessModelExpressions\(java.lang.String%5B%5D,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errors_, boolean isEPEx)`

    Creates Invalid Expression Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    `static com.appiancorp.process.design.validation.Errors`

    `[validateProcessModelExpressions](#validateProcessModelExpressions\(java.lang.String%5B%5D,com.appiancorp.process.design.validation.Errors,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errors_, com.appiancorp.process.design.validation.Errors err_, boolean isEPEx)`

    Creates Invalid Expression Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\)) and adds them to the passed in errors list

    `static com.appiancorp.process.design.validation.Errors`

    `[validateSubProcessModels](#validateSubProcessModels\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errors_)`

    Creates Invalid Subprocess Model Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    `static com.appiancorp.process.design.validation.Errors`

    `[validateSubProcessModels](#validateSubProcessModels\(java.lang.String%5B%5D,com.appiancorp.process.design.validation.Errors\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errors_, com.appiancorp.process.design.validation.Errors err_)`

    Creates Invalid Subprocess Model Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\)) and adds them to the passed in errors list

    `static com.appiancorp.process.design.validation.Errors`

    `[validateWriteRecordsWithEvents](#validateWriteRecordsWithEvents\(com.appiancorp.process.design.validation.Errors,java.lang.String...\))(com.appiancorp.process.design.validation.Errors modelErrors, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errorMessages)`

    Adds any errors related to the Write Records v2 node to the Errors object.

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[versionProcessModel](#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.asl3.servicefw.connect.ServiceContext,java.util.Map\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap_)`

    Deprecated.

    since 6.0.3

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[versionProcessModel](#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessDiagram,com.appiancorp.services.ServiceContext,java.util.Map\))([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap_)`

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[versionProcessModel](#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext,java.util.Map\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap_)`

    Deprecated.

    since 6.0.3

    `static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[versionProcessModel](#versionProcessModel\(com.appiancorp.suiteapi.process.ProcessModel,com.appiancorp.services.ServiceContext,java.util.Map\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap_)`

    Versions a process model in the database.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessModelFacade

        public ProcessModelFacade()

-   ## Method Details

    -   ### createProcessModel

        public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") createProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a process model in the database.

        Parameters:

        `pm` - a process model to be saved.

        `sc` - the service context of the user making this call

        Returns:

        the saved process model, with all of its primary keys filled in. Also, any Appian-typed objects will have display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Priority` does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `ProcessModel` does not exist

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### createProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") createProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 6.0.3

        Creates a process model in the database.

        Parameters:

        `pm_` - a process model to be saved.

        `sc_` - the service context of the user making this call

        Returns:

        the saved process model, with all of its primary keys filled in. Also, any Appian-typed objects will have display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have permission to perform this action

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `ProcessModelFolder` does not exist

        `[InvalidPriorityException](../common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Priority` does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `ProcessModel` does not exist

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### saveProcessModel

        public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") saveProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Saves a process model in the database. If the process model ID is negative, a new process model will be created; otherwise, the process model will be updated

        Parameters:

        `pm` - a process model to be saved.

        `sc` - the service context of the user making this call

        Returns:

        the saved process model, with all of its primary keys filled in. Also, any Appian-typed objects will have display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[InvalidUuidException](../common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model cannot be found by the UUID

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to update the process model

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is locked by someone other than the current user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `ProcessModel` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything else goes wrong

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### saveProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") saveProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions"), [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        since 6.0.3

        Saves a process model in the database. If the process model ID is negative, a new process model will be created; otherwise, the process model will be updated

        Parameters:

        `pm_` - a process model to be saved.

        `sc_` - the service context of the user making this call

        Returns:

        the saved process model, with all of its primary keys filled in. Also, any Appian-typed objects will have display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[InvalidUuidException](../common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model cannot be found by the UUID

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have privileges to update the process model

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is locked by someone other than the current user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user referenced in the `ProcessModel` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything else goes wrong

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### loadProcessModel

        public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") loadProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Loads the working draft of a process model from the database.

        Parameters:

        `pmId` - primary key of a process model in the database.

        `sc` - the service context of the user making this call

        Returns:

        the loaded process model with any Appian-typed object display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to view the process model. See [`ProcessDesignService.getProcessModel(Long)`](ProcessDesignService.html#getProcessModel\(java.lang.Long\))

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not refer to a valid process model

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything else goes wrong

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### loadProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") loadProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        since 6.0.3

        Loads the working draft of a process model from the database.

        Parameters:

        `pmId_` - primary key of a process model in the database.

        `sc_` - the service context of the user making this call

        Returns:

        the loaded process model with any Appian-typed object display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to view the process model. See [`ProcessDesignService.getProcessModel(Long)`](ProcessDesignService.html#getProcessModel\(java.lang.Long\))

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not refer to a valid process model

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything else goes wrong

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### loadLatestPublishVersionOfProcessModel

        public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") loadLatestPublishVersionOfProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Loads the latest published version of the process model or the draft if there is no published version from the database.

        Parameters:

        `pmId_` - primary key of a process model in the database.

        `sc_` - the service context of the user making this call

        Returns:

        the loaded process model with any Appian-typed object display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not refer to a valid process model

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to view the process model. See [`ProcessDesignService.getProcessModel(Long)`](ProcessDesignService.html#getProcessModel\(java.lang.Long\))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if naything else goes wrong

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### loadLatestPublishVersionOfProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") loadLatestPublishVersionOfProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        since 6.0.3

        Loads the latest published version of the process model or the draft if there is no published version from the database.

        Parameters:

        `pmId_` - primary key of a process model in the database.

        `sc_` - the service context of the user making this call

        Returns:

        the loaded process model with any Appian-typed object display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[InvalidProcessModelException](../common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not refer to a valid process model

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to view the process model. See [`ProcessDesignService.getProcessModel(Long)`](ProcessDesignService.html#getProcessModel\(java.lang.Long\))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if naything else goes wrong

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### getProcessParameters

        public static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getProcessParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Retrieve the process parameters used to start of the process model of the given ID

        Parameters:

        `pmId` - process model id to retrieve variables for

        `sc` - the service context of the user making this call

        Returns:

        All process parameters entered when starting the process model with the given ID

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

    -   ### getProcessParameters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getProcessParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        since 6.0.3

        Retrieve the process parameters used to start of the process model of the given ID

        Parameters:

        `pmId_` - process model id to retrieve variables for

        `sc_` - the service context of the user making this call

        Returns:

        All process parameters entered when starting the process model with the given ID

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

    -   ### getVisibleProcessVariables

        public static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getVisibleProcessVariables([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Retrieve all visible process variables used in the process model given

        Parameters:

        `pmId` - process model id to retrieve variables for

        `sc` - the service context of the user making this call

        Returns:

        all visible variables within the process model given

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

    -   ### getVisibleProcessVariables

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] getVisibleProcessVariables([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        since 6.0.3

        Retrieve all visible process variables used in the process model given

        Parameters:

        `pmId_` - process model id to retrieve variables for

        `sc_` - the service context of the user making this call

        Returns:

        all visible variables within the process model given

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

    -   ### getRecursiveRelationship

        public static int getRecursiveRelationship([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subPmId, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Returns that status of the recursive relationship between the two supplied ProcessModels

        Parameters:

        `pmId` - parent process id

        `subPmId` - sub parent process id

        `sc` - the service context of the user making this call

        Returns:

        the int value associated with the recursive relationship status

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

        See Also:

        -   [`ProcessDesignService.getRecursiveRelationship(Long,Long)`](ProcessDesignService.html#getRecursiveRelationship\(java.lang.Long,java.lang.Long\))

    -   ### getRecursiveRelationship

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static int getRecursiveRelationship([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") subPmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        since 6.0.3

        Returns that status of the recursive relationship between the two supplied ProcessModels

        Parameters:

        `pmId_` - parent process id

        `subPmId_` - sub parent process id

        `sc_` - the service context of the user making this call

        Returns:

        the int value associated with the recursive relationship status

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

        See Also:

        -   [`ProcessDesignService.getRecursiveRelationship(Long,Long)`](ProcessDesignService.html#getRecursiveRelationship\(java.lang.Long,java.lang.Long\))

    -   ### fillInAssigneeDisplayNames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void fillInAssigneeDisplayNames([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Assignee display names will be populated automatically by the [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Fills in all appian type display names for a process model

        Parameters:

        `pm_` - the process model to fill in the appian types for

        `sc_` - the current user's service context

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model contains any usernames that do not refer to valid users

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model contains any group IDs that do not refer to valid groups

    -   ### lockProcessModel

        public static void lockProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId, boolean overrideLock, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Locks the process model pmId\_, overrides the lock of a previous user if overrideLock is `true`

        Parameters:

        `pmId` - id of process model to lock

        `overrideLock` - whether or not to override another user's lock

        `sc` - the current user's service context

        Throws:

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is already locked and override was not true

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to lock (or override, if specified) the process model See [`ProcessDesignService.lockProcessModel(Long,boolean)`](ProcessDesignService.html#lockProcessModel\(java.lang.Long,boolean\))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any other error occurs

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### lockProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void lockProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, boolean overrideLock\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        since 6.0.3

        Locks the process model pmId\_, overrides the lock of a previous user if overrideLock is `true`

        Parameters:

        `pmId_` - id of process model to lock

        `overrideLock_` - whether or not to override another user's lock

        `sc_` - the current user's service context

        Throws:

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the process model is already locked and override was not true

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have access to lock (or override, if specified) the process model See [`ProcessDesignService.lockProcessModel(Long,boolean)`](ProcessDesignService.html#lockProcessModel\(java.lang.Long,boolean\))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any other error occurs

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### loadProcessModelVersion

        public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") loadProcessModelVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Loads a process model version from the database.

        Parameters:

        `pmId_` - the id of a process model in the database.

        `version_` - version of the process model to load.

        `sc_` - the current user's service context

        Returns:

        the loaded process model with any Appian-typed object display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### loadProcessModelVersion

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") loadProcessModelVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions"), [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        since 6.0.3

        Loads a process model version from the database.

        Parameters:

        `pmId_` - the id of a process model in the database.

        `version_` - version of the process model to load.

        `sc_` - the current user's service context

        Returns:

        the loaded process model with any Appian-typed object display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

    -   ### versionProcessModel

        public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") versionProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Versions a process model in the database.

        Parameters:

        `pm_` - a process model to be versioned.

        `sc_` - the service context of the user on behalf of whom this request is made.

        Returns:

        the versioned process model, with all of its primary keys filled in. Also, any Appian-typed objects will have display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### versionProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") versionProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        since 6.0.3

        Versions a process model in the database.

        Parameters:

        `pm_` - a process model to be versioned.

        `sc_` - the service context of the user on behalf of whom this request is made.

        Returns:

        the versioned process model, with all of its primary keys filled in. Also, any Appian-typed objects will have display names filled in in its [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### versionProcessModel

        public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") versionProcessModel([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Parameters:

        `pd_` -

        `sc_` -

        `notesMap_` -

        Returns:

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### versionProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") versionProcessModel([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions"), [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        since 6.0.3

        Parameters:

        `pd_` -

        `sc_` -

        `notesMap_` -

        Returns:

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")`

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`

    -   ### clearProcessDiagramNoteIds

        public static void clearProcessDiagramNoteIds([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pd\_)

    -   ### unlockProcessModel

        public static void unlockProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Unlocks a process model

        Parameters:

        `pmId_` - the id of the process model to unlock

        `sc_` - the current user's service context

    -   ### unlockProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void unlockProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Unlocks a process model

        Parameters:

        `pmId_` - the id of the process model to unlock

        `sc_` - the current user's service context

    -   ### saveProcessModelAndNodeNotes

        public static final void saveProcessModelAndNodeNotes([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes\_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") newModel\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Saves the notes for a process model and nodes

        Parameters:

        `allNotes_` - a map containing all the notes

        `newModel_` - the new model to save the notes for

        `sc_` - the current user's service context

    -   ### saveProcessModelAndNodeNotes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final void saveProcessModelAndNodeNotes([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes\_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") newModel\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Saves the notes for a process model and nodes

        Parameters:

        `allNotes_` - a map containing all the notes

        `newModel_` - the new model to save the notes for

        `sc_` - the current user's service context

    -   ### saveProcessModelAndNodeNotes

        public static final void saveProcessModelAndNodeNotes([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes\_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") newModel\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Parameters:

        `allNotes_` -

        `newModel_` -

        `sc_` -

    -   ### saveProcessModelAndNodeNotes

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final void saveProcessModelAndNodeNotes([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") allNotes\_, [ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") newModel\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Parameters:

        `allNotes_` -

        `newModel_` -

        `sc_` -

    -   ### getNotesFromProcessModel

        public static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getNotesFromProcessModel([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm\_)

        Gets note from a process model

        Parameters:

        `pm_` - the process model to get the notes from

        Returns:

        A `Map` of the notes retrieved

    -   ### getNotesFromProcessModel

        public static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getNotesFromProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_)

    -   ### updateProcessModelWithMapNotesContent

        public static void updateProcessModelWithMapNotesContent([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") notesMap\_, [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_)

        reinserts notes content into pm from the given map

        Parameters:

        `notesMap_` - map containing note content for the given pm

        `pm_` - pm to insert note content into

    -   ### updateProcessModelWithNotesContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void updateProcessModelWithNotesContent([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_)

        Deprecated.

        use updateProcessModelWithNotesContent(ProcessModel, ServiceContext)

        Inserts note values from the file system into the process model

        Parameters:

        `pm_` - process model to insert notes into

    -   ### updateProcessModelWithNotesContent

        public static void updateProcessModelWithNotesContent([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Inserts note values from the file system into the process model

        Parameters:

        `pm_` - process model to insert notes into

        `sc_` - ServiceContext of user invoking the call.

    -   ### updateProcessModelWithNotesContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void updateProcessModelWithNotesContent([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Inserts note values from the file system into the process model

        Parameters:

        `pm_` - process model to insert notes into

        `sc_` - ServiceContext of user invoking the call.

    -   ### updateProcessModelWithNotesContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void updateProcessModelWithNotesContent([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm\_)

        Deprecated.

        use updateProcessModelWithNotesContent(ProcessDiagram, ServiceContext)

        Inserts note values from the file system into the process diagram

        Parameters:

        `pm_` - process diagram to insert notes into

    -   ### updateProcessModelWithNotesContent

        public static void updateProcessModelWithNotesContent([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Parameters:

        `pm_` -

        `sc_` -

    -   ### updateProcessModelWithNotesContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static void updateProcessModelWithNotesContent([ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process") pm\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Parameters:

        `pm_` -

        `sc_` -

    -   ### getErrorsForUnpublishedChildren

        public static com.appiancorp.process.design.validation.Errors getErrorsForUnpublishedChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Gets errors for a process model if it has unpublished child processes

        Parameters:

        `pmId_` - the id of the process model

        `sc_` - the current user's service context

        Returns:

        a list of `Errors` which will contain errors if the given process model has unpublished child processes. otherwise it will be empty. See [`ProcessDesignService.getUnpublishedChildrenForProcessModel(java.lang.Long)`](ProcessDesignService.html#getUnpublishedChildrenForProcessModel\(java.lang.Long\)) for a list of the result codes which will be used to create the returned object

    -   ### getErrorsForUnpublishedChildren

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static com.appiancorp.process.design.validation.Errors getErrorsForUnpublishedChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Gets errors for a process model if it has unpublished child processes

        Parameters:

        `pmId_` - the id of the process model

        `sc_` - the current user's service context

        Returns:

        a list of `Errors` which will contain errors if the given process model has unpublished child processes. otherwise it will be empty. See [`ProcessDesignService.getUnpublishedChildrenForProcessModel(java.lang.Long)`](ProcessDesignService.html#getUnpublishedChildrenForProcessModel\(java.lang.Long\)) for a list of the result codes which will be used to create the returned object

    -   ### getErrorsForParentsOfUnpublishedChildren

        public static com.appiancorp.process.design.validation.Errors getErrorsForParentsOfUnpublishedChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Gets errors associated with the parents of unpublished process models for a process model

        Parameters:

        `pmId_` - the process model to get errors for

        `sc_` - the current user's service context

        Returns:

        a list of `Errors` objects that will return errors if the unpublished children of a process model have other parents. Otherwise the list will be empty. See [`ProcessDesignService.getParentsOfUnpublishedChildrenForProcessModel(java.lang.Long)`](ProcessDesignService.html#getParentsOfUnpublishedChildrenForProcessModel\(java.lang.Long\)) for a list of the result codes which will be used to create the returned object

    -   ### getErrorsForParentsOfUnpublishedChildren

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static com.appiancorp.process.design.validation.Errors getErrorsForParentsOfUnpublishedChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Gets errors associated with the parents of unpublished process models for a process model

        Parameters:

        `pmId_` - the process model to get errors for

        `sc_` - the current user's service context

        Returns:

        a list of `Errors` objects that will return errors if the unpublished children of a process model have other parents. Otherwise the list will be empty. See [`ProcessDesignService.getParentsOfUnpublishedChildrenForProcessModel(java.lang.Long)`](ProcessDesignService.html#getParentsOfUnpublishedChildrenForProcessModel\(java.lang.Long\)) for a list of the result codes which will be used to create the returned object

    -   ### getErrorsForParentsOfProcessModel

        public static com.appiancorp.process.design.validation.Errors getErrorsForParentsOfProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Gets errors associated with the given process model having parents

        Parameters:

        `pmId_` - the process model to check for parents

        `sc_` - the current user's service context

        Returns:

        a list of `Errors` that contain errors if the given process model has parent process models. Otherwise the list is empty. See [`ProcessDesignService.getParentsForProcessModel(java.lang.Long)`](ProcessDesignService.html#getParentsForProcessModel\(java.lang.Long\)) for a list of the result codes which will be used to create the returned object

    -   ### getErrorsForParentsOfProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static com.appiancorp.process.design.validation.Errors getErrorsForParentsOfProcessModel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmId\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Gets errors associated with the given process model having parents

        Parameters:

        `pmId_` - the process model to check for parents

        `sc_` - the current user's service context

        Returns:

        a list of `Errors` that contain errors if the given process model has parent process models. Otherwise the list is empty. See [`ProcessDesignService.getParentsForProcessModel(java.lang.Long)`](ProcessDesignService.html#getParentsForProcessModel\(java.lang.Long\)) for a list of the result codes which will be used to create the returned object

    -   ### validateProcessModel

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] validateProcessModel([AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") apm\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Validates the process model

        Parameters:

        `apm_` - the process model to validate

        `sc_` - the current user's service context

        Returns:

        A `String` array representing the errors within the process model. See [`ProcessDesignService.validateProcessModel(com.appiancorp.suiteapi.process.AbstractProcessModel)`](ProcessDesignService.html#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel\))a description of the possible validation errors

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

    -   ### validateProcessModel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] validateProcessModel([AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") apm\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        Deprecated.

        since 6.0.3

        Validates the process model

        Parameters:

        `apm_` - the process model to validate

        `sc_` - the current user's service context

        Returns:

        A `String` array representing the errors within the process model. See [`ProcessDesignService.validateProcessModel(com.appiancorp.suiteapi.process.AbstractProcessModel)`](ProcessDesignService.html#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel\))a description of the possible validation errors

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if anything goes wrong

    -   ### validateProcessModelExpressions

        public static com.appiancorp.process.design.validation.Errors validateProcessModelExpressions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errors\_, com.appiancorp.process.design.validation.Errors err\_, boolean isEPEx)

        Creates Invalid Expression Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\)) and adds them to the passed in errors list

        Parameters:

        `errors_` - the String array of errors gotten from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        `err_` - an object used to encapsulate errors. This should not be null.

        Returns:

        an `Errors` object containing errors for the invalid expression exceptions found in the string of errors

    -   ### validateProcessModelExpressions

        public static com.appiancorp.process.design.validation.Errors validateProcessModelExpressions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errors\_, boolean isEPEx)

        Creates Invalid Expression Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        Parameters:

        `errors_` - the String array of errors gotten from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        Returns:

        an `Errors` object containing errors for the invalid expression exceptions found in the string of errors

    -   ### validateSubProcessModels

        public static com.appiancorp.process.design.validation.Errors validateSubProcessModels([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errors\_)

        Creates Invalid Subprocess Model Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        Parameters:

        `errors_` - the String array of errors gotten from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        Returns:

        an `Errors` object containing errors for the invalid expression exceptions found in the string of errors

    -   ### validateSubProcessModels

        public static com.appiancorp.process.design.validation.Errors validateSubProcessModels([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errors\_, com.appiancorp.process.design.validation.Errors err\_)

        Creates Invalid Subprocess Model Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\)) and adds them to the passed in errors list

        Parameters:

        `errors_` - the String array of errors gotten from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        `err_` - an `Errors` to which validation errors will be added

        Returns:

        an `Errors` object containing errors for the invalid expression exceptions found in the string of errors

    -   ### validateInterfaceInformation

        public static com.appiancorp.process.design.validation.Errors validateInterfaceInformation(com.appiancorp.process.design.validation.Errors err\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors\_)

        Create Interface Information Errors from list of String arrays and adds them to the passed in `Errors` list. Interface Information Errors are those related to the mapping nodes and the process properties declare in their FormConfig.

        Parameters:

        `err_` - the current list of `Error`s

        `errors_` - the list of Strings from which to construct the errors

        Returns:

        the updated list of `Error`s with the Interface Information Errors added

    -   ### validateOtherErrors

        public static com.appiancorp.process.design.validation.Errors validateOtherErrors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errors\_, com.appiancorp.process.design.validation.Errors err\_)

    -   ### validateAdminConfigSettings

        public static com.appiancorp.process.design.validation.Errors validateAdminConfigSettings(com.appiancorp.process.design.validation.Errors err\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors\_)

    -   ### handleProcessModelErrors

        public static com.appiancorp.process.design.validation.Errors handleProcessModelErrors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errors\_, boolean isEPEx)

    -   ### handleProcessModelErrors

        public static com.appiancorp.process.design.validation.Errors handleProcessModelErrors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errors\_, com.appiancorp.process.design.validation.Errors err\_, boolean isEPEx)

        Creates Errors from list of String arrays from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        Parameters:

        `errors_` - the String array of errors gotten from [`validateProcessModel(AbstractProcessModel,ServiceContext)`](#validateProcessModel\(com.appiancorp.suiteapi.process.AbstractProcessModel,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        `err_` - an `Errors` to which validation errors will be added

        Returns:

        an `Errors` object containing errors for the invalid expression exceptions found in the string of errors

    -   ### validateAndSetPvDefaults

        public static void validateAndSetPvDefaults([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") pm\_)

    -   ### getNotesWithContent

        public static [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotesWithContent([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Parameters:

        `notes_` -

        `sc_` -

        Returns:

    -   ### getNotesWithContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] getNotesWithContent([Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] notes\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

    -   ### validateCallIntegrationInformation

        public static com.appiancorp.process.design.validation.Errors validateCallIntegrationInformation(com.appiancorp.process.design.validation.Errors err\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors\_)

    -   ### validateExecuteRoboticProcess

        public static com.appiancorp.process.design.validation.Errors validateExecuteRoboticProcess(com.appiancorp.process.design.validation.Errors err\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors\_)

    -   ### validateAiSkillGenerativeAiInformation

        public static com.appiancorp.process.design.validation.Errors validateAiSkillGenerativeAiInformation(com.appiancorp.process.design.validation.Errors err\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errors\_)

        Converts validation messages for nodes of type Generative AI Skill into `Error` instances. Adds these errors to the provided `Errors` container, or creates a new one if it is `null`.

        Parameters:

        `err_` - The container to which parsed errors will be added.

        `errors_` - An array of error message strings.

        Returns:

        The updated error container including the newly parsed errors.

        See Also:

        -   `AiSkillGenerativeAiNodeValidator`

    -   ### validateWriteRecordsWithEvents

        public static com.appiancorp.process.design.validation.Errors validateWriteRecordsWithEvents(com.appiancorp.process.design.validation.Errors modelErrors, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... errorMessages)

        Adds any errors related to the Write Records v2 node to the Errors object.

        Parameters:

        `modelErrors` - the existing model errors to append to

        `errorMessages` - the error messages to process

        Returns:

        the updated Errors object