---
# Do not edit this first section
layout: function
fancy_name: getComponents
namespace: forktps::FTPS_GFList
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns list of all unique components needed for every Green function in the list.

# List of overloads. Edit only the desc
overloads:

  - signature: std::set<GFComponent> getComponents()
    desc: Unique list of components.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Since more than one Green function might need the same component, use a 
  ```std::set``` which only adds entries if they do not yet exist.

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: List of unique components.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/FTPS_GFList/getComponents/
title: forktps::FTPS_GFList::getComponents
parent: forktps::FTPS_GFList
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

