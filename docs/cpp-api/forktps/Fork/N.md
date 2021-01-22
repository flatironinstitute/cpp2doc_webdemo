---
# Do not edit this first section
layout: function
fancy_name: N
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the total number of sites.

# List of overloads. Edit only the desc
overloads:

  - signature: int N() const
    desc: Returns the total number of sites.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Total number of sites.

# Code example. desc: any markdown to explain it.
example:
  desc: 
  code: |
    int N = 24, NArms = 4;
    Fork f(N, NArms);
    std::cout << "Total number of sites: " << f.N() << std::endl; // 24
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/N/
title: forktps::Fork::N
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

