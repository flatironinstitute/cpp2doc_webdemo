---
# Do not edit this first section
layout: function
fancy_name: loadGS
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Reads the state *gs* with its SiteSet *sites* and ground state energy *energy* from file *fn*.

# List of overloads. Edit only the desc
overloads:

  - signature: void loadGS(forktps::ForkTPS &gs, forktps::AIM_ForkSites &sites, double &energy, std::string const fn)
    desc: Reads the state *gs* with its SiteSet *sites* and ground state energy *energy* from file *fn*.

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
permalink: /cpp-api/forktps/loadGS/
title: forktps::loadGS
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

