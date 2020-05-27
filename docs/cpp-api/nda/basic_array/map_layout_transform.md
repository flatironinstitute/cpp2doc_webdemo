---
# Do not edit this first section
layout: function
short_name: map_layout_transform
qualified_name: nda::map_layout_transform
namespaces: [nda, basic_array]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename U, int R, typename L, char A, typename C, typename NewLayoutType>
      auto map_layout_transform(basic_array<U, R, L, A, C> && a, const NewLayoutType & new_layout)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  new_layout: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  U: __MISSING__
  R: __MISSING__
  L: __MISSING__
  A: __MISSING__
  C: __MISSING__
  NewLayoutType: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array/map_layout_transform
title: nda::map_layout_transform
parent: nda::basic_array
nav_exclude: true
...

