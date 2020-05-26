---
layout: function
short_name: idx_map
qualified_name: nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>
namespaces: [nda, idx_map]
includer: nda/nda.hpp
brief: Default constructor. Strides are not initiliazed.
overloads:
  idx_map():
    desc: Default constructor. Strides are not initiliazed.
    source: nda/layout/idx_map.hpp
  idx_map(const idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> & ):
    desc: ""
    source: nda/layout/idx_map.hpp
  idx_map(idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> && ):
    desc: ""
    source: nda/layout/idx_map.hpp
  "template <enum nda::layout_prop_e P>\nidx_map(const idx_map<Rank, StaticExtents, StrideOrder, P> & idxm) noexcept":
    desc: ""
    source: nda/layout/idx_map.hpp
  "template <uint64_t SE, enum nda::layout_prop_e P>\nidx_map(const idx_map<Rank, SE, StrideOrder, P> & idxm) noexcept(false)":
    desc: Construct from a compatible static_extents
    source: nda/layout/idx_map.hpp
  idx_map(const std::array<long, Rank> & shape, const std::array<long, Rank> & strides) noexcept:
    desc: ""
    source: nda/layout/idx_map.hpp
  idx_map(const std::array<long, Rank> & shape) noexcept:
    desc: Construct from the shape. If StaticExtents are present, the corresponding component of the shape must be equal to it.
    source: nda/layout/idx_map.hpp
  idx_map(const std::array<long, n_dynamic_extents> & shape) noexcept requires ((n_dynamic_extents != Rank) and (n_dynamic_extents != 0)):
    desc: When StaticExtents are present, constructs from the dynamic extents only
    source: nda/layout/idx_map.hpp
desc: ""
params:
  idxm: __MISSING__
  shape: __MISSING__
  strides: __MISSING__
tparams:
  P: __MISSING__
  SE: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>
permalink: /cpp-api/nda/idx_map/idx_map-constructors
parent: nda::idx_map
...

