---
# Do not edit this first section
layout: function
fancy_name: conj
function_name: conj
file_name: conj
qualified_name: nda::conj
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Maps conj onto the array

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A>
      requires (is_ndarray_v<std::decay_t<A>>)
      auto conj(A && a)
    desc: Maps conj onto the array

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/conj
title: nda::conj
parent: nda
...


