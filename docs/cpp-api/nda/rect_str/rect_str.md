---
# Do not edit this first section
layout: class
short_name: rect_str
qualified_name: nda::rect_str
namespace: nda
includer: nda/nda.hpp
signature: |
  template <int Rank, uint64_t StaticExtents, uint64_t StrideOrder, enum nda::layout_prop_e LayoutProp>
  class rect_str

# Template parameters of the function. Edit only the description after the :
tparams:
  Rank: __MISSING__
  StaticExtents: __MISSING__
  StrideOrder: __MISSING__
  LayoutProp: __MISSING__

# Brief description. One line only.
brief: The layout that maps the indices to linear index, with additional string indices

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - rect_str-constructors
  - get_string_indices
  - operator=
  - operator-call
  - slice
  - operator==
  - operator!=
  - transpose

# A list of non_member_functions
non_member_functions: []

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/rect_str/
title: nda::rect_str
source: nda/layout/rect_str.hpp
parent: nda
has_children: true
...

