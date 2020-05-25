---
layout: function
short_name: exp
qualified_name: nda::exp
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps exp onto the array
overloads:
  template <typename A> requires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M')) auto exp(A && a):
    desc: Maps exp onto the array
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
title: nda::exp
permalink: /cpp-api/nda/exp
...

