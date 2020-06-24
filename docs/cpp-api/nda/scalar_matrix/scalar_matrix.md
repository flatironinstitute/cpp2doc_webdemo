---
# Do not edit this first section
layout: class
short_name: scalar_matrix
qualified_name: nda::scalar_matrix
namespace: nda
includer: nda/nda.hpp
signature: |
  template <typename S>
  struct scalar_matrix

# Template parameters of the function. Edit only the description after the :
tparams:
  S: __MISSING__

# Brief description. One line only.
brief: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - shape
  - operator-index
  - operator-call

# A list of non_member_functions
non_member_functions: []
member_fields:
  s:
    type: S const
    desc: __MISSING__
  _shape:
    type: std::array<long, 2>
    desc: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/scalar_matrix
title: nda::scalar_matrix
source: nda/arithmetic.hpp
parent: nda
has_children: true
...

