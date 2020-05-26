---
layout: function
short_name: real
qualified_name: nda::real
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps real onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>>)\nauto real(A && a)":
    desc: Maps real onto the array
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
title: nda::real
permalink: /cpp-api/nda/real
parent: nda
...

