---
# Do not edit this first section
layout: class
short_name: DMRG_params
qualified_name: forktps::DMRG_params
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct DMRG_params

# Brief description. One line only.
brief: Parameter container for DMRG calculations.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - DMRG_params-constructors
  - DMRG_params-destructor
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  approx:
    type: forktps::tn_approx
    desc: Tensor network approximations (truncated weigh and maximum bond dimension.
  krylov:
    type: forktps::krylov_params
    desc: Parameters for Krylov local ground state search.
  prep:
    type: forktps::DMRG_prep_params
    desc: Parameters for preparing the state before DMRG.
  sweeps:
    type: int
    desc: Number of sweeps.
  napp_h:
    type: int
    desc: Number of times the Hamiltonian is applied after ```sweeps``` sweeps.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/DMRG_params/
title: forktps::DMRG_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

