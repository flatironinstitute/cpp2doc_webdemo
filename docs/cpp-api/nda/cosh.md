---
layout: function
short_name: cosh
qualified_name: nda::cosh
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps cosh onto the array
overloads:
  template <typename A> requires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M')) auto cosh(A && a):
    desc: Maps cosh onto the array
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
title: nda::cosh
permalink: /cpp-api/nda/cosh
...

