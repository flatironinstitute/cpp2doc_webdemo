---
layout: function
short_name: atan
qualified_name: nda::atan
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps atan onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto atan(A && a)":
    desc: Maps atan onto the array
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
title: nda::atan
permalink: /cpp-api/nda/atan
parent: nda
nav_exclude: true
...

