---
layout: function
short_name: conj_r
qualified_name: nda::conj_r
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  double conj_r(double x):
    desc: ""
    source: nda/mapped_functions.hpp
  std::complex<double> conj_r(std::complex<double> x):
    desc: ""
    source: nda/mapped_functions.hpp
  template <typename A> requires (is_ndarray_v<std::decay_t<A>>) auto conj_r(A && a):
    desc: Maps conj_r onto the array
    source: nda/mapped_functions.hxx
desc: ""
params:
  x: __MISSING__
  a: __MISSING__
tparams:
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::conj_r
permalink: /cpp-api/nda/conj_r
...

