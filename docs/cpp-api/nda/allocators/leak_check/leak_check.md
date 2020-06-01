---
# Do not edit this first section
layout: class
short_name: leak_check
qualified_name: nda::allocators::leak_check
namespaces: [nda, allocators]
includer: nda/nda.hpp
signature: |
  template <typename A>
  class leak_check

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - leak_check-constructors
  - leak_check-destructor
  - operator=
  - empty
  - allocate
  - allocate_zero
  - deallocate
  - owns
  - get_memory_used

# A list of non_member_functions
non_member_functions: []

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/allocators/leak_check
title: nda::allocators::leak_check
source: nda/storage/allocators.hpp
parent: nda::allocators
has_children: true
...

