---
# Do not edit this first section
layout: function
fancy_name: sum
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <nda::Array A>
      auto sum(A const &a)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: The object of type A

# Template parameters of the function. Edit only the description after the :
tparams:
  A: Anything modeling NdArray

# Desc of the return value
return_value: The sum of all elements of a

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/sum
title: nda::sum
parent: nda
source: nda/algorithms.hpp
...

