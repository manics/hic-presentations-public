---
marp: true
paginate: true

# This requires html tags to be enabled
# VSCode: markdown.marp.enableHtml

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

  .box {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
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
  }

  div.footer-logos img {
    height: 50px;
    display: inline-block;
  }

footer: |
  <div class="footer-logos"><img src="./hic-logo-h212-white.png"/></div>


---
<!--
_class: title
_footer: ''
-->
<style scoped>
  h3 {
    font-size: 30px;
    width: 500px;
    margin-left: 500px;
  }
  h3 img {
    vertical-align: middle;
  }
  div.footer-logos {
    height: 100px;
  }
  div.footer-logos img {
    height: 100px;
  }
</style>

# Open science and Trusted Research Environments

## Dundee Data Meetup 26 November 2024<br>Simon Li

### ![h:40](./github-mark.svg) [@manics](https://github.com/manics) <br/>![h:40](./bluesky_logo.svg) [@penguinoops.bsky.social](https://bsky.app/profile/penguinoops.bsky.social)

![bg](./slioch.jpg)


<div class="footer-logos">
<img src="./hic-logo-h212-white.png"/><img src="./universityofdundee-logo-2line.png"/>
</div>

---
# Who am I?

Research infrastructure engineer at the **Health Informatics Centre**, University of Dundee

<small>Also open-source contributor to [JupyterHub](https://hub.jupyter.org/) and other random projects. Previously worked for the [Open Microscopy Environment](https://www.openmicroscopy.org/).
</small>

![bg right:40%](./ninewells-penguin.jpg)

---
# The Health Informatics Centre

The vision:

> To advance data science and its community, simplifying access to sensitive data whilst maintaining security as a global leader in open, reproducible and scalable research platforms

https://www.dundee.ac.uk/hic

![bg right:40%](./hic-chicken-tony.jpg)

---
# Overview

1. Trusted Research Environments: what are they, why do we need them?
2. Open science: The relevance of open science to TREs
3. What do the public think?

---
![bg right fit](uktre-noback-onlycentraltext.png)

# Trusted Research Environments

What are they? Secure workspaces where you can analyse sensitive data with minimal risk of data being leaked.

---
# Sensitive data?
E.g. Personal data, names/addresses, healthcare records, financial statements, commercial secrets, raw census data.

I'll mostly talk about healthcare data (<span style="color:red">**H**</span>IC)

---
<!--
_footer: https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/lawful-basis/a-guide-to-lawful-basis/lawful-basis-for-processing/special-category-data/
-->
## Sensitive or "Special category" data

> - personal data revealing racial or ethnic origin
> - personal data revealing political opinions
> - personal data revealing religious or philosophical beliefs
> - personal data revealing trade union membership
> - genetic data
> - biometric data (where used for identification purposes)
> - data concerning health
> - data concerning a person’s sex life
> - data concerning a person’s sexual orientation

---
# Example: Can undiagnosed heart failure be detected from routine medical records?

[![bg right:35% fit vertical Echocardiogram](./heart-failure-risk-detected-ai-pioneering-study.webp)](https://www.dundee.ac.uk/stories/heart-failure-risk-detected-ai-pioneering-study)

<!-- Risk detected by AI in pioneering study -->

_Artificial Intelligence has the capability to detect people living with the risk of experiencing heart failure, new University of Dundee research has discovered._

https://www.dundee.ac.uk/stories/heart-failure-risk-detected-ai-pioneering-study

<!--
Heart failure: heart is unable to pump blood around the body effectively, gets worse over time
-->

---
![bg fit](ehrs-ecgs-heartdisease.excalidraw.svg)

<!--
Echocardiography heart scans from heart failure patients
Electronic health records to identify heart failure patients with echocardiograms
AI used to extract measurements of hearts from echocardiograms, better than usual methods
Combined with test results from medical records

Patients from Scottish Health Research Register and Biobank (SHARE)
-->

---
# A very rough workflow

![bg right fit](./research-flow.excalidraw.svg)

---
## 1: Obtain approval and funding for the research project

![bg right:45%](choose-science.jpg)

---
## 2. What raw data do we have?

![bg right:35%](hic-servers-v.jpg)

Sensitive patient data, very few people have access to it.

- Echocardiograms (heart imaging scans), and other medical imaging
- Electronic health records across possibly multiple databases- medical diagnoses, prescription records, going back several years

Researchers ***never*** have access to this data.

---
## 3. Extraction and Pseudonymisation of data

Data minimisation: only extract a subset of records and fields

Identifying information is removed from records
- True anonymisation is almost impossible: ***pseudonymised data***
- Original information might be recoverable by cross-referencing with another dataset.

Pseudonymised data can still be classed as personal data.

![bg right:35%](./bletchley_park_bombe.jpg)

---
## 4. Data made available to researchers in TRE

Highly restricted compute environment:
- Prevents re-identification through cross-linking with other datasets
- Ensures sensitive data isn't copied out
- No worries about laptops being left on a train

![bg right:50% fit](./screenshots/hictre-studies.png)

---
## 5. Researchers analyse data

Do past medical records contain information that can predict future heart failure?

![bg right:50% fit](./screenshots/hictre-windows-rstudio.png)

---
## 6. Researchers publish results

Analysis results are reviewed for potentially identifying information before they can are released from the TRE

## → Statistical disclosure control

> confidentiality of individuals and individual statistical units must be protected

---
<!--
_footer: https://securedatagroup.org/wp-content/uploads/2019/10/sdc-handbook-v1.0.pdf
-->

![bg fit](sdc-maps-before.png)
![bg fit](sdc-maps-after.png)

---
# How do you design a TRE?

---
# Basic principles of a TRE: The 5 safes

**Safe data**: data is treated to protect any confidentiality concerns.
**Safe projects**: research projects are approved by data owners for the public good.
**Safe people**: researchers are trained and authorised to use data safely.
**Safe settings**: a secure environment prevents unauthorised use.
**Safe outputs**: screened and approved outputs that are non-disclosive.

*https://ukdataservice.ac.uk/help/secure-lab/what-is-the-five-safes-framework/*

---
![bg fit](./research-flow-5safes.excalidraw.svg)

---
## Balancing the 5 safes

![bg right:40% fit](safepodbath02.png)

No such thing as 100% secure, need a balance between the 5 safes. Different TREs can make different tradeoffs, e.g.
- Access via a browser from anywhere
- vs must be physically present in a ["SafePod"](https://safepodnetwork.ac.uk/)

---
# What does a TRE look like?

---
<!-- _footer: '' -->

![bg fit HIC TRE login](./screenshots/hictre-login.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE studies](./screenshots/hictre-studies.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE workspaces](./screenshots/hictre-workspaces.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE Windows desktop](./screenshots/hictre-windows-desktop.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE Windows explorer](./screenshots/hictre-windows-explorer.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE Windows explorer cats](./screenshots/hictre-windows-catscans.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE JupyterLab](./screenshots/hictre-windows-jupyter.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE JupyterLab plots](./screenshots/hictre-windows-jupyterplot.png)

---
<!-- _footer: '' -->

![bg fit HIC TRE RStudio](./screenshots/hictre-windows-rstudio.png)

---
<!--
_footer: ''
-->
<!-- https://www.vectorlogo.zone/?q=visual -->

![bg left:25% fit vertical LibreOffice](./libreoffice-ar21.svg)
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

Full desktop environment, with many of the usual analysis applications

- Focus on the analysis, not on how to manage the data

---
Downsides: Very restrictive environment compare to what you're used to
- No or very limited outbound network access
- Can't install random software packages
- Clipboard is restricted (can't copy out)

![bg right fit HIC TRE Google blocked](./screenshots/hictre-windows-googleblocked.png)

---
# Open Science: what is it?

Scientific research should be freely accessible to everyone

---
<!--
_footer: https://unesdoc.unesco.org/ark:/48223/pf0000379949.locale=en
-->
<style scoped>
blockquote, .quote {
  quotes: "\201C""\201D";
  border: none;
  padding: 0;
}
blockquote:before, .quote:before {
  position: absolute;
  color: #999;
  content: open-quote;
  font-size: 4em;
  left: 0.2em;
  margin-top: -0.4em;
}
blockquote:after, .quote::after {
  position: absolute;
  color: #999;
  content: close-quote;
  font-size: 4em;
  right: 0.6em;
  bottom: -0.2em;
}
blockquote p, .quote p {
  display: inline;
}
</style>

> various movements and practices aiming to make multilingual scientific knowledge openly available, accessible and reusable for everyone, to increase scientific collaborations and sharing of information for the benefits of science and society, and to open the processes of scientific knowledge creation, evaluation and communication to societal actors beyond the traditional scientific community.

![bg fit left](./unesco-open-science.png)

---
# Open-science in TREs

❌ Open data

✅ Open access: share your results
✅ Open source: share your code and analyses

✅ Open infrastructure: show others how to run infrastructure to support science
✅ Open collaboration: share your knowledge and help others

---
# The problem

100s(?) of TREs in the UK
- Every TRE is different
- No best practice on how to design, operate and use a TRE

![bg right fit](./3cogs.jpg)

<div data-marpit-fragment>

# Part of the solution....

</div>

---
# Open infrastructure: open-source isn't enough

![bg right fit](treehoose-architecture.png)

Running a single application is easy, but how do you deploy and run an entire TRE?
- Share your deployment code and documentation

---
# Federated analysis

Data is currently siloed in different TREs
 - We need standards for interoperability!

![bg fit right](goldacre-title-page.png)
![bg fit right:60%](sudlow-review-cover.png)

---
<!--
_class: overlaybg
-->
<style scoped>
section {
  justify-content: start;
}
</style>

# Open collaboration

[![width:300px](uktre-logo.svg)](https://www.uktre.org)

![bg](uktre-swansea-2023-img_1077.jpg)

---
# Standard Architecture for Trusted Research Environments

![bg right:40% fit](satre_logo_dark.svg)

Can we make sure all new TREs work in a similar way?

https://satre-specification.readthedocs.io/

---
# What do the public think?

- A cautionary note

![bg right](westfest-crop.jpg)

---
# 2014: Care.data

https://www.bmj.com/content/354/bmj.i3907
> By now, if all had gone to plan, England would be reaping the early benefits of a national database of patients’ medical records spanning primary and secondary care. Patients would have the comfort of knowing that their records could soon be accessed wherever they were treated....

---

> But all did not go to plan. NHS England’s care.data programme failed to win the public’s trust and lost the battle for doctors’ support. Two reports have now condemned the scheme, and last week the government decided to scrap it.

<div data-marpit-fragment>

# Public trust is really important!

## The NHS has learnt from that

</div>

---
# "People in the UK overwhelmingly support the use of their health data, with appropriate safeguards, to benefit themselves and others."

TREs and open-science have a big part to play

![bg fit right:30%](sudlow-review-cover.png)

---
<style scoped>
section {
  line-height: 100%;
}
</style>

# Bedtime reading

Trusted Research Environments
- https://www.dundee.ac.uk/hic/safe-haven
- https://satre-specification.readthedocs.io
- https://dareuk.org.uk

Public views on sensitive data
- https://www.pedri.org.uk
- https://understandingpatientdata.org.uk

Important reports
- https://www.hdruk.ac.uk/helping-with-health-data/the-sudlow-review/
- https://www.gov.uk/government/publications/better-broader-safer-using-health-data-for-research-and-analysis

Scottish Health Research Register and Biobank (SHARE)
- https://www.registerforshare.org

---
<!--
_footer: ''
_paginate: false
-->
<style scoped>
img {
  padding: 5px 5px;
  border-radius: 5px;
  width: 100%;
}
.box>* {
  flex: 1 1;
  margin: 0px 20px;
}
</style>

![bg](./dundee-taybridge-sun.jpg)

<div class="box">

<div>

![HIC 20-in-24 team photo](./hic-20in24-team-crop.jpg)
</div>

</div>

<div class="box">

<div>

![Health Informatics Centre](./hic-logo-h212-white.png)
</div>

<div>

![University of Dundee](./universityofdundee-logo-2line.png)
</div>

<div>

![DARE UK](./dare_uk_logo.svg)
</div>

<div>

![Health Data Research UK](./hdruk_main_rgb_jpeg.jpg)
</div>

<div>

![Administrative Data Research UK](./adruk_logo_print.png)
</div>

</div>

<div class="box">

<div>

![UK Research and Innovation](./ukri_logo.png)
</div>

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
