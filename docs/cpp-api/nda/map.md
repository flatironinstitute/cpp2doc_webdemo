---
# Do not edit this first section
layout: function
fancy_name: map
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <class F>
      mapped<F> map(F f)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Maps a function onto the array (elementwise)
  
  
  nda_map.cpp

# Parameters of the function. Edit only the description after the :
params:
  f: ": function to be mapped"

# Template parameters of the function. Edit only the description after the :
tparams:
  F: A lambda (do not use function pointers here, make a small lambda it is easier)

# Desc of the return value
return_value: a lambda that accepts array(s) as argument and return a lazy call expressions.

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/map
title: nda::map
source: nda/map.hpp
...

