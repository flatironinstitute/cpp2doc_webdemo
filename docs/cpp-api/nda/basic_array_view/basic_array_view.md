---
# Do not edit this first section
layout: class
short_name: basic_array_view
qualified_name: nda::basic_array_view
namespace: nda
includer: nda/nda.hpp
signature: |
  template <typename ValueType, int Rank, typename Layout, char Algebra = 'A', typename AccessorPolicy = nda::default_accessor, typename OwningPolicy = nda::borrowed>
  class basic_array_view

# Template parameters of the function. Edit only the description after the :
tparams:
  ValueType: __MISSING__
  Rank: __MISSING__
  Layout: __MISSING__
  Algebra: __MISSING__
  AccessorPolicy: __MISSING__
  OwningPolicy: __MISSING__

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - basic_array_view-constructors
  - operator=
  - rebind
  - indexmap
  - stride_order
  - data_start
  - shape
  - size
  - is_empty
  - extent
  - is_stride_order_C
  - is_stride_order_Fortran
  - operator-call
  - operator-index
  - begin
  - cbegin
  - end
  - cend
  - operator+=
  - operator-=
  - operator*=
  - empty
  - operator-div=

# A list of non_member_functions
non_member_functions: []

# Public member types
member_types:
  value_type:
    desc: __MISSING__
  layout_t:
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
permalink: /cpp-api/nda/basic_array_view
title: nda::basic_array_view
source: nda/basic_array_view.hpp
...

