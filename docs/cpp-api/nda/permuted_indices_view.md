---
layout: function
short_name: permuted_indices_view
qualified_name: nda::permuted_indices_view
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <uint64_t Permutation, typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy> auto permuted_indices_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a):
    desc: ""
    source: nda/layout_transforms.hpp
  template <uint64_t Permutation, typename T, int R, typename L, char Algebra, typename ContainerPolicy> auto permuted_indices_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a):
    desc: ""
    source: nda/layout_transforms.hpp
  template <uint64_t Permutation, typename T, int R, typename L, char Algebra, typename ContainerPolicy> auto permuted_indices_view(basic_array<T, R, L, Algebra, ContainerPolicy> & a):
    desc: ""
    source: nda/layout_transforms.hpp
desc: ""
params:
  a: __MISSING__
tparams:
  Permutation: __MISSING__
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
  ContainerPolicy: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::permuted_indices_view
permalink: /cpp-api/nda/permuted_indices_view
...

