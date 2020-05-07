---
layout: function
short_name: gemm
qualified_name: nda::blas::gemm
namespaces: [nda, blas]
includer: nda/nda.hpp
brief: Calls gemm on a matrix, matrix_view, array, array_view of rank 2
overloads:
  template <typename A, typename B, typename C> void nda::blas::gemm(typename A::value_type alpha, const A & a, const B & b, typename A::value_type beta, C && c):
    desc: Calls gemm on a matrix, matrix_view, array, array_view of rank 2
    source: nda/blas/gemm.hpp
desc: |
  to compute c 
  <
  - alpha a*b + beta * c
  
  
  : A, B, C have the same value_type and it is complex
  <double
  > or double 
  :  * c has the correct dimension given a, b.  gemm does not resize the object,
params:
  alpha: ""
  a: ""
  b: ""
  beta: ""
  c: "The result. Can be a temporary view. "
tparams:
  A: matrix, matrix_view, array, array_view of rank 2
  B: matrix, matrix_view, array, array_view of rank 2
  C: matrix, matrix_view, array, array_view of rank 2
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

