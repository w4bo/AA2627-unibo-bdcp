---
subtitle: Cloud computing
---

# 

![https://xkcd.com/1444/](img/slides95.png)

# Reference scenario

::::{.columns}
:::{.column width=60%}

The big-data cube [@meijer2012your]

- *Volume*: small to big
- *Variety*: structure to unstructured
- *Velocity*: pull to push

:::
:::{.column width=40%}

![Big data cube](img/173.svg)

:::
::::

# Reference scenario

::::{.columns}
:::{.column width=60%}

**Variety**

- **Structured**
  - Relational tuples with FK/PK relationships
- **Unstructured**
  - Key-value
  - Columnar
  - Document-based
  - Graph
  - ...

:::
:::{.column width=40%}

![Variety](img/slides96.png)

![Amount of data types](img/slides97.png)

:::
::::

[https://www.datamation.com/big-data/structured-vs-unstructured-data/](https://www.datamation.com/big-data/structured-vs-unstructured-data/) (accessed 2022-08-01)

# Reference scenario

::::{.columns}
:::{.column width=60%}

**Velocity** (latency)

- *High*: clients synchronously pulling data from sources
- *Low*: sources asynchronously pushing data to clients

**Velocity** (speed; dual to latency)

- *High*: processing in real-time (milliseconds) or near-real-time (minutes)
- *Low*: processing can take hours

:::
:::{.column width=40%}

![Velocity](img/slides98.png)

:::
::::

# Reference scenario

**Acceleration**

- Velocity is not constant, data comes in bursts
- Take Twitter as an example
  - Hashtags can become hugely popular and appear hundreds of times in just seconds
  - ... or slow down to one tag an hour
- Your system must be able to efficiently handle the peaks as well as the lows

# Number of days to 1 million users

:::{.fragment}

::::{.columns}
:::{.column width=50%}

![Number of days to 1 million users](img/1-million-users-a.png)

:::
:::{.column width=50%}

![Number of days to 1 million users](img/1-million-users-b.png)

:::
::::

::: 

# [Data never sleeps](https://www.domo.com/learn/infographic/data-never-sleeps-11)

::::{.columns}
:::{.column width=33%}

<figure>
    <img src="img/dns10.png" class="center-img"  style="max-height:550px!important" />
    <figcaption>2022</figcaption>
</figure>

:::
:::{.column width=33%}

<figure>
<img src="img/dns11.png" class="center-img"  style="max-height:550px!important" />
<figcaption>2023</figcaption>
</figure>

:::
:::{.column width=33%}

<figure>
<img src="img/dns12.avif" class="center-img"  style="max-height:550px!important" />
<figcaption>2024</figcaption>
</figure>

:::
::::

#

![DNS 10.0: over the years](img/dns10b.png)

# [Data never sleeps](https://www.domo.com/learn/infographic/data-never-sleeps-11)

::::{.columns}
:::{.column width=50%}

<figure>
    <img src="img/dns-ai-2024.avif" class="center-img" style="max-height:550px!important" />
    <figcaption>2024</figcaption>
</figure>

:::
:::{.column width=50%}

<figure>
<img src="img/dns-ai-2025.png" class="center-img"  style="max-height:550px!important" />
<figcaption>2025</figcaption>
</figure>

:::
::::

#

::::{.columns}
:::{.column width=25%}

<figure>
    <img src="img/slides99.png" style="max-height:475px!important" />
    <figcaption>2018</figcaption>
</figure>

:::
:::{.column width=25%}

<figure>
    <img src="img/slides100.jpg" style="max-height:475px!important" />
    <figcaption>2019</figcaption>
</figure>

:::
:::{.column width=25%}

<figure>
    <img src="img/slides101.jpg" style="max-height:475px!important" />
    <figcaption>2020</figcaption>
</figure>

:::
:::{.column width=25%}

<figure>
    <img src="img/slides102.png" style="max-height:475px!important" />
    <figcaption>2021</figcaption>
</figure>

:::
::::

# Netflix

The Netflix scenario

![Streaming hours](img/178.svg)

# Reference scenario

**Collecting data**

- *Scheduled Batch* 
  - Large volume of data processed on a regularly scheduled basis
  - Velocity is very predictable
- *Periodic*
  - Data processed at irregular times (e.g., after collecting a certain --large-- amount of data)
  - Velocity is less predictable
- *Near real-time* 
  - Streaming data processed in small individual batches collected and processed within minutes
  - Velocity is a huge concern
- *Real-time*
  - Streaming data is collected and processed in very small individual batches within milliseconds
  - Velocity is the paramount concern

# Reference scenario

**Processing data**

- *Batch and periodic* 
  - Once data has been collected, processing can be done in a controlled environment
  - There is time to plan for the appropriate resources
- *Near real-time and real-time* 
  - Collection of the data leads to an immediate need for processing
  - The complexity of the processing can slow down the velocity of the solution significantly
  - Plan accordingly

# Reference scenario

::::{.columns}
:::{.column width=60%}

Plus other Vs

- **Veracity**: data trustworthiness/quality
- **Value**: ability to extract meaningful information
- ...

Our focus

- (Un)Structured big-data batch
- (Un)Structured big-data streams

**Goal**: keep in mind the cube to categorize the services

:::
:::{.column width=40%}

![Big data cube](img/180.svg)

:::
::::

# Data-driven companies

*Data-driven company* refers to companies where decisions and processes are supported by data

- Decisions are based on quantitative rather than qualitative knowledge
- Processes & Knowledge are assets of the company and are not lost if managers change
- The gap between a data-driven decision and a good decision is a good manager

Adopting a data-driven mindset goes far beyond adopting a business intelligence solution and entails:

- *Create a data culture*
- *Change the mindset of managers*
- *Change processes*
- *Improve the quality of all the data*

# Why moving to the cloud?

# Why moving to the cloud?

*Digitalization* is a journey that involves three main dimensions

![Digitalization journey](img/186.svg)

Moving from A to B is a multi-year process made up of intermediate goals

... each of which must be *feasible*

- Solves a company's pain and brings value
- Can be accomplished in a limited time range (typically less than one year)
- Costs must be economically related to gains

# Why moving to the cloud?

> **Cloud Computing** (National Institute of Standards and Technology)
>
> A model for enabling *ubiquitous, convenient, on-demand network access* to a *shared pool* of configurable computing resources (e.g., networks, servers, storage, services) that can be rapidly provisioned and released with *minimal management effort* or *service provider interaction*
> 
> - On-demand self-service (consume services when you want)
> - Broad network access (consume services from anywhere)
> - Resource pooling (infrastructure, virtual platforms, and applications)
> - Rapid elasticity (enable horizontal scalability)
> - Measured service (pay for the service you consume as you consume)

**Digital transformation** involves the **cloud** to create/change business flows

- CC is the delivery of on-demand computing resources to businesses/individuals via a network (usually the Internet)
- CC enables organizations to access and store information without managing their own physical devices or IT infrastructure 
- Often involves changing the company culture to adapt to this new way of doing business
- One of the end goals is to meet ever-changing business and market demand

# Types of cloud

::::{.columns}
:::{.column width=50%}

There are different types of clouds.

- **Public**: accessible to anyone willing to pay
  - Any resources that you are not using can be used by others
  - Users share the costs
  - E.g., Microsoft Azure, AWS, Google Cloud
- **Private**: accessible by individuals within an institution
  - Cost-sharing disappears in private clouds
- **Hybrid**: a mix of the previous

:::
:::{.column width=50%}

![Types of cloud](img/slides108.png)

:::
::::

# Why moving to the cloud?

**Scalability**

- Adjusts capacity to have predictable performance at the lowest cost
- Scale from one to thousands of computers
  - This is not possible on-premises

![Scalability](img/scalability.svg)

# Why moving to the cloud?

**Elasticity**

- Automatically scale resources in response to run-time conditions
- Adapt to changes in workload by turning on/off resources to match the necessary capacity
- Core justification for the cloud adoption

![Elasticity](img/elasticity.svg)

# Why moving to the cloud?

::::{.columns}
:::{.column width=60%}

Hardware scalability

- No longer think about rack space, switches, power supplies, etc.

Grow storage from GBs to PBs.

- 1PB: one hundred 10TB Enterprise Capacity 3.5 HDD hard drives

:::
:::{.column width=40%}

![Physical space](img/slides103.jpg)

:::
::::

[https://blog.seagate.com/business/linus-tech-tips-want-petabyte-system/](https://blog.seagate.com/business/linus-tech-tips-want-petabyte-system/)

# Why moving to the cloud?

**Resource pooling**

- Enable *cost-sharing*, a resource to serve different consumers
- Resources are dynamically reassigned according to demand
- Based on *virtualization*, running multiple virtual instances on top of a physical computer system
- Economy of scale for physical resources

![Pooling](img/pooling.svg)

# Virtualization

How do we provide computational resources?

::::{.columns}
:::{.column width=60%}

*Containers* and *virtual machines* are packaged computing environments

*Containers*

- On top of the physical server and its host OS
- Share the host OS kernel
- Shared components are read-only
- "Light" takes seconds to start

*Virtual machines*

- Emulate a hardware/software system
- On top of a hypervisor (VM monitor)

:::
:::{.column width=40%}

![Containers vs VMs](img/slides112.jpg)

:::
::::

Containerization isolates an application from its environment.

- Lightweight alternative to full virtualization
- Containers are isolated but need to be deployed to (public/private) server
- Excellent solution when dependencies are in play
- Housekeeping challenges and complexities

# Why moving to the cloud?

**Reliability**

- Built to handle failures
- Fault-tolerant or highly available

![Physical Server Pools](https://media.geeksforgeeks.org/wp-content/uploads/20230110160801/Physical-Node.png)

# Why moving to the cloud?

::::{.columns}
:::{.column width=40%}

**Worldwide deployment**

- Improve data locality
- Deploy applications as close to customers as possible
  - E.g., to reduce network latency
- Compliant to privacy regulations (e.g., GDPR)

:::
:::{.column width=60%}

![Google's [Worldwide deployment](https://cloud.google.com/about/locations)](img/google-worlwide.jpg)

:::
::::

# Cesena Campus (UniBO), May 2023

The importance of geographical redundancy.

<img src="img/phdslides_25.jpg" class="center-img" style="max-height: 600px !important" alt="Cesena, 2023-05-18" />

# Worldwide deployment

::::{.columns}
:::{.column width=50%}

Cloud services are hosted in separate geographic areas.

- Locations are composed of **regions** and **availability zones**
- [Using regions and availability zones](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)

Region (e.g., `us-east-1`)

- It is an independent geographical area that groups data centers
- Has availability zones

Availability zones in a region

- A data center
- Connected through low-latency links
- Resources are usually replicated across zones but not regions

:::
:::{.column width=50%}

![Regions](img/slides109.png)

:::
::::

# Why moving to the cloud?

Measured **quality of service**

- Services leverage a quantitative metering capability, making *pay-as-you-go (or pay-per-use)* billing

![[AWS billing](https://aws.amazon.com/it/blogs/aws/aws-cost-explorer-update-better-filtering-grouping-report-management-ri-reports/)](img/aws-billing.png)

# Why moving to the cloud?

::::{.columns}
:::{.column width=40%}

![AWS Services](img/aws-services.jpg)

:::
:::{.column width=60%}

Service **integration**

- Do not reinvent the wheel; eliminate repetitive tasks
  - Use services that solve common problems (e.g., queuing)
- Abstract and automatically adapt the architecture to requirements
  - E.g., create (test) environments on demand

*Integration* and *abstraction* are drivers of change

- From *databases* to *data platforms*
- From *on-premises* to *serverless* architectures
- From *custom* to *standardized* data pipelines

:::
::::

# Which services?

# Cloud computing: principal vendors

::::{.columns}
:::{.column width=50%}

![Magic Quadrant 2025](img/gartner-mq-2025.png)

:::
:::{.column width=50%}

How do we choose the Cloud Service Providers?

[Gartner Magic Quadrant](https://www.gartner.com/en/research/methodologies/magic-quadrants-research)

- **Leaders** execute well and are well-positioned for tomorrow
- **Visionaries** understand where the market is going but do not yet execute well
- **Niche Players** focus successfully on a small segment, or are unfocused and do not out-innovate or outperform others
- **Challengers** execute well but do not demonstrate an understanding of the market direction
- Focusing on leaders isn’t always the best
  - A niche player may support needs better than a market leader. It depends on how the provider aligns with business goals

:::
::::

# Cloud computing: principal vendors

::::{.columns}
:::{.column width=33%}

![Magic Quadrant 2020](img/slides110.png)

:::
:::{.column width=33%}

![Magic Quadrant 2023](img/gartner_mq_2023.png)

:::
:::
:::{.column width=33%}

![Magic Quadrant 2025](img/gartner-mq-2025.png)

:::
::::

# Data pipeline

![https://xkcd.com/2054/](img/slides180.png)

**Data pipeline**: a *sequence* of operations to transform and consume raw data

# Data pipeline - AWS

::::{.columns}
:::{.column width=30%}

Three main steps

- *Ingest*
  - Gateway, DataSync (batch)
  - Kinesis, SNS, SQS (stream)
- *Transform and store*
  - S3 and Glacier (storage)
  - Glue (ETL)
- *Serve and consume*
  - EMR (Hadoop-like cluster)
  - Athena (serverless query)
  - Machine learning services

:::
:::{.column width=70%}

![AWS](img/slides181.png)

:::
::::

# Data pipeline - Google Cloud

::::{.columns}
:::{.column width=30%}

Three main steps

- *Ingest*
  - Transfer service (batch)
  - Pub/Sub (stream)
- *Analyze*
  - Dataproc (batch)
  - Dataflow (stream)
  - Cloud storage (storage)
  - Machine learning services
- *Serve*
  - BigQuery (query service)

:::
:::{.column width=70%}

![Google Cloud](img/slides182.png)

:::
::::

# A tentative organization

![Building blocks](img/245.svg)

# A tentative organization

::::{.columns}
:::{.column width=50%}

We have services

- To transform data
- To support the transformation

The (DIKW) pyramid abstracts many techniques and algorithms.

- Standardization
- Integration
- Orchestration
- Accessibility through APIs

:::
:::{.column width=50%}

![DIKW](img/246.svg)

:::
::::

# A tentative organization

::::{.columns}
:::{.column width=50%}

This is not a sharp taxonomy.

*Ingestion* vs *Analytics*

- Data streams are used for ingestion
- ... and (event) processing

:::
:::{.column width=50%}

![Ingestion vs Analytics](img/248.svg)

:::
::::

# A tentative organization

::::{.columns}
:::{.column width=50%}

This is not a sharp taxonomy.

*Storage* vs *Serving*

- Databases are storage
- ... with processing capability
- ... and with serving capability

:::
:::{.column width=50%}

![Storage vs Serving](img/249.svg)

:::
::::

# Is cloud a silver bullet?

# Is cloud a silver bullet?

![[Millions of websites offline after fire at French cloud services firm (2021)](https://www.reuters.com/article/us-france-ovh-fire-idUSKBN2B20NU)](img/slides104.png)

# Is cloud a silver bullet?

![[Global cyber outage hits air travel (2024)](https://www.reuters.com/business/aerospace-defense/air-travel-hit-by-global-cyber-outage-2024-07-19/)](img/crowstrike.png)

# Is cloud a silver bullet?

::::{.columns}
:::{.column width=50%}

![[Google Energy](https://sustainability.google/progress/energy/)](img/google-energy1.jpg)

:::
:::{.column width=50%}

![[Google Energy](https://sustainability.google/progress/energy/)](img/google-energy2.jpg)

:::
::::

[(2025) Nuclear reactor project with Kairos Power and Tennessee Valley Authority](https://blog.google/outreach-initiatives/sustainability/google-first-advanced-nuclear-reactor-project-with-kairos-power-and-tennessee-valley-authority/)

[(2025) Carbon capture and storage project](https://blog.google/outreach-initiatives/sustainability/first-carbon-capture-storage-project/)

#

[(2020) Microsoft finds underwater datacenters are reliable, practical and use energy sustainably](https://news.microsoft.com/source/features/sustainability/project-natick-underwater-datacenter/)

{{<video https://news.microsoft.com/wp-content/uploads/prod/sites/549/2020/09/GIF_5.mp4 >}}

#

![https://xkcd.com/908/](img/slides107.png)

# Cloud computing: deployment models

Understanding architectures is paramount to successful systems.

- Good architectures help to scale
- Poor architectures cause issues that necessitate a costly rewrite

![XaaS](img/slides111.png)

**Anything as a service (XaaS)**

- A collective term that refers to the delivery of anything as a service
- It encompasses the products, tools, and technologies that vendors deliver to users

# Cloud computing: deployment models

::::{.columns}
:::{.column width=70%}

**On-premises**

- Provisioning servers is time-consuming
  - A non-trivial environment is hard to set up
- Require dedicated operations people
- Often a distraction from strategic tasks

:::
:::{.column width=30%}

![On-premises](img/202.svg)

:::
::::

# Cloud computing: deployment models

::::{.columns}
:::{.column width=70%}

**Infrastructure as a service (IaaS)**

- A computing infrastructure provisioned and managed over the internet (e.g., AWS EC2)
- Avoid the expense/complexity of buying/managing physical servers/data centers
- IaaS overcomes issues with on-premises
- Possibly requires managing many environments

:::
:::{.column width=30%}

![IaaS](img/203.svg)

:::
::::

# Cloud computing: deployment models

::::{.columns}
:::{.column width=70%}

**Platform as a Service (PaaS)**

- A development and deployment environment in the cloud (e.g., AWS Elastic Beanstalk)
- Support complete application life-cycle: building, testing, deploying, etc.
- Avoid the expense/complexity of managing licenses and application infrastructure

:::
:::{.column width=30%}

![PaaS](img/204.svg)

:::
::::

# Cloud computing: deployment models

::::{.columns}
:::{.column width=70%}

**Function as a Service (FaaS)**

- A coding environment, a cloud provider provisions a platform to run the code (e.g., AWS Lambda)
- Infrastructure provisioning and management are invisible to the developer

:::
:::{.column width=30%}

![FaaS](img/207.svg)

:::
::::

# Cloud computing: deployment models

::::{.columns}
:::{.column width=50%}

![AWS Lambda](img/enowell_otel-python-lamda_f1_1000.png)

:::
:::{.column width=50%}

![AWS Lambda](img/enowell_otel-python-lamda_f15.png)

:::
::::

# Cloud computing: deployment models

Principles of FaaS architectures

- FaaS is based on a *serverless* approach, using a compute service to execute code on demand
- Every function could be considered as a standalone service
- Write single-purpose stateless functions

Functions *react to events*

- Design push-based, event-driven pipelines
- Create thicker, more powerful front ends
- Embrace third-party services (e.g., security)

FaaS is not a silver bullet.

- *Not appropriate for latency-sensitive applications*
- Strict specific service-level agreements
- Migration costs
  - Vendor lock-in can be an issue

# Cloud computing: deployment models

::::{.columns}
:::{.column width=70%}

**Software as a service (SaaS)**

- An application environment
- Access cloud-based apps over the Internet (e.g., email, Microsoft Office 365, GitHub)

:::
:::{.column width=30%}

![SaaS](img/209.svg)

:::
::::

# Cloud computing: deployment models

On a cloud architecture, you can rely on [*serverless* or *managed* services](https://cloud.google.com/blog/topics/developers-practitioners/serverless-vs-fully-managed-whats-difference) (accessed 2020-08-01)

![Serverless vs Managed](img/google-serverless.png)

# Cloud computing: deployment models

*Serverless*

- Standalone independent services built for a specific purpose and integrated by the cloud service provider
- No visibility into the machines
  - There are still servers in serverless, but they are abstracted away
  - No server management, do not have to manage any servers or scale them
  - E.g., when you run a query on [BigQuery](https://cloud.google.com/blog/products/bigquery/separation-of-storage-and-compute-in-bigquery), you do not know how many machines were used
- Pay for what your application uses, usually per request or usage

*(Fully) Managed*

- Visibility and control of machines
  - You can choose the number of machines that are being used to run your application
- Do not have to set up any machines, the management and backup are taken care of for you
- Pay for machine runtime, however long you run the machines and resources that your application uses

# 

![https://xkcd.com/1084/](img/slides113.png)

# References