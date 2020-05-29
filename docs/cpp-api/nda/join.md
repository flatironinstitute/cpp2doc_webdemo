---
# Do not edit this first section
layout: function
fancy_name: join
function_name: join
file_name: join
qualified_name: nda::join
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Join two arrays

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, size_t R1, size_t R2>
      std::array<T, R1 + R2> join(std::array<T, R1> const & a1, std::array<T, R2> const & a2)
    desc: Join two arrays

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a1: ""
  a2: ""

# Template parameters of the function. Edit only the description after the :
tparams:
  T: ""
  R1: __MISSING__
  R2: __MISSING__

# Desc of the return value
return_value: the concatenation of [a1, a2]

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/join
title: nda::join
parent: nda
...


