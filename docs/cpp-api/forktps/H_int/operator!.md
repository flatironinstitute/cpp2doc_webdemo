---
# Do not edit this first section
layout: function
fancy_name: operator!
namespace: forktps::H_int
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns whether interaction is zero.

# List of overloads. Edit only the desc
overloads:

  - signature: bool operator!() const
    desc: Returns ```true``` if interaction is 0 (every interaction parameter $$<1E-15$$), ```false``` otherwise.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  <
  1E-15), *true* otherwise

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Flag whether model is non-interacting.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/H_int/operator!/
title: forktps::H_int::operator!
parent: forktps::H_int
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

