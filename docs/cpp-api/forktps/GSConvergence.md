---
# Do not edit this first section
layout: function
fancy_name: GSConvergence
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Calculates $

# List of overloads. Edit only the desc
overloads:

  - signature: std::pair<double, double> GSConvergence(forktps::ForkTPS const &GS, forktps::ForkTPO const &H)
    desc: Calculates $

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  GS |H| GS
  $ and $
  GS |H^2| GS
  $ and returns these values as pair. The variance of the energy can be used as a measure for the convergence of DMRG.

# Parameters of the function. Edit only the description after the :
params:
  GS: ForkTPS                      State used in the calculation.
  H: ForkTPO                      Hamiltonian used in the calculation.

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
permalink: /cpp-api/forktps/GSConvergence/
title: forktps::GSConvergence
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

