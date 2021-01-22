---
# Do not edit this first section
layout: class
short_name: ForkTN
qualified_name: forktps::ForkTN
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class ForkTN

# Brief description. One line only.
brief: ForkTN network class representing all Tensor Network (TN) in with a ```Fork``` geometry.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  This class implements the functions shared by every TN in fork geometry
  including states ```ForkTPS``` and operators ```ForkMPO```.
  To understand the geometry in the first place look at the class ```Fork``` 
  which this class inherits from. It implements functions that allow 
  to establish/move the orthogonality center, gives access to the individual tensors,
  provides some functionality of extracting indices etc.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - ForkTN-constructors
  - ForkTN-destructor
  - Anc
  - A
  - UTensor
  - InsertOrthoTensors
  - InsertOrthoTensor
  - IsOrtho
  - OrthoCenter
  - GetImpLink
  - GetLink
  - sites
  - position
  - orthogonalize
  - ForgetOrtho
  - write
  - read
  - primeLinks
  - mapPrime
  - noprimelink
  - operator*=
  - operator-div=
  - operator*
  - MaxM
  - PrintM
  - BondDims
  - PrintImpM
  - PrintOrthoConditions
  - PrintTensors
  - PrintDivs
  - operator=

# A list of non_member_functions
non_member_functions: []

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/
title: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
parent: forktps
has_children: true
...

