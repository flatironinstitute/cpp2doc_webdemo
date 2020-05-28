---
# Do not edit this first section
layout: function
short_name: front_append
qualified_name: nda::front_append
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Make a new std::array by appending one element at the front

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, typename U, size_t R>
      std::array<T, R + 1> front_append(const std::array<T, R> & a, const U & x)
    desc: Make a new std::array by appending one element at the front

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: The array
  x: Element to append

# Template parameters of the function. Edit only the description after the :
tparams:
  T: ""
  U: Must be convertible to T
  R: __MISSING__

# Desc of the return value
return_value: A new std::array with the element appended at the front

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/front_append
title: nda::front_append
parent: nda
...

