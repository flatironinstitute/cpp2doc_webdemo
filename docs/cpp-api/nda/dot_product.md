---
# Do not edit this first section
layout: function
short_name: dot_product
qualified_name: nda::dot_product
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Dot product of two arrays.

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, typename U, size_t R>
      auto dot_product(const std::array<T, R> & a1, const std::array<U, R> & a2)
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
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/dot_product
title: nda::dot_product
parent: nda
nav_exclude: true
...

