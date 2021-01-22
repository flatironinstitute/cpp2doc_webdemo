---
# Do not edit this first section
layout: function
fancy_name: emplace_back
namespace: forktps::FTPS_GFList
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Add a new Green function to the end of the list.

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <class Args>
      void emplace_back(Args &&...args)
    desc: Construct a new ```FTPS_GF``` object in place and appends it to the list.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  args: Arguments forwarded to the constructor of ```FTPS_GF```.

# Template parameters of the function. Edit only the description after the :
tparams:
  Args: __MISSING__

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
permalink: /cpp-api/forktps/FTPS_GFList/emplace_back/
title: forktps::FTPS_GFList::emplace_back
parent: forktps::FTPS_GFList
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

