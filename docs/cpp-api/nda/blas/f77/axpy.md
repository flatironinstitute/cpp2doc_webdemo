---
# Do not edit this first section
layout: function
fancy_name: axpy
function_name: axpy
file_name: axpy
qualified_name: nda::blas::f77::axpy
namespaces: [nda, blas, f77]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: void axpy(int N, double alpha, double const * x, int incx, double * Y, int incy)
    desc: ""

  - signature: void axpy(int N, std::complex<double> alpha, std::complex<double> const * x, int incx, std::complex<double> * Y, int incy)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  N: __MISSING__
  alpha: __MISSING__
  x: __MISSING__
  incx: __MISSING__
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
permalink: /cpp-api/nda/blas/f77/axpy
title: nda::blas::f77::axpy
parent: nda::blas::f77
...


