---
marp: true
paginate: true

# This requires html tags to be enabled
# VSCode: markdown.marp.enableHtml

# Build:
# npx @marp-team/marp-cli@4.1.2 README.md -o index.html
# npx @marp-team/marp-cli@4.1.2 README.md -o 20250618-pasc25-satre.pdf --pdf --allow-local-files
# npx @marp-team/marp-cli@4.1.2 README.md -o 20250618-pasc25-satre.pptx --pptx-editable --allow-local-files

style: |
  section.overlaybg h1,
  section.overlaybg ul,
  section.title h1,
  section.title h2,
  section.title h3 {
    background-color: rgba(205, 205, 205, .7);
    border-radius: 0.5em;
    padding: 0.2em 2em;
    margin: 0.25em 0;
  }
  section.overlaybg h1 {
    padding: 0.2em 0.5em;
  }
  section.overlaybg ul {
    padding: 0.2em 2em;
  }

  section.title h2,
  section.title h3 {
    text-align: right;
  }

  img[alt~="centre"] {
    display: block;
    margin: 0 auto;
  }

  img[alt~="float-right"] {
    float: right;
  }

  .box {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
    justify-content: space-between;
  }

  .columns {
    display: flex;
    gap: 1rem;
  }

  .columns > div {
    /*flex: 1 1 0;*/
    flex: auto;
  }

  footer {
    position: absolute;
    left: 0;
    /* Full width is 1280, allow space for page number */
    width: 1220px;
    bottom: 0;
    height: 50px;
    text-align: right;
  }

  div.footer-logos {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    text-align: left;
    width: fit-content;
    background-color: white;
  }

  div.footer-logos img {
    height: 50px;
    display: inline-block;
  }

footer: |
  <div class="footer-logos"><img src="hic-logo-h212-white.png"/></div>


---
<!--
_class: title
_footer: |
  <div class="footer-logos"><img src="hic-logo-h212-white.png"/><img src="universityofdundee-logo-2line.png"/></div>
_paginate: false
-->
<style scoped>
  h2 {
    display: inline-block;
    width: 400px;
    margin-left: 500px;
  }
  div.footer-logos {
    height: 100px;
  }
  div.footer-logos img {
    height: 100px;
  }
</style>

# How Can a Standard Architecture for Trusted Research Environments Provide a Framework for HPC?
## Simon Li
## PASC25 18 June 2025

![bg](dundee-taybridge-sun.jpg)

---
# The Health Informatics Centre (HIC)

The vision:

![float-right w:200](hic-chicken-tony.jpg)

> To advance data science and its community, simplifying access to sensitive data whilst maintaining security as a global leader in open, reproducible and scalable research platforms

https://www.dundee.ac.uk/hic

![bg fit right:35%](hic-expertise.png)

<!--
Part of the School of Medicine, University of Dundee

Mission Statement: "To Innovate and enable world-leading data science research specialising in sensitive data"

- HIC supports high impact research through the collection and management of population based data
- We have expert teams in secure data management, governance, data engineering, research infrastructure, software, and business support
-->

---
## We provide access to national healthcare data for researchers

- Including electronic health records and medical images
- We're data curators/processors on behalf of data controllers
- And are part of the Scottish Safe Haven network

![height:200 float-right](bsi-iso27001.svg)

![bg fit right](sshn-network.png)


---
# Purpose of this talk
- Explain what Trusted Research Environments (TREs) are
- Why existing HPC is not generally usable for TREs
- How we can start fixing that

---
# What are TREs and why do we need them?

<!--
Example motivating case
-->

---
# Example: Can undiagnosed heart failure be detected from routine medical records?

[![bg right:35% fit vertical Echocardiogram](heart-failure-risk-detected-ai-pioneering-study.webp)](https://www.dundee.ac.uk/stories/heart-failure-risk-detected-ai-pioneering-study)

<!-- Risk detected by AI in pioneering study -->

_Artificial Intelligence has the capability to detect people living with the risk of experiencing heart failure, new University of Dundee research has discovered._

https://www.dundee.ac.uk/stories/heart-failure-risk-detected-ai-pioneering-study

<!--
Heart failure: heart is unable to pump blood around the body effectively, gets worse over time
-->

---
![bg fit](ehrs-ecgs-heartfailure.excalidraw.svg)

<!--
Echocardiography heart scans from heart failure patients
Electronic health records to identify heart failure patients with echocardiograms
AI used to extract measurements of hearts from echocardiograms, better than usual methods
Combined with test results from medical records

Patients from Scottish Health Research Register and Biobank (SHARE)
-->

---
## How can we give researchers access to the data?
- Can we give them a USB stick with all patient medical data to copy to their laptop?

![bg right](usb-drive.jpg)

---
## NO! There are many reasons not to

[![drop-shadow:0,5px,10px,rgba(0,0,0,.4) w:800 centre](northern-trains-lost-propertry.png)](https://media.northernrailway.co.uk/news/the-hamster-the-wig-and-the-cupboard-northern-customers-report-more-than-32-600-items-of-lost-property)

- So what can we do instead?

---
## We could minimise the data given to the researcher...
- Data minimisation: Only provide relevant fields from relevant records
- Pseudonymisation
- Use "synthetic" data

![bg fit right](excel-data-hidden.png)

---
<!--
_footer: https://securedatagroup.org/wp-content/uploads/2025/03/sdc-handbook-v2.0.pdf
-->

## ... and limit what they can publish

![h:500](sdc-maps.png)

<!--
For example ensure only summary statistics can be published
-->
---
## We could accredit researchers to ensure they know their responsibilities...
- training courses on how to handle sensitive data
- understand why it's important to handle sensitive data in this way
- ensure that researchers are "trusted" before they can access patient data

[![width:800 float-right](mrc-research-gdpr-training.png)](https://bygsystems.net/mrcrsc-lms/course/index.php?categoryid=1)

---
## ... along with reviewing what they plan to do
- Research projects in the healthcare field already go through ethics review
- is the proposed work in the public interest?
- does it include safeguards to protect patient data?

---
## We could impose virtual or physical barriers on what they can do
- provide a locked-down compute environment with access to the data but no ability to copy data out
![centre](computers-no-connection.drawio.svg)
- or only allow access to data from a physical location monitored with CCTV


![bg fit right:40%](safepodbath02.png)

---
## In the UK these are embodied in the _"5 safes"_

We can balance how restrictive each of these _"safes"_ are

![bg right fit](5-safes-circle.png)

<!--
---
# A researcher's view of a TRE

![](tre-researchers-view.png)
-->

---
# An example TRE

Virtual desktop environment (Windows or Linux), accessed via a web browser

---

![bg fit](hic-tre-01.png)

---

![bg fit](hic-tre-04.png)

---

![bg fit](hic-tre-05.png)

---

![bg fit](hic-tre-09.png)

---

# Why do we need a "standard" for TREs?

In the UK 50+ TREs have organically developed over the past 15+ years.
- Duplication of effort
- Most TREs were developed independently, making them harder to maintain
- Every TRE feels different to researchers, more time is wasted understanding how each TRE works
- No single TRE has all the data you want

---
## Health is devolved to the 4 nations of the UK

![h:500 centre](health-data-uk.png)

---
## The need for a coordinated approach has has been emphasised through several reports in the UK ...

![bg fit right](goldacre-title-page.png)
![bg fit right:60%](sudlow-review-cover.png)

---
## ... and across Europe
- [European Health Data Space Regulation (EHDS)](https://health.ec.europa.eu/ehealth-digital-health-and-care/european-health-data-space-regulation-ehds_en
)
  > a common framework for the use and exchange of electronic health data across the EU. It enhances individuals’ access to and control over their personal electronic health data, while also enabling certain data to be reused for public interest, policy support, and scientific research purposes.

---
<!--
_footer: ""
-->
<style scoped>
  h2 {
    color: white;
    padding-top: 500px;
  }
  h2 a {
    color: white
  }
</style>

## Standard Architecture for Trusted Research Environments<br/>https://satre-specification.readthedocs.io

![bg](satre_logo_dark.svg)

---
## A grassroots standard built by the UK TRE community
Over 60 organisations contributed
- 14 collaborative events

Public Involvement
- Workshops identified transparency as a key requirement

Version 1.0 Released Oct 2023

![bg right:40% fit](uktre-swansea-2023.jpg)

---
<style scoped>
  .columns div {
    border: 1px solid black;
    padding: 0.5em;
  }
</style>

## A high-level guide on how to build and run a TRE

<div class="columns">

<div>

Four Architectural Principles:
- Usability
- Maintaining Public Trust
- Observability
- Standardisation

</div>

<div>

Four Pillars
- Information Governance
- Computing Technology
- Data Management
- Supporting Capabilities

</div>
</div>

<!--
29 Capabilities
- 160 statements
  - 75 mandatory
-->

---
## 4 pillars

![](satre-pillars.drawio.svg)

<!--
1. Information governance
2. Computing technology and Information Security
3. Data management
4. Supporting Capabilities

It's not as easy as just securing your compute infrastructure
-->

---
<style scoped>
  td {
    font-size: 12pt;
    background-color: white;
    color: lightgrey;
  }
  tr:nth-child(3) td {
    color: inherit;
    font-weight: bold;
  }
</style>

## Example capability: Network Management

|  | Statement | Guidance | Importance |
|---|---|---|---|
| 2.2.9. | Your TRE must control and manage all of its network infrastructure in order to protect information in systems and applications. | Network infrastructure must prevent unauthorised access to resources on the network. This may include firewalls, network segmentation, and restricting connections to the network. | Mandatory |
| 2.2.10. | Your TRE must not allow connectivity between users in different projects, or with access to different datasets. | Connectivity between users in the same project may be allowed,  for example to support shared network services within the project. | Mandatory |
| 2.2.11. | Your TRE must block outbound connections to the internet by default. | Limited outbound connectivity may be allowed for some services. | Mandatory |
| 2.2.12. | You should be able to monitor the network configuration of your TRE to check for misconfigurations and vulnerabilities. | This may include regular vulnerability scanning, and penetration testing. | Recommended |
| 2.2.13. | You should regularly monitor the network configuration of your TRE to check for misconfigurations and vulnerabilities. | This will involve following the monitoring procedure detailed above. | Recommended |

<!--
_footer: https://satre-specification.readthedocs.io/en/stable/pillars/computing_technology.html#network-management-application
-->

---
<!--
_footer: https://satre.uktre.org/en/evaluations/uod-hic/
-->

![bg fit](satre-uod-evaluation-20231011-screenshot.png)

---
<style scoped>
  .text-box {
    text-align: center;
    background-color: black;
    color: white;
    font-weight: bold;
    padding: 0.5em;
    height: 3em;
  }
</style>

## Who's using SATRE?

<div class="box">

![w:300](nhs-research-scotland.png)

![w:400](england-sde-logo.png)

![w:500](eoscentrust-logo.svg)

<div class="text-box">and several<br>commercial providers</div>

</div>


<!--
NHS SDE
SSHN
EOSC-ENTRUST
Commercial providers
-->

---

## Not yet in SATRE: federation

SATRE is a common baseline for TRE, so now we can work on federation as part of:

[![w:500 centre](trevolution-logo-dark2-wide.svg)](https://dareuk.org.uk/how-we-work/ongoing-activities/trevolution/)
[![w:500 centre](eoscentrust-logo.svg)](https://eosc-entrust.eu/)

---
# Why do TREs need HPC?

Massive datasets, more complex analyses
- The Scottish Safe Haven Network collectively has 2+ PB of medical images

---
# How is HPC used in practice?
It mostly isn't

![bg fit right](eo_circle_red_no-entry.svg)

<!--
https://commons.wikimedia.org/wiki/File:Eo_circle_red_no-entry.svg
-->
---
## Typical HPC has insufficient isolation for handling sensitive data
- Outbound network access: data can be copied out
- Shared filesystems/scratch space: people can see each other's data
- Internal network connections: data can be passed between different internal projects

![bg right:40%](datacentre.jpg)

---
## HPC information governance
- GDPR and other legislation applies
- HPC administrators may not be trained in handling sensitive data
- A typical TRE will be audited/accredited, e.g. to ISO27001

![bg right:40%](gdpr_europe.jpg)

<!--
This is special category data

https://commons.wikimedia.org/wiki/File:Gdpr_Europe.jpg
-->
---
# The ultimate question
_Are the public (or data owner) happy with their sensitive data being analysed in shared HPC facilities?_

![bg right](scotparliament-people.jpg)

---
# What can we do?

- Understand the drivers behind the additional restrictions that TREs impose
- Think about what technical controls are practical using SATRE as a guide
  - Can new facilities include support for TREs?
  - How much can be retro-fitted to existing facilities?

![bg right:40%](building-site.jpg)

<!--
Note: "we" includes "you"!
-->

---
## A few starting points
This is a very active area of development, but a few areas of investigation include:
- ephemeral SLURM clusters in public cloud
  - SLURM nodes are ephemeral, never shared between users, storage always encrypted

<div class="columns">
<div>

Shared HPC
![h:300 centre](hpc-shared.png)

</div>
<div>

Multiple isolated HPC
![h:300 centre](hpc-individual.png)

</div>
</div>

---
![float-right w:200](logo-fridge.png) [FRIDGE (Federated Research Infrastructure by Data Governance Extension)](https://dareuk.org.uk/how-we-work/ongoing-activities/dare-uk-early-adopters/fridge/): treating a subset of HPC nodes as a TRE, and identifying what prerequisites the HPC provider must support
  - multi-tenancy


---
- Confidential computing: Zero-trust computing where even sysadmins can't access data
  - Trusted Execution Environments
  - Secure enclaves (AWS Nitro)
  - AMD SEV (Secure Encrypted Virtualization)
  - Intel Trust Domain Extensions (TDX)

![centre height:150](confidential_computing_consortium.svg)

---
<style scoped>
  .columns div {
    border: 2px solid darkgrey;
    padding: 1em;
    width: 50%;
  }
</style>

## NIST guidelines on secure HPC

<div class="columns">

<div>

[NIST SP 800-223](https://csrc.nist.gov/pubs/sp/800/223/final)
High-Performance Computing Security: Architecture, Threat Analysis, and Security Posture

</div>

<div>

[NIST SP 800-234 Initial Public Draft](https://csrc.nist.gov/pubs/sp/800/234/ipd)
High-Performance Computing (HPC) Security Overlay

</div>
</div>

---
## But there are limits to how secure your compute is

[![Ken Thompson - Reflections on trusting trust](reflections_on_trusting_trust.png)](https://doi.org/10.1145/358198.358210)

---
<!--
_footer: ""
_paginate: false
-->
<style scoped>
img {
  padding: 10px;
  border-radius: 10px;
  width: 100%;
  background-color: white;
  width: 240px;
}
</style>

![bg](./dundee-taybridge-sun.jpg)

<div class="box">

![Health Informatics Centre](hic-logo-h212-white.png)

![University of Dundee](universityofdundee-logo-2line.png)

![Alan turing Institute](alan_turing_institute_logo.svg)

![University College London](university_college_london_logo.svg)

![DARE UK](dare_uk_logo.svg)

![Health Data Research UK](hdruk_main_rgb_jpeg.jpg)

![Administrative Data Research UK](adruk_logo_print.png)

![UK Research and Innovation](ukri_logo.png)

![University College London](ulster_university.svg)

![Research Data Scotland](research_data_scotland.svg)

![STFC Hartree](stfchartree-logo.png)

![UK TRE](uktre-logo.svg)

</div>

---
# Links for more information

- SATRE specification https://satre-specification.readthedocs.io/
- Public evaluations https://satre.uktre.org/
- DARE UK TREvolution https://dareuk.org.uk/how-we-work/ongoing-activities/trevolution/
- EOSC ENTRUST https://eosc-entrust.eu/

![bg fit right:40%](qrcode-url.png)

<!--
https://www.manicstreetpreacher.co.uk/hic-presentations-public/20250618-pasc25-satre/)
-->
