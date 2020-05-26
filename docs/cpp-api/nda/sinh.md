---
layout: function
short_name: sinh
qualified_name: nda::sinh
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps sinh onto the array
overloads:
  "template <typename A>\nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))\nauto sinh(A && a)":
    desc: Maps sinh onto the array
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
title: nda::sinh
permalink: /cpp-api/nda/sinh
parent: nda
...

