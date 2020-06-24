---
# Do not edit this first section
layout: function
fancy_name: to_vector
namespace: nda::stdutil
includer: nda/nda.hpp

# Brief description. One line only.
brief: Convert a std::array to a

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, size_t R>
      std::vector<T> to_vector(std::array<T, R> const &a)
    desc: Convert a std::array to a

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: std::array to convert

# Template parameters of the function. Edit only the description after the :
tparams:
  T: ""
  R: __MISSING__

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
permalink: /cpp-api/nda/stdutil/to_vector
title: nda::stdutil::to_vector
parent: nda::stdutil
source: nda/stdutil/array.hpp
...

