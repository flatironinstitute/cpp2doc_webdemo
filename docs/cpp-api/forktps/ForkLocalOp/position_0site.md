---
# Do not edit this first section
layout: function
fancy_name: position_0site
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: void position_0site(int i, int j, forktps::ForkTPS const &psi)
    desc: ""

  - signature: void position_0site(int i, int j, forktps::ForkTPS const &bra, forktps::ForkTPS const &ket)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: Contracts the tensor network with FTPS *psi* that the effective Hamiltonian acts on the link between the two sites *i* and *j*.

# Parameters of the function. Edit only the description after the :
params:
  i: int              One of the sites defining the link on which $H_{eff}$ acts.
  j: int              One of the sites defining the link on which $H_{eff}$ acts.
  psi: ForkTPS              State with which to perform the contraction.
  bra: ForkTPS              Bra-vector with which to perform the contraction.
  ket: ForkTPS              Ket-vector with which to perform the contraction.

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
permalink: /cpp-api/forktps/ForkLocalOp/position_0site/
title: forktps::ForkLocalOp::position_0site
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

