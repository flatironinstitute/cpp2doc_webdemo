---
# Do not edit this first section
layout: function
fancy_name: Anc
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns a non-constant reference to a tensor.

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::ITensor &Anc(int i)
    desc: Returns a non-constant reference to the tensor at site ```i```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  If the TN has an orthogonality center other than ```i```, the orthogonality 
  conditions of the TN are changed as if the tensor would have changed.

# Parameters of the function. Edit only the description after the :
params:
  i: Site index of the reference returned.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Reference to the ```ITensor``` at site ```i```.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/Anc/
title: forktps::ForkTN::Anc
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

