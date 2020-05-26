---
layout: function
short_name: operator+
qualified_name: nda::operator+
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <typename L, typename R>\nrequires (model_ndarray_with_possibly_one_scalar<L, R>)\nauto operator+(L && l, R && r)":
    desc: ""
    source: nda/arithmetic.hpp
desc: ""
params:
  l: ": lhs"
  r: ": rhs L, R model NdArray. One can be a scalar. They must be in the same algebra."
tparams:
  L: ""
  R: ""
return_value: a lazy expression for elementwise addition
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::operator+
permalink: /cpp-api/nda/operator+
parent: nda
...

