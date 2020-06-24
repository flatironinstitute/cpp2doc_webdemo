---
# Do not edit this first section
layout: function
fancy_name: operator/
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
         operator/(L &&l, R &&r)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  l: ": lhs"
  r: ": rhs L, R model NdArray. One can be a scalar. They must be in the same algebra.     * if the algebra is 'M' for L, then R must be a scalar. matrix/matrix is disabled.       NB : we could rewrite it as matrix * inverse(matrix) as in triqs arrays, but this looks ambigous."

# Template parameters of the function. Edit only the description after the :
tparams:
  L: ""
  R: ""

# Desc of the return value
return_value: lazy expression for element-wise division

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/operator-div
title: nda::operator/
source: nda/arithmetic.hpp
...

