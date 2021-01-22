---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Default constructor

# List of overloads. Edit only the desc
overloads:

  - signature: ForkLocalOp()
    desc: Default constructor

  - signature: ForkLocalOp(forktps::ForkTPO const &H)
    desc: The usual constructor used to calculate the effective Hamiltonian of

  - signature: ForkLocalOp(ForkLocalOp const &)
    desc: ""

  - signature: ForkLocalOp(ForkLocalOp &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  H: ForkTPO             Operator of the contraction.

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
permalink: /cpp-api/forktps/ForkLocalOp/ForkLocalOp-constructors/
title: forktps::ForkLocalOp::ForkLocalOp
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

