---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::ForkMPO
includer: forktps/solver_core.hpp

# Brief description. One line only.
brief: Default constructor.

# List of overloads. Edit only the desc
overloads:

  - signature: ForkMPO()
    desc: Default constructor.

  - signature: ForkMPO(itensor::SiteSet const &sites, int NArms)
    desc: Constructs a forkMPO with *NArms* arms using the site indices from *sites*. It is initialized as identity operator.

  - signature: ForkMPO(itensor::SiteSet const &sites, std::vector<int> Nbath)
    desc: Constructs a ForkMPO and with *Nbath[m]* bath sites on arm *m* using the site indices from *sites*.

  - signature: ForkMPO(ForkMPO const &)
    desc: ""

  - signature: ForkMPO(ForkMPO &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  sites: itensor::SiteSet                 Defines the indices as well as the operators on each site.
  NArms: int                 Number of arms.
  Nbath: std::vector<int>                 Vector containing the number of bath sites for each arm (one-indexed, i.e, Nbath[1] is the number of bath sites of the first arm).

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
permalink: /cpp-api/forktps/ForkMPO/ForkMPO-constructors/
title: forktps::ForkMPO::ForkMPO
parent: forktps::ForkMPO
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkMPO.hpp
...

