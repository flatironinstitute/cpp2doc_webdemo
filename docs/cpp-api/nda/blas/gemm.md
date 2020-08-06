---
# Do not edit this first section
layout: function
fancy_name: gemm
namespace: nda::blas
includer: nda/nda.hpp

# Brief description. One line only.
brief: Compute c

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <nda::blas::MatrixView A, nda::blas::MatrixView B, nda::blas::MatrixView C>
      requires(have_same_value_type_v<A, B, C> and is_blas_lapack_v<typename A::value_type>)
      void gemm(typename A::value_type alpha, A const &a, B const &b, typename A::value_type beta, C &&c)
    desc: Compute c

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  <
  - alpha a*b + beta * c using BLAS dgemm or zgemm
  
  
  : * c has the correct dimension given a, b. gemm does not resize the object,

# Parameters of the function. Edit only the description after the :
params:
  alpha: __MISSING__
  a: __MISSING__
  b: __MISSING__
  beta: __MISSING__
  c: Out parameter. Can be a temporary view (hence the &&).

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__
  B: __MISSING__
  C: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/blas/gemm/
title: nda::blas::gemm
parent: nda::blas
source: nda/blas/gemm.hpp
...

