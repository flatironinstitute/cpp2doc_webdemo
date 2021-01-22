---
# Do not edit this first section
layout: function
fancy_name: AllExcept
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns an itensor::IndexSet (a container holding indices) conatining all

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::IndexSet AllExcept(itensor::ITensor A, itensor::Index remove, itensor::Index add = Index())
    desc: Returns an itensor::IndexSet (a container holding indices) conatining all

# Long description. Any Markdown, with code, latex, multiline with |
desc: indices of tensor *A* except index *remove*. If index *add* is provided, *add* replaces *remove*.

# Parameters of the function. Edit only the description after the :
params:
  A: ITensor                 Tensor from which indices are taken.
  remove: Index                 Index that is in *A* but not in the returned IndexSet.
  add: "Index (default: Index())                 If provided, index added to the IndexSet."

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
permalink: /cpp-api/forktps/AllExcept/
title: forktps::AllExcept
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

