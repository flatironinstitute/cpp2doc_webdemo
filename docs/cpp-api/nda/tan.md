---
layout: function
short_name: tan
qualified_name: nda::tan
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps tan onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto tan(A && a)":
    desc: Maps tan onto the array
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
title: nda::tan
permalink: /cpp-api/nda/tan
parent: nda
nav_exclude: true
...

