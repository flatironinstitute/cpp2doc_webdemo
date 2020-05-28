---
# Do not edit this first section
layout: function
short_name: operator=
qualified_name: nda::basic_array::operator=
namespaces: [nda, basic_array]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: basic_array & operator=(basic_array && x)
    desc: ""

  - signature: basic_array & operator=(basic_array const & X)
    desc: Deep copy (array is a regular type). Invalidates all references to the storage.

  - signature: |
      template <nda::ArrayOfRank<Rank> RHS>
      basic_array & operator=(const RHS & rhs) noexcept
    desc: ""

  - signature: |
      template <typename RHS>
      requires (is_scalar_for_v<RHS, basic_array>)
      basic_array & operator=(const RHS & rhs) noexcept
    desc: ""

  - signature: |
      template <nda::ArrayInitializer Initializer>
      basic_array & operator=(const Initializer & initializer) noexcept
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  x: __MISSING__
  X: __MISSING__
  rhs: __MISSING__
  initializer: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  RHS: A scalar or an object modeling NdArray
  Initializer: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array/operator=
title: nda::basic_array::operator=
parent: nda::basic_array
nav_exclude: true
...

