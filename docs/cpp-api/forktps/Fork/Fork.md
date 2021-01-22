---
# Do not edit this first section
layout: class
short_name: Fork
qualified_name: forktps::Fork
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class Fork

# Brief description. One line only.
brief: Implementation of the Fork class used for the management of indices for the forktps. A Fork consists of several impurity sites with an arm attached to each

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  The purpose of the class ```Fork``` is to manage the geometry of the tensor network. 
  A Fork is made up of several impurity sites each of which is connected to the 
  impurities above and below (except the first and last impurity). Additionally,
  to each impurity there is an arm attached to it which consists of several 
  bath sites. The impurity is connected only to the first site of the arm.
    
  A ```Fork``` with 4 impurities, therefore 4 arms, and 2 bath sites per arm looks like (big O are impurity sites, small o are bath sites): 
  
  O -- o -- o  
  |  
  O -- o -- o  
  |  
  O -- o -- o   
  |  
  O -- o -- o  
    
  There are two ways of labeling sites. The first is to just enumerate them:  
  
  $$1$$  -- $$2$$  -- $$3$$  
  |   
  $$4$$  -- $$5$$  -- $$6$$  
  |   
  $$7$$  -- $$8$$  -- $$9$$  
  |   
  $$10$$ -- $$11$$ -- $$12$$  
  
  The second way is to simply enumerate the impurities and to label each bath site by its arm and an additional bath index. It is convention to start counting the sites of each arm starting from the right, i.e.: away from the impurity:  
  
  $$I_1$$ -- $$A_{1,2}$$ -- $$A_{1,1}$$  
  |  
  $$I_2$$ -- $$A_{2,2}$$ -- $$A_{2,1}$$  
  |  
  $$I_3$$ -- $$A_{3,2}$$ -- $$A_{3,1}$$  
  |  
  $$I_4$$ -- $$A_{4,2}$$ -- $$A_{4,1}$$  
  
  where $$A_{i,j}$$ is the $$j$$-th site on arm $$i$$ ($$j$$ counts from the right). 
  One of the purposes of the Fork class is to translate between these two ways 
  of enumerating sites.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - Fork-constructors
  - Fork-destructor
  - constructFork
  - N
  - NArms
  - NBath
  - NBathVec
  - IsImp
  - ImpSite
  - GetArm
  - ImpIndx
  - ArmToSite
  - SiteToArm
  - HasNeighbor
  - AreNeighbors
  - Neighbor
  - read
  - write
  - operator=

# A list of non_member_functions
non_member_functions: []

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/
title: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
parent: forktps
has_children: true
...

