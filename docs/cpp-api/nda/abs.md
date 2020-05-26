---
layout: function
short_name: abs
qualified_name: nda::abs
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps abs onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>>)\nauto abs(A && a)":
    desc: Maps abs onto the array
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
title: nda::abs
permalink: /cpp-api/nda/abs
parent: nda
...

