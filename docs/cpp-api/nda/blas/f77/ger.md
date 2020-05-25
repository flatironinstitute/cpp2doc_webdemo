---
layout: function
short_name: ger
qualified_name: nda::blas::f77::ger
namespaces: [nda, blas, f77]
includer: nda/nda.hpp
brief: ""
overloads:
  void ger(int M, int N, double alpha, const double * x, int incx, const double * Y, int incy, double * A, int LDA):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
  void ger(int M, int N, std::complex<double> alpha, const std::complex<double> * x, int incx, const std::complex<double> * Y, int incy, std::complex<double> * A, int LDA):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
desc: ""
params:
  M: __MISSING__
  N: __MISSING__
  alpha: __MISSING__
  x: __MISSING__
  incx: __MISSING__
  Y: __MISSING__
  incy: __MISSING__
  A: __MISSING__
  LDA: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::blas::f77::ger
permalink: /cpp-api/nda/blas/f77/ger
...

