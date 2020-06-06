---
# Do not edit this first section
layout: function
fancy_name: (constructors)
function_name: idx_map
file_name: idx_map-constructors
namespaces: [nda, idx_map]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Default constructor. Strides are not initiliazed.

# List of overloads. Edit only the desc
overloads:

  - signature: idx_map()
    desc: Default constructor. Strides are not initiliazed.

  - signature: idx_map(idx_map const &)
    desc: ""

  - signature: idx_map(idx_map &&)
    desc: ""

  - signature: |
      template <enum nda::layout_prop_e P>
      idx_map(idx_map<Rank, StaticExtents, StrideOrder, P> const &idxm) noexcept
    desc: ""

  - signature: |
      template <uint64_t SE, enum nda::layout_prop_e P>
      idx_map(idx_map<Rank, SE, StrideOrder, P> const &idxm) noexcept(false)
    desc: Construct from a compatible static_extents

  - signature: idx_map(std::array<long, Rank> const &shape, std::array<long, Rank> const &strides) noexcept
    desc: ""

  - signature: idx_map(std::array<long, Rank> const &shape) noexcept
    desc: Construct from the shape. If StaticExtents are present, the corresponding component of the shape must be equal to it.

  - signature: |
      idx_map(std::array<long, n_dynamic_extents> const &shape) noexcept
         requires((n_dynamic_extents != Rank) and (n_dynamic_extents != 0))
    desc: When StaticExtents are present, constructs from the dynamic extents only

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  idxm: __MISSING__
  shape: __MISSING__
  strides: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  P: __MISSING__
  SE: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/idx_map/idx_map-constructors
title: nda::idx_map::idx_map<Rank, StaticExtents, StrideOrder, LayoutProp>
parent: nda::idx_map
source: nda/layout/idx_map.hpp
...

