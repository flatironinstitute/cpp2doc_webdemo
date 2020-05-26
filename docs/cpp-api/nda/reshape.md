---
layout: function
short_name: reshape
qualified_name: nda::reshape
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2>\nauto reshape(basic_array<T, R, L, Algebra, ContainerPolicy> && a, const std::array<long, R2> & new_shape)":
    desc: ""
    source: nda/layout_transforms.hpp
  "template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2>\nauto reshape(basic_array<T, R, L, Algebra, ContainerPolicy> && a, const std::array<int, R2> & new_shape)":
    desc: ""
    source: nda/layout_transforms.hpp
desc: ""
params:
  a: __MISSING__
  new_shape: __MISSING__
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__
  R2: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::reshape
permalink: /cpp-api/nda/reshape
parent: nda
nav_exclude: true
...

