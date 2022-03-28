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
  }

  section.title h2,
  section.title h3 {
    text-align: right;
  }

  .box {
    display: flex;
  }

  footer {
    position: absolute;
    left: 0;
    right: 75px;
    height: 20px;
    text-align: right;
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
  <img src="./hic-logo-h212-white.png" class="footer-logo-left"/>'


---
<!--
_class: title
_footer: ''
-->
<style scoped>
  h3 {
    font-size: 30px;
    width: 270px;
    margin-left: 730px;
  }
  h3 img {
    vertical-align: middle;
  }
</style>

# **TREEHOOSE**: Trusted Research Environment and Enclave for Hosting Original Open Scientific Exploration

## UKRI Cloud workshop 2022<br>Simon Li<br>Health Informatics Centre, University of Dundee

### ![h:40](./twitter-square-icon.svg) [@penguinoops](https://twitter.com/penguinoops)

![bg](./slioch.jpg)

<img src="./hic-logo-h212-white.png" class="footer-logo-left footer-logo-large"/>'
<img src="./universityofdundee-logo-2line.png" class="footer-logo-right footer-logo-large footer-logo-right"/>'

---
<!--
_class: title
_footer: ''
-->
![bg Rosa Pinnacle on Arran](./arranrosapinnacle.jpg)

# 1. HIC Trusted Research Environment
# 2. TREEHOOSE: aims of this project
# 3. What we've achieved and learnt so far

<!--
4 mins, 8 mins, 8 mins
-->
<!-- --- -->
<!-- _class: title -->
<!-- # 1. Trusted Research Environments -->

<!-- There's a UK BIOBANK invited talk in the preceding session, so may need to tailor this section depending on what's presented

What are they
Who uses them
Physical (building) vs virtual (online) security -->

---
# Basic principles of a TRE: The 5 safes

**Safe data**: data is treated to protect any confidentiality concerns.
**Safe projects**: research projects are approved by data owners for the public good.
**Safe people**: researchers are trained and authorised to use data safely.
**Safe settings**: a secure environment prevents unauthorised use.
**Safe outputs**: screened and approved outputs that are non-disclosive.

*https://ukdataservice.ac.uk/help/secure-lab/what-is-the-five-safes-framework/*

---
<!-- _footer: '' -->
# Who uses our TRE?
A very wide range of users requiring a full compute environment
- non-technical users working with Windows desktop applications
- technical developers with knowledge of using cloud infrastructure

![bg left:25% fit vertical LibreOffice](./libreoffice_logo.svg)
![bg left:25% fit vertical PyCharm](./pycharm_logo.svg)
![bg left:25% fit vertical Docker](./docker-ar21.svg)
![bg left:25% fit vertical Microsoft](./microsoft-ar21.svg)
![bg left:25% fit vertical Ubuntu](./ubuntu-ar21.svg)
![bg left:25% fit vertical VSCode](./visualstudio_code-ar21.svg)
![bg left:25% fit vertical SQL Server](./microsoft-sql-server-logo.svg)
![bg left:25% w:160 vertical Conda](./conda-logo.svg)
![bg left:25% fit vertical Python](./python-ar21.svg)
![bg left:25% fit vertical Java](./java-ar21.svg)
![bg left:25% fit vertical R](./r-project-ar21.svg)
![bg left:25% fit vertical Jupyter](./jupyter-ar21.svg)

---
- Storage is in one AWS account, separated by project
- Researcher workspaces in a separate AWS account
- Virtual display restricts copy/paste, web-browser is the only interface
- No cross-over of user data between projects

![bg right fit](./diagrams/workspaces.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE Login browser screenshot](./screenshots/hic-tre-login.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE studies browser screenshot](./screenshots/hic-tre-studies.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE studies browser screenshot](./screenshots/hic-tre-workspace-windowspycharm.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE studies browser screenshot](./screenshots/hic-tre-workspace-ubuntumatlab.png)

---
<style scopes>
.large-letter {
  font-size: 1.6em;
  color: darkred;
}
</style>

![bg right:20% fit](./treehoose-logo.png)

### <span class="large-letter">T</span>rusted <span class="large-letter">R</span>esearch <span class="large-letter">E</span>nvironment
developed in conjunction with AWS

### and <span class="large-letter">E</span>nclave
a secure environment for providing mutual protection of data and code from different parties

### for <span class="large-letter">H</span>osting <span class="large-letter">O</span>pen <span class="large-letter">O</span>riginal <span class="large-letter">S</span>cience <span class="large-letter">E</span>xploration
open infrastructure supporting open science

---
# Providing an open-source Cloud TRE platform

HIC have been running a Cloud TRE for around a year, now want to make it available to the wider community.

Initial focus on documentation and workflows for deploying and managing TREs, along with ensuring our customisations such as workflows and environments are generally applicable.

Platform to _sustainably_ and _collaboratively_ develop Cloud TREs across disciplines

<!--
Fully open-source TRE that anyone with cloud skills can deploy
- Caveat: not handling governance of TREs (at least not yet, maybe in future though!)
-->

---
# Why?
Supporting open-science

Plus one step towards supporting federation- common codebase makes it easier to interoperate, and eventually develop open standards

Efficiency: together we share the costs and learn from each other

---
<style scoped>
.box {
  align-items: center;
  padding: 1em;
}
.box div, .box img {
  padding: 0.3em;
  flex: 1;
}
</style>

# Secure enclave: resolving two conflicting requirements

<div class="box">

![w:120 S3 bucket](./simple-storage-service-s3.png)

<div class="flex1">
We want to retain full control of our data
</div>

<div style="flex:0.2">
</div>

![w:120 Python logo](./python-logo-notext.svg)

<div class="flex1">
Commercial partner wants to maintain confidentiality of their analysis code
</div>

</div>

---
# Hand-wavy explanation of secure enclaves

![Schematic of data and code in an AWS Nitro secure enclave](./diagrams/enclave.svg)

<!--
HIC owns the AWS instance running in our TRE: our data is secure

Partner: Enclave containing encrypted code runs inside the AWS instance: HIC don't have access to it

If both parties are happy then enclave is authorised to run code, AWS does some magic

Analysis outputs are reviewed by HIC before they are copied out of the TRE

AWS Nitro Enclaves: https://aws.amazon.com/ec2/nitro/nitro-enclaves/
-->

---
<!--
_class: title
_footer: ''
-->

![bg Tarmachan Ridge](./tarmachanridge.jpg)

# What we've achieved and learnt so far from running a TRE in the cloud

---
# Benefits we've already received: flexibility of compute

![bg right](./hic-servers-v.jpg)

More software, more CPUs/memory, access to GPUs, unlimited storage

Instant purchases: no institutional purchasing process to go through

AWS deals with the hardware including upgrades

---
# Tailoring of security boundaries

Virtual networks are easy to configure, choose between:

- segregation at local firewall
- network (VLAN/VPC)
- AWS account level

with cost tradeoffs

![bg right](diagrams/networkflexibility.png)

---
# Building research environments in code
![bg right fit Packer](./packerio-ar21.svg)

Using Packer to build Windows and Linux AMIs containing research software

**Todo**: full pipeline to build, approve and deploy AMIs into our TRE

---
# Integration of AWS services

![bg right vertical fit Nextflow](./nextflow2014_logo_large.png)
![bg right vertical fit AWS spot price g4dn.xlarge](./aws-ec2-spotprice-g4dnxlarge-3months.png)

Example: Nextflow pipeline with AWS Batch for HPC-like jobs
- Automatically creates/deletes as many nodes as <span style="text-decoration:line-through;">you want</span> can afford
- Potentially an efficient way to manage GPU spend, especially with spot instances

---
<!--
_class: title
_footer: ''
-->
# Challenges we've faced
![bg Skye Inaccessible Pinnacle](./skyeinpinn.jpg)


---
![bg cover](./diagrams/money-bg.svg)

# Managing Costs
- Understanding shared overheads: small number of large projects vs large number of small projects
- Non constant interactive workloads (e.g. "office" hours) so savings plans don't work
- Each project has different compute requirements, sustained workloads tend to be short term so reserved instances won't work
- Cloud resilience vs cost: full redundancy is expensive

---
<!-- _footer: '' -->
## Lots of cost visualisation dashboards available

⬅️ Microsoft Teams bot that tells us how much we've spent each day

![bg left fit](./aws-cost-update-bot-redacted.png)

---
# How do we charge researchers?

On-prem: flat rate for most researchers

Cloud:
- Unfair to charge basic desktop user the same as a deep-learning GPU user
- Pay-as-you-go requires researchers to understand the costs
- Also need to cover staff overheads

---
<style scoped>
.float2 {
  flex: 1;
  padding: 1em;
}
.float2 img {
  margin-left: 1em;
}
</style>

# Cloud paradigms: Cattle vs Pets

<div class="box">

<div class="float2">

![w:400 drop-shadow Picture of some cows](./oxfordportmeadow-cows.jpg)

Cattle: everything is replaceable and automated. Ideal for reproducible research.

</div>

<div class="float2">

![w:400 drop-shadow Tobermory cat](./tobermory-cat.jpg)

Pets: researchers individually connect to a VM on and off over several months, expect it to stay around. One size doesn't fit all.

</div>

</div>

---
# Licensing
![bg right fit](./diagrams/networks.png)

Open-source: easy!

Commercial: A problem when software requires a fixed host/MAC identifier, or external activation per instance

- MatLab: we run our own license server in the TRE (bridged to outside network)
- Microsoft Office: not yet working

---
# When will it be available?

<p style="font-size:5em;font-weight:bold;text-align:center">July 2022</p>

---
<!--
_footer: ''
_paginate: false
-->
<style scoped>
img[alt~="pad-side-10"] {
  padding: 5px 10px;
}
div.grouppeople {
  float: left;
  width: 40%;
  margin: 15px;
  padding: 0px 20px;
  border-radius: 25px;
  background-color: rgba(255, 255, 255, 0.7);
}
</style>

![bg](./dundee-taybridge-sun.jpg)

<div style="display:flex">
<div style="flex:3">

# Acknowledgements

<div class="grouppeople">

### HIC project leads
Chris Cole
Emily Jefferson

</div>

<div class="grouppeople">

### HIC infrastructure Team
Kenny Gillen
Aaron Jackson
Slawek Lezala

</div>

<div class="grouppeople">

### AWS
Phil Edwards
Brian Nelson
Multiple other AWS teams

</div>

<div class="grouppeople">

### Multiple other HIC and AWS teams

</div>

</div>
<div style="flex:1">

![w:220 pad-side-10 UK Research and Innovation](./ukri_logo.png)
![w:240 Health Data Research UK](./hdruk_main_rgb_jpeg.jpg)
![w:220 pad-side-10 Administrative Data Research UK](./adruk_logo_print.png)
![w:240 University of Dundee](./universityofdundee-logo-2line.png)
![w:240 Health Informatics Centre](./hic-logo-h212-white.png)
![w:220 pad-side-10 Amazon Web Services](./amazon_web_services_logo.svg)

</div>
