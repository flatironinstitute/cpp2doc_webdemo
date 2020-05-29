---
# Do not edit this first section
layout: function
fancy_name: matmul
function_name: matmul
file_name: matmul
qualified_name: nda::matmul
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename L, typename R>
      auto matmul(L && l, R && r)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  l: ": lhs"
  r: ": rhs"

# Template parameters of the function. Edit only the description after the :
tparams:
  L: NdArray with algebra 'M'
  R: ""

# Desc of the return value
return_value: the matrix multiplication   Implementation varies

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/matmul
title: nda::matmul
parent: nda
...


