---
# Do not edit this first section
layout: function
fancy_name: zeros
namespace: nda::basic_array
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <std::integral Int>
      requires((std::is_arithmetic_v<ValueType> or nda::is_complex_v<ValueType>))
      static basic_array zeros(std::array<Int, Rank> const &shape)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  shape: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  Int: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array/zeros
title: nda::basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>::zeros
parent: nda::basic_array
source: nda/basic_array.hpp
...

