---
layout: function
short_name: conj
qualified_name: nda::conj
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps conj onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>>)\nauto conj(A && a)":
    desc: Maps conj onto the array
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
title: nda::conj
permalink: /cpp-api/nda/conj
parent: nda
...

