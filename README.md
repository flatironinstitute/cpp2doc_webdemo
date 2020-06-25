# cpp2doc

Jekyll documentation for [TRIQS](https://github.com/TRIQS/triqs) a Toolbox for Research on Interacting Quantum Systems.

## Prerequisites

- Ruby version 2.5.0 or above, including all development headers (Ruby version can be checked by running `ruby -v`)
- RubyGems (which you can check by running `gem -v`)
- GCC and Make (in case your system doesn’t have them installed, which you can check by running `gcc -v`, `g++ -v` and `make -v` in your system’s command line interface)

For detailed prerequisite install instructions for your operating system, check out [these guides from Jekyll](https://jekyllrb.com/docs/installation/#requirements).

## Installing

0. Clone this repo locally. See the green **Clone** button above for details.

1. Install a full Ruby development environment. (see Prerequisites above) If you used `brew` to install Ruby, you [may need to modify your `$PATH` variable](https://jekyllrb.com/docs/troubleshooting/#installation-problems). If you are working in conda, you may need to [install the gems individually](https://github.com/eventmachine/eventmachine/issues/879#issuecomment-529576683) using the the `rb-` flag or add [rb-eventmachine](https://github.com/conda-forge/rb-eventmachine-feedstock) to your conda environment.

2. Install Jekyll and [bundler](https://jekyllrb.com/docs/ruby-101/#bundler) [gems](https://jekyllrb.com/docs/ruby-101/#gems)

```
gem install jekyll bundler
```

3. Install the gems with bundle

```
bundle install
```

4. Initialize the search engine. For local development, the site must be viewed at `localhost` rather than an IP address for search to function properly.

```
bundle exec search:init
```

5. Build the site and serve it up. The first build will be slow, but subsequent builds should be fairly rapid.

```
bundle exec jekyll serve
```

**Note:** If the webserver is running on a different machine, add the option `bundle exec jekyll serve --host=0.0.0.0` to make the webserver accessible.

6. View the site locally at [http://locahost:4000](http://localhost:4000).

### Troubleshooting

Consult the Jekyll [Troubleshooting Guide](https://jekyllrb.com/docs/troubleshooting) for help with common problems.

## Development

`jeykll serve` includes a watch script that automatically updates any time a source file changes. The one exception is `_config.yml`, you will need to stop and restart `jekyll serve` to see these changes.

## Deployment

1. Generate the site for production.

```
jekyll build
```

2. Deploying From Your Terminal

You can deploy your new Jekyll project with a single command from your terminal using [Vercel CLI](https://vercel.com/download):

```shell
$ vercel
```

## Built With

- [Jekyll](https://jekyllrb.com/) - The static site generator used.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/???) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

<!-- - **Sherry Choi** - _Branding and design_ - [Sherry Choi](http://www.sherrychoi.com/) -->

- **Liz Lovero** - _Jekyll template_ - [Flatiron Institute](https://github.com/lizlove)
- **Olivier Parcollet** -_Cpp2doc plugin and initial work_ - [Flatiron Institute](https://github.com/parcollet)
