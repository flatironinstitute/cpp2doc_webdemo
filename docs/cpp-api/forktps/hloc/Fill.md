---
# Do not edit this first section
layout: function
fancy_name: Fill
namespace: forktps::hloc
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Fills the local Hamiltonian of block *bName* with the matrix *e0*.

# List of overloads. Edit only the desc
overloads:

  - signature: void Fill(std::string bName, array<itensor::Complex, 2> e0)
    desc: Fills the local Hamiltonian of block *bName* with the matrix *e0*.

  - signature: void Fill(array<itensor::Complex, 2> e0)
    desc: Fills both blocks of the local Hamiltonian with the matrix *e0*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  bName: __MISSING__
  e0: __MISSING__

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
permalink: /cpp-api/forktps/hloc/Fill/
title: forktps::hloc::Fill
parent: forktps::hloc
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

