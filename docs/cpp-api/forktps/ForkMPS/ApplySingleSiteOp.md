---
# Do not edit this first section
layout: function
fancy_name: ApplySingleSiteOp
namespace: forktps::ForkMPS
includer: forktps/solver_core.hpp

# Brief description. One line only.
brief: Applies the operator *Op* acting on *site*. If *sign* is true, this operator is considered

# List of overloads. Edit only the desc
overloads:

  - signature: void ApplySingleSiteOp(itensor::ITensor const &Op, int site, bool sign = false)
    desc: Applies the operator *Op* acting on *site*. If *sign* is true, this operator is considered

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  to be fermionic, i.e also Fermi operators "p" are applied on all sites $i : i
  <
  
  {*site*}$.

# Parameters of the function. Edit only the description after the :
params:
  Op: ITensor               Operator that is applied.
  site: int               Site onto which *Op* is applied.
  sign: "bool (default: false)               If true also apply Fermi-operators on all sites < *site*."

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
permalink: /cpp-api/forktps/ForkMPS/ApplySingleSiteOp/
title: forktps::ForkMPS::ApplySingleSiteOp
parent: forktps::ForkMPS
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkMPS.hpp
...

