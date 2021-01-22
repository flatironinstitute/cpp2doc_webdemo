---
# Do not edit this first section
layout: function
fancy_name: energy
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Calculates the energy of state *psi*, given that all previous contractions

# List of overloads. Edit only the desc
overloads:

  - signature: double energy(forktps::ForkTPS const &psi)
    desc: Calculates the energy of state *psi*, given that all previous contractions

# Long description. Any Markdown, with code, latex, multiline with |
desc: were already performed with *psi*.

# Parameters of the function. Edit only the description after the :
params:
  psi: ForkTPS              State to calculate the energy with.

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
permalink: /cpp-api/forktps/ForkLocalOp/energy/
title: forktps::ForkLocalOp::energy
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

