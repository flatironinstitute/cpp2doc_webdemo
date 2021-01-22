---
# Do not edit this first section
layout: function
fancy_name: ExpMCoeff
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the matrix entry of the product $v_i = (U e^{ -i

# List of overloads. Edit only the desc
overloads:

  - signature: std::vector<Complex> ExpMCoeff(int L, double *U, double *d, double dt)
    desc: Returns the matrix entry of the product $v_i = (U e^{ -i

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  t d } U )_{i0} =
  _k U_{ik} e^{ -i
  t d_k } U_{k0}$ as a vector. Needed for Krylov time evolution where this vector contains the weights of the individual Krylov vectors.

# Parameters of the function. Edit only the description after the :
params:
  L: int                Matrix dimension.
  U: double []                Unitary transformation diagonalizing the Hamiltonian (as a vector of length $L^2$; usually the tri-diagonal matrix of the Hamiltonian in the Krylov basis).
  d: double []                One-dimensional vector of eigenvalues (length $L$)
  dt: double                Time Step

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
permalink: /cpp-api/forktps/ExpMCoeff/
title: forktps::ExpMCoeff
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/EigSolver.hpp
...

