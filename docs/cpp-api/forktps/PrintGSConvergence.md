---
# Do not edit this first section
layout: function
fancy_name: PrintGSConvergence
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: "Prints and returns the variance of the energy: $"

# List of overloads. Edit only the desc
overloads:

  - signature: double PrintGSConvergence(forktps::ForkTPS const &GS, forktps::ForkTPO const &H)
    desc: "Prints and returns the variance of the energy: $"

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  GS |H| GS
  ^2 -
  GS |H^2| GS
  $ to console. Can be used as a DMRG convergence criterium.

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
permalink: /cpp-api/forktps/PrintGSConvergence/
title: forktps::PrintGSConvergence
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

