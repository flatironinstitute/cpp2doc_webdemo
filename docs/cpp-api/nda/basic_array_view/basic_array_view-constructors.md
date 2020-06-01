---
# Do not edit this first section
layout: function
fancy_name: (constructors)
function_name: basic_array_view
file_name: basic_array_view-constructors
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Construct an empty view.

# List of overloads. Edit only the desc
overloads:

  - signature: basic_array_view()
    desc: Construct an empty view.

  - signature: basic_array_view(basic_array_view &&)
    desc: ""

  - signature: basic_array_view(basic_array_view const &)
    desc: Shallow copy. It copies the *view*, not the data.

  - signature: |
      template <typename CP> 
      basic_array_view(basic_array<ValueType, Rank, Layout, Algebra, CP> const &a) noexcept
    desc: ""

  - signature: |
      template <typename L, char A, typename CP> 
      basic_array_view(basic_array<ValueType, Rank, L, A, CP> const &a) noexcept
    desc: ""

  - signature: |
      template <typename L, char A, typename AP, typename OP> 
      basic_array_view(basic_array_view<ValueType, Rank, L, A, AP, OP> const &a) noexcept
    desc: ""

  - signature: |
      template <typename L, char A, typename CP> 
      requires(std::is_const_v<ValueType>)       
      basic_array_view(basic_array<std::remove_const_t<ValueType>, Rank, L, A, CP> const &a) noexcept
    desc: ""

  - signature: |
      template <typename L, char A, typename AP, typename OP> 
      requires(std::is_const_v<ValueType>)                    
      basic_array_view(basic_array_view<std::remove_const_t<ValueType>, Rank, L, A, AP, OP> const &a) noexcept
    desc: ""

  - signature: basic_array_view(std::array<long, Rank> const &shape, ValueType *p) noexcept
    desc: ""

  - signature: basic_array_view(nda::basic_array_view::layout_t const &idxm, ValueType *p) noexcept
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
  CP: __MISSING__
  L: __MISSING__
  A: __MISSING__
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
...

