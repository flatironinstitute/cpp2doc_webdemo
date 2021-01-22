---
# Do not edit this first section
layout: function
fancy_name: operator*=
namespace: forktps::ForkGate
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Multiplication-Equal operator with gate *rhs*. Note that this multiplication

# List of overloads. Edit only the desc
overloads:

  - signature: ForkGate &operator*=(ForkGate &rhs)
    desc: Multiplication-Equal operator with gate *rhs*. Note that this multiplication

# Long description. Any Markdown, with code, latex, multiline with |
desc: is not commutative and it is implemented such that *rhs* acts after the gate on the left hand side of the operator *=.

# Parameters of the function. Edit only the description after the :
params:
  rhs: __MISSING__

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
permalink: /cpp-api/forktps/ForkGate/operator*=/
title: forktps::ForkGate::operator*=
parent: forktps::ForkGate
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Gates.hpp
...

