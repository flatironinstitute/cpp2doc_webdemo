# Project Title

One Paragraph of project description goes here

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

- Ruby version 2.5.0 or above, including all development headers (Ruby version can be checked by running `ruby -v`)
- RubyGems (which you can check by running `gem -v`)
- GCC and Make (in case your system doesn’t have them installed, which you can check by running `gcc -v`, `g++ -v` and `make -v` in your system’s command line interface)

For detailed prerequisite install instructions for your operating system, check out [these guides from Jekyll](https://jekyllrb.com/docs/installation/#requirements).

### Installing

1. Install a full Ruby development environment. (see Prerequisites above) If you used `brew` to install Ruby, you [may need to modify your `$PATH` variable](https://jekyllrb.com/docs/troubleshooting/#installation-problems).

2. Install Jekyll and [bundler](https://jekyllrb.com/docs/ruby-101/#bundler)[gems](https://jekyllrb.com/docs/ruby-101/#gems)

```
gem install jekyll bundler
```

3. Build the site and make it available on a local server.

```
bundle exec jekyll serve
```

You only need to run `bundle exec` on installation and when a new gem is added. For routine local development, run

```
jekyll serve
```

### Troubleshooting
Consult the Jekyll [Troubleshooting Guide](https://jekyllrb.com/docs/troubleshooting) for help with common problems.

## TODO cpp2doc:

1. change destination folder to docs/cpp-api

2. Add the following properties to YAML
    - `title`
    - `has-children` (if applicable)
    - `parent`
    - `grand_parent` (if applicable)

3. Remove excess underscores at end of file names / urls

4. Maybe add permalinks [Should we remove docs in the url? ex: cpp-api/nda/make-view]

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Jekyll](https://jekyllrb.com/) - The static site generator used.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/???) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Michael Jordan* - *Cpp2doc plugin and initial work* - [Flatiron Institute](https://github.com/flatironinstitute)
* **Dennis Rodman** - *Jekyll template* - [Flatiron Institute](https://github.com/flatironinstitute)
* **Scottie Pippin ** - *Branding and design* - [Flatiron Institute](https://github.com/flatironinstitute)


## Acknowledgments

* [Just the docs](https://github.com/pmarsceill/just-the-docs)

