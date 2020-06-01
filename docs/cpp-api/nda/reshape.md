---
# Do not edit this first section
layout: function
fancy_name: reshape
function_name: reshape
file_name: reshape
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, auto newRank> 
      auto reshape(basic_array<T, R, L, Algebra, ContainerPolicy> &&a, std::array<long, newRank> const &new_shape)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, auto newRank> 
      auto reshape(basic_array<T, R, L, Algebra, ContainerPolicy> &&a, std::array<int, newRank> const &new_shape)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  new_shape: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  R: __MISSING__
  L: __MISSING__
  Algebra: __MISSING__
  ContainerPolicy: __MISSING__
  newRank: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/reshape
title: nda::reshape
parent: nda
...

