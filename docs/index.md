---
layout: default
title: Home
nav_order: 1
description: "TRIQS (Toolbox for Research on Interacting Quantum Systems) is a set of C++ and Python libraries for the study of interacting quantum systems."
permalink: /
---

# Focus on writing good documentation
{: .fs-9 }

TRIQS (Toolbox for Research on Interacting Quantum Systems) is a set of C++ and Python libraries for the study of interacting quantum systems.
{: .fs-6 .fw-300 }

[Get started now](#getting-started){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 } [View it on GitHub](https://github.com/lizlove/jek-theme-triqs){: .btn .fs-5 .mb-4 .mb-md-0 }

---

## Getting started

### Dependencies

Jek Theme TRIQS is built for [Jekyll](https://jekyllrb.com), a static site generator. View the [quick start guide](https://jekyllrb.com/docs/) for more information. Jek Theme TRIQS requires no special plugins and can run on GitHub Pages' standard Jekyll compiler.

TRIQS is composed of libraries in two languages: 1. Python libraries implement the most common many-body objects, like Green’s functions, in user-friendly scripts. 2. C++ libraries enable users to quickly develop high-performance low-level codes

This duality is a real advantage in the development of new many-body tools. Critical parts where performance is essential can be written in C++ (e.g. a quantum impurity solver) while data analysis, preparation of inputs or interface with other programs can be handled in more user-friendly Python scripts.

### Quick start: Code in the browser

Access TRIQS remotely via [Binder](https://blog.github.com/2017-11-29-use-any-theme-with-github-pages/) as a [Jupyter Notebook](https://blog.github.com/2017-11-29-use-any-theme-with-github-pages/).

```yaml
remote_theme: lizlove/jek-theme-triqs
```

<small>You must have GitHub Pages enabled on your repo, one or more Markdown files, and a `_config.yml` file. [See an example repository](https://github.com/lizlove/jek-theme-triqs)</small>

### Local installation: Use a package installer

#### Install with Ubuntu

```bash
$ gem install jek-theme-triqs
```

```yaml
# .. or add it to your your Jekyll site’s Gemfile
gem "jek-theme-triqs"
```

#### Install in a Docker container

```yaml
theme: "jek-theme-triqs"
```

#### Install in a Singularity Container

1. Step one of Singularity installation

```bash
$ bundle exec jek-theme-triqs rake search:init
```

2. Run you local Jekyll server

```bash
$ jekyll serve
```

```bash
# .. or if you're using a Gemfile (bundler)
$ bundle exec jekyll serve
```

4. Point your web browser to [http://localhost:4000](http://localhost:4000)

If you're hosting your site on GitHub Pages, [set up GitHub Pages and Jekyll locally](https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll) so that you can more easily work in your development environment.

### Compile from Source

- [See configuration options]({{ site.baseurl }}{% link docs/design/configuration.md %})

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
