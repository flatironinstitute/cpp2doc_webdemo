---
# Do not edit this first section
layout: class
short_name: Tevo_params
qualified_name: forktps::Tevo_params
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct Tevo_params

# Brief description. One line only.
brief: Set of parameters used in the time evolution to compute Green's functions.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  All Tensor Network time evolution methods perform time evolution 
  by repeating steps of small size ```dt``` until the desired maximum time
  is reached:
  
  $$| \psi(t+\Delta t) \rangle = e^{\pm iH \Delta t} | \psi(t) \rangle.$$
  
  The difference between the different methods is how the term $$e^{\pm iH \Delta t}$$
  is applied.  
  
  <a href="https://arxiv.org/abs/cond-mat/0403310" target="_blank">TEBD</a> 
  splits the time evolution operator into small parts acting only on two sites
  and simply applies these so-called gates over and over again. If the terms 
  in the Hamiltonian that are split appart do not commute, this results in an error 
  $$\sim \Delta t^2$$. This means that the time steps should be rather small 
  $$\Delta t \approx 0.01$$.
  
  <a href="https://arxiv.org/abs/1408.5056" target="_blank">TDVP</a> on the 
  other hand is very different from TEBD and solves the Schroedinger equation 
  locally at the level of each tensor. Also TDVP formally has an error $$\sim \Delta t^2$$
  but this can become very small if the bond dimension is large enough meaning
  that in practical calculations rather large time steps $$\Delta t \approx 0.1$$
  can and should be used.
  
  Since it is non-trivial to do long-range interactions with TEBD, it is 
  not applicable to cases with off-diagonal hybridizations $$\Delta(\omega)$$.
  TDVP on the other hand works in all cases and is usually quite reliable if 
  the time step chosen is not too _small_.
  
  The ```Tevo_params``` class allows you to specify all parameters that are 
  used during the time evolution. For example ```approx``` defines the Tensor 
  Network approximation
  parameters (truncated weight and maximum bond dimension). ```imag_tevo```
  lets you switch from real-time evolution to imagainry time evolution and 
  ```method``` lets you choose the actual time evolution method.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - Tevo_params-constructors
  - Tevo_params-destructor
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  dt:
    type: double
    desc: Size of time step.
  time_steps:
    type: int
    desc: Half the number of total time steps. Perform ```timeSteps``` steps for the bra as well as the ket vector that make up a Green's function
  TDVPOrder:
    type: int
    desc: Order of TDVP integration. Use 2 unless there is a very specific reason not to.
    initializer: 2
  approx:
    type: forktps::tn_approx
    desc: Tensor Network approximation parameters.
    initializer: = {}
  krylov:
    type: forktps::krylov_params
    desc: Krylov parameters (only TDVP).
    initializer: = {}
  imag_tevo:
    type: bool
    desc: If true, perform imaginary time evolution instead of real time evolution.
    initializer: false
  method:
    type: std::string
    desc: Method of time evolution, either ```"TDVP"``` (default) for TDVP with single-site integration on the impurity-impurity links, ```"TDVP_2"``` for two-site TDVP or ```"TEBD"``` for TEBD-like time evolution using gates.
    initializer: TDVP

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Tevo_params/
title: forktps::Tevo_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

