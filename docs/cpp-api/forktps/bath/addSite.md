---
# Do not edit this first section
layout: function
fancy_name: addSite
namespace: forktps::bath
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Adds the bath to the block *indx* and parameters *eps* and *V*

# List of overloads. Edit only the desc
overloads:

  - signature: void addSite(forktps::triqs_indx indx, double eps, forktps::cvec V)
    desc: Adds the bath to the block *indx* and parameters *eps* and *V*

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  indx: triqs_indx                    Block name and index.
  eps: double                             On-site energy  of the site.
  V: std::vector<Complex>                             Hopping parameters of the site.

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
permalink: /cpp-api/forktps/bath/addSite/
title: forktps::bath::addSite
parent: forktps::bath
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

