---
# Do not edit this first section
layout: function
fancy_name: ZipUpImpurityMPO
namespace: forktps::ForkMPS
includer: forktps/solver_core.hpp

# Brief description. One line only.
brief: Uses the zip-up method (New J. Phys.12 055026) to apply an MPO acting non-trivially only

# List of overloads. Edit only the desc
overloads:

  - signature: void ZipUpImpurityMPO(std::vector<ITensor> const &Ops, itensor::Args &args)
    desc: Uses the zip-up method (New J. Phys.12 055026) to apply an MPO acting non-trivially only

# Long description. Any Markdown, with code, latex, multiline with |
desc: on the impurity. The Zip-Up algorithm is approximate in that it truncates already during the application of the operator, where there is no exact left and right basis.

# Parameters of the function. Edit only the description after the :
params:
  Ops: std::vector<ITensor>               MPO stored as a vector of tensors such that Ops[i] acts on the i-th impurity. Note that this MPO is one-indexed, i.e, Ops[1] is the first entry used.
  args: itensor::Args               Stores the relevant approximation parameters like truncated weight and maximum bond dimension.

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
permalink: /cpp-api/forktps/ForkMPS/ZipUpImpurityMPO/
title: forktps::ForkMPS::ZipUpImpurityMPO
parent: forktps::ForkMPS
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkMPS.hpp
...

