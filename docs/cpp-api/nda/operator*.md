---
# Do not edit this first section
layout: function
fancy_name: operator*
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename L, typename R>
      requires(model_ndarray_with_possibly_one_scalar<L, R>)
      auto
         operator*(L &&l, R &&r)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  l: ": lhs"
  r: ": rhs L, R model NdArray. One can be a scalar. They must be in the same algebra.     * if the algebra is 'A' : lazy expression for element-wise multiplication    * if the algebra is 'M' : compute the matrix product (with blas gemm), in a new matrix."

# Template parameters of the function. Edit only the description after the :
tparams:
  L: ""
  R: ""

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/operator*
title: nda::operator*
parent: nda
source: nda/arithmetic.hpp
...

