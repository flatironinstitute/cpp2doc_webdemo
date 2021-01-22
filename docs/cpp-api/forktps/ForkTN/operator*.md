---
# Do not edit this first section
layout: function
fancy_name: operator*
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Multiplication.

# List of overloads. Edit only the desc
overloads:

  - signature: ForkTN operator*(itensor::Real r) const
    desc: Multiplication by a real number

  - signature: ForkTN operator*(itensor::Complex z) const
    desc: Multiplication by a complex number

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  r: Real multiplier.
  z: Complex multiplier.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Referenece to multiplied ```ForkTN```.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/operator*/
title: forktps::ForkTN::operator*
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

