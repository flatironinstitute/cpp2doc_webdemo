---
layout: function
short_name: make_matrix_const_view
qualified_name: nda::make_matrix_const_view
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <typename T, int R, typename L, char Algebra, typename ContainerPolicy> \n\nmatrix_view<const T, L> make_matrix_const_view(const basic_array<T, R, L, Algebra, ContainerPolicy> & a)":
    desc: ""
    source: nda/basic_functions.hpp
  "template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy> \n\nmatrix_view<const T, L> make_matrix_const_view(const basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> & a)":
    desc: ""
    source: nda/basic_functions.hpp
desc: ""
params:
  a: __MISSING__
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::make_matrix_const_view
permalink: /cpp-api/nda/make_matrix_const_view
parent: nda
...

