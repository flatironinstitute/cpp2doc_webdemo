---
layout: function
short_name: cos
qualified_name: nda::cos
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps cos onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto cos(A && a)":
    desc: Maps cos onto the array
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
title: nda::cos
permalink: /cpp-api/nda/cos
parent: nda
nav_exclude: true
...

