---
layout: function
short_name: idx_map
qualified_name: nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>
namespaces: [nda, idx_map]
includer: nda/nda.hpp
brief: Default constructor. Lengths and Strides are not initiliazed.
overloads:
  void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>():
    desc: Default constructor. Lengths and Strides are not initiliazed.
    source: nda/layout/idx_map.hpp
  void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(const idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> & ):
    desc: ""
    source: nda/layout/idx_map.hpp
  void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> && ):
    desc: ""
    source: nda/layout/idx_map.hpp
  void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(const std::array<long, Rank> & lengths, const std::array<long, Rank> & strides) noexcept:
    desc: ""
    source: nda/layout/idx_map.hpp
  void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(const std::array<long, Rank> & lengths) noexcept:
    desc: ""
    source: nda/layout/idx_map.hpp
  void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(const std::array<long, rank_dynamic> & lengths) noexcept:
    desc: ""
    source: nda/layout/idx_map.hpp
  template <enum nda::layout_prop_e LayoutProp2> void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(const idx_map<Rank, StaticExtents, StrideOrder, LayoutProp2> & idxm) noexcept:
    desc: ""
    source: nda/layout/idx_map.hpp
  template <uint64_t StaticExtents2, uint64_t StrideOrder2, enum nda::layout_prop_e LayoutProp2> void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(const idx_map<Rank, StaticExtents2, StrideOrder2, LayoutProp2> & ):
    desc: ""
    source: nda/layout/idx_map.hpp
  template <int R> void nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>(const std::array<long, R> & ):
    desc: ""
    source: nda/layout/idx_map.hpp
desc: ""
params:
  "": __MISSING__
  lengths: ""
  strides: ""
  idxm: ""
tparams:
  LayoutProp2: __MISSING__
  StaticExtents2: __MISSING__
  StrideOrder2: __MISSING__
  R: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

