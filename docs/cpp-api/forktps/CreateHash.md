---
# Do not edit this first section
layout: function
fancy_name: CreateHash
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Hash function that takes a variable number of arguments and creates a hash

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename Ts>
      std::string CreateHash(Ts... ts)
    desc: Hash function that takes a variable number of arguments and creates a hash

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  using every one of them as long as stream operator
  <
  <
  is defined for each argument. Creates a string from every argument and returns the hash of this string.

# Parameters of the function. Edit only the description after the :
params:
  ts: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  Ts: __MISSING__

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
permalink: /cpp-api/forktps/CreateHash/
title: forktps::CreateHash
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

