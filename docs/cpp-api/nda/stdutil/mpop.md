---
# Do not edit this first section
layout: function
fancy_name: mpop
namespace: nda::stdutil
includer: nda/nda.hpp

# Brief description. One line only.
brief: Make a new std::array by removing one element at the front

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <int N, typename T, size_t R>
      std::array<T, R - N> mpop(std::array<T, R> const &a)
    desc: Make a new std::array by removing one element at the front

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: The array

# Template parameters of the function. Edit only the description after the :
tparams:
  N: __MISSING__
  T: ""
  R: __MISSING__

# Desc of the return value
return_value: A new std::array with the element less at the front

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/stdutil/mpop/
title: nda::stdutil::mpop
parent: nda::stdutil
source: nda/stdutil/array.hpp
...

