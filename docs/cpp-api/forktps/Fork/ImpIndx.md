---
# Do not edit this first section
layout: function
fancy_name: ImpIndx
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the index of an impurity site.

# List of overloads. Edit only the desc
overloads:

  - signature: int ImpIndx(int const site) const
    desc: Returns the index of the impurity site ```site``` with the same result as GetArm(site). This function though throws an error if ```site``` is not an impurity.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  site: Site index, must be an impurity site.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Impurity index.

# Code example. desc: any markdown to explain it.
example:
  desc: "A fork with 24 sites and 4 arms has impurities on sites 1, 7, 13, 19:"
  code: |
    int N = 24, NArms = 4;
    Fork f(N, NArms);
    std::cout << "Index of impurity at site 1 is: " << f.ImpIndx(1) << std::endl;   // 1
    std::cout << "Index of impurity at site 7 is: " << f.ImpIndx(7) << std::endl;   // 2
    std::cout << "Index of impurity at site 13 is: " << f.ImpIndx(13) << std::endl; // 3
    std::cout << "Index of impurity at site 19 is: " << f.ImpIndx(19) << std::endl; // 4
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/ImpIndx/
title: forktps::Fork::ImpIndx
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

