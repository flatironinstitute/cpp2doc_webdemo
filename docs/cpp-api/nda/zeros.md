---
# Do not edit this first section
layout: function
fancy_name: zeros
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: Make a array of zeros with the given dimensions.

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, std::integral Int, auto Rank>
      requires(std::is_arithmetic_v<T> or nda::is_complex_v<T>)
      auto zeros(std::array<Int, Rank> const &shape)
    desc: Make a array of zeros with the given dimensions.

  - signature: |
      template <typename T, std::integral... Int>
      auto zeros(Int... i)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: Return a scalar for the case of rank zero. If we want more general array, use the static factory zeros [See also]

# Parameters of the function. Edit only the description after the :
params:
  shape: __MISSING__
  i: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  Int: __MISSING__
  Rank: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/zeros
title: nda::zeros
source: nda/basic_functions.hpp
...

