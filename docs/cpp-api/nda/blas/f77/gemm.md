---
layout: function
short_name: gemm
qualified_name: nda::blas::f77::gemm
namespaces: [nda, blas, f77]
includer: nda/nda.hpp
brief: ""
overloads:
  void gemm(char trans_a, char trans_b, int M, int N, int K, double alpha, const double * A, int LDA, const double * B, int LDB, double beta, double * C, int LDC):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
  void gemm(char trans_a, char trans_b, int M, int N, int K, std::complex<double> alpha, const std::complex<double> * A, int LDA, const std::complex<double> * B, int LDB, std::complex<double> beta, std::complex<double> * C, int LDC):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
desc: ""
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
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::blas::f77::gemm
permalink: /cpp-api/nda/blas/f77/gemm
...

