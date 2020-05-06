---
layout: function
short_name: group_indices_layout
qualified_name: nda::group_indices_layout
namespaces: [nda]
includer: nda/nda.hpp
brief: Regroup indices for a C array
overloads:
  template <int Rank, uint64_t StaticExtents, uint64_t StrideOrder, enum nda::layout_prop_e LayoutProp, typename IntSequences> auto nda::group_indices_layout(const idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> & idxm, IntSequences... ):
    desc: Regroup indices for a C array
    source: nda/group_indices.hpp
desc: "Usage : group_indices_view(A, std::index_{0,1}, {2,3}) Precondition : - every indices is listed in the {...} exactly once. - the indices in one group are consecutive in memory."
params:
  idxm: __MISSING__
  "": __MISSING__
tparams:
  Rank: __MISSING__
  StaticExtents: __MISSING__
  StrideOrder: __MISSING__
  LayoutProp: __MISSING__
  IntSequences: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...
