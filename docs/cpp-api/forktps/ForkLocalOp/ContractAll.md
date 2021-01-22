---
# Do not edit this first section
layout: function
fancy_name: ContractAll
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Based on the current contraction of Heff, calculates the full-tensor

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::Complex ContractAll(forktps::ForkTPS const &psi)
    desc: Based on the current contraction of Heff, calculates the full-tensor

  - signature: itensor::Complex ContractAll(forktps::ForkTPS const &bra, forktps::ForkTPS const &ket)
    desc: Based on the current contraction of Heff, calculates the full-tensor

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  network contraction of
  <psi
  |H|psi> and returns the result. Note that this only works if the previous contractions were also computed with *psi*. When used during DMRG, the real part of the result is the energy and the imaginary part zero.

# Parameters of the function. Edit only the description after the :
params:
  psi: ForkTPS              State to contract the tensor network with.
  bra: ForkTPS              Bra-vector to contract the tensor network with.
  ket: ForkTPS              Ket-vector to contract the tensor network with.

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
permalink: /cpp-api/forktps/ForkLocalOp/ContractAll/
title: forktps::ForkLocalOp::ContractAll
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

