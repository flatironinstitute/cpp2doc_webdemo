---
# Do not edit this first section
layout: function
fancy_name: make_matrix_const_view
function_name: make_matrix_const_view
file_name: make_matrix_const_view
qualified_name: nda::make_matrix_const_view
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy>
      matrix_view<const T, L> make_matrix_const_view(basic_array<T, R, L, Algebra, ContainerPolicy> const & a)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy>
      matrix_view<const T, L> make_matrix_const_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> const & a)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/make_matrix_const_view
title: nda::make_matrix_const_view
parent: nda
...


