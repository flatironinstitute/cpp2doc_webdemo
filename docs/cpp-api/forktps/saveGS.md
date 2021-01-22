---
# Do not edit this first section
layout: function
fancy_name: saveGS
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Writes the state *gs* with its SiteSet *sites* and ground state energy *energy* to file *fn*.

# List of overloads. Edit only the desc
overloads:

  - signature: void saveGS(forktps::ForkTPS const &gs, forktps::AIM_ForkSites const &sites, double energy, std::string const fn)
    desc: Writes the state *gs* with its SiteSet *sites* and ground state energy *energy* to file *fn*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  gs: __MISSING__
  sites: __MISSING__
  energy: __MISSING__
  fn: __MISSING__

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
permalink: /cpp-api/forktps/saveGS/
title: forktps::saveGS
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

