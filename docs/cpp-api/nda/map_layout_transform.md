---
# Do not edit this first section
layout: function
fancy_name: map_layout_transform
function_name: map_layout_transform
file_name: map_layout_transform
qualified_name: nda::map_layout_transform
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, typename NewLayoutType>
      auto map_layout_transform(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, NewLayoutType const & new_layout)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, typename NewLayoutType>
      auto map_layout_transform(basic_array<T, R, L, Algebra, ContainerPolicy> && a, NewLayoutType const & new_layout)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, typename NewLayoutType>
      auto map_layout_transform(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, NewLayoutType const & new_layout)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, typename NewLayoutType>
      auto map_layout_transform(basic_array<T, R, L, Algebra, ContainerPolicy> && a, NewLayoutType const & new_layout)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  new_layout: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
  NewLayoutType: __MISSING__
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
permalink: /cpp-api/nda/map_layout_transform
title: nda::map_layout_transform
parent: nda
...


