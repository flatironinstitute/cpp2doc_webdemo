---
# Do not edit this first section
layout: function
fancy_name: TSOrtho
namespace: forktps::Arm
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Sets the two-site orthogonality center.

# List of overloads. Edit only the desc
overloads:

  - signature: void TSOrtho(int indxI, int indxJ)
    desc: Sets orthogonality conditions such that ```indxI``` and ```inxJ``` are a two-site orthogonality center of the arm.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  All sites to the left of ```max(indxI,indxJ)``` are orthogonalized ```Rightwards```
  (away from the impurity), while all sites to the right of ```min(indxI,indxJ)``` 
  are orthogonalized ```Leftwards``` (towards the impurity). Note that this function 
  does not perform any tensor decompositions, it only sets the variables defining 
  the orthogonality conditions.

# Parameters of the function. Edit only the description after the :
params:
  indxI: One Index of the two-site orthogonality center.
  indxJ: One Index of the two-site orthogonality center.

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
permalink: /cpp-api/forktps/Arm/TSOrtho/
title: forktps::Arm::TSOrtho
parent: forktps::Arm
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Arm.hpp
...

