---
# Do not edit this first section
layout: function
fancy_name: IsImp
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns whether whether a site is an impurity site.

# List of overloads. Edit only the desc
overloads:

  - signature: bool IsImp(int const site) const
    desc: Returns whether ```site``` is an impurity site.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  site: Site to test for being an impurity site.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Returns ```true``` if ```site``` is an impurity site, ```false``` otherwise.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int N = 24, NArms = 4;
    Fork f(N, NArms);
    
    std::cout << "Is site 1 an impurity site? " << f.IsImp(1) << std::endl; // true
    std::cout << "Is site 5 an impurity site? " << f.IsImp(5) << std::endl; // false
    std::cout << "Is site 8 an impurity site? " << f.IsImp(7) << std::endl; // true
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/IsImp/
title: forktps::Fork::IsImp
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

