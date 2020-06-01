---
# Do not edit this first section
layout: function
fancy_name: sinh
function_name: sinh
file_name: sinh
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Maps sinh onto the array

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A>                                                             
      requires(is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M')) 
      auto sinh(A &&a)
    desc: Maps sinh onto the array

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
permalink: /cpp-api/nda/sinh
title: nda::sinh
parent: nda
...

