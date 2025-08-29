---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/AppianTypeHolder.html
original_path: api/com/appiancorp/suiteapi/process/AppianTypeHolder.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface AppianTypeHolder

All Superinterfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

All Known Implementing Classes:

`[AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")`, `[AbstractProcessModel](AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")`, `[AbstractProcessNode](AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameterSchema](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")`, `[Application](../applications/Application.html "class in com.appiancorp.suiteapi.applications")`, `[ApplicationsFolder](../applications/ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications")`, `[Assignment](Assignment.html "class in com.appiancorp.suiteapi.process")`, `[Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")`, `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.process")`, `[Community](../knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge")`, `[CommunityKnowledgeCenter](../knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[Constant](../rules/Constant.html "class in com.appiancorp.suiteapi.rules")`, `[Container](../content/Container.html "class in com.appiancorp.suiteapi.content")`, `[Content](../content/Content.html "class in com.appiancorp.suiteapi.content")`, `[CustomContent](../content/CustomContent.html "class in com.appiancorp.suiteapi.content")`, `[Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")`, `[Escalation](Escalation.html "class in com.appiancorp.suiteapi.process")`, `[EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")`, `[Folder](../content/Folder.html "class in com.appiancorp.suiteapi.content")`, `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`, `[FreeformRule](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules")`, `[GenericTypedVariable](GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[InternalForm](forms/InternalForm.html "class in com.appiancorp.suiteapi.process.forms")`, `[KnowledgeCenter](../knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[KnowledgeFolder](../knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge")`, `[Lane](gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")`, `[Mapping](../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")`, `[NavigationButton](../portal/NavigationButton.html "class in com.appiancorp.suiteapi.portal")`, `[Note](Note.html "class in com.appiancorp.suiteapi.process")`, `[PartialResult](../expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")`, `[PersonalKnowledgeCenter](../knowledge/PersonalKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")`, `[ProcessDiagram](ProcessDiagram.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelNotificationSettings](ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process")`, `[ProcessNode](ProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`, `[Rule](../rules/Rule.html "class in com.appiancorp.suiteapi.rules")`, `[RulesFolder](../rules/RulesFolder.html "class in com.appiancorp.suiteapi.rules")`, `[RuntimeProcessNode](RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")`, `[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")`

* * *

public interface AppianTypeHolder extends [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Indicates that the implementing class uses Appian-typed objects (User, Group, etc), and needs to add the ids of these objects to a cache so that display names can be retrieved for them later. If a class does not have any Appian types, but has fields that implement this class, the enclosing class should also implement this interface and delegate to the other class.

See Also:

-   [`AppianTypeCache`](AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache.

-   ## Method Details

    -   ### fillInAppianTypes

        void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Parameters:

        `cache_` - cache of Appian-typed objects.