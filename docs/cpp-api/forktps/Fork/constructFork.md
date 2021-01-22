---
# Do not edit this first section
layout: function
fancy_name: constructFork
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Overwrites the parameters of the Fork to *NArms* arms and a total of *N* sites.

# List of overloads. Edit only the desc
overloads:

  - signature: void constructFork(int N, int NArms)
    desc: Overwrites the parameters of the Fork to *NArms* arms and a total of *N* sites.

  - signature: void constructFork(std::vector<int> const &Nbath)
    desc: Overwrites the parameters of the Fork *NArms* arms and on each arm *m*, *Nbath[m]* bath sites. Nbath is one-indexed!

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  N: __MISSING__
  NArms: __MISSING__
  Nbath: __MISSING__

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
permalink: /cpp-api/forktps/Fork/constructFork/
title: forktps::Fork::constructFork
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

