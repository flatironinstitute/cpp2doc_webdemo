---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::ForkGate
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Default constructur

# List of overloads. Edit only the desc
overloads:

  - signature: ForkGate()
    desc: Default constructur

  - signature: ForkGate(itensor::ITensor G, int i, int j)
    desc: Constructor with tensor *G* acting on sites *i* and *j*.

  - signature: ForkGate(ForkGate const &)
    desc: ""

  - signature: ForkGate(ForkGate &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  G: __MISSING__
  i: __MISSING__
  j: __MISSING__

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
permalink: /cpp-api/forktps/ForkGate/ForkGate-constructors/
title: forktps::ForkGate::ForkGate
parent: forktps::ForkGate
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Gates.hpp
...

