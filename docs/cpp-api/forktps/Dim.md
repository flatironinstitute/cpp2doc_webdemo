---
# Do not edit this first section
layout: function
fancy_name: Dim
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the product of all index dimensions of tensor *A*.

# List of overloads. Edit only the desc
overloads:

  - signature: long Dim(itensor::ITensor const &A)
    desc: Returns the product of all index dimensions of tensor *A*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: Without quantum number conservation this is the same as the number of entries of *A*.

# Parameters of the function. Edit only the description after the :
params:
  A: __MISSING__

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
permalink: /cpp-api/forktps/Dim/
title: forktps::Dim
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

