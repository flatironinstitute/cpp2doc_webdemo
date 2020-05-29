---
# Do not edit this first section
layout: function
fancy_name: ger
function_name: ger
file_name: ger
qualified_name: nda::blas::f77::ger
namespaces: [nda, blas, f77]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: void ger(int M, int N, double alpha, double const * x, int incx, double const * Y, int incy, double * A, int LDA)
    desc: ""

  - signature: void ger(int M, int N, std::complex<double> alpha, std::complex<double> const * x, int incx, std::complex<double> const * Y, int incy, std::complex<double> * A, int LDA)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
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
permalink: /cpp-api/nda/blas/f77/ger
title: nda::blas::f77::ger
parent: nda::blas::f77
...


