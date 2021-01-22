---
# Do not edit this first section
layout: function
fancy_name: ApplyImpurityMPO
namespace: forktps::ForkTPS
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Exactly applies an MPO acting non-trivially only on the impurity and truncates after the application.

# List of overloads. Edit only the desc
overloads:

  - signature: void ApplyImpurityMPO(std::vector<ITensor> const &Ops, itensor::Args &args)
    desc: Exactly applies an MPO acting non-trivially only on the impurity and truncates after the application.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

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
permalink: /cpp-api/forktps/ForkTPS/ApplyImpurityMPO/
title: forktps::ForkTPS::ApplyImpurityMPO
parent: forktps::ForkTPS
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTPS.hpp
...

