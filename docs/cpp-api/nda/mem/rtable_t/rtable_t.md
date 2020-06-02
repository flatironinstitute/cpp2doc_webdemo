---
# Do not edit this first section
layout: class
short_name: rtable_t
qualified_name: nda::mem::rtable_t
namespaces: [nda, mem]
includer: nda/nda.hpp
signature: class rtable_t

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - rtable_t-constructors
  - rtable_t-destructor
  - get
  - refcounts
  - incref
  - decref

# A list of non_member_functions
non_member_functions: []
member_fields:
  mtx:
    type: std::mutex
    desc: __MISSING__
    initializer: = {}

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/mem/rtable_t
title: nda::mem::rtable_t
source: nda/storage/rtable.hpp
parent: nda::mem
has_children: true
...

