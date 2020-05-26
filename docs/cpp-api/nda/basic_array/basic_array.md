---
layout: class
short_name: basic_array
qualified_name: nda::basic_array
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
desc: ""
tparams:
  ValueType: __MISSING__
  Rank: __MISSING__
  Layout: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__
methods:
  - (constructors)
  - operator=
  - resize
  - indexmap
  - stride_order
  - data_start
  - shape
  - size
  - is_empty
  - extent
  - is_stride_order_C
  - is_stride_order_Fortran
  - begin
  - cbegin
  - end
  - cend
  - operator()
  - operator[]
  - operator+=
  - operator-=
  - operator*=
  - operator/=
non_member_functions: []
member_types:
  value_type:
    type: ValueType
    desc: ""
  layout_t:
    type: typename Layout::mapping<Rank>
    desc: __MISSING__
  const_iterator:
    type: array_iterator<iterator_rank, const ValueType, typename AccessorPolicy::template accessor<ValueType>::pointer>
    desc: ""
  iterator:
    type: array_iterator<iterator_rank, ValueType, typename AccessorPolicy::template accessor<ValueType>::pointer>
    desc: ""
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
signature: |
  template <typename ValueType, int Rank, typename Layout, char Algebra, typename ContainerPolicy>
  class basic_array
source: nda/basic_array.hpp
title: nda::basic_array
permalink: /cpp-api/nda/basic_array
has_children: true
parent: nda
nav_exclude: true
...

