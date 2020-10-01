---
# Do not edit this first section
layout: class
short_name: array_iterator
qualified_name: nda::array_iterator
namespace: nda
includer: nda/nda.hpp
signature: |
  template <int Rank, typename T, typename Pointer>
  class array_iterator

# Template parameters of the function. Edit only the description after the :
tparams:
  Rank: __MISSING__
  T: __MISSING__
  Pointer: __MISSING__

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - array_iterator-constructors
  - operator*
  - operator->
  - operator++
  - operator==
  - operator!=

# A list of non_member_functions
non_member_functions: []

# Public member types
member_types:
  iterator_category:
    desc: __MISSING__
  value_type:
    desc: __MISSING__
  difference_type:
    desc: __MISSING__
  pointer:
    desc: __MISSING__
  reference:
    desc: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/array_iterator/
title: nda::array_iterator
source: nda/iterators.hpp
parent: nda
has_children: true
...

