---
layout: function
short_name: transpose
qualified_name: nda::transpose
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <uint64_t Permutation, int Rank, uint64_t StaticExtents, uint64_t StrideOrder, enum nda::layout_prop_e LayoutProp> auto nda::transpose(const idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> & idx):
    desc: ""
    source: nda/layout/idx_map.hpp
  template <typename A> auto nda::transpose(A && a):
    desc: ""
    source: nda/layout_transforms.hpp
desc: ""
params:
  idx: __MISSING__
  a: __MISSING__
tparams:
  Permutation: __MISSING__
  Rank: __MISSING__
  StaticExtents: __MISSING__
  StrideOrder: __MISSING__
  LayoutProp: __MISSING__
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...
