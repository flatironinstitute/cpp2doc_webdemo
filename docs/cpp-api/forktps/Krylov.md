---
# Do not edit this first section
layout: function
fancy_name: Krylov
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Finds the ground state vector *A* of matrix *Heff* using either the Lanzcos

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename BigMat>
      double Krylov(BigMat const &Heff, itensor::ITensor &A, itensor::Args &args)
    desc: Finds the ground state vector *A* of matrix *Heff* using either the Lanzcos

# Long description. Any Markdown, with code, latex, multiline with |
desc: or the Davidson algorithm depending on the flag "UseDavidson" in *args*.

# Parameters of the function. Edit only the description after the :
params:
  Heff: __MISSING__
  A: __MISSING__
  args: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  BigMat: __MISSING__

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
permalink: /cpp-api/forktps/Krylov/
title: forktps::Krylov
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

