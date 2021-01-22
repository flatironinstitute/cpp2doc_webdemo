---
# Do not edit this first section
layout: function
fancy_name: FillHtri
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Generates a $L

# List of overloads. Edit only the desc
overloads:

  - signature: void FillHtri(double *Htri, int L, std::vector<double> eps, std::vector<double> kappa)
    desc: Generates a $L

# Long description. Any Markdown, with code, latex, multiline with |
desc: L$ tri-diagonal matrix with diagonal *eps* and off-diagonal *kappa*.

# Parameters of the function. Edit only the description after the :
params:
  Htri: double []                Resulting tri-diagonal matrix in vector form (length $L^2$).
  L: int                Size of matrix.
  eps: std::vector<double>                Diagonal of the matrix.
  kappa: std::vector<double>                Off-diagonal of the matrix.

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
permalink: /cpp-api/forktps/FillHtri/
title: forktps::FillHtri
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/EigSolver.hpp
...

