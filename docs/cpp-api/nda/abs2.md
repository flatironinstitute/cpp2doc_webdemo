---
layout: function
short_name: abs2
qualified_name: nda::abs2
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  double abs2(double x):
    desc: ""
    source: nda/mapped_functions.hpp
  double abs2(std::complex<double> x):
    desc: ""
    source: nda/mapped_functions.hpp
  template <typename A> requires (is_ndarray_v<std::decay_t<A>>) auto abs2(A && a):
    desc: Maps abs2 onto the array
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
title: nda::abs2
permalink: /cpp-api/nda/abs2
...

