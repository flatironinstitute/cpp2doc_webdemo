---
# Do not edit this first section
layout: function
fancy_name: PrintM
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Writes all bond dimensions to console.

# List of overloads. Edit only the desc
overloads:

  - signature: long PrintM(int i = 1, int j = 0) const
    desc: Prints all bond dimensions between sites ```i``` and ```j``` and returns the maximum.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  i: First site printed.
  j: Last site printed.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Maximum bond dimension.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/PrintM/
title: forktps::ForkTN::PrintM
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

