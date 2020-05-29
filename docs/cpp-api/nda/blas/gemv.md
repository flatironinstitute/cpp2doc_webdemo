---
# Do not edit this first section
layout: function
fancy_name: gemv
function_name: gemv
file_name: gemv
qualified_name: nda::blas::gemv
namespaces: [nda, blas]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Calls gemv on a matrix, matrix_view, array, array_view of rank 2

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A, typename B, typename C>
      void gemv(typename A::value_type alpha, A const & a, B const & b, typename A::value_type beta, C && c)
    desc: Calls gemv on a matrix, matrix_view, array, array_view of rank 2

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  to compute c
  <
  - alpha a*b + beta * c
  
  
  : A, B, C have the same value_type and it is complex
  <double
  > or double 
  : * c has the correct dimension given a, b. gemm does not resize the object,

# Parameters of the function. Edit only the description after the :
params:
  alpha: ""
  a: ""
  b: ""
  beta: ""
  c: The result. Can be a temporary view.

# Template parameters of the function. Edit only the description after the :
tparams:
  A: matrix, matrix_view, array, array_view of rank 2
  B: matrix, matrix_view, array, array_view of rank 1
  C: matrix, matrix_view, array, array_view of rank 1

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/blas/gemv
title: nda::blas::gemv
parent: nda::blas
...


