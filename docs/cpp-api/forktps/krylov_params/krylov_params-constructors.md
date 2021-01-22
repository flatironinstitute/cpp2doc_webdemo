---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::krylov_params
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: krylov_params()
    desc: Default constructor.

  - signature: krylov_params(int nmax, double norm_err, double conv)
    desc: Constructor setting every parameter individually.

  - signature: krylov_params(krylov_params const &)
    desc: ""

  - signature: krylov_params(krylov_params &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  nmax: Maximum number of Krylov vectors generated.
  norm_err: Termination cirterium. If norm of new Krylov vector is too small, terminate Krylov vector generation.
  conv: Convergence criterium.

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
permalink: /cpp-api/forktps/krylov_params/krylov_params-constructors/
title: forktps::krylov_params::krylov_params
parent: forktps::krylov_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

