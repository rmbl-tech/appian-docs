---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html
original_path: integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html
version: "25.3"
---

[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html)
-   [No Frames](SimpleConfiguration.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.simplified.sdk.configuration

## Class SimpleConfiguration

-   Object
-   -   com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration

-   * * *

    public class SimpleConfiguration
    extends Object

    Defines the configuration of an Appian Connected System object or an Appian Integration object. The following example illustrates defining the structure of the data and UI, followed by setting a value and an error:

      `integrationConfiguration.setProperties(     textProperty("name")     .label("Name")     .build(),    integerProperty("height")     .label("Height")     .build(),    integerProperty("age")     .label("Age")     .build(),    booleanProperty("requiresParentApproval")     .label("Requires Parent Approval")     .isReadOnly(true)     .build());    Integer age = integrationConfiguration.getValue("age");    if (age != null)     integrationConfiguration.setValue("requiresParentalApproval", age < 18);    Integer heightInInches = integrationConfiguration.getValue("height");   if (heightInInches != null && heightInInches < 60)     integrationConfiguration.setError("height", "You are not tall enough to ride.");`

    Supports:

    -   setting and retrieving values on properties by keyed locations
    -   setting and retrieving errors on properties by keyed locations
    -   creating the UI and data structure on the Appian object

    [`setProperties(PropertyDescriptor...)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setProperties-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor...-) must be called per invocation of [`SimpleConnectedSystemTemplate.getConfiguration(SimpleConfiguration, ExecutionContext)`](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) and [`SimpleIntegrationTemplate.getConfiguration(SimpleConfiguration, SimpleConfiguration, PropertyPath, ExecutionContext)`](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-)

    As designers provide values, the SimpleConfiguration can be dynamically updated to display additional configuration options, fill in dropdown choices, and set default values.

    \*

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#from-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.simplified.sdk.configuration.TypePropertyFactory-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">from</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;configDescriptor, com.appian.connectedsystems.simplified.sdk.configuration.TypePropertyFactory&nbsp;typePropertyFactory, <a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>List&lt;<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getProperties--">getProperties</a></span>()</code><div class="block">Properties define how fields are displayed.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getProperty-java.lang.String-">getProperty</a></span>(String&nbsp;key)</code><div class="block">Properties define how fields are displayed.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>&lt;T&gt;&nbsp;T</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getValue-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">getValue</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;propertyPath)</code><div class="block">Gets a value stored anywhere in the configuration.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>&lt;T&gt;&nbsp;T</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getValue-java.lang.String-">getValue</a></span>(String&nbsp;key)</code><div class="block">Gets a value stored in the configuration All values inside the configuration can be null.</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setErrors-java.util.List-">setErrors</a></span>(List&lt;String&gt;&nbsp;errors)</code><div class="block">Set errors at the highest level of the configuration Use this method to show invalid configurations in the connected system or errors resulting from an invalid combination of multiple fields' configurations</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setErrors-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-java.util.List-">setErrors</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;propertyPath, List&lt;String&gt;&nbsp;errors)</code><div class="block">Sets an error anywhere in the configuration.</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setErrors-java.lang.String-java.util.List-">setErrors</a></span>(String&nbsp;key, List&lt;String&gt;&nbsp;errors)</code><div class="block">Sets an error in the configuration.</div></td></tr><tr id="i8" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setProperties-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor...-">setProperties</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a>...&nbsp;properties)</code><div class="block">Defines the UI and data structure of the Appian object integrationConfiguration.setProperties( textProperty("name") .label("Name") .instructionText("Please enter your first and last name") .build(), integerProperty("height") .label("Height") .build(), integerProperty("age") .label("Age") .build(), booleanProperty("requiresParentApproval") .label("Requires Parent Approval") .description("If true, you need to ask your parents first!")</div></td></tr><tr id="i9" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setValue-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-java.lang.Object-">setValue</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;propertyPath, Object&nbsp;value)</code><div class="block">Sets a value stored anywhere in the configuration.</div></td></tr><tr id="i10" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setValue-java.lang.String-java.lang.Object-">setValue</a></span>(String&nbsp;key, Object&nbsp;value)</code><div class="block">Sets a value stored in the configuration.</div></td></tr><tr id="i11" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#toConfiguration--">toConfiguration</a></span>()</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Method Detail

        -   #### setProperties

            public [SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") setProperties([PropertyDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration")... properties)

            Defines the UI and data structure of the Appian object

              integrationConfiguration.setProperties(
                textProperty("name")
                .label("Name")
                .instructionText("Please enter your first and last name")
                .build(),
               integerProperty("height")
                .label("Height")
                .build(),
               integerProperty("age")
                .label("Age")
                .build(),
               booleanProperty("requiresParentApproval")
                .label("Requires Parent Approval")
                .description("If true, you need to ask your parents first!")
                .displayMode(BooleanDisplayMode.CHECKBOX)
                .isReadOnly(true)
                .build()
              )

            This method must be called per invocation of [`SimpleConnectedSystemTemplate.getConfiguration(SimpleConfiguration, ExecutionContext)`](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) and [`SimpleIntegrationTemplate.getConfiguration(SimpleConfiguration, SimpleConfiguration, PropertyPath, ExecutionContext)`](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-)

            Properties define how fields are displayed. Each editable (non-read-only and non-hidden) property represents data the designer can configure. Values can be modified using [`setValue(String, Object)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setValue-java.lang.String-java.lang.Object-) or retrieved using [`getValue(String)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getValue-java.lang.String-).

            All existing values are migrated to the new data structure based on the property keys. Newly added fields are set to default values defined by [`SystemType`](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration").

            Parameters:

            `properties` - fields to be displayed in the UI

            Returns:

            updated SimpleConfiguration

        -   #### getProperties

            public List<[PropertyDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration")\> getProperties()

            Properties define how fields are displayed. Each editable (non-read-only and non-hidden) property represents data the designer can configure. Values can be modified using [`setValue(String, Object)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setValue-java.lang.String-java.lang.Object-) or retrieved using [`getValue(String)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getValue-java.lang.String-).

            Returns:

            list of properties that define the current UI

        -   #### getProperty

            public [PropertyDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") getProperty(String key)

            Properties define how fields are displayed. Each editable (non-read-only and non-hidden) property represents data the designer can configure. Values can be modified using [`setValue(String, Object)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setValue-java.lang.String-java.lang.Object-) or retrieved using [`getValue(String)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getValue-java.lang.String-).

            Parameters:

            `key` - property key uniquely identifying the property.

            Returns:

            specific property of the configuration at the given key

        -   #### getValue

            public <T> T getValue(String key)

            Gets a value stored in the configuration All values inside the configuration can be null. Use reference types.

            This value could be:

            -   the default value on initialization. See [`SystemType`](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration")
            -   set using [`setValue(String, Object)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setValue-java.lang.String-java.lang.Object-)
            -   entered by a user

            Parameters:

            `key` - property key uniquely identifying the property

            Returns:

            T value at the given key

        -   #### getValue

            public <T> T getValue([PropertyPath](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") propertyPath)

            Gets a value stored anywhere in the configuration. Use this method to access nested properties All values inside the configuration can be null. Use reference types.

            This value could be:

            -   the default value on initialization. See [`SystemType`](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration")
            -   set using [`setValue(String, Object)`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setValue-java.lang.String-java.lang.Object-)
            -   entered by a user

            Fetch the value of height inside local property "personType"

               PropertyPath path = new PropertyPath("personType", "height");
               Integer height = integrationConfiguration.getValue(path);

            Parameters:

            `propertyPath` - list of property keys locating the property

            Returns:

            T value at the given key

        -   #### setValue

            public [SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") setValue(String key,
                                                Object value)

            Sets a value stored in the configuration. This will override any user-entered value at the same key.

            Parameters:

            `key` - property key uniquely identifying the property

            `value` - value to insert at the key

            Returns:

            `this`

        -   #### setValue

            public [SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") setValue([PropertyPath](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") propertyPath,
                                                Object value)

            Sets a value stored anywhere in the configuration. Use this method to access nested properties This will override any user-entered value at the same path.

               PropertyPath path = new PropertyPath("personType", "height");
               int heightInInches = 72;
               integrationConfiguration.setValue(path, heightInInches);

            Parameters:

            `propertyPath` - list of property keys locating the property

            `value` - value to insert at the key

            Returns:

            `this`

        -   #### setErrors

            public [SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") setErrors(List<String> errors)

            Set errors at the highest level of the configuration Use this method to show invalid configurations in the connected system or errors resulting from an invalid combination of multiple fields' configurations

            Parameters:

            `errors` - the errors to display

            Returns:

            `this`

        -   #### setErrors

            public [SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") setErrors(String key,
                                                 List<String> errors)

            Sets an error in the configuration. This error is displayed as a validation on the property in the UI.

            Parameters:

            `key` - property key uniquely identifying the property

            `errors` - list of validations

            Returns:

            `this`

        -   #### setErrors

            public [SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") setErrors([PropertyPath](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") propertyPath,
                                                 List<String> errors)

            Sets an error anywhere in the configuration. Use this method to access nested properties This error is displayed as a validation on the property in the UI.

            Parameters:

            `propertyPath` - list of property keys locating the property

            `errors` - list of validations

            Returns:

            `this`

        -   #### toConfiguration

            public [ConfigurationDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") toConfiguration()

        -   #### from

            public static [SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") from([ConfigurationDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") configDescriptor,
                                                   com.appian.connectedsystems.simplified.sdk.configuration.TypePropertyFactory typePropertyFactory,
                                                   [ExecutionContext](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html)
-   [No Frames](SimpleConfiguration.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._