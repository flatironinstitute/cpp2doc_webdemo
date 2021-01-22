---
# Do not edit this first section
layout: class
short_name: Arm
qualified_name: forktps::Arm
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct Arm

# Brief description. One line only.
brief: "Represents an arm of a forktps or forktpo, i.e.: a vector containing all bath"

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Represents an arm of a tensor network in fork geometry. It stores
  all the tensors of the bath sites as well as information about 
  the orthogonality conditions the arm currently has. Arms are used for example
  in the class ForkTN as well as in the local operators ForkLocalOp. None of the 
  functions in this class actually does any tensor decompostions. They only set 
  the variables describing the orthogonality condition.
  
  The definition of tensor orthogonality is the following: 
  
  A (bath) tensor $$A^{s}_{l,r}$$ with link $$l$$ connecting to the tensor to its left
  and $$r$$ correspondingly to the tensor to its right is said to be orthogonalized
  ```Leftwards``` if:
  
  $$\sum_{s,r} (A^{s}_{l,r})^* A^{s}_{l',r} = \delta_{l,l'}$$
  
  Similarly, this tensor is said to be orthogonalized ```Rightwards``` if:
  
  $$\sum_{s,l} (A^{s}_{l,r})^* A^{s}_{l,r'} = \delta_{r,r'}$$
  
  We also us the phrase of a tensor being orthogonalized towards some other site.
  By that we mean that it is orthogonalized in the direction one has to move
  to get to that site. For example the meaning of "site 4 is orthogonalized towards site 1"
  is that it is orthogonalized ```Leftwards```, since site 1 is to the left of site 4.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - Arm-constructors
  - Arm-destructor
  - CompOrtho
  - ShiftOrtho
  - TouchOrtho
  - SSOrtho
  - TSOrtho
  - LinkOrtho
  - ForgetOrtho
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  isOrtho:
    type: bool
    desc: If true, all tensors are are orthgonalized towards the impurity. Otherwise orthogonality can by anything.
  inner_ortho_lim:
    type: int
    desc: |
      Every tensor including the one with index ```inner_ortho_lim``` is 
      orthogonalized towards the end of the Arm (towards the site furthest 
      away from the impurity).
  outer_ortho_lim:
    type: int
    desc: |
      Every tensor including the one with index ```outer_ortho_lim``` is 
      orthogonalized towards the impurity.
  NBath:
    type: int
    desc: Number of bath sites.
  A_:
    type: std::vector<ITensor>
    desc: The actual tensors (one-indexed).

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Arm/
title: forktps::Arm
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Arm.hpp
parent: forktps
has_children: true
...

