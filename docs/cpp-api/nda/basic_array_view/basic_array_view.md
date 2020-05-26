---
layout: class
short_name: basic_array_view
qualified_name: nda::basic_array_view
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
desc: ""
tparams:
  ValueType: __MISSING__
  Rank: __MISSING__
  Layout: __MISSING__
  Algebra: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__
methods:
  - (constructors)
  - operator=
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
  - rebind
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
    desc: __MISSING__
  layout_t:
    type: typename Layout::mapping<Rank>
    desc: __MISSING__
  const_iterator:
    type: array_iterator<iterator_rank, const ValueType, typename AccessorPolicy::template AccessorPolicy::accessor<ValueType>::pointer>
    desc: ""
  iterator:
    type: array_iterator<iterator_rank, ValueType, typename AccessorPolicy::template AccessorPolicy::accessor<ValueType>::pointer>
    desc: ""
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
signature: |
  template <typename ValueType, int Rank, typename Layout, char Algebra, typename AccessorPolicy, typename OwningPolicy>
  class basic_array_view
source: nda/basic_array_view.hpp
title: nda::basic_array_view
permalink: /cpp-api/nda/basic_array_view
has_children: true
parent: nda
...

