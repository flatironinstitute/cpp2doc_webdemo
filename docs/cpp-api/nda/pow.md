---
layout: function
short_name: pow
qualified_name: nda::pow
namespaces: [nda]
includer: nda/nda.hpp
brief: pow for integer
overloads:
  template <typename T> requires (std::is_integral_v<T>) T pow(T x, int n):
    desc: pow for integer
    source: nda/mapped_functions.hpp
  template <typename A> requires (is_ndarray_v<std::decay_t<A>>) auto pow(A && a, int n):
    desc: Map pow on Ndarray
    source: nda/mapped_functions.hpp
desc: ""
params:
  x: __MISSING__
  n: __MISSING__
  a: __MISSING__
tparams:
  T: __MISSING__
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::pow
permalink: /cpp-api/nda/pow
...

