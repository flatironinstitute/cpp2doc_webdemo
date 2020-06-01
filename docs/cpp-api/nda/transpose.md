---
# Do not edit this first section
layout: function
fancy_name: transpose
function_name: transpose
file_name: transpose
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A>                                                            
      requires(is_regular_or_view_v<std::decay_t<A>> and (std::decay_t<A>::rank == 2)) 
      auto transpose(A &&a)
    desc: ""

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
permalink: /cpp-api/nda/transpose
title: nda::transpose
parent: nda
...

