---
layout: function
short_name: reshaped_view
qualified_name: nda::reshaped_view
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, size_t R2> auto reshaped_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, const std::array<long, R2> & new_shape):
    desc: ""
    source: nda/layout_transforms.hpp
  template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy, size_t R2> auto reshaped_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> a, const std::array<int, R2> & new_shape):
    desc: ""
    source: nda/layout_transforms.hpp
  template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2> auto reshaped_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<long, R2> & new_shape):
    desc: ""
    source: nda/layout_transforms.hpp
  template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2> auto reshaped_view(basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<long, R2> & new_shape):
    desc: ""
    source: nda/layout_transforms.hpp
  template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2> auto reshaped_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<int, R2> & new_shape):
    desc: ""
    source: nda/layout_transforms.hpp
  template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, size_t R2> auto reshaped_view(basic_array<T, R, L, Algebra, ContainerPolicy> & a, const std::array<int, R2> & new_shape):
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
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
  R2: __MISSING__
  ContainerPolicy: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::reshaped_view
permalink: /cpp-api/nda/reshaped_view
...

