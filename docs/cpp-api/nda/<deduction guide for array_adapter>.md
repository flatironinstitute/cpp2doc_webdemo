---
# Do not edit this first section
layout: function
fancy_name: <deduction guide for array_adapter>
function_name: <deduction guide for array_adapter>
file_name: <deduction guide for array_adapter>
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <int R, typename F, typename Int>
      auto <deduction guide for array_adapter>(std::array<type-parameter-0-2, R> const & shape, F f)-> array_adapter<R, F>
    desc: ""

  - signature: |
      template <int R, typename F>
      auto <deduction guide for array_adapter>(array_adapter<R, F> )-> array_adapter<R, F>
    desc: ""

  - signature: |
      template <auto R, typename Int, typename F>
      auto <deduction guide for array_adapter>(std::array<Int, R> , F )-> array_adapter<R, F>
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  shape: __MISSING__
  f: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  R: __MISSING__
  F: __MISSING__
  Int: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/<deduction guide for array_adapter>
title: nda::<deduction guide for array_adapter>
parent: nda
...

