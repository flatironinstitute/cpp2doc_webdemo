---
layout: function
short_name: basic_array_view
qualified_name: nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp
brief: Construct an empty view.
overloads:
  basic_array_view():
    desc: Construct an empty view.
    source: nda/basic_array_view.hpp
  basic_array_view(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> && ):
    desc: ""
    source: nda/basic_array_view.hpp
  basic_array_view(const basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & ):
    desc: Shallow copy. It copies the *view*, not the data.
    source: nda/basic_array_view.hpp
  basic_array_view(const std::array<long, Rank> & shape, ValueType * p) noexcept:
    desc: ""
    source: nda/basic_array_view.hpp
  basic_array_view(const nda::basic_array_view::layout_t & idxm, ValueType * p) noexcept:
    desc: ""
    source: nda/basic_array_view.hpp
  "template <typename T, typename L, char A, typename CP> \n\nbasic_array_view(const basic_array<T, Rank, L, A, CP> & a) noexcept":
    desc: ""
    source: nda/basic_array_view.hpp
  "template <typename T, typename L, char A, typename AP, typename OP> \n\nbasic_array_view(const basic_array_view<T, Rank, L, A, AP, OP> & a) noexcept":
    desc: ""
    source: nda/basic_array_view.hpp
desc: ""
params:
  shape: Shape of the view (contiguous)
  p: Pointer to the data
  idxm: Index Map (view can be non contiguous). If the offset is non zero, the view starts at p + idxm.offset()
  a: __MISSING__
tparams:
  T: __MISSING__
  L: __MISSING__
  A: __MISSING__
  CP: __MISSING__
  AP: __MISSING__
  OP: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
permalink: /cpp-api/nda/basic_array_view/basic_array_view-constructors
parent: nda::basic_array_view
...

