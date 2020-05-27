---
# Do not edit this first section
layout: function
short_name: group_indices_view
qualified_name: nda::group_indices_view
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: --------------- Grouping indices------------------------

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, typename IntSequences>
      auto group_indices_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, IntSequences... )
    desc: --------------- Grouping indices------------------------

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, typename IntSequences>
      auto group_indices_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a, IntSequences... )
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, typename IntSequences>
      auto group_indices_view(basic_array<T, R, L, Algebra, ContainerPolicy> & a, IntSequences... )
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
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
  IntSequences: __MISSING__
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
permalink: /cpp-api/nda/group_indices_view
title: nda::group_indices_view
parent: nda
nav_exclude: true
...

