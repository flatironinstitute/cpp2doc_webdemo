---
# Do not edit this first section
layout: function
fancy_name: LinkCombiner
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Generates and returns an itensor::combiner used to combine all indices that are

# List of overloads. Edit only the desc
overloads:

  - signature: std::pair<ITensor, Index> LinkCombiner(itensor::ITensor const &A, itensor::ITensor const &B)
    desc: Generates and returns an itensor::combiner used to combine all indices that are

  - signature: std::pair<ITensor, Index> LinkCombiner(itensor::Index const &i, itensor::Index const &j)
    desc: Generates and returns an itensor::combiner used to combine the two indices

# Long description. Any Markdown, with code, latex, multiline with |
desc: present in both *A* and *B* into a single index. Also returns the combined index.

# Parameters of the function. Edit only the description after the :
params:
  A: ITensor             First tensor, can be multiplied by the combiner directly.
  B: ITensor             Second tensor, must be multiplied by the dag(combiner).
  i: Index             First index to combine.
  j: Index             Second index to combine.

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
permalink: /cpp-api/forktps/LinkCombiner/
title: forktps::LinkCombiner
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

