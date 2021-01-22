---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::ForkTPO
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Default constructor.

# List of overloads. Edit only the desc
overloads:

  - signature: ForkTPO()
    desc: Default constructor.

  - signature: ForkTPO(itensor::SiteSet const &sites, int NArms)
    desc: Constructs a forkMPO with *NArms* arms using the site indices from *sites*. It is initialized as identity operator.

  - signature: ForkTPO(itensor::SiteSet const &sites, std::vector<int> Nbath)
    desc: Constructs a ForkTPO and with *Nbath[m]* bath sites on arm *m* using the site indices from *sites*.

  - signature: ForkTPO(ForkTPO const &)
    desc: ""

  - signature: ForkTPO(ForkTPO &&)
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
permalink: /cpp-api/forktps/ForkTPO/ForkTPO-constructors/
title: forktps::ForkTPO::ForkTPO
parent: forktps::ForkTPO
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTPO.hpp
...

