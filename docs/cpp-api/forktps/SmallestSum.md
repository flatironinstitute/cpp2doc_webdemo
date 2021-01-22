---
# Do not edit this first section
layout: function
fancy_name: SmallestSum
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns a pair of integers *a* and *b* with $a + b = s$, such that max(a,b) is as small as possible.

# List of overloads. Edit only the desc
overloads:

  - signature: std::tuple<int, int> SmallestSum(int s)
    desc: Returns a pair of integers *a* and *b* with $a + b = s$, such that max(a,b) is as small as possible.

# Long description. Any Markdown, with code, latex, multiline with |
desc: Hence, approximately a = b = s/2 modulo integer arithmetic.

# Parameters of the function. Edit only the description after the :
params:
  s: __MISSING__

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
permalink: /cpp-api/forktps/SmallestSum/
title: forktps::SmallestSum
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

