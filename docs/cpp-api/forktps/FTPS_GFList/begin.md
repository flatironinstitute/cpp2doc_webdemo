---
# Do not edit this first section
layout: function
fancy_name: begin
namespace: forktps::FTPS_GFList
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Iterator to first entry of Green function list."

# List of overloads. Edit only the desc
overloads:

  - signature: |
      __gnu_cxx::__normal_iterator<struct forktps::FTPS_GF *,
                                   class std::vector<struct forktps::FTPS_GF, class std::allocator<struct forktps::FTPS_GF>>>
      begin() noexcept
    desc: Non-constant Iterator.

  - signature: |
      __gnu_cxx::__normal_iterator<const struct forktps::FTPS_GF *,
                                   class std::vector<struct forktps::FTPS_GF, class std::allocator<struct forktps::FTPS_GF>>>
      begin() noexcept const
    desc: Constant Iterator.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Iterator to first entry of Green function list.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/FTPS_GFList/begin/
title: forktps::FTPS_GFList::begin
parent: forktps::FTPS_GFList
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

