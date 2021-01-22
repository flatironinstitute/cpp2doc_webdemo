---
# Do not edit this first section
layout: function
fancy_name: BondDims
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Return bond dimensions of all links.

# List of overloads. Edit only the desc
overloads:

  - signature: std::vector<int> BondDims() const
    desc: Returns a vector containing all bond dimensions.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  The first entries of the vector returned are the impurity-impurity bond
  dimensions followed by all other bond dimensions in natural order starting 
  with the the bond dimension between sites $$1-2$$ then sites $$2-3$$ etc.

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Vector containing all bond dimensions.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/BondDims/
title: forktps::ForkTN::BondDims
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

