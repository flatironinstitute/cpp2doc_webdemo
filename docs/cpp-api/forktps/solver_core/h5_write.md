---
# Do not edit this first section
layout: function
fancy_name: h5_write
namespace: forktps::solver_core
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Writes a solver object to a hdf5 file

# List of overloads. Edit only the desc
overloads:

  - signature: void h5_write(h5::group h5group, std::string subgroup_name, forktps::solver_core const &s)
    desc: Writes a solver object to a hdf5 file

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  h5group: __MISSING__
  subgroup_name: __MISSING__
  s: __MISSING__

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
permalink: /cpp-api/forktps/solver_core/h5_write/
title: forktps::solver_core::h5_write
parent: forktps::solver_core
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/solver_core.hpp
...

