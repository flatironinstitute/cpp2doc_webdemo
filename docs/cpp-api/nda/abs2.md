---
# Do not edit this first section
layout: function
fancy_name: abs2
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: double abs2(double x)
    desc: ""

  - signature: double abs2(std::complex<double> x)
    desc: ""

  - signature: |
      template <typename A>
      requires(is_ndarray_v<std::decay_t<A>>)
      auto abs2(A &&a)
    desc: Maps abs2 onto the array

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  x: __MISSING__
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/abs2
title: nda::abs2
source: nda/mapped_functions.hpp
...

