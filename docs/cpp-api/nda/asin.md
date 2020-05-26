---
layout: function
short_name: asin
qualified_name: nda::asin
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps asin onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto asin(A && a)":
    desc: Maps asin onto the array
    source: nda/mapped_functions.hxx
desc: ""
params:
  a: __MISSING__
tparams:
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::asin
permalink: /cpp-api/nda/asin
parent: nda
nav_exclude: true
...

