---
# Do not edit this first section
layout: function
fancy_name: GetArm
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the arm on which a site is located.

# List of overloads. Edit only the desc
overloads:

  - signature: int GetArm(int const site) const
    desc: Returns the arm of ```site``` (can also be an impurity).

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  site: Site index.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Arm index on which the site is located.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int N = 24, NArms = 4;
    Fork f(N, NArms);
    std::cout << "Site 1 is on arm " << f.GetArm(1) << std::endl;   // 1
    std::cout << "Site 8 is on arm " << f.GetArm(8) << std::endl;   // 2
    std::cout << "Site 17 is on arm " << f.GetArm(17) << std::endl; // 3
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/GetArm/
title: forktps::Fork::GetArm
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

