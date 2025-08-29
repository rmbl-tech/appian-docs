---
source_url: https://docs.appian.com/suite/help/25.3/Working_with_the_Java_Messaging_Service.html
original_path: Working_with_the_Java_Messaging_Service.html
version: "25.3"
title: "Working with the Java Messaging Service"
page_id: "Working_with_the_Java_Messaging_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Working with the Java Messaging Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian supports the Java Messaging Service (JMS) for sending and receiving events.

**Note:**  JMS configuration is not supported on Appian Cloud. If you need to integrate with JMS on your Appian Cloud site, you can achieve most JMS use cases via a plug-in.

## Configuring Java messaging

### Default JMS configuration

Appian provides JMS support via an embedded ActiveMQ broker shipped inside the web application. This broker is enabled by default and listening at port `61616`. Remote JMX management of the embedded ActiveMQ broker is disabled by default. Although the need should not be common, the embedded broker URL can be changed by setting the property `conf.jms.embeddedBrokerUrl` in `custom.properties`.

Appian's default configuration comes with two JMS resources:

1.  A ConnectionFactory resource named `jms/AppianProcessIntegrationConnectionFactory`
2.  A Queue resource named `jms/AppianProcessIntegrationQueue`

On startup, Appian will lookup the AppianProcessIntegrationConnectionFactory by name and if found it will use it to open a consumer of the AppianProcessIntegrationQueue. Messages intended for Appian Processes must be sent to this queue.

### High-availability configuration

##### High-availability server setup

Appian supports a high-availability configuration for JMS by networking together the embedded ActiveMQ brokers running inside the web application on each node in the cluster. To update to a high-availability configuration, perform the following steps on each node running an application server in the cluster:

1.  Stop the application server if it is running.
2.  Copy `<APPIAN_HOME>/conf/jmsConfiguration.xml.embedded-ha-example` to `<REPO_HOME>/conf/jmsConfiguration.xml.<ENVIRONMENT>` and update the following values:
    1.  `id` and `brokerName` must be set to unique values within the cluster.
        1.  We recommend either using the naming format `node#` (where # is an index) or the hostname
    2.  Copy and paste an additional `networkConnector` entry for every other node in the cluster (the example file is written for a 3 node cluster)
        1.  Change the `name` of each `networkConnector` to be unique. Recommend using the format `id->id` as shown in the example file
        2.  Change the hostname in the `uri` of each `networkConnector` to one of the other hosts in the cluster (all should be using port 61616 by default)
3.  Open `<REPO_HOME>/conf/custom.properties.<ENVIRONMENT>` in a text editor.
4.  Uncomment `conf.jms.embeddedBrokerUrl` and update `<APPIAN_HOME>` to the directory where Appian is installed.
5.  Run the [configure script](Configure_Script.html) to deploy the JMS changes for your environment.
6.  Start the application server.

Below is a full example of the `<APPIAN_HOME>/conf/jmsConfiguration.xml` for a 3 node cluster:

Node 1: cluster-node-1.domain.com

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
<beans xmlns="http://www.springframework.org/schema/beans" xmlns:amq="http://activemq.apache.org/schema/core" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-2.0.xsd http://activemq.apache.org/schema/core http://activemq.apache.org/schema/core/activemq-core.xsd">

<broker xmlns="http://activemq.apache.org/schema/core" id="node1" brokerName="node1Broker">
  <networkConnectors>
    <networkConnector name="node1->node2" duplex="true" uri="static:(tcp://cluster-node-2.domain.com:61616)"/>
    <networkConnector name="node1->node3" duplex="true" uri="static:(tcp://cluster-node-3.domain.com:61616)"/>
  </networkConnectors>
  <transportConnectors>
    <!-- Do not change this port which the local broker will bind to -->
    <transportConnector uri="tcp://0.0.0.0:61616" updateClusterClients="true" />
  </transportConnectors>
</broker>

</beans>
```

Node 2: cluster-node-2.domain.com

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
<beans xmlns="http://www.springframework.org/schema/beans" xmlns:amq="http://activemq.apache.org/schema/core" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-2.0.xsd http://activemq.apache.org/schema/core http://activemq.apache.org/schema/core/activemq-core.xsd">

<broker xmlns="http://activemq.apache.org/schema/core" id="node2" brokerName="node2Broker">
  <networkConnectors>
    <networkConnector name="node2->node1" duplex="true" uri="static:(tcp://cluster-node-1.domain.com:61616)"/>
    <networkConnector name="node2->node3" duplex="true" uri="static:(tcp://cluster-node-3.domain.com:61616)"/>
  </networkConnectors>
  <transportConnectors>
    <!-- Do not change this port which the local broker will bind to -->
    <transportConnector uri="tcp://0.0.0.0:61616" updateClusterClients="true" />
  </transportConnectors>
</broker>

</beans>
```

Node 3: cluster-node-3.domain.com

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
<beans xmlns="http://www.springframework.org/schema/beans" xmlns:amq="http://activemq.apache.org/schema/core" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-2.0.xsd http://activemq.apache.org/schema/core http://activemq.apache.org/schema/core/activemq-core.xsd">

<broker xmlns="http://activemq.apache.org/schema/core" id="node3" brokerName="node3Broker">
  <networkConnectors>
    <networkConnector name="node3->node1" duplex="true" uri="static:(tcp://cluster-node-1.domain.com:61616)"/>
    <networkConnector name="node3->node2" duplex="true" uri="static:(tcp://cluster-node-2.domain.com:61616)"/>
  </networkConnectors>
  <transportConnectors>
    <!-- Do not change this port which the local broker will bind to -->
    <transportConnector uri="tcp://0.0.0.0:61616" updateClusterClients="true" />
  </transportConnectors>
</broker>

</beans>
```

##### High-availability client requirements

Failover and load balancing are achieved by using ActiveMQ's `failover` transport in the connection URLs used by clients: https://activemq.apache.org/failover-transport-reference.html

For the example above, clients would use the following URL when connecting to any of the brokers: `failover:(tcp://cluster-node-1.domain.com:61616,tcp://cluster-node-2.domain.com:61616,tcp://cluster-node-3.domain.com:61616)`

### External JMS configuration

Appian supports connecting to a customer's existing external JMS broker via a bridge configuration with the embedded JMS ActiveMQ broker.

1.  Stop the application server if it is running.
2.  Copy `<APPIAN_HOME>/conf/jmsConfiguration.xml.external-example` to `<REPO_HOME>/conf/jmsConfiguration.xml.<ENVIRONMENT>` and update the following values:
    1.  `inboundQueueName` to be the name of the queue on the remote JMS broker
    2.  In the `remoteFactory` bean, update `class` to be the class name of your `ConnectionFactory`. This value will depend on your JMS broker provider.
    3.  In the `remoteFactory` bean, update any properties that are relevant to your JMS broker's ConnectionFactory.
3.  Add additional libraries for your JMS broker to `<REPO_HOME>/tomcat/apache-tomcat/lib/`.
4.  Open `<REPO_HOME>/conf/custom.properties.<ENVIRONMENT>` in a text editor.
5.  Uncomment `conf.jms.embeddedBrokerUrl` and update `<APPIAN_HOME>` to the directory where Appian is installed.
6.  Run the [configure script](Configure_Script.html) to deploy the JMS changes for your environment.
7.  Start the application server.

## Receiving JMS messages

Sending a JMS message to Appian from an external source involves the following:

-   Creating messages.
-   Populating messages with the data you intend to process.
-   Sending the message.
-   Committing the send either explicitly (using commit) or implicitly (using close).
-   Using a Receive Message Event in your process models to expose a Java message to your process.
    -   Messages are routed to a process model, process, or particular event within a process model.
    -   This routing data is encoded within the message headers.

### Routing JMS messages

JMS messages sent to Appian can be routed to the following process entities:

**Process Model**

-   Messages can be routed according to process model UUID or process model ID.
-   The process model must be published. Only the latest published model receives messages.
-   The process model must have a Receive Message Event trigger configured for the Start Event (for non-running processes).
-   Each running instance of the process model (with one or more active Receive Message Events) gets the message. The process must be active (neither paused nor paused by exception).
-   Each active Receive Message Event in the process receives the message (additional filtering can be specified at the node level).

**Process Instance**

-   Routed using the process ID.
-   The process must be active (neither paused nor paused by exception).
-   Each active Receive Message Event in the process gets the message (additional filtering can be specified at the node level).

**Receive Message Event**

-   JMS messages can be routed to an event using a persistent ID.
-   The process instance containing the event must be active (it cannot be paused nor paused by exception).
-   The Receive Message Event node must be active.

**JMS Message Interfaces**

All JMS Message Interfaces can be received by Appian, but only the TextMessage has special support. The getText/setText interface is supported as the body from the user interface.

### Handling complex data in a JMS message

JMS header properties support only simple properties, not arrays.

To handle complex data and arrays, the routing data in the message header must have complex data externalized. The `setExternalizedProperty` method of the `InternalMessage` class (`com.appiancorp.suiteapi.messaging.InternalMessage`) is used by Appian to encode data (particularly arrays) such that they appear to be strings to the surrounding system (particularly JMS). These routing methods are detailed below.

Appian receives the messages via its `JmsProcessIntegrationHandlerMDB` Message Driven Bean (MDB), which is a type of Enterprise Java Bean (EJB).

## Routing messages sent by Appian to Appian

**`InternalMessage.routeToProcessModel (UUID or ID)`**

To send a message to a process model by UUID, see the `InternalMessage.routeToProcessModel(Message, String, String)` method.

To send to a process model by process model ID, see the `InternalMessage.routeToProcessModel(Message, Long, String)` method.

A message routed to a process model is only received by an active process or a process model Start Event. The process must listen for the message.

-   A message received before the process is listening is ignored.
    For example, if the intended recipient of a message is a Receive Event in your process, then a flow must activate the Receive Event, which must remain active (a flow token must remain at the event). If the intended recipient is the Start Event of a process model, then the process model must be saved and published.

A message routed to a process model triggers all active Receive Events in the process model.

-   A filter within the event can be used to limit the messages that are handled by the event.

The process model UUID of a saved process model is displayed on the Process Model Properties dialog. (Before the process model is saved, an Unsaved Process Model message appears). Once saved, the process model UUID is displayed on the General tab of the Process Model Properties dialog.

-   This UUID value would be used for targeting a message.

**Note:**  We recommend using the UUID for targeting messages, as it remains the same once the process model is exported from a development system and imported onto a production system. The process model ID likely differs between development and production. The process model ID can be used to send messages to process models created programmatically, where a process model can be imported and then immediately receive a message.

### Message headers set with process model UUID targeting

The following message headers are set when targeting a process model by UUID:

```
1
2
3
DESTINATION_PMUUID_KEY	Process Model UUID (externalized)
JMS_TYPE_KEY			EXTERNAL_TO_PROCESS
USERNAME_KEY			username
```

\- OR -

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
DESTINATION_PROCESS_MODEL_ID_KEY	Process Model ID (externalized)
JMS_TYPE_KEY					EXTERNAL_TO_PROCESS
USERNAME_KEY					username
Where:

DESTINATION_PMUUID_KEY is "DestinationPMUUID"
DESTINATION_PROCESS_MODEL_ID_KEY is "DestinationPMID"
JMS_TYPE_KEY is "JMSType"
USERNAME_KEY is "UserName"
EXTERNAL_TO_PROCESS is "External to Process"
```

**`InternalMessage.routeToEventPersistentId (UUID)`**

To send a message to a process model or the persistent ID of a Receive Message Event in a process (visible in the Edit Receive Message Event Properties dialog for either Start or Intermediate Events), see the `InternalMessage.routeToEventPersistentId(Message, String, String)` method.

A message routed to an event persistent ID is only received by a node within an active process or the Start Event of a process model. It must already be listening for the message.

A message received by the process engine before it is listening is ignored. If the intended recipient is a Receive Event, then a flow must have activated that Receive Event and the Receive Event must still be active. If the intended recipient is the Start Event of a process model, then the process model must be saved and published.

A message routed to the process model triggers all matching nodes.

-   A message filter within the node can be used to narrow the reception.

The event’s persistent ID is displayed on the General tab of the message event’s dialog. Until the process model is saved, this ID is not set. An Event Not Saved message is displayed instead. Once the process model is saved, the event’s persistent ID is displayed.

-   This ID value would be used for targeting a message.

### Message headers set with persistent event ID targeting

The following message headers are set when targeting a process model or Receive Message Event in a process according to its persistent ID:

```
1
2
3
DESTINATION_EVENT_PERSISTENT_ID_KEY	Event UUID (externalized)
JMS_TYPE_KEY					EXTERNAL_TO_PROCESS
USERNAME_KEY					username
```

Where:

```
1
2
3
4
DESTINATION_PMUUID_KEY is "DestinationEventPersistentID"
JMS_TYPE_KEY is "JMSType"
USERNAME_KEY is "UserName"
EXTERNAL_TO_PROCESS is "External to Process"
```

**`InternalMessage.routeToProcess (ID)`**

A message can be sent to a process using the process ID using the `InternalMessage.routeToProcess(Message, Long, String)` method.

A message routed to a process is only received by an active process (neither paused by an Administrator nor paused by exception).

-   It must be listening for the message. A message received by the process engine before it is listening is ignored.
    -   If the intended recipient is a Receive Event, then a flow must have activated that Receive Event, and the Receive Event must still be active.

A message routed to a process triggers all active Receive Events in the process.

-   A message filter within the node can be used to narrow the reception.

Sending a message to a process ID may be useful if you are programmatically starting processes. Upon starting a process from a process model, the process ID is returned as a Long.

-   This value can be used for sending a message to the process.

The process ID of a long running process can also be obtained by a report.

-   Since The process ID only lives as long as the process, do not hard-code process IDs.
-   If you must use the ID, include a mechanism to update it.

### Message headers set with process ID targeting

The following method can be used to set a Process ID in the message headers:

```
1
2
3
DESTINATION_PROCESS_ID_KEY		Process ID (externalized)
JMS_TYPE_KEY					EXTERNAL_TO_PROCESS
USERNAME_KEY					username
```

Where:

```
1
2
3
4
DESTINATION_PROCESS_ID_KEY is "DestinationProcessID"
JMS_TYPE_KEY is "JMSType"
USERNAME_KEY is "UserName"
EXTERNAL_TO_PROCESS is "External to Process"
```

## Appian application and Java code example for a message intended to be received by the Appian JMS process queue

If the model with a given UUID has a Start Event listening for events External-to-Process, a process is launched based on the receipt of the message.

Other route convenience methods are listed below, showing how to route JMS messages to processes, process models, and particular nodes within a process or process model.

### Appian application example

1.  Create a new process model.
2.  Enable a `Receive Message Event` on the process model `Start Node`.
3.  Configure the `Receive Message Event` so that the Receive Message type is `External to Process`.
4.  Save and publish the process model.
5.  Run the [example Java code](#java-code-example). A process instance is initiated.

### Java code example

The following example sends a message to the process model with the UUID stored in `PROCESS_MODEL_UUID`.

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
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
  import java.util.Properties;
  import javax.jms.Connection;
  import javax.jms.ConnectionFactory;
  import javax.jms.Destination;
  import javax.jms.MessageProducer;
  import javax.jms.Session;
  import javax.jms.TextMessage;
  import javax.naming.Context;
  import javax.naming.InitialContext;
  import javax.naming.NamingException;

  public class ExternalToProcessMessage {

    // TOOD: Change these values to match your process model and username
    private static final String PROCESS_MODEL_UUID = "0002e233-a5db-8000-710b-014d98014d98";
    private static final String MESSAGE_USERNAME = "Administrator";

    private static final String CONNECTION_FACTORY_NAME = "jms/AppianProcessIntegrationConnectionFactory";
    private static final String APPIAN_INTEGRATION_QUEUE = "APPIAN.PROCESS.INTEGRATION.QUEUE";
    private static final String ACTIVEMQ_CONTEXT_FACTORY = "org.apache.activemq.jndi.ActiveMQInitialContextFactory";
    private static final String ACTIVEMQ_CONTEXT_FACTORY_URL = "tcp://localhost:61616";

    private static final String JMS_TYPE_KEY = "MessageType";
    private static final String EXTERNAL_TO_PROCESS = "External to Process";

    public static void main(String[] args) throws Exception {
      ExternalToProcessMessage externalToProcessMessage = new ExternalToProcessMessage();
      externalToProcessMessage.useInitialContextToSendToAppian(externalToProcessMessage.getInitialContext(), CONNECTION_FACTORY_NAME);
    }

    private Context getInitialContext() throws NamingException {
      // Create an initial context using the ActiveMQ initial context factory
      Properties prop = new Properties();
      prop.setProperty(Context.INITIAL_CONTEXT_FACTORY, ACTIVEMQ_CONTEXT_FACTORY);
      prop.setProperty(Context.PROVIDER_URL, ACTIVEMQ_CONTEXT_FACTORY_URL);

      return new InitialContext(prop);
    }

    public void useInitialContextToSendToAppian(Context context, String connectionFactoryName) throws Exception {
      // Connect via remote JNDI to pull out the connection factory from the broker
      ConnectionFactory connectionFactory = (ConnectionFactory) context.lookup("ConnectionFactory");
      Connection connection = connectionFactory.createConnection();

      Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);

      // Create physical queue instead of looking up the queue via JNDI
      Destination destination = session.createQueue(APPIAN_INTEGRATION_QUEUE);

      TextMessage message = session.createTextMessage();
      message.setStringProperty(JMS_TYPE_KEY, EXTERNAL_TO_PROCESS);
      message.setStringProperty("OriginIP", "127.0.0.1");

      message.setStringProperty("UserName", MESSAGE_USERNAME);
      message.setStringProperty("DestinationPMUUID", PROCESS_MODEL_UUID);
      message.setStringProperty("MessageType", EXTERNAL_TO_PROCESS);

      message.setLongProperty("test", new Long(100));
      message.setText("This is the text of the optional body");
      MessageProducer messageProducer = session.createProducer(destination);
      messageProducer.send(message);
      messageProducer.close();
      session.close();
      connection.close();
    }
  }
```

## See also

-   [Send Message Event](Send_Message_Event.html)
-   [Receive Message Event](Receive_Message_Event.html)
-   [Configuring Custom Properties](Custom_Configurations.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...