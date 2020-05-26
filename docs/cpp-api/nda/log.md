---
layout: function
short_name: log
qualified_name: nda::log
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps log onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto log(A && a)":
    desc: Maps log onto the array
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
title: nda::log
permalink: /cpp-api/nda/log
parent: nda
nav_exclude: true
...

