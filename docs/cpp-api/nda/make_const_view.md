---
# Do not edit this first section
layout: function
fancy_name: make_const_view
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: Make a view const

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename CP>
      basic_array_view<const T, R, L, Algebra> make_const_view(basic_array<T, R, L, Algebra, CP> const &a)
    desc: Make a view const

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AP, typename OP>
      basic_array_view<const T, R, L, Algebra, AP, OP> make_const_view(basic_array_view<T, R, L, Algebra, AP, OP> const &a)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  CP: __MISSING__
  AP: __MISSING__
  OP: __MISSING__

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
permalink: /cpp-api/nda/make_const_view
title: nda::make_const_view
source: nda/basic_functions.hpp
...

