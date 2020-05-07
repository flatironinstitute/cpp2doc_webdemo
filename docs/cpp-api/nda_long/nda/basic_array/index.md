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
  - basic_array
  - basic_array
  - basic_array
  - basic_array
  - basic_array
  - operator=
  - operator=
  - resize
  - indexmap
  - storage
  - storage
  - stride_order
  - data_start
  - data_start
  - shape
  - size
  - is_empty
  - shape
  - extent
  - is_stride_order_C
  - is_stride_order_Fortran
  - operator()
  - operator()
  - begin
  - cbegin
  - begin
  - end
  - cend
  - end
  - basic_array
  - basic_array
  - basic_array
  - basic_array
  - basic_array
  - basic_array
  - operator=
  - operator=
  - resize
  - operator()
  - operator()
  - operator()
  - operator[]
  - operator[]
  - operator[]
  - operator+=
  - operator-=
  - operator*=
  - operator/=
non_member_functions: []
member_types:
  value_t:
    type: ValueType
    desc: ""
  value_type:
    type: ValueType
    desc: __MISSING__
  regular_t:
    type: basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>
    desc: ""
  view_t:
    type: basic_array_view<ValueType, Rank, Layout, Algebra, struct nda::default_accessor, struct nda::borrowed>
    desc: ""
  const_view_t:
    type: basic_array_view<const ValueType, Rank, Layout, Algebra, struct nda::default_accessor, struct nda::borrowed>
    desc: ""
  idx_map_t:
    type: typename Layout::mapping<Rank>
    desc: __MISSING__
  storage_t:
    type: typename ContainerPolicy::handle<ValueType, idx_map_t::ce_size()>
    desc: __MISSING__
  AccessorPolicy:
    type: struct nda::default_accessor
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
signature: template <typename ValueType, int Rank, typename Layout, char Algebra, typename ContainerPolicy> class basic_array
source: nda/basic_array.hpp
...
