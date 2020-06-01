---
# Do not edit this first section
layout: function
fancy_name: resize
function_name: resize
file_name: resize
namespaces: [nda, basic_array]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <std::integral... Int>
      void resize(const Int &... extent)
    desc: ""

  - signature: void resize(std::array<long, Rank> const &shape)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: Resizes the array. Invalidates all references to the storage. Content is undefined, makes no copy of previous data.

# Parameters of the function. Edit only the description after the :
params:
  extent: __MISSING__
  shape: New shape of the array (lengths in each dimension)

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
permalink: /cpp-api/nda/basic_array/resize
title: nda::basic_array::resize
parent: nda::basic_array
...

