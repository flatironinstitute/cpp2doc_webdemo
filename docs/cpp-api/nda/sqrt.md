---
layout: function
short_name: sqrt
qualified_name: nda::sqrt
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps sqrt onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto sqrt(A && a)":
    desc: Maps sqrt onto the array
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
title: nda::sqrt
permalink: /cpp-api/nda/sqrt
parent: nda
nav_exclude: true
...

