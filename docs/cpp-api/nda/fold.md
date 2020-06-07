---
# Do not edit this first section
layout: function
fancy_name: fold
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A, typename F, typename R = get_value_t<A>>
      requires(is_ndarray_v<A>)
      auto fold(F f, A const &a, R r = R{})
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: fold computes f(f(r, a(0,0)), a(0,1), ...)  etc

# Parameters of the function. Edit only the description after the :
params:
  f: ""
  a: ""
  r: ""

# Template parameters of the function. Edit only the description after the :
tparams:
  A: ""
  F: is a function f(x, r)
  R: ""

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/fold
title: nda::fold
parent: nda
source: nda/algorithms.hpp
...

