---
layout: function
short_name: group_indices_view
qualified_name: nda::group_indices_view
namespaces: [nda]
includer: nda/nda.hpp
brief: --------------- Grouping indices------------------------
overloads:
  "template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, typename IntSequences>\nauto group_indices_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, IntSequences... )":
    desc: --------------- Grouping indices------------------------
    source: nda/layout_transforms.hpp
  "template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, typename IntSequences>\nauto group_indices_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a, IntSequences... )":
    desc: ""
    source: nda/layout_transforms.hpp
  "template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, typename IntSequences>\nauto group_indices_view(basic_array<T, R, L, Algebra, ContainerPolicy> & a, IntSequences... )":
    desc: ""
    source: nda/layout_transforms.hpp
desc: ""
params:
  a: __MISSING__
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
  IntSequences: __MISSING__
  ContainerPolicy: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::group_indices_view
permalink: /cpp-api/nda/group_indices_view
parent: nda
...

