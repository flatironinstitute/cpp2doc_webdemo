---
# Do not edit this first section
layout: function
short_name: gemm
qualified_name: nda::blas::f77::gemm
namespaces: [nda, blas, f77]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: void gemm(char trans_a, char trans_b, int M, int N, int K, double alpha, const double * A, int LDA, const double * B, int LDB, double beta, double * C, int LDC)
    desc: ""

  - signature: void gemm(char trans_a, char trans_b, int M, int N, int K, std::complex<double> alpha, const std::complex<double> * A, int LDA, const std::complex<double> * B, int LDB, std::complex<double> beta, std::complex<double> * C, int LDC)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  trans_a: __MISSING__
  trans_b: __MISSING__
  M: __MISSING__
  N: __MISSING__
  K: __MISSING__
  alpha: __MISSING__
  A: __MISSING__
  LDA: __MISSING__
  B: __MISSING__
  LDB: __MISSING__
  beta: __MISSING__
  C: __MISSING__
  LDC: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/blas/f77/gemm
title: nda::blas::f77::gemm
parent: nda::blas::f77
...

