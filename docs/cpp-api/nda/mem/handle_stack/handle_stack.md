---
# Do not edit this first section
layout: class
short_name: handle_stack
qualified_name: nda::mem::handle_stack
namespaces: [nda, mem]
includer: nda/nda.hpp
signature: |
  template <typename T, size_t Size>
  struct handle_stack

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  Size: __MISSING__

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - handle_stack-constructors
  - handle_stack-destructor
  - data
  - operator-index
  - operator=
  - is_null
  - size

# A list of non_member_functions
non_member_functions: []

# Public member types
member_types:
  value_type:
    desc: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/mem/handle_stack
title: nda::mem::handle_stack
source: nda/storage/handle.hpp
parent: nda::mem
has_children: true
...

