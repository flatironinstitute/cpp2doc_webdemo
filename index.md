---
title: Home
layout: default
nav_include: true
nav_order: 1
description: "TRIQS (Toolbox for Research on Interacting Quantum Systems) is a set of C++ and Python libraries for the study of interacting quantum systems."
permalink: "/"
---

# Focus on writing good documentation
{: .fs-9 }

B. TRIQS (Toolbox for Research on Interacting Quantum Systems) is a set of C++ and Python libraries for the study of interacting quantum systems.
{: .fs-6 .fw-300 }

[Get started now](#getting-started){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 } [View on GitHub](https://github.com/triqs/triqs){: .btn .fs-5 .mb-4 .mb-md-0 }

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

<small>You must have GitHub Pages enabled on your repo, one or more Markdown files, and a `_config.yml` file. [See an example repository](https://github.com/triqs/triqs)</small>

### Local installation: Use a package installer

#### Install with Ubuntu

#### Install in a Docker container

```yaml
blah blah
```

#### Install in a Singularity Container

1. Step one of Singularity installation

```bash
$ bundle something fun together.
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

- [See configuration options]({{ site.baseurl }})

---

## About the project

The TRIQS library was orginally authored by:

O. Parcollet (IPhT, CEA-Saclay) and M. Ferrero (CPHT, Ecole Polytechique).

It is currently maintained by:

O. Parcollet (Flatiron Institute, CCQ) and N. Wentzell (Flatiron Institute, CCQ).

Other developers include:

Krivenko, T. Ayral, H. Strand, D. Simons, H. Hafermann, L. Messio, P. Seth.

#### TRIQS is supported by ERC under Grant Number 278472.

### Citation

TRIQS is a part of our scientific work and we kindly request that projects using it include a citation to the following paper. In order to help you, we provide a BibTeX entry [1].

<!-- TODO: ADD BIBTEX -->

[1] O. Parcollet, M. Ferrero, T. Ayral, H. Hafermann, I. Krivenko, L. Messio, and P. Seth, Comp. Phys. Comm. 196, 398-415 (2015) (bibtex file)

If you find TRIQS useful, giving proper reference and citation is indeed a simple way to help convincing funding sources that such projects are useful for our community and should be supported.

### License

Jek Theme TRIQS is distributed by an [GNU General Public License, version 3](http://www.gnu.org/licenses/gpl-3.0.html). Note that this _implies_ that applications using TRIQS must also be GPL.

### Disclaimer

As stated by the License, the program is provided as is, i.e. WITHOUT ANY WARRANTY of any kind, as stated in the license. In particular, its authors and contributors will take no responsability for any possible bugs or any improper use of these programs, including those resulting in incorrect scientific publications.

#### Thank you to the contributors of TRIQS!

<ul class="list-style-none">
<!-- TODO: link to site colabs or remove? -->
{% for contributor in site.github.contributors %}
  <li class="d-inline-block mr-1">
     <a href="{{ contributor.html_url }}"><img src="{{ contributor.avatar_url }}" width="32" height="32" alt="{{ contributor.login }}"/></a>
  </li>
{% endfor %}
</ul>
