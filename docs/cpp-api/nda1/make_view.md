---
layout: function
short_name: make_view
qualified_name: nda1::make_view
namespaces: [nda1]
includer: ""
brief: A short description of make_view
overloads:
  template <typename T, int R> nda1::array_view<T, R> make_view(const nda1::array<T, R> & x):
    desc: ""
    source: /Users/oparcollet/cpp2doc_webdemo/src/nda1.hpp
  template <typename T, int R> nda1::array_view<T, R> make_view(int k, const nda1::array<T, R> & x):
    desc: ""
    source: /Users/oparcollet/cpp2doc_webdemo/src/nda1.hpp
desc: |
  Long description of this function
  Possibly with some **bold text** (markdown),
  or some formula like

  $$ \int f(x) dx = 0 $$

  $$ \sum_{n=0}^\infty \frac{1}{n^2} = \frac{\pi^2}{6} $$
params:
  x: Description of x
  k: Description of k is *important*
tparams:
  T: "T: who carex?"
  R: R is an int
return_value: A view of the array in question
example:
  desc: The description of the code
  code: |
    #include <nda1/nda1.hpp>
    int main() {
      nda1::array<int, 1> a{1, 2, 3};
      nda1::array_view<int, 1> v = make_view(a);
      std::vector<nda1::array> V{{1, 2}, {2, 3}};
    }
see-also: []
title: nda1::make_view
permalink: /cpp-api/nda1/make_view
parent: nda1
...
