---
# Do not edit this first section
layout: function
fancy_name: UpdateMe
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Tells the effective Hamiltonian that *site* changed and needs to be contracted again.

# List of overloads. Edit only the desc
overloads:

  - signature: void UpdateMe(int site)
    desc: Tells the effective Hamiltonian that *site* changed and needs to be contracted again.

  - signature: void UpdateMe(int sitei, int sitej)
    desc: Tells the effective Hamiltonian that *sitei* and *sitej* changed and need to be contracted again.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  site: int              Site to be contracted again.
  sitei: int               Site to be contracted again.
  sitej: int               Site to be contracted again.

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
permalink: /cpp-api/forktps/ForkLocalOp/UpdateMe/
title: forktps::ForkLocalOp::UpdateMe
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

