---
layout: function
short_name: operator-
qualified_name: nda::operator-
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <typename L, typename R> requires (model_ndarray_with_possibly_one_scalar<L, R>) auto operator-(L && l, R && r):
    desc: ""
    source: nda/arithmetic.hpp
  template <typename L> requires (is_ndarray_v<std::decay_t<L>>) expr_unary<'-', L> operator-(L && l):
    desc: ""
    source: nda/arithmetic.hpp
desc: ""
params:
  l: __MISSING__
  r: ": rhs L, R model NdArray. One can be a scalar. They must be in the same algebra."
tparams:
  L: __MISSING__
  R: ""
return_value: a lazy expression for elementwise substraction
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::operator-
permalink: /cpp-api/nda/operator-
...

