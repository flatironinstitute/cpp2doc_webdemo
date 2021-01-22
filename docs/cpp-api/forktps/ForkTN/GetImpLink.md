---
# Do not edit this first section
layout: function
fancy_name: GetImpLink
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the link index of an impurity tensor.

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::Index GetImpLink(int indx, enum forktps::OrthoState dir) const
    desc: Returns the link index between the impurity at index ```indx``` and its neighbor in direction ```dir```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  indx: Impurity index.
  dir: |
    Determines which link is returned. ```dir = Rightwards```, returns the 
    link to the bath site attached to this impurity. 
    ```dir = Downwards``` (```dir = Upwards```) returns the link to the impurity below (above).

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Link index.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ForkTN/GetImpLink/
title: forktps::ForkTN::GetImpLink
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

