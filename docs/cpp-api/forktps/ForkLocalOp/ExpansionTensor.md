---
# Do not edit this first section
layout: function
fancy_name: ExpansionTensor
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Calculates the expansion tensor used in the subspace expansion (PRB 91, 155115).

# List of overloads. Edit only the desc
overloads:

  - signature: std::pair<ITensor, Index> ExpansionTensor(enum forktps::OrthoState dir, forktps::ForkTPS const &psi) const
    desc: Calculates the expansion tensor used in the subspace expansion (PRB 91, 155115).

# Long description. Any Markdown, with code, latex, multiline with |
desc: It is computed for the currently active site in direction *dir*, using state *psi* for the MPS tensor. Returns the expansion tensor itself and the index that resulted from combining the indices from the state and the operator.

# Parameters of the function. Edit only the description after the :
params:
  dir: OrthoState             Direction in which to expand, defines the link that is enlarged.
  psi: ForkTPS             State to perform to multiply.

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
permalink: /cpp-api/forktps/ForkLocalOp/ExpansionTensor/
title: forktps::ForkLocalOp::ExpansionTensor
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

