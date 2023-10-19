---
marp: true
paginate: true
# class: invert
# theme: uncover

# Marpit markdown:
# https://marpit.marp.app/markdown

# Marp default themes and formatting:
# https://github.com/marp-team/marp-core

# Export:
# https://github.com/marp-team/marp-cli

# This requires html tags to be enabled
# VSCode: markdown.marp.enableHtml

style: |
  section.title h1,
  section.title h2,
  section.title h3 {
    background-color: rgba(205, 205, 205, .7);
    border-radius: 0.5em;
    padding: 0.2em 2em;
    margin: 0.25em 0;
  }

  section.title h2,
  section.title h3 {
    text-align: right;
  }

  .box {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
  }

  footer {
    position: absolute;
    left: 0;
    right: 75px;
    height: 20px;
    text-align: left;
    padding-left: 20px;
  }

  img.footer-logo-left,
  img.footer-logo-right,
  img.footer-logo-large {
    height: 53px;
    position: absolute;
    bottom: 0;
  }

  img.footer-logo-left {
    left: 0;
  }

  img.footer-logo-right {
    right: 0;
  }

  img.footer-logo-large {
    height: 106px;
  }

footer: |
  <img src="./hic-logo-h212-white.png" class="footer-logo-left"/>

---
<!--
_class: title
_footer: ''
-->
<style scoped>
  h2 {
    width: 780px;
    margin-left: 190px;
  }
  h3 {
    font-size: 30px;
    width: 320px;
    margin-left: 680px;
  }
  h3 img {
    vertical-align: middle;
  }
</style>

# Research Software Engineers: What can they do for Trusted Research Environments?

## LSC NHS Secure Data Environment Workshop

### ![h:40](./mail_icon.svg) spli@dundee.ac.uk</span> <br/> ![h:40](./github-mark.svg) [@manics](https://github.com/manics)

![bg](./slioch.jpg)

<img src="./hic-logo-h212-white.png" class="footer-logo-left footer-logo-large"/>
<img src="./universityofdundee-logo-2line.png" class="footer-logo-right footer-logo-large footer-logo-right"/>

---
# Who am I?

Research {infrastructure/software} engineer at the **Health Informatics Centre**, School of Medicine, University of Dundee

<small>Also open-source contributor to JupyterHub and other random projects.
</small>

![bg right fit](./ninewells-penguin.jpg)

---
# The Health Informatics Centre

The vision:

> To advance data science and its community, simplifying access to sensitive data whilst maintaining security as a global leader in open, reproducible and scalable research platforms

https://www.dundee.ac.uk/hic

![bg right fit](./ninewells-corridor.jpg)

---
<!--
_class: title
_footer: ''
-->
![bg Rosa Pinnacle on Arran](./arranrosapinnacle.jpg)

# 1. RSEs and TREs
# 2. Building TREs
# 3. What can we do with modern TREs?

---

# What is a Research Software Engineer?

In theory: Someone who develops software to support research

<div data-marpit-fragment>

In practice, roles may include
- Software engineering
- Cloud infrastructure management
- Teaching data analysis (e.g. Python, R)
- Teaching best practice for software development (testing, documentation)
- Converting research code to production code
- Building collaborations across departments and institutions
- Building communities around software and tools
- Running compute infrastructure

</div>

---

# RSEs in TREs

![bg right:33%](./colossus-cropped.jpg)

- Software/infrastructure development
  - The TREs itself
  - Software environments inside the TRE
- Deployment and operations
- Training and Support
- Teaching best practice for analysing and managing data


---
<!--
_footer: ""
-->
# What tech is involved?

Cloud platforms: ![](./amazon_aws-ar21.svg) ![](./microsoft_azure-ar21.svg) ![](./openstack-ar21.svg) ![](./google_cloud-ar21.svg) ![h:30](./vmware.svg)

Compute abstractions: ![](./docker-ar21.svg) ![](./kubernetes-ar21.svg) ![](./serverless-ar21.svg) ![h:60](./slurm_logo.svg) ![](./dask-ar21.svg)

Operating systems: ![](./microsoft-ar21.svg) ![](./linux-ar21.svg)

Analysis platforms: ![](./jupyter-ar21.svg) ![](./apache_spark-ar21.svg) ![h:60](./azure_machine_learning.jpg) ![h:50](./amazon_sagemaker.png) ![](./databricks-ar21.svg)

Programming languages: ![](./python-ar21.svg) ![](./r-project-ar21.svg) ![](./java-ar21.svg) ![](./javascript-ar21.svg) ![](./julialang-ar21.svg)

Databases: ![](./postgresql-ar21.svg) ![](./mysql-ar21.svg) ![](./microsoft-ar21.svg) ![](./mongodb-ar21.svg) ![](./neo4j-ar21.svg) ![](./redis-ar21.svg) ![](./elastic-ar21.svg)

Infrastructure as code: ![](./terraformio-ar21.svg) ![](./ansible-ar21.svg) ![](./puppet-ar21.svg) ![](./amazon_cloudformation-ar21.svg) ![](./github-ar21.svg) ![](./gitlab-ar21.svg)

---

# TREs: past and present

10 years ago: every TRE was designed from scratch
- TREs are generally very siloed in the UK, almost every TRE is a bespoke solution

---
# Today

Several recent influential reports on secure research
  - [Goldacre Review](https://www.gov.uk/government/publications/better-broader-safer-using-health-data-for-research-and-analysis)
  - [DARE report](https://dareuk.org.uk/wp-content/uploads/2022/08/DARE_UK-Paving_the_way_coordinated_national_infrastructure_sensitive_data_research-Aug2022.pdf)
  - [NHS data saves lives](https://www.gov.uk/government/publications/data-saves-lives-reshaping-health-and-social-care-with-data/data-saves-lives-reshaping-health-and-social-care-with-data)

![bg right fit Goldacre Review title page](./goldacre-title-page.png)

---
<!--
_footer: https://www.gov.uk/government/publications/better-broader-safer-using-health-data-for-research-and-analysis
-->
<style scoped>
  .overlay {
    background-color: #eeeeee;
    position: absolute;
    padding: 20px;
    left: 200px
  }
</style>

# [185 recommendations](https://www.gov.uk/government/publications/better-broader-safer-using-health-data-for-research-and-analysis)

<div style="font-size:3.5pt;column-count:10;">

## Chapter 1: Modernising NHS Service Analytics

Professional Structures

- NHSA 1. Create an NHS analyst service modelled on GES, GSS, GORS
- NHSA 2. Create clear job descriptions for NHS analysts at a range of levels
- NHSA 3. Revise Agenda for Change, and ensure technical staff are paid realistic salaries
- NHSA 4. Support an NHS analyst community
- NHSA 5. Develop an annual data conference for NHS service analysts
- NHSA 6. Find good staff, and empower them quickly with ‘data pioneer’ fellowships
- NHSA 7. Identify 3 ‘data pioneer’ analytics teams in ICSs and trusts
- NHSA 8. Commission intermittent code and analysis audits of organisations and analyst teams for service improvement
- NHSA 9. Create an Analytical Capability Index

Training

- NHSA 10. Create an Open College for NHS Service Analysts
- NHSA 11. Devise the content of a national training programme for NHS analysts: initial and CPD
- NHSA 12. Oversee funding and delivery of training, both open online and one-to-one
- NHSA 13. Establish new core training for analysts
- NHSA 14. Outline clear, non-onerous CPD training requirements for analysts
- NHSA 15. Embrace RAP and modern, open working methods
- NHSA 16. Ensure training focuses on RAP as much as Machine Learning
- NHSA 17. Create a technical team to house and develop continuing professional development resources
- NHSA 18. Ensure all training is open by default
- NHSA 19. Create and maintain a curated national open library of NHS analyst code
- NHSA 20. Create training specifically for senior leaders to help them become better customers for data analysis
- NHSA 21. Commission a rapid review of medical school curricula and similar

Platforms and data access

- NHSA 22. Improve the provision of data analysis environments
- NHSA 23. Revise NHS IT policy for analysts to ensure it is fit for purpose
- NHSA 24. Rationalise national audits, RightCare, GIRFT, and Model Health System
- NHSA 25. Make change practical

External collaborations

- NHSA 26. Commission and promote best practice on outsourcing analytics
- NHSA 27. Require all outsourced or external work to comply with RAP and open working methods
- NHSA 28. Support NHS/academic collaborations on RAP data science for NHS service improvement

## Chapter 2: Open Working

Establish clear expectations around RAP and open code for the whole system

- Open 1. Create a RAP and Open Code Oversight Group
- Open 2. Create a public policy setting out expectations on open code
- Open 3. Make open code a boilerplate feature of all public contracts
- Open 4. Create an ‘exceptions framework’ whereby publicly funded code can be closed by prior arrangement if this meets NHS and UKplc strategic objectives
- Open 5. Create an Open Code Ombudsman and Assistance Unit
- Open 6. Assert that publicly funded code is publicly owned: cautiously consider ‘Crown Copyright for code’
- Open 7. Data Controllers should require RAP and open code sharing from data users
- Open 8. Amend the Code of Practice for the Research Powers of the Digital Economy Act
- Open 9. Make it ‘okay to ask’ about access to publicly funded code

Develop Guidance on Open Code from Specific Key Organisations

- Open 10. Health and Care Information Governance Panel guidance should facilitate open code
- Open 11. The Information Commissioner’s Office should produce guidance to facilitate code sharing
- Open 12. The Medicines and Healthcare products Regulatory Agency should address code sharing and device regulation
- Open 13. Negotiate co-ownership of claimed commercial innovations from NHS data

Support NHS service analysts to work with RAP and open methods

- Open 14. Write an ‘open analytics policy for the NHS’
- Open 15. Make open a standard contractual requirement
- Open 16. Commission intermittent open code audits to drive improvement
- Open 17. Establish a technical writing and documentation team for the NHS

Build workforce capacity for RAP and modern, open, collaborative working

- Open 18. Create a ‘Code For Health’ training programme for NHS service analysts and academic researchers

Combine NHS and academia
MOOCs and practical work
Build on prior work but maintain focus on RAP
Open competitive procurement

- Open 19. Create a ‘Data for NHS leaders’ training programme
- Open 20. Create an ‘NHS data for developers and data scientists’ training programme

Make code a central feature of work in universities using health data

- Open 21. Modify the Research Excellence Framework (REF) to reflect computational work
- Open 22. Embrace research software engineering (RSE) in health data work
- Open 23. Pay realistic salaries to software developers
- Open 24. Create a working group to develop an attribution model for code and data
- Open 25. Clarify the need for authorship for software developers and data scientists as equal core contributors
- Open 26. Proactively address sharing during the pandemic
- Open 27. Academic journals should be encouraged to make code-sharing a requirement
- Open 28. Embrace research software engineering with 3 data pioneer groups leading by example
- Open 29. Use research funding to drive modernisation around better use of code and data
- Open 30. Make code sharing a core feature of all standard funding contacts
- Open 31. Provide guidance and training on RAP and code sharing

Fellowships for software developers in health data
Entry fellowships scheme for developers from other sectors
Training fellowships in computational methods

- Open 33. Open funding calls for projects and programmes around Code for Health Data.
- Open 34. Treat ‘data Infrastructure’ as open code
- Open 35. Use open competitive funding for code projects
- Open 36. Review prior delivery of open code by applicants
- Open 37. Ensure experts on code select and oversee code projects
- Open 38. Ensure the objectives and outputs of all investments are open
- Open 39. Ensure funding for code and platforms does not get diverted
- Open 40. Avoid ‘regressive funding models’ built around short-term bursts of funding
- Open 41. Focus on sustainability for software projects: set aside a third of resource for this task

Encourage open working through Trusted Research Environment design and implementation

- Open 42. All Trusted Research Environments for NHS data must facilitate and require code sharing
- Open 43. TREs themselves should be built on principles of RAP and open code
- Open 44. Produce clear guidance on disclosure risk and open code

## Chapter 3: Privacy and Security

There is no new emergency, but TREs should be used, and data dissemination should not expand
UKRI/NIHR should resource applied methods research into privacy preservation
Revise the definitions of “anonymous” “identifiable” and “linked” data; add a new category of “pseudonymised but re-identifiable”

## Chapter 4: Trusted Research Environments

National TREs
Local TREs
Academic TREs

Delivering a national TRE programme

- TRE 1. Create the role of national lead on NHS TREs and data curation
- TRE 2. Rapidly create a substantial multidisciplinary TRE technical delivery team
- TRE 3. Rapidly agree and publish features for the minimum viable National TRE
- TRE 4. Agree and publish proposed features of the full National TRE
- TRE 5. Produce a minimum viable TRE in 6 months
- TRE 6. Rapidly scale over 18 months
- TRE 7. Include GP data and certain commonly used national datasets from the start
- TRE 8. Expand the National TRE in time to accept bespoke datasets
- TRE 9. Evaluate new developments in privacy engineering; adapt accordingly
- TRE 10. All TREs must support code sharing and RAP

Develop Trustworthy, Agile, Standard Governance for National NHS TREs

- TRE 11. Build a TRE governance team to create a robust framework around TRE access
- TRE 12. Create a single standard service wrapper model for NHS TREs
- TRE 13. Create a national standard approach to “output checking” and support automation
- TRE 14. Establish a standard scheme to accredit NHS TRE users
- TRE 15. Ensure TRE access is faster and easier than data dissemination
- TRE 16. All TREs must share live detailed activity logs
- TRE 17. Create clear rules for undeclared analyses in TREs
- TRE 18. Switch off data disseminations, without undue panic
- TRE 19. Conduct an annual access audit
- TRE 20. Publish all technical steps taken to prevent and detect misuse of data

Ensuring National TREs are Accessible, and Used

- TRE 21. The National TRE should be open to all legitimate users
- TRE 22. No special cases for working outside a TRE
- TRE 23. Ideally one national TRE, never more than 3

Local NHS TRE provision

- TRE 24. Create a local NHS TRE programme
- TRE 25. Work to rapidly standardise local TRE and DAE provision, starting with ICSs
- TRE 26. Create a single service wrapper model for local NHS TREs
- TRE 27. Ensure all ICSs use a standard TRE approach
- TRE 28. Ensure any other local NHS TREs use the same standard TRE approach
- TRE 29. Manage diverse local datasets by creating and sharing standard data curation tools and methods
- TRE 30. Ensure all local implementations of national or commonly used datasets such as SUS/HES conform to a single standard
- TRE 31. Ensure all datasets extracted from national datasets in NHS Digital are requested using standard data management code
- TRE 32. Work towards federated analytics with standard local TREs
- TRE 33. Ensure local analysts use a national TRE wherever possible
- TRE 34. NHS Trusts and Data Access Environments
- TRE 35. Listen carefully to local NHS analysts and TRE managers who describe shortcomings in standard approaches and address these wherever possible

TREs for national audits and registries

- TRE 36. Use the same TRE approach as above
- TRE 37. Start with data pioneers who can demonstrate computational maturity
- TRE 38. Review the current registry and audit landscape; work towards wider access and use
- TRE 39. Work towards audits and registries using national NHS infrastructure, RAP, and TREs

Academic TRE implementation

- TRE 40. Academics should use NHS data infrastructure to access NHS patient records
- TRE 41. Academic TREs should use standard NHS TRE Service Wrapper and governance
- TRE 42. Academic TREs should use standard NHS TRE and curation approaches where possible
- TRE 43. All academic TREs should aim to use shared standard infrastructure
- TRE 44. All academic TREs must support, and should require, RAP and open working
- TRE 45. Start with data pioneers who can demonstrate computational maturity in research cohorts

Academic TRE funding

- TRE 46. All funding for academic work on TREs should pass through a single national organisation
- TRE 47. All TRE and related funding should be openly disclosed
- TRE 48. There should be follow-up on all TRE projects resourced
- TRE 49. Academic work around TREs should be funded through conventional open competition
- TRE 50. Funders should avoid short-term funding for infrastructure
- TRE 51. Funding for TREs should be separate to funding for single academic analyses
- TRE 52. All best practice and teams should be identified and augmented
- TRE 53. An overview of prior investments

What to fund

- TRE 54. Standard, national, shared, core compute infrastructure
- TRE 55. TRE infrastructure as code and teams

Methodological innovation and code for automated data release from TREs
Methodological innovation and code for data minimisation
Methodological innovation and code for detection of data misuse
Methodological innovation and code to detect unwarranted variation in care
Methodological innovation and code for federated analytics

- TRE 56. Exceptions to TRE usage

Consented cohorts
Clinical trials

- TRE 57. Address TREs for Artificial Intelligence, but as a separate workstream, funded by existing AI resource

Objections to TREs

## Chapter 5: Information Governance, Ethics and Participation

Enhanced usability for IG and ethics processes

- IG 1. Create a single form for all ethics, IG, and other data access permissions
- IG 2. Streamline the number of approvals meetings
- IG 3. Get researchers in the room
- IG 4. Create an arbitrator for disagreements over specific access requests
- IG 5. Create a single map of all approvals
- IG 6. Provide rapid unambiguous guidance when approval is not required
- IG 7. Establish 2 modest Centres for Regulatory Science
- IG 8. Establish a clinic to help users who are blocked on data access

Two-track approval for TREs

- IG 9. Create a 2-track approval system to incentivise use of TREs
- IG 10. Maintain excellent standards around governance issues not addressed by TREs
- IG 11. Review the National Data Opt Out Policy after TREs are established
- IG 12. Uphold the commitment that the NHS Digital GPDPR dataset will not be disseminated

Regulation and Legislation

- IG 13. Revise the definitions of ‘anonymous’, ‘dentifiable’ and ‘linked’ data; add a new category of ‘pseudonymised but re-identifiable’
- IG 14. Consider including health data in the Digital Economy Act
- IG 15. Appropriately sanction those who are caught deliberately and maliciously attempting to re-identify individuals in patient records
- IG 16. Disclose all data flows leaving NHS organisations in one place
- IG 17. Create a central repository of DPIAs, DSAs and related documents for local NHS data flows
- IG 18. Produce boiler-plate templates for patient consent for data use and dissemination
- IG 19. Simplify the rules governing use of posthumous data
- IG 20. Address the ‘multiple permissions’ problem

Addressing specific roles and uses

- IG 21. Start an overdue public and professional discussion on performance management
- IG 22. Ensure DHSC can access data when appropriate
- IG 23. Start an overdue public discussion about commercial access
- IG 24. Negotiate co-ownership of claimed commercial innovations from NHS data
- IG 25. Address exclusive commercial arrangements

Patient and Public Involvement and Engagement

- IG 26. Ensure PPIE expectations are proportionate to the sensitivity and scale of the project.
- IG 27. Provide researchers with easy access to practical guidance, and examples of best-practice
- IG 28. Resource and give a platform to experts in building public understanding.
- IG 29. Consider centrally commissioning PPIE on common causes of concern

## Chapter 6: Data Curation

- Cur 1. Adopt the principles of RAP
- Cur 2. Set up an NHS Data Curation planning and delivery team, or similar, to own the challenge
- Cur 3. Produce and maintain an open public library of data curation code

Generate NHS data curation code, and surface existing work

- Cur 4. Mandate that all publicly funded data curation code is shared openly
- Cur 5. Identify 5 data pioneer teams to adopt open curation methods
- Cur 6. Ensure national programmes lead by example
- Cur 7. Capture, and openly share, existing curation knowledge around commonly used national datasets
- Cur 8. Use consistent environments to facilitate re-usable curation code
- Cur 9. Require use of national TREs for tasks using national datasets wherever possible
- Cur 10. Create and enforce consistent standards for local implementations of national datasets
- Cur 11. Create and enforce standards for local TREs

Develop tools to facilitate re-usable curation code

- Cur 12. Develop standard tools to convert raw data into analysis-ready datasets
- Cur 13. Develop portable representations of data management code
- Cur 15. Insist that all dataset requests are made in code

Develop capability in Clinical Informatics

- Cur 16. Ensure there is clinical informatics training on medical school, post-graduate, and other clinical curricula
- Cur 17. Ensure universities have core capacity in clinical informatics
- Cur 18. Support core capacity in clinical informatics

## Chapter 7: Strategy

Use people with technical skills to manage complex technical problems

</div>

<div class="overlay" data-marpit-fragment>

- Open/shared infrastructure: Don't reinvent the wheel
- Reduced duplication of effort
- Transparency with the public

</div>

---
# Example: HIC's TRE

Over 10 years old: originally on-prem running with VMWare Horizon

Full migration to AWS completed this year!

Bespoke solution → more "standard" offering

The one thing that's unchanged: governance is still complicated!

![bg right:40%](./hic-servers-v.jpg)

---
# Parallels the increasing importance of RSEs
- Less bespoke code, reuse what you can
- Better maintainance and shared responsibility
- Flexibility to respond to researcher's needs e.g GPUs for AI/ML
- Custom infrastructure or services ("doing cool new stuff")

![bg right:40% fit](./github-hicresearch-frontpage.png)

---
# How should you go about building a TRE?

Read [SATRE](https://satre-specification.readthedocs.io/en/stable/)! A standard architecture that we hope all TREs in the UK (and beyond?) will aspire to
- Sets a baseline and common architecture for designing and running a TRE

![bg right:40% fit](./satre-rtd.png)

### https://satre-specification.readthedocs.io<br />https://bit.ly/satre

### https://medium.com/satre

---
# Start with existing (open-source) TREs

- AWS-TRE / [TREEHOOSE](https://github.com/HicResearch/TREEHOOSE) (currently being redesigned)
- [Azure TRE](https://github.com/microsoft/AzureTRE)
- [Turing TRE](https://github.com/alan-turing-institute/data-safe-haven) (runs on Azure)
- Google have one

Main differences: vendor, inter-organisational relationships, support costs, internal vs external maintenance, ability to customise yourself

---
# The most important thing about TREs: what they enable

---
![bg right fit](./unesco-open-science.png)

# How can you take advantage of modern TREs as an RSE?

- Promote best practice in reproducible science: You've got full control of the environment
- Encourage sharing of analytical workflows: you can customise sharing permissions
- Build services inside the TRE for multiple users: Shared web services, dashboards

---
# Even longer term: federation

Means different things to everyone: generally involves working on data from multiple TREs
- Multiple NHS SDEs
- Combining NHS and administrative/government data?

Preliminary work from DARE UK:
- [DARE UK Federated Architecture Blueprint v1](https://dareuk.org.uk/our-work/federated-architecture-blueprint/) (v2 being written)
- [TRE-FX](https://trefx.uk/) ([Bitfount](https://www.bitfount.com/), [DataSHIELD](https://www.datashield.org/))
- [TELEPORT](https://dareuk.org.uk/driver-project-teleport/)

---
<!--
_footer: ''
_paginate: false
-->
<style scoped>
img {
  padding: 20px 20px;
  border-radius: 25px;
  margin: 10px;
}
.box>* {
  flex: 1 1;
  margin: 10px 40px;
}
</style>

![bg](./dundee-taybridge-sun.jpg)

<div class="box">

<div>

![h:150 Health Informatics Centre](./hic-logo-h212-white.png) ![h:150 University of Dundee](./universityofdundee-logo-2line.png) ![h:150 Society of Research Software Engineering](./soc_rse_master_logo4-766x1024.png)

</div>

</div>

<div class="box">

<div>

![Alan turing Institute](./alan_turing_institute_logo.svg)
</div>

<div>

![University College London](./university_college_london_logo.svg)
</div>

<div>

![University College London](./ulster_university.svg)
</div>

<div>

![Research Data Scotland](./research_data_scotland.svg)
</div>

</div>

<div class="box">

<div>

![DARE UK](./dare_uk_logo.png)
</div>

<div>

![UK Research and Innovation](./ukri_logo.png)
</div>

<div>

![Health Data Research UK](./hdruk_main_rgb_jpeg.jpg)
</div>

<div>

![Administrative Data Research UK](./adruk_logo_print.png)
</div>

</div>
