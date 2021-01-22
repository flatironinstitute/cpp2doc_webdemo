---
# Do not edit this first section
layout: function
fancy_name: gf_at
namespace: forktps::FTPS_GFList
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Access to Green function data.

# List of overloads. Edit only the desc
overloads:

  - signature: triqs::gfs::gf<struct triqs::gfs::retime, struct triqs::gfs::scalar_valued> &gf_at(int indx)
    desc: Returns a reference (write access) to the ```triqs::gf::gf``` object in the list at index ```indx```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  indx: Index in the list of Green functions.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Reference to ```triqs::gf::gf```.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/FTPS_GFList/gf_at/
title: forktps::FTPS_GFList::gf_at
parent: forktps::FTPS_GFList
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

