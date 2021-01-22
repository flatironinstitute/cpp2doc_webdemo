---
# Do not edit this first section
layout: function
fancy_name: LinkOrtho
namespace: forktps::Arm
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Sets the link between the two sites as orthogonality center.

# List of overloads. Edit only the desc
overloads:

  - signature: void LinkOrtho(int indxI, int indxJ)
    desc: Sets the link between the two sites at index ```indxI``` and ```indxJ``` to be the orthocenter.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  A link-orthogonality center is mostly used in TDVP time evolution 
  [PRB.94.165116](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.94.165116)
  since there an effektive Hamiltonian for the link degrees of freedom is needed.
  Note that this function does not perform any tensor decompositions, it only sets 
  the variables defining the orthogonality conditions.

# Parameters of the function. Edit only the description after the :
params:
  indxI: One index of the link orthogonality center.
  indxJ: One index of the link orthogonality center.

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
permalink: /cpp-api/forktps/Arm/LinkOrtho/
title: forktps::Arm::LinkOrtho
parent: forktps::Arm
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Arm.hpp
...

