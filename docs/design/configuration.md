---
title: Configuration
parent: Design
nav_order: 1
layout: default
permalink: /design/configuration
---

# Configuration

{: .no_toc }

Jek Theme TRIQS has some specific configuration parameters that can be defined in your Jekyll site's \_config.yml file.
{: .fs-6 .fw-300 }

## Table of contents

{: .no_toc .text-delta }

1. TOC
   {:toc}

---

View this site's [\_config.yml](https://github.com/triqs/triqs/tree/master/_config.yml) file as an example.

## Site logo

```yaml
# Set a path/url to a logo that will be displayed instead of the title
logo: "/assets/images/triqs-logo-v1.jpg"
```

## Search

```yaml
# Enable or disable the site search
# Supports true (default) or false
search_enabled: true

# Enable support for hyphenated search words:
search_tokenizer_separator: /[\s/]+/
```

## Aux links

```yaml
# Aux links for the upper right navigation
aux_links:
  "Jek Theme TRIQS on GitHub":
    - "//github.com/lizlove/jek-theme-triqs"
```

## Heading anchor links

```yaml
# Heading anchor links appear on hover over h1-h6 tags in page content
# allowing users to deep link to a particular heading on a page.
#
# Supports true (default) or false/nil
heading_anchors: true
```

## Footer content

```yaml
# Footer content appears at the bottom of every page's main content
footer_content: 'Copyright &copy; 2017-2019 Cool People. Distributed by an <a href="https://github.com/TRIQS/triqs/blob/2.2.x/LICENSE.txt">MIT license.</a>'
```

## Google Analytics

```yaml
# Google Analytics Tracking (optional)
# e.g, UA-1234567-89
ga_tracking: UA-5555555-55
```
