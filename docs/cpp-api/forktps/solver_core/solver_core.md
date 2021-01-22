---
# Do not edit this first section
layout: class
short_name: solver_core
qualified_name: forktps::solver_core
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class solver_core

# Brief description. One line only.
brief: / The Solver class

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - solver_core-constructors
  - solver_core-destructor
  - operator=
  - solve
  - get_gs
  - post_process
  - hdf5_format
  - h5_read_construct

# A list of non_member_functions
non_member_functions: []
member_fields:
  constr_params:
    type: forktps::constr_params_t
    desc: Struct containing the parameters relevant for the solver construction
  last_solve_params:
    type: std::optional<solve_params_t>
    desc: Struct containing the parameters relevant for the solve process
  E0:
    type: double
    desc: Ground state energy after DMRG
  GSVariance:
    type: double
    desc: ""
  b:
    type: forktps::bath
    desc: Bath object containing the bath parameters
  e0:
    type: forktps::hloc
    desc: Non-interacting impurity Hamiltonian
  Delta_cont_w:
    type: forktps::g_w_t
    desc: Bath spectral function from which the bath is calculated
  Delta_recons_w:
    type: forktps::g_w_t
    desc: Bath spectral function reconstructed from the bath parameters
  measurement_results:
    type: std::vector<double>
    desc: Vector containing the results of the measurements defined in solve_params_t's measurements member
  NPartGS:
    type: std::vector<int>
    desc: Ground state sector of particle number.
  SectorEnergies:
    type: std::vector<double>
    desc: For each sector of particle number DMRG searches, stores the energy.
  SectorImpOccs:
    type: std::vector<std::vector<double> >
    desc: For each sector of particle number DMRG searches, stores the occupation.
  customGF:
    type: std::vector<gf<retime, scalar_valued> >
    desc: ""

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/solver_core/
title: forktps::solver_core
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/solver_core.hpp
parent: forktps
has_children: true
...

