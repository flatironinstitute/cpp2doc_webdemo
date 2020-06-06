---
# Do not edit this first section
layout: function
fancy_name: for_each_static
function_name: for_each_static
file_name: for_each_static
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <uint64_t StaticExtents, uint64_t StrideOrder, typename F, auto R>
      void for_each_static(std::array<long, R> const &idx_lengths, F &&f)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  idx_lengths: __MISSING__
  f: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  StaticExtents: __MISSING__
  StrideOrder: __MISSING__
  F: __MISSING__
  R: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/for_each_static
title: nda::for_each_static
parent: nda
source: ""
...

