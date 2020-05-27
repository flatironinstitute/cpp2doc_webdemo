---
# Do not edit this first section
layout: function
short_name: reshaped_view
qualified_name: nda::reshaped_view
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, size_t R2>
      auto reshaped_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, const std::array<long, R2> & new_shape)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, size_t R2>
      auto reshaped_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, const std::array<int, R2> & new_shape)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2>
      auto reshaped_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<long, R2> & new_shape)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2>
      auto reshaped_view(basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<long, R2> & new_shape)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2>
      auto reshaped_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<int, R2> & new_shape)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2>
      auto reshaped_view(basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<int, R2> & new_shape)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  new_shape: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
  R2: __MISSING__
  ContainerPolicy: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/reshaped_view
title: nda::reshaped_view
parent: nda
nav_exclude: true
...

