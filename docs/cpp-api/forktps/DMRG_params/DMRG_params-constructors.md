---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::DMRG_params
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Constructors.

# List of overloads. Edit only the desc
overloads:

  - signature: DMRG_params()
    desc: Default constructor.

  - signature: |
      DMRG_params(int mi, int mb, int mib, double twi, double twb, double twib, int nmax, double err, double conv, int sw,
                  int nh)
    desc: Constructor setting every parameter except for state preparation.

  - signature: |
      DMRG_params(int mi, int mb, int mib, double twi, double twb, double twib, int nmax, double err, double conv, int sw,
                  int nh, int prep_nh, bool imag_tevo, double dtau, int time_steps, std::string method)
    desc: Constructor setting every parameter including state preparation.

  - signature: DMRG_params(DMRG_params const &)
    desc: ""

  - signature: DMRG_params(DMRG_params &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  mi: Maximum bond dimension of impurity-impurity links.
  mb: Maximum bond dimension of bath-bath links.
  mib: Maximum bond dimension of impurity-bath links.
  twi: Truncated weight of impurity-impurity links.
  twb: Truncated weight of bath-bath links.
  twib: Truncated weight of impurity-bath links.
  nmax: Number of Krylov vectors generated.
  err: Krylov termination criterium.
  conv: Krylov convergence criterium.
  sw: Number of DMRG swepps.
  nh: Number of times Hamiltonian is applied during DMRG.
  prep_nh: Number of times Hamiltonian is applied in state preparation.
  imag_tevo: Flag whether to do imaginary time evolution in state preparation.
  dtau: Imaginary time evolution step size.
  time_steps: Number of time steps in imaginary time evolution.
  method: Imaginary time evolution method.

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
permalink: /cpp-api/forktps/DMRG_params/DMRG_params-constructors/
title: forktps::DMRG_params::DMRG_params
parent: forktps::DMRG_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

