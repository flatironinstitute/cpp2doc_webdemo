---
# Do not edit this first section
layout: function
fancy_name: block_index
namespace: forktps::constr_params_t
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the index of a block.

# List of overloads. Edit only the desc
overloads:

  - signature: int block_index(std::string name) const
    desc: Returns the index of the block with name ```name```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Note that such a function is necessary to access the block of a TRIQS block Green's 
  function in ```c++``.

# Parameters of the function. Edit only the description after the :
params:
  name: Name of the block.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Index of the block with name ```name```.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/constr_params_t/block_index/
title: forktps::constr_params_t::block_index
parent: forktps::constr_params_t
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

