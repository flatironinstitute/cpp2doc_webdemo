---
# Do not edit this first section
layout: class
short_name: TEBD_container
qualified_name: forktps::TEBD_container
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct TEBD_container

# Brief description. One line only.
brief: Container for all operators and gates needed to perform a TEBD step.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - TEBD_container-constructors
  - TEBD_container-destructor
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  dt:
    type: itensor::Complex
    desc: Time step with which the operators were created
    initializer: "{}"
  SF:
    type: std::optional<std::vector<ForkTPO> >
    desc: vector of ForkMPOs storing the exponentiated spin-flip terms.
  PH:
    type: std::optional<std::vector<ForkTPO> >
    desc: vector of ForkMPOs storing the exponentiated pair-hopping terms.
  DD_MPO:
    type: std::optional<std::vector<ITensor> >
    desc: ForkMPO storing the exponentiated density-density terms.
  gates:
    type: std::vector<ForkGate>
    desc: Vector of two-site gates for the hybridization terms and all on-site energies.
    initializer: "{}"

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/TEBD_container/
title: forktps::TEBD_container
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/TevoMethods.hpp
parent: forktps
has_children: true
...

