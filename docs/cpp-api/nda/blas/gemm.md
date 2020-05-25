---
layout: function
short_name: gemm
qualified_name: nda::blas::gemm
namespaces: [nda, blas]
includer: nda/nda.hpp
brief: Compute c
overloads:
  "template <nda::blas::MatrixView A, nda::blas::MatrixView B, nda::blas::MatrixView C> \nrequires (have_same_value_type_v<A, B, C> and is_blas_lapack_v<typename A::value_type>) \n\nvoid gemm(typename A::value_type alpha, const A & a, const B & b, typename A::value_type beta, C && c)":
    desc: Compute c
    source: nda/blas/gemm.hpp
desc: |
  <
  - alpha a*b + beta * c using BLAS dgemm or zgemm
  
  
  : * c has the correct dimension given a, b. gemm does not resize the object,
params:
  alpha: __MISSING__
  a: __MISSING__
  b: __MISSING__
  beta: __MISSING__
  c: Out parameter. Can be a temporary view (hence the &&).
tparams:
  A: __MISSING__
  B: __MISSING__
  C: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::blas::gemm
permalink: /cpp-api/nda/blas/gemm
parent: nda::blas
...

