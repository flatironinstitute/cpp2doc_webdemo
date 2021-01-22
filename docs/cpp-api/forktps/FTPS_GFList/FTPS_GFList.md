---
# Do not edit this first section
layout: class
short_name: FTPS_GFList
qualified_name: forktps::FTPS_GFList
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct FTPS_GFList

# Brief description. One line only.
brief: A collection of ```FTPS_GF``` objects and the corresponding ```GFComponents```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Stores and gives access to a list (```std::vector```) of ```FTPS_GF``` objects that need to 
  be evaluted. Also allows get a list of unique components that need
  to be computed in order to obtain those Green functions. The uniquness
  is important, since multiple Green functions might need the same
  component and is ensured by using a ```std::set```.
  
  It emulates some of the standard library container syntax and also allows
  iteration over the list of Green functions. Its purpose is to be 
  a lightweight container with only the functionality needed for the ForkTPS 
  library.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - FTPS_GFList-constructors
  - FTPS_GFList-destructor
  - emplace_back
  - clear
  - begin
  - cbegin
  - end
  - cend
  - getComponents
  - operator=
  - gf_at

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
permalink: /cpp-api/forktps/FTPS_GFList/
title: forktps::FTPS_GFList
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
parent: forktps
has_children: true
...

