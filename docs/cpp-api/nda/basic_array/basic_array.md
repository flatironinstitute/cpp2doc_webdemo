---
# Do not edit this first section
layout: class
short_name: basic_array
qualified_name: nda::basic_array
namespace: nda
includer: nda/nda.hpp
signature: |
  template <typename ValueType, int Rank, typename Layout, char Algebra, typename ContainerPolicy>
  class basic_array

# Template parameters of the function. Edit only the description after the :
tparams:
  ValueType: __MISSING__
  Rank: __MISSING__
  Layout: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__

# Aliases for the class
aliases:

  - name: nda::array
    signature: |
      template <typename ValueType, int Rank, typename Layout = C_layout, typename ContainerPolicy = heap>
      using array = basic_array<ValueType, Rank, Layout, 'A', ContainerPolicy>

  - name: nda::array_view
    signature: |
      template <typename ValueType, int Rank, typename Layout = C_stride_layout>
      using array_view = basic_array_view<ValueType, Rank, Layout, 'A', default_accessor, borrowed>;

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:

  - "":
      - basic_array-constructors
      - zeros
      - operator-call
      - operator-index

  - Access:
      - shape
      - extent
      - size
      - empty
      - is_empty
      - data_start
      - indexmap
      - stride_order
      - is_stride_order_C
      - is_stride_order_Fortran

  - Modifiers:
      - operator=
      - resize

  - Iterator:
      - begin
      - cbegin
      - end
      - cend

  - Arithmetic:
      - operator+=
      - operator-=
      - operator*=
      - operator-div=

# A list of non_member_functions
non_member_functions: []

# Public member types
member_types:
  value_type:
    desc: T
  layout_t:
    desc: The type of the layout
  regular_type:
    desc: __MISSING__
  const_iterator:
    desc: ""
  iterator:
    desc: ""

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array/
title: nda::basic_array
source: nda/basic_array.hpp
parent: nda
has_children: true
...

