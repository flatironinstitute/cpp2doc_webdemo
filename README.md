# cpp2doc

Jekyll documentation for [TRIQS](https://github.com/TRIQS/triqs) a Toolbox for Research on Interacting Quantum Systems.

## Prerequisites

- Ruby version 2.5.0 or above, including all development headers (Ruby version can be checked by running `ruby -v`)
- RubyGems (which you can check by running `gem -v`)
- GCC and Make (in case your system doesn’t have them installed, which you can check by running `gcc -v`, `g++ -v` and `make -v` in your system’s command line interface)

For detailed prerequisite install instructions for your operating system, check out [these guides from Jekyll](https://jekyllrb.com/docs/installation/#requirements).

## Installing

1. Install a full Ruby development environment. (see Prerequisites above) If you used `brew` to install Ruby, you [may need to modify your `$PATH` variable](https://jekyllrb.com/docs/troubleshooting/#installation-problems).

2. Install Jekyll and [bundler](https://jekyllrb.com/docs/ruby-101/#bundler) [gems](https://jekyllrb.com/docs/ruby-101/#gems)

```
gem install jekyll bundler
```

3. Install the gems with bundle

```
bundle install
```

4. Intialize the search engine.

```
bundle exec search:init
```

5. Build the site and serve it up. The first build will be slow, but subsequent builds should be fairly rapid.

```
bundle exec jekyll serve
```

View the site at [http://127.0.0.1:4000](http://127.0.0.1:4000).

**Note:** `jeykll serve` includes a watch script that automatically updates any time a source file changes. The one exception is `_config.yml`, you will need to stop and restart `jekyll serve` to see these changes.

### Troubleshooting
Consult the Jekyll [Troubleshooting Guide](https://jekyllrb.com/docs/troubleshooting) for help with common problems.

## Deployment

1. Generate the site for production.

```
jekyll build
```

2. Currently deploys to Github pages using the Github Actions pipeline.
<!-- TODO: Add CI pipeline with project. -->

## Built With

* [Jekyll](https://jekyllrb.com/) - The static site generator used.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/???) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Michael Jordan** - *Cpp2doc plugin and initial work* - [Flatiron Institute](https://github.com/flatironinstitute)
* **Scottie Pippin** - *Branding and design* - [Flatiron Institute](https://github.com/flatironinstitute)
* **Dennis Rodman** - *Jekyll template* - [Flatiron Institute](https://github.com/flatironinstitute)


<!-- ## Acknowledgments

* [Just the docs](https://github.com/pmarsceill/just-the-docs) -->

