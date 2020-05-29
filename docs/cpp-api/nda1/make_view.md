---
# Do not edit this first section
layout: function
fancy_name: make_view
function_name: make_view
file_name: make_view
qualified_name: nda1::make_view
namespaces: [nda1]
includer: ""

# Brief description. One line only.
brief: A short description of make_view

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R>
      nda1::array_view<T, R> make_view(nda1::array<T, R> const & x)
    desc: ""

  - signature: |
      template <typename T, int R>
      nda1::array_view<T, R> make_view(int k, nda1::array<T, R> const & x)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Long description of this function
  Possibly with some **bold text** (markdown),
  or some formula like
  
  $$ \int f(x) dx = 0 $$
  
  $$ \sum_{n=0}^\infty \frac{1}{n^2} = \frac{\pi^2}{6} $$

# Parameters of the function. Edit only the description after the :
params:
  x: Description of x
  k: Description of k is *important*

# Template parameters of the function. Edit only the description after the :
tparams:
  T: "T: who carex?"
  R: R is an int

# Desc of the return value
return_value: A view of the array in question

# Code example. desc: any markdown to explain it.
example:
  desc: The description of the code
  code: |
    #include <nda1/nda1.hpp>
    int main() {
      nda1::array<int, 1> a{1, 2, 3};
      nda1::array_view<int, 1> v = make_view(a);
      std::vector<nda1::array> V{{1, 2}, {2, 3}};
    }

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda1/make_view
title: nda1::make_view
parent: nda1
...

