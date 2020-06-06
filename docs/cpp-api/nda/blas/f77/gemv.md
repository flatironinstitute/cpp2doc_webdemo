---
# Do not edit this first section
layout: function
fancy_name: gemv
function_name: gemv
file_name: gemv
namespaces: [nda, blas, f77]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      void gemv(char trans, int M, int N, double &alpha, double const *A, int &LDA, double const *x, int incx, double &beta,
                double *Y, int incy)
    desc: ""

  - signature: |
      void gemv(char trans, int M, int N, std::complex<double> &alpha, std::complex<double> const *A, int &LDA,
                std::complex<double> const *x, int incx, std::complex<double> &beta, std::complex<double> *Y, int incy)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
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
permalink: /cpp-api/nda/blas/f77/gemv
title: nda::blas::f77::gemv
parent: nda::blas::f77
source: nda/blas/interface/cxx_interface.hpp
...

