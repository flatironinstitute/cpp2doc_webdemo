---
# Do not edit this first section
layout: function
fancy_name: V
namespace: forktps::bath
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Access diagonal hopping amplitude, equivalent to *V(bName, bIndx, bIndx, k)*.

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::Complex V(forktps::triqs_indx indx, int k) const
    desc: Access diagonal hopping amplitude, equivalent to *V(bName, bIndx, bIndx, k)*.

  - signature: itensor::Complex V(forktps::triqs_indx indxI, forktps::triqs_indx indxJ, int k) const
    desc: Access the hopping amplitude between a bath site and an impurity site.

# Long description. Any Markdown, with code, latex, multiline with |
desc: The returned value is the amplitude of the hopping onto the impurity ($c^/dagger$ operator on impurity), while the amplitude onto the bath site is the complex conjugate of this value.

# Parameters of the function. Edit only the description after the :
params:
  indx: triqs_indx                    Block name and index.
  k: int                    Bath index.
  indxI: triqs_indx                    Block name and index.
  indxJ: triqs_indx                    Block name and index.

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
permalink: /cpp-api/forktps/bath/V/
title: forktps::bath::V
parent: forktps::bath
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

