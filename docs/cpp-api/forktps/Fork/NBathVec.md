---
# Do not edit this first section
layout: function
fancy_name: NBathVec
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns a vector containing the number of bath sites for each arm.

# List of overloads. Edit only the desc
overloads:

  - signature: std::vector<int> NBathVec() const
    desc: Returns a vector containing the number of bath sites for each arm. The first bath size is given by ```NBathVec()[1]```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Vector containing the number of bath sites.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int NArms = 4;
    std::vector<int> Nbath{0, 3, 6, 2, 9}; // Nbath is one indexed
    Fork f(Nbath);
    
    for (auto i : itensor::range1(NArms)) {
      std::cout << "Bath size on arm " << i << ": " << f.NBathVec().at(i) << std::endl; // 3, 6, 2, 9
    }
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/NBathVec/
title: forktps::Fork::NBathVec
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

