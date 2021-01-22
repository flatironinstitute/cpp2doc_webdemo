---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::DMRG_prep_params
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: DMRG_prep_params()
    desc: Default constructor.

  - signature: DMRG_prep_params(int napp_h)
    desc: Set only number of times the Hamiltonian is applied.

  - signature: DMRG_prep_params(int napp_h, bool imag_tevo, double dtau, int time_steps, std::string method)
    desc: Set every parameters individually.

  - signature: DMRG_prep_params(DMRG_prep_params const &)
    desc: ""

  - signature: DMRG_prep_params(DMRG_prep_params &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  napp_h: Number of times Hamiltonian $$H$$ is applied.
  imag_tevo: Flag if imaginary time evolution should be performed or not.
  dtau: Time step size of imaginary time evolution.
  time_steps: Numer of time steps.
  method: Time evolution method, either ```"TDVP"```, ```"TDVP_2"``` or ```"TEBD"```.

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
permalink: /cpp-api/forktps/DMRG_prep_params/DMRG_prep_params-constructors/
title: forktps::DMRG_prep_params::DMRG_prep_params
parent: forktps::DMRG_prep_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
...

