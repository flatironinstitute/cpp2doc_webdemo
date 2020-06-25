---
# Do not edit this first section
layout: function
fancy_name: reinterpret_add_fast_dims_of_size_one
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <int N, typename A>
      requires(nda::is_regular_or_view_v<std::decay_t<A>>)
      auto reinterpret_add_fast_dims_of_size_one(A &&a)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  N: __MISSING__
  A: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/reinterpret_add_fast_dims_of_size_one/
title: nda::reinterpret_add_fast_dims_of_size_one
parent: nda
source: nda/layout_transforms.hpp
...

