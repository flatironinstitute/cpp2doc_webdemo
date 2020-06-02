---
# Do not edit this first section
layout: function
fancy_name: sliced_mem_stride_order
function_name: sliced_mem_stride_order
file_name: sliced_mem_stride_order
namespaces: [nda, slice_static]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <size_t P, size_t N>
      std::array<int, P> sliced_mem_stride_order(std::array<int, N> const &stride_order_in, std::array<int, P> const &n_of_p)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  stride_order_in: __MISSING__
  n_of_p: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  P: __MISSING__
  N: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/slice_static/sliced_mem_stride_order
title: nda::slice_static::sliced_mem_stride_order
parent: nda::slice_static
...

