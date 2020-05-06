---
layout: function
short_name: operator=
qualified_name: nda::basic_array::operator=
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: ""
overloads:
  basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & nda::basic_array::operator=(basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> && x):
    desc: ""
    source: nda/basic_array.hpp
  basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & nda::basic_array::operator=(const basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & X):
    desc: Deep copy (array is a regular type). Invalidates all references to the storage.
    source: nda/basic_array.hpp
  template <typename RHS> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & nda::basic_array::operator=(const RHS & rhs):
    desc: ""
    source: nda/basic_array.hpp
  template <typename Lazy> basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & nda::basic_array::operator=(const Lazy & lazy):
    desc: ""
    source: nda/basic_array.hpp
desc: ""
params:
  x: __MISSING__
  X: __MISSING__
  rhs: __MISSING__
  lazy: ""
tparams:
  RHS: A scalar or an object modeling NdArray
  Lazy: A type modeling NdArray
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

