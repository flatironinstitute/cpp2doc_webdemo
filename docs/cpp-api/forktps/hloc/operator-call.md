---
# Do not edit this first section
layout: function
fancy_name: operator()
namespace: forktps::hloc
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the local Hamiltonian of block *bName*.

# List of overloads. Edit only the desc
overloads:

  - signature: array<itensor::Complex, 2> operator()(std::string bName) const
    desc: Returns the local Hamiltonian of block *bName*.

  - signature: itensor::Complex operator()(forktps::triqs_indx indx) const
    desc: Returns on-site energy of block *indx*.

  - signature: itensor::Complex operator()(forktps::triqs_indx indxI, forktps::triqs_indx indxJ) const
    desc: Returns matrix entry of hloc between indices *i* and *j*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  bName: __MISSING__
  indx: __MISSING__
  indxI: __MISSING__
  indxJ: __MISSING__

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
permalink: /cpp-api/forktps/hloc/operator-call/
title: forktps::hloc::operator()
parent: forktps::hloc
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

