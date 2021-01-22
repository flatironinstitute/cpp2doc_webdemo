---
# Do not edit this first section
layout: function
fancy_name: ApplyOperator
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Applies the operator *op* before onto state *psi*. The bath

# List of overloads. Edit only the desc
overloads:

  - signature: void ApplyOperator(triqs::operators::monomial_t const &op, forktps::ForkTPS &psi, forktps::bath const &b)
    desc: Applies the operator *op* before onto state *psi*. The bath

# Long description. Any Markdown, with code, latex, multiline with |
desc: provides information about the geometry and is used to check wheter *op* is a valid operator.

# Parameters of the function. Edit only the description after the :
params:
  op: __MISSING__
  psi: __MISSING__
  b: __MISSING__

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
permalink: /cpp-api/forktps/ApplyOperator/
title: forktps::ApplyOperator
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

