---
# Do not edit this first section
layout: function
fancy_name: A
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns a constant reference to a tensor.

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::ITensor const &A(int i) const
    desc: Returns a constant reference to the site tensor at site ```i```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  This function should be choses for read-only access since it doesnt modify
  the orthogonality conditions

# Parameters of the function. Edit only the description after the :
params:
  i: Site index of the tensor returned.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: The ```ITensor``` at site ```i```.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/A/
title: forktps::ForkTN::A
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

