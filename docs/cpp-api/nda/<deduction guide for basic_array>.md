---
# Do not edit this first section
layout: function
fancy_name: <deduction guide for basic_array>
function_name: <deduction guide for basic_array>
file_name: <deduction guide for basic_array>
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename ValueType, int Rank, typename Layout, char Algebra, typename ContainerPolicy>
      auto <deduction guide for basic_array>()-> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>
    desc: ""

  - signature: |
      template <typename ValueType, int Rank, typename Layout, char Algebra, typename ContainerPolicy>
      auto <deduction guide for basic_array>(basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> )-> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>
    desc: ""

  - signature: |
      template <typename T>
      auto <deduction guide for basic_array>(T )-> basic_array<get_value_t<std::decay_t<T> >, get_rank<std::decay_t<T> >, struct nda::C_layout, 'A', struct nda::heap>
    desc: Class template argument deduction

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  ValueType: __MISSING__
  Rank: __MISSING__
  Layout: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__
  T: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/<deduction guide for basic_array>
title: nda::<deduction guide for basic_array>
parent: nda
...

