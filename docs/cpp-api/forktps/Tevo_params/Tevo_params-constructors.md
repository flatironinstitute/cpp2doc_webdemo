---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::Tevo_params
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: Tevo_params()
    desc: Default constructor

  - signature: |
      Tevo_params(double dt, int steps, int order, int mi, int mb, int mib, double twi, double twb, double twib, int nmax,
                  double err, double conv, bool imagT, std::string method)
    desc: Set all possible parameters.

  - signature: Tevo_params(Tevo_params const &)
    desc: ""

  - signature: Tevo_params(Tevo_params &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  dt: Size of time step.
  steps: Number of time steps performed for the bra- as well as the ket-vector.
  order: TDVP integration order (TDVP only).
  mi: Maximum bond dimension of impurity-impurity links.
  mb: Maximum bond dimension of bath-bath links.
  mib: Maximum bond dimension of impurity-bath links.
  twi: Truncated weight of impurity-impurity links.
  twb: Truncated weight of bath-bath links.
  twib: Truncated weight of impurity-bath links.
  nmax: Maximum number of Krylov vectors (TDVP only).
  err: Krylov matrix exponentiation termination criteria (TDVP only).
  conv: Krylov matrix exponentiation convergence criteria (TDVP only).
  imagT: Flag to choose whether to perform real-time evolution (```false```) or imaginary-time evolution (```true```).
  method: Time evolution method.

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
permalink: /cpp-api/forktps/Tevo_params/Tevo_params-constructors/
title: forktps::Tevo_params::Tevo_params
parent: forktps::Tevo_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

