---
# Do not edit this first section
layout: function
fancy_name: DMRGSSImp_SubspaceExp
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Performes a DMRG calculation using single site updates on the impurity-impurity links and two-site updates on all other links.

# List of overloads. Edit only the desc
overloads:

  - signature: bool DMRGSSImp_SubspaceExp(forktps::ForkTPS &GS, forktps::ForkTPO const &H, double &energy, itensor::Args &args)
    desc: Performes a DMRG calculation using single site updates on the impurity-impurity links and two-site updates on all other links.

# Long description. Any Markdown, with code, latex, multiline with |
desc: The calculation is performed with FTPO *H* and calculates the groundstate *GS* and its energy *energy*. Parameters are defined in *args* which takes the following entries. To avoid getting trapped in local minima, this function uses the so-called subspace-expansion method (Phys. Rev. B 91, 155115)

# Parameters of the function. Edit only the description after the :
params:
  GS: __MISSING__
  H: __MISSING__
  energy: __MISSING__
  args: __MISSING__

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
permalink: /cpp-api/forktps/DMRGSSImp_SubspaceExp/
title: forktps::DMRGSSImp_SubspaceExp
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

