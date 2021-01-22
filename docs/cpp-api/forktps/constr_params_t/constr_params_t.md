---
# Do not edit this first section
layout: class
short_name: constr_params_t
qualified_name: forktps::constr_params_t
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct constr_params_t

# Brief description. One line only.
brief: Parameters provided to solver constructor.

# Long description. Any Markdown, with code, latex, multiline with |
desc: Some simple parameters defining the energy grid and TRIQS block structure.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - constr_params_t-constructors
  - constr_params_t-destructor
  - n_blocks
  - block_names
  - block_index
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  w_min:
    type: double
    desc: Minimum value of \(\omega\)-grid.
  w_max:
    type: double
    desc: Maximum value of $$\omega$$-grid.
  n_w:
    type: int
    desc: Number of $$\omega$$-grid points.
  gf_struct:
    type: triqs::hilbert_space::gf_struct_t
    desc: Block structure of Green's functions.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/constr_params_t/
title: forktps::constr_params_t
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

