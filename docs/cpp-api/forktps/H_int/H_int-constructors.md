---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::H_int
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Default constructor

# List of overloads. Edit only the desc
overloads:

  - signature: H_int()
    desc: Default constructor

  - signature: H_int(double u)
    desc: Interaction with ```U=u``` only, all other parameters are set to zero.

  - signature: H_int(double u, double j, double up, bool dd)
    desc: Sets every interaction parameter.

  - signature: H_int(H_int const &)
    desc: ""

  - signature: H_int(H_int &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  u: Intra orbital coulomb interaction.
  j: Hund's coupling.
  up: Inter orbital coulomb interaction between different spins.
  dd: If true, neglect spin-flip and pair-hopping terms.

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
permalink: /cpp-api/forktps/H_int/H_int-constructors/
title: forktps::H_int::H_int
parent: forktps::H_int
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

