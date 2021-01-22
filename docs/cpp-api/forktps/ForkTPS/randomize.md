---
# Do not edit this first section
layout: function
fancy_name: randomize
namespace: forktps::ForkTPS
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Initilizes the forktps with random tensors of dimension *dim*. Only implemented for cases without QN conservation.

# List of overloads. Edit only the desc
overloads:

  - signature: void randomize(int dim)
    desc: Initilizes the forktps with random tensors of dimension *dim*. Only implemented for cases without QN conservation.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  dim: int                    Bond dimension used on each site.

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
permalink: /cpp-api/forktps/ForkTPS/randomize/
title: forktps::ForkTPS::randomize
parent: forktps::ForkTPS
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTPS.hpp
...

