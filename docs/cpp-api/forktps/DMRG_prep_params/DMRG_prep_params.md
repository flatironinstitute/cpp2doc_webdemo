---
# Do not edit this first section
layout: class
short_name: DMRG_prep_params
qualified_name: forktps::DMRG_prep_params
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct DMRG_prep_params

# Brief description. One line only.
brief: Parameter container for state preparation before DMRG.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Contains several parameters to prepare states for DMRG. Since DMRG is a 
  variational method, it can get stuck in local minima. Hence choosing a 
  different starting point often helps to find the true ground state.  
  Currently two algorithmically different approaches are implemented.
  
  The simplest on is just to apply 
  the Hamiltonian a number of times which will eventually converge to the
  state with extremal eigenvalue. Even if this is not the ground state, 
  this is vital for getting DMRG started, when using long-range hoppings 
  as the ```ForkTPS``` solver does.  
  
  Similarly, imaginary time evolution can be performed:  
  
  $$\lim_{\tau \to \infty}e^{-\tau H} |\psi \rangle \sim | GS \rangle$$  
  
  which eventually will converge to the ground state.
  Some notes:
  <div class="code-example" markdown="1">
  - When using long-range couplings as in the star geometry of Impurity 
  Models, it is important to apply the Hamiltonian at least a couple of times,
  otherwise the convergence of DMRG can be very poor (virtually nonexistent).
  -  Generally, DMRG is by far superior to imaginary time evolution in terms of
  precision. Time evolution only serves as a tool to get a good starting state 
  for DMRG, not to obtain precise results.
  - The time evolution method Time Dependent Variational Principle (TDVP) becomes 
  equivalent to DMRG if the time step $$d \tau \to \infty$$. This means that
  one can and should use very large time steps, especially since accuaracy does 
  not matter when preparing states.
  </div>

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - DMRG_prep_params-constructors
  - DMRG_prep_params-destructor
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  napp_h:
    type: int
    desc: Number of times Hamiltonian is applied. Note this should never be 0 unless there is a very specific reason.
    initializer: 3
  imag_tevo:
    type: bool
    desc: Flag if imaginary time evolution should be performed or not.
    initializer: false
  dtau:
    type: double
    desc: Imaginary time evolution step size.
    initializer: 0.
  time_steps:
    type: int
    desc: Number of time steps.
    initializer: 0
  method:
    type: std::string
    desc: Imaginary time evolution method.
    initializer: TDVP

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/DMRG_prep_params/
title: forktps::DMRG_prep_params
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

