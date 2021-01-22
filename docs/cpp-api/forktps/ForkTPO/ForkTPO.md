---
# Do not edit this first section
layout: class
short_name: ForkTPO
qualified_name: forktps::ForkTPO
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class ForkTPO

# Brief description. One line only.
brief: Implementation of the Fork class used for the management of indices for the forktps. A Fork consists of several impurity sites with an arm attached to each

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  impurity. Each arm represents a NBath bath sites. The impurity with its arm makes up a chain. Each chain is then connected to the next (and or previous) chain only via connections over the impurity.
  A fork with 4 impurities, therefore 4 arms, and 6 sites per arm looks like: O -- o -- o -- o -- o -- o -- o | O -- o -- o -- o -- o -- o -- o | O -- o -- o -- o -- o -- o -- o | O -- o -- o -- o -- o -- o -- o
  We use two ways of labeling sites. The first is to just enumerate them: 1 -- 2 -- 3 -- 4 -- 5 -- 6 -- 7 | 8 -- 9 -- 10-- 11-- 12-- 13-- 14 | 15-- 16-- 17-- 18-- 19-- 20-- 21 | 22-- 23-- 24-- 25-- 26-- 27-- 28
  The second way is to label each impurity by a number and each bath site by its arm and an additional bath index. It is convention to start counting the sites of each arm starting from the right, i.e.: away from the impurity: I1 -- A1,6 -- A1,5 -- A1,4 -- A1,3 -- A1,2 -- A1,1 | I2 -- A2,6 -- A2,5 -- A2,4 -- A2,3 -- A2,2 -- A2,1 | I3 -- A3,6 -- A3,5 -- A3,4 -- A3,3 -- A3,2 -- A3,1 | I4 -- A4,6 -- A4,5 -- A4,4 -- A4,3 -- A4,2 -- A4,1
  Ai,j means the jth site (counting from the rightmost site) on arm i. The purpose of the fork class is mostly to translate between these 2 ways of labeling sites.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - ForkTPO-constructors
  - ForkTPO-destructor
  - UTensor
  - HermitianConjugate
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
permalink: /cpp-api/forktps/ForkTPO/
title: forktps::ForkTPO
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTPO.hpp
parent: forktps
has_children: true
...

