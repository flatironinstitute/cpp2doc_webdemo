---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: nda::rect_str
includer: nda/nda.hpp

# Brief description. One line only.
brief: Default constructor. Strides are not initiliazed.

# List of overloads. Edit only the desc
overloads:

  - signature: rect_str()
    desc: Default constructor. Strides are not initiliazed.

  - signature: rect_str(rect_str const &)
    desc: ""

  - signature: rect_str(rect_str &&)
    desc: ""

  - signature: rect_str(nda::rect_str::base_t const &idxm) noexcept
    desc: ""

  - signature: rect_str(nda::rect_str::base_t const &idxm, nda::rect_str::ind_t const &str_indices) noexcept
    desc: ""

  - signature: |
      template <enum nda::layout_prop_e P>
      rect_str(rect_str<Rank, StaticExtents, StrideOrder, P> const &idxm) noexcept
    desc: ""

  - signature: |
      template <uint64_t SE, enum nda::layout_prop_e P>
      rect_str(rect_str<Rank, SE, StrideOrder, P> const &idxm) noexcept(false)
    desc: ""

  - signature: rect_str(std::array<long, Rank> const &shape, std::array<long, Rank> const &strides) noexcept
    desc: ""

  - signature: rect_str(std::array<long, Rank> const &shape) noexcept
    desc: ""

  - signature: rect_str(nda::array<nda::array<std::string, 1>, 1> str_indices) noexcept
    desc: ""

  - signature: |
      rect_str(std::array<long, n_dynamic_extents> const &shape) noexcept
         requires((n_dynamic_extents != Rank) and (n_dynamic_extents != 0))
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  idxm: __MISSING__
  str_indices: __MISSING__
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
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/rect_str/rect_str-constructors/
title: nda::rect_str<Rank, StaticExtents, StrideOrder, LayoutProp>::rect_str
parent: nda::rect_str
source: nda/layout/rect_str.hpp
...

