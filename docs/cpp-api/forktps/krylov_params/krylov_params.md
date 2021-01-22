---
# Do not edit this first section
layout: class
short_name: krylov_params
qualified_name: forktps::krylov_params
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct krylov_params

# Brief description. One line only.
brief: Parameters for krylov methods. Used in Lanczos during DMRG and in Krylov exponentiation TDVP time evolution.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - krylov_params-constructors
  - krylov_params-destructor
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  nmax:
    type: int
    desc: Maximal number of Krylov vectors generated.
    initializer: 100
  norm_err:
    type: double
    desc: Termination criterium. Norm of new Krylov vector must be larger than this value, otherwise ghost states may appear.
    initializer: 1E-13
  conv:
    type: double
    desc: Convergence criterium.
    initializer: 1E-12

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/krylov_params/
title: forktps::krylov_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

