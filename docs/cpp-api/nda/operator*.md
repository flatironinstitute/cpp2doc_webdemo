---
layout: function
short_name: operator*
qualified_name: nda::operator*
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <typename L, typename R>\nrequires (model_ndarray_with_possibly_one_scalar<L, R>)\nauto operator*(L && l, R && r)":
    desc: ""
    source: nda/arithmetic.hpp
desc: ""
params:
  l: ": lhs"
  r: ": rhs L, R model NdArray. One can be a scalar. They must be in the same algebra.     * if the algebra is 'A' : lazy expression for element-wise multiplication    * if the algebra is 'M' : compute the matrix product (with blas gemm), in a new matrix."
tparams:
  L: ""
  R: ""
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::operator*
permalink: /cpp-api/nda/operator*
parent: nda
nav_exclude: true
...

