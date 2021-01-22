---
# Do not edit this first section
layout: function
fancy_name: AreNeighbors
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns whether two sites are neighbors of each other.

# List of overloads. Edit only the desc
overloads:

  - signature: bool AreNeighbors(int const siteI, int const siteJ) const
    desc: Returns whether ```siteI``` and ```siteJ``` are neighbors.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  siteI: Site index of one of the sites.
  siteJ: Site index of one of the sites.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Returns ```true``` if the two sites are neighbors, ```false``` if not.

# Code example. desc: any markdown to explain it.
example:
  desc: |
    Make a Fork with 2 arms and 6 sites that looks like:  
    1 - 2 - 3  
    |  
    4 - 5 - 6
  code: |
    int N = 6, NArms = 2;
    Fork f(N, NArms);
    std::cout << "Site 1 and Site 2 are neighbors: " << f.AreNeighbors(1, 2) << std::endl; // true
    std::cout << "Site 1 and Site 4 are neighbors: " << f.AreNeighbors(1, 4) << std::endl; // true
    std::cout << "Site 5 and Site 6 are neighbors: " << f.AreNeighbors(5, 6) << std::endl; // true
    std::cout << "Site 2 and Site 6 are neighbors: " << f.AreNeighbors(2, 6) << std::endl; // false
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/AreNeighbors/
title: forktps::Fork::AreNeighbors
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

