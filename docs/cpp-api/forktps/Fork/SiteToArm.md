---
# Do not edit this first section
layout: function
fancy_name: SiteToArm
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the arm and index within the arm of a bath site.

# List of overloads. Edit only the desc
overloads:

  - signature: std::pair<int, int> SiteToArm(int const site) const
    desc: Returns the arm and arm-index of bath site ```site```.

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
  
  This function maps from from the way of labeling at the bottom to the one at
  the top. For example, site $$8$$ would map onto $$A_{3,2}$$ and returning the 
  pair ```<3,2>```.

# Parameters of the function. Edit only the description after the :
params:
  site: Site index.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: A pair of two ```int``` containing the index of the arm and the index within the arm.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: |
    int N = 12, NArms = 4;
    Fork f(N, NArms);
    std::cout << "Site 2 has (arm,indx): " << f.SiteToArm(2) << std::endl;   // (1,2)
    std::cout << "Site 8 has (arm,indx): " << f.SiteToArm(8) << std::endl;   // (3,2)
    std::cout << "Site 12 has (arm,indx): " << f.SiteToArm(12) << std::endl; // (4,1)
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/SiteToArm/
title: forktps::Fork::SiteToArm
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

