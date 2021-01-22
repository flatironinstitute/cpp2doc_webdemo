---
# Do not edit this first section
layout: function
fancy_name: ShiftOrtho
namespace: forktps::Arm
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Moves the orthogonality limits in a certain direction.

# List of overloads. Edit only the desc
overloads:

  - signature: void ShiftOrtho(int indx, enum forktps::OrthoState dir)
    desc: Changes the orthogonality limits such that the tensor at index ```indx``` is orthogonal in direction ```dir```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  This function makes sure that previous orthogonality conditions 
  match, throws an error otherwise. For example it cannot shift 
  ```Leftwards``` (towards the impurity) if not all sites to the right
  of ```site``` are not also orthogonalized towards the impurity. Note 
  that this function does not perform any tensor decompositions, 
  it only sets the variables defining the orthogonality conditions.

# Parameters of the function. Edit only the description after the :
params:
  indx: Index that has a new orthogonality direction.
  dir: New orthogonality direction ```Leftwards``` means towards the impurity, ```Rightwards``` away from it.

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
permalink: /cpp-api/forktps/Arm/ShiftOrtho/
title: forktps::Arm::ShiftOrtho
parent: forktps::Arm
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Arm.hpp
...

