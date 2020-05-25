---
layout: function
short_name: fold
qualified_name: nda::fold
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <typename A, typename F, typename R> \nrequires (is_ndarray_v<A>) \n\nauto fold(F f, const A & a, R r = </Users/oparcollet/src/nda/c++/nda/algorithms.hpp:18:36, col:38>)":
    desc: ""
    source: nda/algorithms.hpp
desc: fold computes f(f(r, a(0,0)), a(0,1), ...)  etc
params:
  f: ""
  a: ""
  r: ""
tparams:
  A: ""
  F: is a function f(x, r)
  R: ""
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::fold
permalink: /cpp-api/nda/fold
parent: nda
...

