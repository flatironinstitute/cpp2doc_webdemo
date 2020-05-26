---
layout: class
short_name: idx_map
qualified_name: nda::idx_map
namespaces: [nda]
includer: nda/nda.hpp
brief: The layout that maps the indices to linear index.
desc: |
  Basically lengths and strides for each dimensions
  
  
  
  StrideOrder[0] : the slowest index, StrideOrder[Rank-1] : the fastest index Example : 012 : C the last index is the fastest 210 : Fortran, the first index is the fastest 120 : storage (i,j,k) is : index j is slowest, then k, then i
  NB : StrideOrder = 0 is the default and it is means 0 order
tparams:
  Rank: ": rank of the index map"
  StaticExtents: ": encoded std::array{0, d1, 0, d3}   where d1, d3 are static dimensions for index 1,3         NB Limitation : d1, d3 < 16 (until C++20)         0 mean dynamic dimension   NB : if StaticExtents ==0, it means all dimensions are static"
  StrideOrder: ": a permutation for the memory stride_order of the array"
  LayoutProp: ": A flags of compile time guarantees for the layout"
methods:
  - (constructors)
  - rank
  - size
  - ce_size
  - lengths
  - strides
  - is_contiguous
  - is_stride_order_C
  - is_stride_order_Fortran
  - min_stride
  - operator=
  - operator==
  - operator()
  - transpose
non_member_functions: []
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
signature: |
  template <int Rank, uint64_t StaticExtents, uint64_t StrideOrder, enum nda::layout_prop_e LayoutProp>
  class idx_map
source: nda/layout/idx_map.hpp
title: nda::idx_map
permalink: /cpp-api/nda/idx_map
has_children: true
parent: nda
nav_exclude: true
...

