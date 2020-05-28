---
# Do not edit this first section
layout: function
short_name: operator-
qualified_name: nda::operator-
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename L, typename R>
      requires (model_ndarray_with_possibly_one_scalar<L, R>)
      auto operator-(L && l, R && r)
    desc: ""

  - signature: |
      template <typename L>
      requires (is_ndarray_v<std::decay_t<L>>)
      expr_unary<'-', L> operator-(L && l)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  l: __MISSING__
  r: ": rhs L, R model NdArray. One can be a scalar. They must be in the same algebra."

# Template parameters of the function. Edit only the description after the :
tparams:
  L: __MISSING__
  R: ""

# Desc of the return value
return_value: a lazy expression for elementwise substraction

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/operator-
title: nda::operator-
parent: nda
...

