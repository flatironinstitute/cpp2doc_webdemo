---
# Do not edit this first section
layout: function
fancy_name: to_vector
namespaces: [nda]
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
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/to_vector
title: nda::to_vector
parent: nda
source: nda/std_addons/array.hpp
...

