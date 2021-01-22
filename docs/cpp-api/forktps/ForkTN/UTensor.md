---
# Do not edit this first section
layout: function
fancy_name: UTensor
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns an empty tensor with indices needed by the ITensor SVD.

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::ITensor UTensor(int site, enum forktps::OrthoState towards) const
    desc: Returns an empty tensor that has the same indices of the tensor on site ```site``` except for the link shared with the neighbor in direction ```towards```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: When a SVD is performed on an ```ITensor```, ITensor determines which indices are the column- and which are the row-indices by providing an empty tensor to the function ```svd()``` with the column indices only. This function generates such an empty tensor. Note the implementation provided in the class ForkTN is for an ForkTPS (the state not the MPO).

# Parameters of the function. Edit only the description after the :
params:
  site: Site index, specifying the tensor form which the indices are taken.
  towards: Direction, specifying the link that is NOT included in the tensor returned.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Empty ```ITensor``` with indices as needed by the SVD.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/UTensor/
title: forktps::ForkTN::UTensor
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

