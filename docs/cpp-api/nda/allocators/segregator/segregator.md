---
# Do not edit this first section
layout: class
short_name: segregator
qualified_name: nda::allocators::segregator
namespaces: [nda, allocators]
includer: nda/nda.hpp
signature: |
  template <size_t Threshold, typename A, typename B>
  class segregator

# Template parameters of the function. Edit only the description after the :
tparams:
  Threshold: __MISSING__
  A: __MISSING__
  B: __MISSING__

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - segregator-constructors
  - operator=
  - allocate
  - allocate_zero
  - deallocate
  - owns

# A list of non_member_functions
non_member_functions: []

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/allocators/segregator
title: nda::allocators::segregator
source: nda/storage/allocators.hpp
parent: nda::allocators
has_children: true
...

