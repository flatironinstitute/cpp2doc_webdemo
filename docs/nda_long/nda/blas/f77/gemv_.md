---
layout: function
short_name: gemv
qualified_name: nda::blas::f77::gemv
namespaces: [nda, blas, f77]
includer: nda/nda.hpp
brief: ""
overloads:
  void nda::blas::f77::gemv(char trans, int M, int N, double & alpha, const double * A, int & LDA, const double * x, int incx, double & beta, double * Y, int incy):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
  void nda::blas::f77::gemv(char trans, int M, int N, std::complex<double> & alpha, const std::complex<double> * A, int & LDA, const std::complex<double> * x, int incx, std::complex<double> & beta, std::complex<double> * Y, int incy):
    desc: ""
    source: nda/blas/interface/cxx_interface.hpp
desc: ""
params:
  trans: __MISSING__
  M: __MISSING__
  N: __MISSING__
  alpha: __MISSING__
  A: __MISSING__
  LDA: __MISSING__
  x: __MISSING__
  incx: __MISSING__
  beta: __MISSING__
  Y: __MISSING__
  incy: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

