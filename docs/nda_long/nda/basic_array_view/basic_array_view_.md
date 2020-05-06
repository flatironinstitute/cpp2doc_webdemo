---
layout: function
short_name: basic_array_view
qualified_name: nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp
brief: Construct an empty view.
overloads:
  void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>():
    desc: Construct an empty view.
    source: nda/basic_array_view.hpp
  void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> && ):
    desc: ""
    source: nda/basic_array_view.hpp
  void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>(const basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & ):
    desc: Shallow copy. It copies the *view*, not the data.
    source: nda/basic_array_view.hpp
  void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>(const basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & v):
    desc: ""
    source: nda/basic_array_view.hpp
  void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>(const nda::basic_array_view::idx_map_t & idxm, nda::basic_array_view::storage_t st):
    desc: "[Advanced] From an indexmap and a storage handle"
    source: nda/basic_array_view.hpp
  void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>(const std::array<long, Rank> & shape, ValueType * p):
    desc: ""
    source: nda/basic_array_view.hpp
  void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>(const nda::basic_array_view::idx_map_t & idxm, ValueType * p):
    desc: ""
    source: nda/basic_array_view.hpp
  template <typename A> void nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>(const A & a):
    desc: ""
    source: nda/basic_array_view.hpp
desc: ""
params:
  "": __MISSING__
  v: "a view "
  idxm: Index Map (view can be non contiguous). If the offset is non zero, the view starts at p + idxm.offset()
  st: __MISSING__
  shape: Shape of the view (contiguous)
  p: "Pointer to the data "
  a: array or view
tparams:
  A: an array/array_view or matrix/vector type
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

