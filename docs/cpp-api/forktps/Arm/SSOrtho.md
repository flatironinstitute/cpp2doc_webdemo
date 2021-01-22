---
# Do not edit this first section
layout: function
fancy_name: SSOrtho
namespace: forktps::Arm
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Sets a single site orthogonality center.

# List of overloads. Edit only the desc
overloads:

  - signature: void SSOrtho(int indx)
    desc: Sets orthogonality conditions such that ```indx``` is the orthogonality center of the arm. If ```indx == Nbath + 1```, the arm is fully orthogonalized.

# Long description. Any Markdown, with code, latex, multiline with |
desc: A site is an Orthogonality Center (OC) of the arm if all other sites are orthogonalized towards the OC. Note that this function does not perform any tensor decompositions, it only sets the variables defining the orthogonality conditions.

# Parameters of the function. Edit only the description after the :
params:
  indx: Index of orthogonality center.

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
permalink: /cpp-api/forktps/Arm/SSOrtho/
title: forktps::Arm::SSOrtho
parent: forktps::Arm
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Arm.hpp
...

