---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::bath
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: bath()
    desc: ""

  - signature: bath(triqs::hilbert_space::gf_struct_t gfstruct, bool SO = false)
    desc: Create an empty bath with the block structure give by gfstruct. This is the usual constructer used from triqs.

  - signature: |
      bath(forktps::dvec const &eps, forktps::dvec const &V, int blockSize, std::string bNameUp = "up",
           std::string bNameDn = "dn")
    desc: Creates the bath of a fully degenerate AIM with the same bath parameters on each arm.

  - signature: |
      bath(forktps::Dmat const &eps, forktps::Cmat const &V, int blockSize, std::string bNameUp = "up",
           std::string bNameDn = "dn", bool isOffDiag = false)
    desc: Creates the bath of an AIM with different parameters for each arm.

  - signature: bath(bath const &)
    desc: ""

  - signature: bath(bath &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  gfstruct: triqs gf_struct_t                   Definies the block structure, i.e, the names and number of orbitals of the bath.
  SO: bool (default false)                   If false, use spin-up and spin-down blocks, otherwise use spin-orbit coupled block structure.
  eps: "Dmat aka std::vector<std::vector<double>>                    Matrix with on-site energies (one indexed in the second dimension) i.e.: eps[0][3] is the on-site energy of the third bath site on the first arm."
  V: Cmat aka std::vector<std::vector<Complex>>                    Complex matrix of hopping amplitudes (zero indexed in both dimensions).                     i.e., V[0][2] is the amplitude of the hopping of the first impurity site to the third bath site.
  blockSize: int                    Size of each block such that the forktps has 2*blocksize arms
  bNameUp: "std::string (default: up)                    Name of spin-up block."
  bNameDn: "std::string (default: dn)                    Name of spin-down block."
  isOffDiag: __MISSING__

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
permalink: /cpp-api/forktps/bath/bath-constructors/
title: forktps::bath::bath
parent: forktps::bath
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

