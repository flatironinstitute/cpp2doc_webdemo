---
# Do not edit this first section
layout: function
fancy_name: shape
namespace: nda::basic_array_view
includer: nda/nda.hpp

# Brief description. One line only.
brief: Shape

# List of overloads. Edit only the desc
overloads:

  - signature: std::array<long, rank> const &shape() noexcept const
    desc: Shape

  - signature: long shape(int i) noexcept const
    desc: Same as shape()[i]

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  i: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array_view/shape/
title: nda::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>::shape
parent: nda::basic_array_view
source: nda/_impl_basic_array_view_common.hpp
...

