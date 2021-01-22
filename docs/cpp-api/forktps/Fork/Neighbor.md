---
# Do not edit this first section
layout: function
fancy_name: Neighbor
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the neighbor of a site.

# List of overloads. Edit only the desc
overloads:

  - signature: int Neighbor(int const site, enum forktps::OrthoState dir) const
    desc: Returns the neighbor of ```site``` in direction ```dir```. Throws an error if it has no neighbor in that direction.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  site: Site index.
  dir: Direction of the neighbor.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Site index of the neighbor.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int N = 12, NArms = 4;
    Fork f(N, NArms);
    std::cout << "The neighbor of site 1 in direction down  is site " << f.Neighbor(1, Downwards) << std::endl;  // 4
    std::cout << "The neighbor of site 1 in direction right is site " << f.Neighbor(1, Rightwards) << std::endl; // 2
    std::cout << "The neighbor of site 4 in direction up    is site " << f.Neighbor(4, Upwards) << std::endl;    // 1
    std::cout << "The neighbor of site 8 in direction left  is site " << f.Neighbor(8, Leftwards) << std::endl;  // 7
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/Neighbor/
title: forktps::Fork::Neighbor
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

