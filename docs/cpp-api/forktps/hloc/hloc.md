---
# Do not edit this first section
layout: class
short_name: hloc
qualified_name: forktps::hloc
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class hloc

# Brief description. One line only.
brief: Non-interacting impurity Hamiltonian.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - hloc-constructors
  - hloc-destructor
  - Fill
  - operator-call
  - isOffDiag
  - isSpinOrbit
  - blockNames
  - blockNameUp
  - blockNameDn
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  e:
    type: std::map<std::string, array<Complex, 2> >
    desc: Matrix of on-site energies and hopping amplitudes.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/hloc/
title: forktps::hloc
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
parent: forktps
has_children: true
...

