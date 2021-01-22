---
# Do not edit this first section
layout: class
short_name: ForkLocalOp
qualified_name: forktps::ForkLocalOp
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class ForkLocalOp

# Brief description. One line only.
brief: Class defining the effective Hamiltonians used by DMRG, TDVP and other algorithms.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  It works very similar to its ITensor equivalent. It uses 4 tensors L, R, U and D to represent the contracted part of $
  
  | H |
  
  $ (the tensor network without the sites, where the FTPS tensors are missing on some sites). As in the ITensor library, the position function is used to change which sites are currently optimized and the product function to calculate $H_{eff}

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - ForkLocalOp-constructors
  - ForkLocalOp-destructor
  - position
  - position_0site
  - i
  - j
  - GetEnvironment
  - ExpansionTensor
  - product
  - ContractAll
  - energy
  - UpdateMe
  - ForgetContraction
  - size
  - PrintEnvironment
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  H:
    type: forktps::ForkTPO
    desc: Operator on which Heff is based
  L:
    type: itensor::ITensor
    desc: Environment tensor Leftwards of currently open indices
  R:
    type: itensor::ITensor
    desc: Environment tensor Rightwards of currently open indices
  U:
    type: itensor::ITensor
    desc: Environment tensor Upwards of currently open indices
  D:
    type: itensor::ITensor
    desc: Environment tensor Downwards of currently open indices

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkLocalOp/
title: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
parent: forktps
has_children: true
...

