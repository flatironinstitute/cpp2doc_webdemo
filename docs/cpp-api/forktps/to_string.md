---
# Do not edit this first section
layout: function
fancy_name: to_string
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Converter of GFtype to string.

# List of overloads. Edit only the desc
overloads:

  - signature: std::string to_string(enum forktps::GFtype type)
    desc: Converter of GFtype to string.

  - signature: std::string to_string(enum forktps::BraKet bk)
    desc: Converter of BraKet to string.

  - signature: std::string to_string(enum forktps::OrthoState state)
    desc: Converter of OrthoState to string.

  - signature: std::string to_string(enum forktps::Spin s)
    desc: Converter of Spin to string.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  type: __MISSING__
  bk: __MISSING__
  state: __MISSING__
  s: __MISSING__

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
permalink: /cpp-api/forktps/to_string/
title: forktps::to_string
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/typenames.hpp
...

