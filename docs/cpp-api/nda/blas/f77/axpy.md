---
layout: function
short_name: axpy
qualified_name: nda::blas::f77::axpy
namespaces: [nda, blas, f77]
includer: nda/nda.hpp
brief: ""
overloads:
  void axpy(int N, double alpha, const double * x, int incx, double * Y, int incy):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
  void axpy(int N, std::complex<double> alpha, const std::complex<double> * x, int incx, std::complex<double> * Y, int incy):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
desc: ""
params:
  N: __MISSING__
  alpha: __MISSING__
  x: __MISSING__
  incx: __MISSING__
  Y: __MISSING__
  incy: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::blas::f77::axpy
permalink: /cpp-api/nda/blas/f77/axpy
...

