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

  footer {
    position: absolute;
    left: 0;
    right: 75px;
    height: 20px;
    text-align: right;
  }

  img.footer-logo-left,
  img.footer-logo-large {
    height: 53px;
    position: absolute;
    left: 0;
    bottom: 0;
  }

  img.footer-logo-left {
    padding: 10px 20px;
  }

  img.footer-logo-large {
    height: 100px;
    padding: 20px 40px;
  }

footer: |
  <img src="./hic-uod-rgb-logo.png" class="footer-logo-left"/>'


---
<!--
_class: title
_footer: ''
-->
<style scoped>
  h3 {
    font-size: 30px;
    margin-right: 10px;
    width: 500px;
    margin-left: 500px;
  }
  h3 img {
    vertical-align: middle;
    background-color: transparent;
  }
  svg {
    background-color: pink;
  }
</style>

# Cloud TREs: How do we fairly charge researchers?

## RSE TRE meeting 5 December 2022<br>Simon Li<br>Health Informatics Centre, University of Dundee

### ![h:40](./twitter-square-icon.svg) [@penguinoops](https://twitter.com/penguinoops) <br/> ![h:40](./mastodon-logo.svg) [@penguinoops@fosstodon.org ](https://fosstodon.org/@penguinoops)

![bg](./datacentre.jpg)

<img src="./hic-uod-rgb-logo.png" class="footer-logo-left footer-logo-large"/>

---
# On-prem TRE costs

Compute infrastructure (CPU, RAM, GPU, storage, network) **paid for upfront** by TRE operator (grant or central funding). Add on **staff costs**

Researchers are charged:
- Based on length of project, number of users, and approximate compute requirements (either "small" or "large")
- Actual usage (1 hour vs 40 hours per week) is ignored
- Risks of over-use are higher contention for resources on the on-prem hypervisors, but minimal direct costs

---
# Cloud TRE costs

**Fixed costs**: always-on infrastructure providing shared services (fixed costs/month), good contender for discount schemes (AWS "reserved instances" or "Savings plans")

**Variable costs**: most compute depends on researcher usage, so pay-as-you-go. This has a direct relationship with compute requirements and hours of usage

**Staff costs**

---
<style scoped>
table {
  table-layout: fixed;
  text-align: left;
  border-collapse: collapse;
  border: none;
}
th:first-child, td:first-child {
  border-right: 5px solid black;
}
th {
  border-bottom: 5px solid black;
}
td, th {
  padding: 0.2em 1em;
  /* border-right: solid 5px black; 
  border-left: solid 5px black; */
  background-color: white;
}
td {
  width: 50%;
  padding-left: 2em;
}
</style>

# How do we charge researchers for using a Cloud TRE?

| Pass on costs directly (share of fixed costs + actual compute costs) | Flat-rate based on project size (small, medium, large) |
|-|-|
| Researchers pay for over-use | TRE operator pays for over-use |
| Many researchers don't understand how the cloud works | Easy for researchers to understand |
| Many researchers won't know up-front what they need | Reduced incentive for researcher to optimise compute use |
