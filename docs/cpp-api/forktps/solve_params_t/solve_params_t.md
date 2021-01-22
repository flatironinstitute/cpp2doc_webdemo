---
# Do not edit this first section
layout: class
short_name: solve_params_t
qualified_name: forktps::solve_params_t
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct solve_params_t

# Brief description. One line only.
brief: Parameters given to the solver_core class at solve call.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  This class contains most parameters one can modify to change the behavior 
  of the solver. It allows to separately define parameters for DMRG and time 
  evolution, lets one define ground state observables and also operators defining
  custum Green's functions. Below we discuss some parameters which can be 
  confusing.  
  
  A Hamiltonian of an Anderson Impurity Model (AIM) with Hamiltonian $$H$$ 
  usually has at least one conserved quatity which is the total number of particles 
  $$N$$ (including the bath degrees of freedom). In most cases also the 
  z-component of the spin $$S^z$$ is conserved as well. Tensor Networks can use 
  these conserved quantities and restrict themselves to states that live only
  in one specific sector increasing the computational performance. For example 
  one can perform a computation only in the sector of $$N=3$$ particles and 
  total spin $$S^z=0.5$$. The choice which sector is used has to made before 
  doing the computation.
  
  While this greatly improves performance, it causes the problem that one
  has to know beforehand which sector the ground state is in. Since in most
  cases this is unknown, we have to do something to find it.
  
  This explains why there are two sets of ```DMRG_params``` present in 
  the this class:  
  ```params_partSector``` are the parameters used in the 
  search for the quantum number sector, while ```params_GS``` are the parameters 
  used in the final DMRG calculation in the correct sector. Usually the 
  precision during the search for the sector can be smaller, since all
  we want to know is how many particles are in the system.
  
  The solver has two ways how to finde the correct sector:
  <div class="code-example" markdown="1">
  1. If ```NPart``` is empty (default), a DMRG calculation without any conserved quantities is
     performed. Once the ground state is found, the particle number
     is measured and the result is taken as the ground state sector. 
     While this can end up in the wrong sector in some cases, usually it is 
     quite reliable.
  1. The member ```NPart``` allows to define a set of particle numbers in which
     the solver has to search. It then chooses the one with the lowest energy to 
     compute the Green's function. To define a sector, one has to provide
     a particle number for each orbital and spin. The order of the entries
     is [$$A\uparrow$$, $$A\downarrow$$, $$B\uparrow$$, $$B \downarrow$$, $$\cdots$$] where
     $$A$$, $$B$$, $$\cdots$$ are orbital indices. For example, in a two-orbital 
     problem, four numbers have to be specified: ```NPart = {{3,2,6,7}}``` would 
     then search in one sector, the one with 3 particles in orbital $$A\uparrow$$, 
     $$2$$ particles in $$A\downarrow$$ and 
     $$6$$ and $$7$$ particles in orbitals $$B\uparrow$$ and $$B\downarrow$$.
  </div>

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - solve_params_t-constructors
  - solve_params_t-destructor
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  h_int:
    type: forktps::H_int
    desc: Interaction Hamiltonian.
  params_partSector:
    type: forktps::DMRG_params
    desc: DMRG parameters used to search for the ground state sector (of particle number and spin if applicable.).
    initializer: = {}
  params_GS:
    type: forktps::DMRG_params
    desc: DMRG parameters used to find the groundstate after the correct sector was found.
    initializer: = {}
  NPart:
    type: forktps::Imat
    desc: List of particle number sectors in which GS should be calculated, if empty, auto detect sector by performing DMRG withough quantum number conservation.
    initializer: = {}
  path_to_gs:
    type: std::optional<std::string>
    desc: Use ground state stored in this file to compute Green's functions instead of doing DMRG.
  tevo:
    type: forktps::Tevo_params
    desc: Time evolution parameters.
    initializer: = {}
  GFs:
    type: std::vector<std::string>
    desc: "Vector that defines the default Green's function to calculate: ```\"S\"``` for single particle ```\"F\"``` for self-energy trick ```\"N\"``` for density-density"
    initializer: = {"S"}
  customGF:
    type: std::vector<std::pair<many_body_operator, many_body_operator> >
    desc: A list of pairs of TRIQS many-body operators $$A_i$$ and $$B_i$$ for which the Green's function $$\langle A_i(t) B_i\rangle$$ should to be calculated.
    initializer: = {}
  eta:
    type: double
    desc: Lorentzian broadening $$\eta$$ in the fourier transform $$\int f(t) e^{i\omega t - \eta |t|} $$.
    initializer: 0.1
  calc_me:
    type: std::vector<triqs_indx>
    desc: Vector defining all the Green's functions that need to be calculated. If empty, every spin-orbital Green's function is computed.
    initializer: = {}
  measurements:
    type: std::vector<many_body_operator>
    desc: Vector of TRIQS ```many_body_operators``` of ground state obeservables.
    initializer: = {}
  state_storage:
    type: std::string
    desc: Path where to store states obtained during the time evolution, default is execution directory.
    initializer: ""
  del_states:
    type: bool
    desc: If true (default), deletes the states stored to disk during the time evolution after post processing.
    initializer: true

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/solve_params_t/
title: forktps::solve_params_t
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

