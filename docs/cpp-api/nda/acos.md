---
layout: function
short_name: acos
qualified_name: nda::acos
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps acos onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto acos(A && a)":
    desc: Maps acos onto the array
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
title: nda::acos
permalink: /cpp-api/nda/acos
parent: nda
nav_exclude: true
...

