---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::ForkTPS
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Default constructor

# List of overloads. Edit only the desc
overloads:

  - signature: ForkTPS()
    desc: Default constructor

  - signature: ForkTPS(itensor::SiteSet const &sites, int NArms)
    desc: Constructs a forktps with *NArms* arms using the site indices from *sites*. It is initialized in a product state formed by the first site-index entry on each site.

  - signature: ForkTPS(itensor::InitState const &initState, int NArms)
    desc: Constructs a forktps with *NArms* arms and initializes it in a product state defined by *initState*.

  - signature: ForkTPS(itensor::InitState const &initState, std::vector<int> NBath)
    desc: Constructs a forktps with *Nbath[m]* bath sites on arm *m* and initializes it in a product state defined by *initState*.

  - signature: ForkTPS(itensor::SiteSet const &sites, std::vector<int> Nbath)
    desc: Constructs a forktps with *Nbath[m]* bath sites on arm *m* using the site indices from *sites*.

  - signature: ForkTPS(ForkTPS const &)
    desc: ""

  - signature: ForkTPS(ForkTPS &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  sites: itensor::SiteSet                 Defines the indices as well as the operators on each site.
  NArms: int                   Number of arms.
  initState: itensor::InitState                   Defines the basis state on each site in which the forktps is initialized (usually either empty or occupied).
  NBath: std::vector<int>                   Vector containing the number of bath sites for each arm (one-indexed, i.e, Nbath[1] is the number of bath sites of the first arm).
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
permalink: /cpp-api/forktps/ForkTPS/ForkTPS-constructors/
title: forktps::ForkTPS::ForkTPS
parent: forktps::ForkTPS
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTPS.hpp
...

