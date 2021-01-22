---
# Do not edit this first section
layout: function
fancy_name: NBath
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the number of bath sites on arm *arm*.

# List of overloads. Edit only the desc
overloads:

  - signature: int NBath(int arm = 1) const
    desc: Returns the number of bath sites on arm ```arm```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  arm: Arm index (starting at 1).

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Number of bath sites.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int N = 24, NArms = 4;
    Fork f(N, NArms);
    std::cout << "Bath size on arm 1: " << f.NBath() << std::endl;  // 5
    std::cout << "Bath size on arm 2: " << f.NBath(2) << std::endl; // 5
    
    std::vector<int> Nbath{0, 3, 6, 2, 9}; // Nbath is-one indexed
    Fork f2(Nbath);
    std::cout << "Bath size on arm 1: " << f2.NBath(1) << std::endl; // 3
    std::cout << "Bath size on arm 4: " << f2.NBath(4) << std::endl; // 9
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/NBath/
title: forktps::Fork::NBath
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

