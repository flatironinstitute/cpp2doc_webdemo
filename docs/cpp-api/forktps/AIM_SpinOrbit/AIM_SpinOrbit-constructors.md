---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::AIM_SpinOrbit
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Creates the FTPO using SiteSet *sites*, with parameters specified in *ba*, *e0* and *hint*.

# List of overloads. Edit only the desc
overloads:

  - signature: |
      AIM_SpinOrbit(itensor::SiteSet const &sites, forktps::bath ba, forktps::hloc h_loc, forktps::H_int hint,
                    itensor::Args const &args = Args::global())
    desc: Creates the FTPO using SiteSet *sites*, with parameters specified in *ba*, *e0* and *hint*.

  - signature: AIM_SpinOrbit(AIM_SpinOrbit const &)
    desc: ""

  - signature: AIM_SpinOrbit(AIM_SpinOrbit &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  sites: itensor::SiteSet                   Defines the indices as well as the operators on each site.
  ba: bath                   Bath object storing the bath parameters $_k$ and $V_k$.
  h_loc: __MISSING__
  hint: H_int                   Interaction Hamiltonian.
  args: itensor::Args                   Argument list that can take the following entries

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
permalink: /cpp-api/forktps/AIM_SpinOrbit/AIM_SpinOrbit-constructors/
title: forktps::AIM_SpinOrbit::AIM_SpinOrbit
parent: forktps::AIM_SpinOrbit
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/FTPO/AIM_SpinOrbit.hpp
...

