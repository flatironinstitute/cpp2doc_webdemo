---
# Do not edit this first section
layout: function
fancy_name: make_std_array
namespace: nda::stdutil
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, typename U, size_t R>
      std::array<T, R> make_std_array(std::array<U, R> const &a)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: T must be constructible from U
  U: ""
  R: make a std::array<T, R> initialized to v

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
permalink: /cpp-api/nda/stdutil/make_std_array/
title: nda::stdutil::make_std_array
parent: nda::stdutil
source: nda/stdutil/array.hpp
...

