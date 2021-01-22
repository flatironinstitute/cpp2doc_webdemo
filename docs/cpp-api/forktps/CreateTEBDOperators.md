---
# Do not edit this first section
layout: function
fancy_name: CreateTEBDOperators
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Creates and returns all operators needed to perform a TEBD time evolution step

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <class T>
      forktps::TEBD_container CreateTEBDOperators(forktps::H_int const &hint, forktps::bath const &b, forktps::hloc const &e0,
                                                  T dt, forktps::AIM_ForkSites const &sites)
    desc: Creates and returns all operators needed to perform a TEBD time evolution step

# Long description. Any Markdown, with code, latex, multiline with |
desc: with magnitude *dt*, using the Hamiltonian specified from *hint*, *b* and *e0*.

# Parameters of the function. Edit only the description after the :
params:
  hint: H_int                 Interaction Hamiltonian.
  b: bath                 Bath storing the bath on-site energies and hybridization strengths.
  e0: hloc                 Non-interacting impurity Hamiltonian.
  dt: "double                 Time step; forward time evolution if positive: $e^{-iHdt}$."
  sites: AIM_ForkSites                 SiteSet to specify the site indices and local operators.

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__

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
permalink: /cpp-api/forktps/CreateTEBDOperators/
title: forktps::CreateTEBDOperators
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/TevoMethods.hpp
...

