---
# Do not edit this first section
layout: function
fancy_name: gemv_generic
namespaces: [nda, blas]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A, typename B, typename Out>
      void gemv_generic(typename A::value_type alpha, A const &a, B const &b, typename A::value_type beta, Out &c)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  alpha: __MISSING__
  a: __MISSING__
  b: __MISSING__
  beta: __MISSING__
  c: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__
  B: __MISSING__
  Out: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/blas/gemv_generic
title: nda::blas::gemv_generic
parent: nda::blas
source: nda/blas/gemv.hpp
...

