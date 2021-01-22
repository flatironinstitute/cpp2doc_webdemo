---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::Fork
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Constructors.

# List of overloads. Edit only the desc
overloads:

  - signature: Fork()
    desc: Default constructor.

  - signature: Fork(int N, int NArms)
    desc: |
      Construct a Fork with ```NArms``` arms and a total of ```N``` such 
      that each arm has the same number of bath sites. Checks that ```N%NArms == 0```.

  - signature: Fork(std::vector<int> const &Nbath)
    desc: |
      Constructor with given bath size for each arm allowing for arms of 
      different lengths. ```Nbath[m]``` is the number of bath sites on arm 
      ```m```. Note the bath size of the first arm is ```Nbath[1]```, i.e. 
      it is one-indexed.

  - signature: Fork(Fork const &)
    desc: ""

  - signature: Fork(Fork &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  N: Total number of sites.
  NArms: Number of arms.
  Nbath: One-indexed vector of bath sizes.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/Fork/Fork-constructors/
title: forktps::Fork::Fork
parent: forktps::Fork
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Fork.hpp
...

