---
# Do not edit this first section
layout: function
fancy_name: HasNeighbor
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns whether a site has a neighbor in some direction or not.

# List of overloads. Edit only the desc
overloads:

  - signature: bool HasNeighbor(int const site, enum forktps::OrthoState const dir) const
    desc: Returns whether ```site``` has a neighbor in direction ```dir``` or not.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  site: Site index to check for a neighbor.
  dir: Direction to check for a neighbor.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Returns ```true``` if there is a neighbor of ```site``` in direction ```dir```, otherwise returns false.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int N = 12, NArms = 4;
    Fork f(N, NArms);
    std::cout << "Site 1 has a neighbor in direction up? " << f.HasNeighbor(1, Upwards) << std::endl;       // false
    std::cout << "Site 1 has a neighbor in direction down? " << f.HasNeighbor(1, Downwards) << std::endl;   // true
    std::cout << "Site 1 has a neighbor in direction right? " << f.HasNeighbor(1, Rightwards) << std::endl; // true
    std::cout << "Site 3 has a neighbor in direction right? " << f.HasNeighbor(3, Rightwards) << std::endl; // false
    std::cout << "Site 3 has a neighbor in direction left? " << f.HasNeighbor(3, Leftwards) << std::endl;   // true
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/HasNeighbor/
title: forktps::Fork::HasNeighbor
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

