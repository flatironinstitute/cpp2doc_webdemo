---
# Do not edit this first section
layout: function
short_name: basic_array_view
qualified_name: nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Construct an empty view.

# List of overloads. Edit only the desc
overloads:

  - signature: basic_array_view()
    desc: Construct an empty view.

  - signature: basic_array_view(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> && )
    desc: ""

  - signature: basic_array_view(const basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & )
    desc: Shallow copy. It copies the *view*, not the data.

  - signature: |
      template <typename T, typename L, char A, typename CP>
      basic_array_view(const basic_array<T, Rank, L, A, CP> & a) noexcept
    desc: ""

  - signature: |
      template <typename T, typename L, char A, typename AP, typename OP>
      basic_array_view(const basic_array_view<T, Rank, L, A, AP, OP> & a) noexcept
    desc: ""

  - signature: basic_array_view(const std::array<long, Rank> & shape, ValueType * p) noexcept
    desc: ""

  - signature: basic_array_view(const nda::basic_array_view::layout_t & idxm, ValueType * p) noexcept
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  shape: Shape of the view (contiguous)
  p: Pointer to the data
  idxm: Index Map (view can be non contiguous). If the offset is non zero, the view starts at p + idxm.offset()

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  L: __MISSING__
  A: __MISSING__
  CP: __MISSING__
  AP: __MISSING__
  OP: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array_view/basic_array_view-constructors
title: nda::basic_array_view::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>
parent: nda::basic_array_view
nav_exclude: true
...

