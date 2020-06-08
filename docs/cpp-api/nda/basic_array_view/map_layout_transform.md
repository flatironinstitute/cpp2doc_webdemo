---
# Do not edit this first section
layout: function
fancy_name: map_layout_transform
namespace: nda::basic_array_view
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char A, typename AP, typename OP, typename NewLayoutType>
      auto map_layout_transform(basic_array_view<T, R, L, A, AP, OP> a, NewLayoutType const &new_layout)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  new_layout: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  A: __MISSING__
  AP: __MISSING__
  OP: __MISSING__
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
permalink: /cpp-api/nda/basic_array_view/map_layout_transform
title: nda::basic_array_view::map_layout_transform
source: nda/basic_array_view.hpp
...

