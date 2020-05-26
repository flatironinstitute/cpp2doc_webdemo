---
layout: function
short_name: tanh
qualified_name: nda::tanh
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps tanh onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto tanh(A && a)":
    desc: Maps tanh onto the array
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
title: nda::tanh
permalink: /cpp-api/nda/tanh
parent: nda
...

