---
# Do not edit this first section
layout: function
fancy_name: ImpSite
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the site index of an impurity.

# List of overloads. Edit only the desc
overloads:

  - signature: int ImpSite(int const arm) const
    desc: Returns the site index of the impurity on arm ```arm```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  arm: Arm index starting at 1 for the site index of the first impurity.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Impurity site index.

# Code example. desc: any markdown to explain it.
example:
  desc: A fork with 24 sites and 4 arms has impurities on sites 1, 7, 13, 19.
  code: |
    int N = 24, NArms = 4;
    Fork f(N, NArms);
    std::cout << "First impurity is on site " << f.ImpSite(1) << std::endl;  // 1 first impurity is always on site 1
    std::cout << "Second impurity is on site " << f.ImpSite(2) << std::endl; // 7
    std::cout << "Third impurity is on site " << f.ImpSite(3) << std::endl;  // 13
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/ImpSite/
title: forktps::Fork::ImpSite
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

