---
# Do not edit this first section
layout: function
fancy_name: siteBra
namespace: forktps::FTPS_GF
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the triqs_index of the bra-component.

# List of overloads. Edit only the desc
overloads:

  - signature: forktps::triqs_indx siteBra() const
    desc: |
      Returns the triqs_index of the bra-component.
      Returns a default constructed result if type of Green function if type ```type == forktps::GFtype::custom```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Note that ```type == forktps::GFtype::custom``` does not work since 
  these Green's functions do not have a specific site their operator
  acts on. Even if it does this function will return a default constructed result.

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Index on which the operator of the bra-component acts on.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/FTPS_GF/siteBra/
title: forktps::FTPS_GF::siteBra
parent: forktps::FTPS_GF
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

