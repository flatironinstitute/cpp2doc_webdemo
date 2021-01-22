---
# Do not edit this first section
layout: function
fancy_name: GetEnvironment
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the environment tensor the current site in direction *dir*. Only works if

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::ITensor const &GetEnvironment(enum forktps::OrthoState dir) const
    desc: Returns the environment tensor the current site in direction *dir*. Only works if

# Long description. Any Markdown, with code, latex, multiline with |
desc: local MPO is in its single-site state and if site *i* is the open index.

# Parameters of the function. Edit only the description after the :
params:
  dir: __MISSING__

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
permalink: /cpp-api/forktps/ForkLocalOp/GetEnvironment/
title: forktps::ForkLocalOp::GetEnvironment
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

