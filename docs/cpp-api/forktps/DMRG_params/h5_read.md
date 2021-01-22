---
# Do not edit this first section
layout: function
fancy_name: h5_read
namespace: forktps::DMRG_params
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Read the interaction Hamiltonian from hdf5

# List of overloads. Edit only the desc
overloads:

  - signature: void h5_read(h5::group h5group, std::string subgroup_name, forktps::DMRG_params &dmrg_p)
    desc: Read the interaction Hamiltonian from hdf5

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  h5group: __MISSING__
  subgroup_name: __MISSING__
  dmrg_p: __MISSING__

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
permalink: /cpp-api/forktps/DMRG_params/h5_read/
title: forktps::DMRG_params::h5_read
parent: forktps::DMRG_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

