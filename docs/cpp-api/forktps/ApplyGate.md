---
# Do not edit this first section
layout: function
fancy_name: ApplyGate
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Apply gate

# List of overloads. Edit only the desc
overloads:

  - signature: void ApplyGate(forktps::ForkTPS &psi, forktps::ForkGate const &G, enum forktps::OrthoState dir, itensor::Args args)
    desc: Apply gate

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  onto MPS
  
  defines in which direction the orthocenter of psi will be shifted.

# Parameters of the function. Edit only the description after the :
params:
  psi: __MISSING__
  G: __MISSING__
  dir: __MISSING__
  args: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

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
permalink: /cpp-api/forktps/ApplyGate/
title: forktps::ApplyGate
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

