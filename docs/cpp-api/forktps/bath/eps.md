---
# Do not edit this first section
layout: function
fancy_name: eps
namespace: forktps::bath
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns on-site energy of the bath site in block *bName* defined by *bIndx* and *k*.

# List of overloads. Edit only the desc
overloads:

  - signature: double eps(forktps::triqs_indx indx, int k) const
    desc: Returns on-site energy of the bath site in block *bName* defined by *bIndx* and *k*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  indx: triqs_indx                    Block name and index.
  k: int                    Bath index.

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
permalink: /cpp-api/forktps/bath/eps/
title: forktps::bath::eps
parent: forktps::bath
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

