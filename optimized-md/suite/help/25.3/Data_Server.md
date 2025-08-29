---
source_url: https://docs.appian.com/suite/help/25.3/Data_Server.html
original_path: Data_Server.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian’s data service is a custom-built distributed data system which is optimized to handle both transactional and analytical workloads without any manual database tuning or administration required. The data service guarantees ACID-compliant transactions and is designed for high availability and resiliency.

Data for [record types with data sync enabled](records-data-sync.html) is stored in the data service. Through Appian’s data sync capabilities, the data service simplifies application development and maintenance by eliminating many of the complex data management and database administration tasks that are required to optimize performance for various operations and usage patterns.

Additionally, the data service can [dynamically scale](about-data-sync.html#dynamically-scale-data-fabric-queries) up and down in response to changes in user and process activity. This dynamic scaling ensures consistent query performance, optimizes resource efficiency, and further reduces the need for manual scaling.

## Architecture

The architecture of the data service is composed of several different components:

The data service consists of the following:

-   A [historical store](#historical-store) component for writing data.
-   Multiple [real-time store](#real-time-store) components for querying data.
-   A [bulk ingestion](#bulk-ingestion) component for efficiently processing [full syncs](records-data-sync.html#schedule-full-syncs).
-   An [appender](#appender) component for performing background operations.
-   A [data client](#data-client) that runs in the application server and provides an interface for internal requests to the data service.
-   A [watchdog](#watchdog) component that monitors the health of all components and recovers a component in the event of an isolated failure.

### Historical store

The historical store (or `hs`) component executes write requests to the data service. After validating a write request, the historical store commits the transaction and distributes the data to other data service components by forwarding the request to the [Internal Messaging Service](Enterprise_Architecture_Overview.html#internal-messaging-service), which serves as a transaction log for the data service. When restarting the data service for scheduled maintenance or as a result of system failure, transactions from the transaction log are replayed ensuring data consistency and optimizing recovery.

**Note:**  The data service depends on a running instance of the Internal Messaging Service for write transactions to be committed. If the Internal Messaging Service is unavailable, writes to the data service will fail.

### Real-time store

Each real-time store (or `rts`) component processes and executes query requests to the data service. When query requests are made from the application server, they are load-balanced across the real-time stores.

For Appian Cloud, the default number of real-time stores varies based on the amount of memory available on each node as shown below.

| Available Memory | Default RTS Count |
| --- | --- |
| Less than 32GB | 2 |
| Between 32GB - 127GB | 4 |
| Between 128GB - 384GB | 8 |
| Greater than or equal to 384GB | 12 |

**Note:**  If queries to your synced record types become slow during peak usage, you can choose to [dynamically scale data fabric queries](about-data-sync.html#dynamically-scale-data-fabric-queries) or increase the number of real-time stores to support higher query throughput. The number of real-time stores that can be supported depends on your site's available memory and CPU resources. [Open a support case](https://community.appian.com/support/) for more information and to see if you are eligible.

### Bulk ingestion

The bulk ingestion component is used to efficiently perform [full syncs](records-data-sync.html#schedule-full-syncs) into the data service.

The bulk ingestion component bypasses the internal messaging service and all unnecessary data validations. By streamlining full syncs, the data service is able to rapidly ingest data without any significant resource contention across other components, ensuring consistent query and write performance.

### Appender

The appender component performs background operations designed to automatically optimize queries and limit unnecessary resource usage in the data service. This includes periodically flushing data from memory to disk, generating new data snapshots, and performing garbage collection.

### Data client

The data client runs in the application server. It provides a simple interface for the rest of Appian to communicate with the data service.

### Watchdog

The watchdog component runs a Java process that monitors the health of each data service component. In the event of an isolated failure of any other component, the watchdog will attempt to heal the failed component. If the watchdog component itself fails, it will self-heal.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...