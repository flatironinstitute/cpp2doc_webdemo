---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::tn_approx
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: tn_approx()
    desc: Default constructor.

  - signature: tn_approx(double tr, int maxm)
    desc: Set all truncated weigths to ```tw``` and all maximal bond dimensions to ```maxm```.

  - signature: tn_approx(int mi, int mb, int mib, double twi, double twb, double twib)
    desc: Set every parameter individually.

  - signature: tn_approx(tn_approx const &)
    desc: ""

  - signature: tn_approx(tn_approx &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  tr: Truncated weight for all links.
  maxm: Maximum bond dimension for all links.
  mi: Maximum bond dimension of impurity-impurity links.
  mb: Maximum bond dimension of bath-bath links.
  mib: Maximum bond dimension of impurity-bath links.
  twi: Truncated weight of bath-bath links.
  twb: Truncated weight of impurity-impurity links.
  twib: Truncated weight of impurity-bath links.

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
permalink: /cpp-api/forktps/tn_approx/tn_approx-constructors/
title: forktps::tn_approx::tn_approx
parent: forktps::tn_approx
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

