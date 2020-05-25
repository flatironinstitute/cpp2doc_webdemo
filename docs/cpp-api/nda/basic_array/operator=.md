---
layout: function
short_name: operator=
qualified_name: nda::basic_array::operator=
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: ""
overloads:
  basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & operator=(basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> && x):
    desc: ""
    source: nda/basic_array.hpp
  basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & operator=(const basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & X):
    desc: Deep copy (array is a regular type). Invalidates all references to the storage.
    source: nda/basic_array.hpp
  template <ArrayOfRank<Rank> RHS> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & operator=(const RHS & rhs) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  template <typename RHS> requires (is_scalar_for_v<RHS, basic_array>) basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & operator=(const RHS & rhs) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  template <ArrayInitializer Initializer> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & operator=(const Initializer & initializer) noexcept:
    desc: ""
    source: nda/basic_array.hpp
desc: ""
params:
  x: __MISSING__
  X: __MISSING__
  rhs: __MISSING__
  initializer: __MISSING__
tparams:
  RHS: A scalar or an object modeling NdArray
  Initializer: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array::operator=
permalink: /cpp-api/nda/basic_array/operator=
...

