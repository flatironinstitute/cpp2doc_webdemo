---
# Do not edit this first section
layout: function
fancy_name: FitApplyMPO
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Applies the ForkTPO *K* onto forktps *psi* using the variational minimization of

# List of overloads. Edit only the desc
overloads:

  - signature: forktps::ForkTPS FitApplyMPO(forktps::ForkTPS &x, forktps::ForkTPO const &H, itensor::Args args)
    desc: Applies the ForkTPO *K* onto forktps *psi* using the variational minimization of

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  $| |res
  - H | x
  |^2$ and returns the result. The minimization algorithm uses a single-site update with subspace expansion on the impurity tensors.

# Parameters of the function. Edit only the description after the :
params:
  x: ForkTPS                         $| x $-state in $| res  = K | x $
  H: __MISSING__
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
permalink: /cpp-api/forktps/FitApplyMPO/
title: forktps::FitApplyMPO
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

