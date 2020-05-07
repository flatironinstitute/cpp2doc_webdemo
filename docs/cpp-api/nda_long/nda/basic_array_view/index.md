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
  - basic_array_view
  - basic_array_view
  - basic_array_view
  - basic_array_view
  - basic_array_view
  - basic_array_view
  - basic_array_view
  - operator=
  - rebind
  - rebind
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
  - basic_array_view
  - operator=
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
    desc: ValueType FIXME
  value_type:
    type: ValueType
    desc: __MISSING__
  storage_t:
    type: typename OwningPolicy::handle<ValueType>
    desc: __MISSING__
  idx_map_t:
    type: typename Layout::mapping<Rank>
    desc: __MISSING__
  regular_t:
    type: basic_array<ValueType, Rank, basic_layout<encode(idx_map_t::static_extents), encode(idx_map_t::stride_order), enum layout_prop_e::contiguous>, Algebra, struct nda::heap>
    desc: ""
  view_t:
    type: basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
    desc: ""
  const_view_t:
    type: basic_array_view<const ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
    desc: ""
  no_const_view_t:
    type: basic_array_view<std::remove_const_t<ValueType>, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
    desc: ""
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
signature: template <typename ValueType, int Rank, typename Layout, char Algebra, typename AccessorPolicy, typename OwningPolicy> class basic_array_view
source: nda/basic_array_view.hpp
...
