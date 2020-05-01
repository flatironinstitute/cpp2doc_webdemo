---
layout: default
title: Home
nav_order: 1
description: "Jek Theme TRIQS is a responsive Jekyll theme with built-in search that is easily customizable and hosted on GitHub Pages."
permalink: /
---

# Focus on writing good documentation

{: .fs-9 }

Jek Theme TRIQS gives your documentation a jumpstart with a responsive Jekyll theme that is easily customizable and hosted on GitHub Pages.
{: .fs-6 .fw-300 }

[Get started now](#getting-started){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 } [View it on GitHub](https://github.com/lizlove/jek-theme-triqs){: .btn .fs-5 .mb-4 .mb-md-0 }

---

## Getting started

### Dependencies

Jek Theme TRIQS is built for [Jekyll](https://jekyllrb.com), a static site generator. View the [quick start guide](https://jekyllrb.com/docs/) for more information. Jek Theme TRIQS requires no special plugins and can run on GitHub Pages' standard Jekyll compiler. The [Jekyll SEO Tag plugin](https://github.com/jekyll/jekyll-seo-tag) is included by default (no need to run any special installation) to inject SEO and open graph metadata on docs pages. For information on how to configure SEO and open graph metadata visit the [Jekyll SEO Tag usage guide](https://jekyll.github.io/jekyll-seo-tag/usage/).

### Quick start: Use as a GitHub Pages remote theme

1. Add Jek Theme TRIQS to your Jekyll site's `_config.yml` as a [remote theme](https://blog.github.com/2017-11-29-use-any-theme-with-github-pages/)

```yaml
remote_theme: lizlove/jek-theme-triqs
```

<small>You must have GitHub Pages enabled on your repo, one or more Markdown files, and a `_config.yml` file. [See an example repository](https://github.com/pmarsceill/jtd-remote)</small>

### Local installation: Use the gem-based theme

1. Install the Ruby Gem

```bash
$ gem install just-the-docs
```

```yaml
# .. or add it to your your Jekyll site’s Gemfile
gem "just-the-docs"
```

2. Add Jek Theme TRIQS to your Jekyll site’s `_config.yml`

```yaml
theme: "just-the-docs"
```

3. _Optional:_ Initialize search data (creates `search-data.json`)

```bash
$ bundle exec just-the-docs rake search:init
```

3. Run you local Jekyll server

```bash
$ jekyll serve
```

```bash
# .. or if you're using a Gemfile (bundler)
$ bundle exec jekyll serve
```

4. Point your web browser to [http://localhost:4000](http://localhost:4000)

If you're hosting your site on GitHub Pages, [set up GitHub Pages and Jekyll locally](https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll) so that you can more easily work in your development environment.

### Configure Jek Theme TRIQS

- [See configuration options]({{ site.baseurl }}{% link docs/configuration.md %})

---

## About the project

Jek Theme TRIQS is &copy; 2017-2019 by [Cool People](http://github.com/TRIQS/triqs).

### License

Jek Theme TRIQS is distributed by an [MIT license](https://github.com/lizlove/jek-theme-triqs/tree/master/LICENSE.txt).

### Contributing

When contributing to this repository, please first discuss the change you wish to make via issue,
email, or any other method with the owners of this repository before making a change. Read more about becoming a contributor in [our GitHub repo](https://github.com/lizlove/jek-theme-triqs#contributing).

#### Thank you to the contributors of Jek Theme TRIQS!

<ul class="list-style-none">
{% for contributor in site.github.contributors %}
  <li class="d-inline-block mr-1">
     <a href="{{ contributor.html_url }}"><img src="{{ contributor.avatar_url }}" width="32" height="32" alt="{{ contributor.login }}"/></a>
  </li>
{% endfor %}
</ul>

### Code of Conduct

Jek Theme TRIQS is committed to fostering a welcoming community.

[View our Code of Conduct](https://github.com/lizlove/jek-theme-triqs/tree/master/CODE_OF_CONDUCT.md) on our GitHub repository.
