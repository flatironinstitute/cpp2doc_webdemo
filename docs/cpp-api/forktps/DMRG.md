---
# Do not edit this first section
layout: function
fancy_name: DMRG
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Performes a two-site DMRG calculation with FTPO *H* calculating the

# List of overloads. Edit only the desc
overloads:

  - signature: bool DMRG(forktps::ForkTPS &GS, forktps::ForkTPO const &H, double &energy, itensor::Args &args)
    desc: Performes a two-site DMRG calculation with FTPO *H* calculating the

# Long description. Any Markdown, with code, latex, multiline with |
desc: groundstate *GS* and its energy *energy*. Parameters are defined in *args* which takes the following entries.

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
permalink: /cpp-api/forktps/DMRG/
title: forktps::DMRG
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

