---
# Do not edit this first section
layout: function
fancy_name: Fork_exactApplyMPO
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Applies the ForkTPO *K* onto forktps *psi* and stores the result in forktps *res*.

# List of overloads. Edit only the desc
overloads:

  - signature: forktps::ForkTPS Fork_exactApplyMPO(forktps::ForkTPS const &x, forktps::ForkTPO const &K, itensor::Args &args)
    desc: Applies the ForkTPO *K* onto forktps *psi* and stores the result in forktps *res*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  x: ForkTPS                         $| x $-state in $| res  = K | x $
  K: ForkTPO                         Operator to apply.
  args: "itensor::Args                         Parameters forwarded to ForkTPS.orthogonalize(), hence:"

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
permalink: /cpp-api/forktps/Fork_exactApplyMPO/
title: forktps::Fork_exactApplyMPO
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

