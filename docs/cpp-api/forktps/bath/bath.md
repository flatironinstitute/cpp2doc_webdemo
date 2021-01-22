---
# Do not edit this first section
layout: class
short_name: bath
qualified_name: forktps::bath
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class bath

# Brief description. One line only.
brief: A bath is a collection of bath sites in a block structure similar to what is used for triqs Green's functions.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - bath-constructors
  - bath-destructor
  - NArms
  - NBath
  - N
  - V
  - eps
  - blockSize
  - blockToFTPSIndx
  - blockNames
  - blockNameUp
  - blockNameDn
  - reconstructDelta
  - addSite
  - bandwidth
  - MakePHSymmetric
  - numNegative
  - isOffDiag
  - isSpinOrbit
  - hasOnlyOneBlock
  - gf_struct
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  b:
    type: std::map<std::string, bath_block>
    desc: Stores the actual parameters.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/bath/
title: forktps::bath
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
parent: forktps
has_children: true
...

