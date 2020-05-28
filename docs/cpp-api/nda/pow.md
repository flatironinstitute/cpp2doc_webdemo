---
# Do not edit this first section
layout: function
short_name: pow
qualified_name: nda::pow
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: pow for integer

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T>
      requires (std::is_integral_v<T>)
      T pow(T x, int n)
    desc: pow for integer

  - signature: |
      template <typename A>
      requires (is_ndarray_v<std::decay_t<A>>)
      auto pow(A && a, int n)
    desc: Map pow on Ndarray

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  x: __MISSING__
  n: __MISSING__
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  A: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/pow
title: nda::pow
parent: nda
...

