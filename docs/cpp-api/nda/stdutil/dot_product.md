---
# Do not edit this first section
layout: function
fancy_name: dot_product
namespace: nda::stdutil
includer: nda/nda.hpp

# Brief description. One line only.
brief: Dot product of two arrays.

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, typename U, size_t R>
      auto dot_product(std::array<T, R> const &a1, std::array<U, R> const &a2)
    desc: Dot product of two arrays.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a1: ""
  a2: ""

# Template parameters of the function. Edit only the description after the :
tparams:
  T: ""
  U: ""
  R: __MISSING__

# Desc of the return value
return_value: The dot product to whatever type T*U is promoted to. If R = 0, return T{}

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/stdutil/dot_product/
title: nda::stdutil::dot_product
parent: nda::stdutil
source: nda/stdutil/array.hpp
...

