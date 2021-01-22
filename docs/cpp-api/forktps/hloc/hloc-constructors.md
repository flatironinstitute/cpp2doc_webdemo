---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::hloc
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: hloc()
    desc: ""

  - signature: hloc(triqs::hilbert_space::gf_struct_t gfstruct, bool SO = false)
    desc: Create an empty local Hamiltonian with the block structure give by gfstruct. This is the usual constructer used by triqs.

  - signature: hloc(forktps::dvec const &eps, int blockSize, std::string blockNameUp = "up", std::string blockNameDn = "dn")
    desc: Creates the local Hamiltonian of a fully degenerate AIM with the same bath parameters on each arm.

  - signature: hloc(forktps::Dmat const &eps, int blockSize, std::string blockNameUp = "up", std::string blockNameDn = "dn")
    desc: Creates the local Hamiltonian of a diagonal non-degenerate AIM.

  - signature: hloc(hloc const &)
    desc: ""

  - signature: hloc(hloc &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  gfstruct: triqs gf_struct_t                   Definies the block structure and the block names of the bath
  SO: bool (default false)                   If false, use spin-up and spin-down blocks, otherwise use spin-orbit coupled block structure.
  eps: std::vector< std::vector<double> >                    Zeroth *eps[0]* entry is the on-site energy.
  blockSize: int                    Size of each block such that the forktps has 2*blocksize arms
  blockNameUp: __MISSING__
  blockNameDn: __MISSING__

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
permalink: /cpp-api/forktps/hloc/hloc-constructors/
title: forktps::hloc::hloc
parent: forktps::hloc
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

