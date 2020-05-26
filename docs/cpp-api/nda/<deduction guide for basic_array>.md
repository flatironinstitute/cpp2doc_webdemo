---
layout: function
short_name: <deduction guide for basic_array>
qualified_name: nda::<deduction guide for basic_array>
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <typename ValueType, int Rank, typename Layout, char Algebra, typename ContainerPolicy>\nauto <deduction guide for basic_array>()-> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>":
    desc: ""
    source: nda/declarations.hpp
  "template <typename ValueType, int Rank, typename Layout, char Algebra, typename ContainerPolicy>\nauto <deduction guide for basic_array>(basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> )-> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>":
    desc: ""
    source: nda/declarations.hpp
  "template <typename T>\nauto <deduction guide for basic_array>(T )-> basic_array<get_value_t<std::decay_t<T> >, get_rank<std::decay_t<T> >, struct nda::C_layout, 'A', struct nda::heap>":
    desc: Class template argument deduction
    source: nda/basic_array.hpp
desc: ""
params:
  {}
tparams:
  ValueType: __MISSING__
  Rank: __MISSING__
  Layout: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__
  T: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::<deduction guide for basic_array>
permalink: /cpp-api/nda/<deduction guide for basic_array>
parent: nda
...

