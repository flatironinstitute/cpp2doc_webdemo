---
# Do not edit this first section
layout: function
fancy_name: ArmToSite
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the site index of a bath site.

# List of overloads. Edit only the desc
overloads:

  - signature: int ArmToSite(int const arm, int const indx) const
    desc: Returns the site index of the bath site on arm ```arm``` with index ```indx```

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Bath sites of a fork can be labeled in two ways.
  One is to label an arm and and an index counting from the outside of each arm
  (a ```Fork``` with 4 arms and two bath sites each arm):
  
  $$I_1$$ -- $$A_{1,2}$$ -- $$A_{1,1}$$  
  |  
  $$I_2$$ -- $$A_{2,2}$$ -- $$A_{2,1}$$  
  |  
  $$I_3$$ -- $$A_{3,2}$$ -- $$A_{3,1}$$  
  |  
  $$I_4$$ -- $$A_{4,2}$$ -- $$A_{4,1}$$
  
  The other is to just enumerate sites:
  
  $$1$$  -- $$2$$  -- $$3$$  
  |   
  $$4$$  -- $$5$$  -- $$6$$  
  |   
  $$7$$  -- $$8$$  -- $$9$$  
  |   
  $$10$$ -- $$11$$ -- $$12$$.
  
  This function maps from from the way of labeling at the top to the one at
  the bottom. For example, $$A_{3,2}$$ would map onto $$8$$.

# Parameters of the function. Edit only the description after the :
params:
  arm: Arm index.
  indx: Index within the arm.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Site index of the site given by ```arm``` and ```indx```.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int N = 12, NArms = 4;
    Fork f(N, NArms);
    std::cout << "The bath site on arm 1 and k-index 2 is " << f.ArmToSite(1, 2) << std::endl; // 2
    std::cout << "The bath site on arm 3 and k-index 2 is " << f.ArmToSite(3, 2) << std::endl; // 8
    std::cout << "The bath site on arm 4 and k-index 1 is " << f.ArmToSite(4, 1) << std::endl; // 12
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/ArmToSite/
title: forktps::Fork::ArmToSite
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

