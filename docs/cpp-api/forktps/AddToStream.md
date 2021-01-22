---
# Do not edit this first section
layout: function
fancy_name: AddToStream
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: single parameter version of AddToStream () -> see c++ vargs

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, typename Rest>
      void AddToStream(std::stringstream &Stream, T t)
    desc: single parameter version of AddToStream () -> see c++ vargs

  - signature: |
      template <typename T, typename Rest>
      void AddToStream(std::stringstream &Stream, T t, Rest... rest)
    desc: Function using vargs to combine a variable number of function arguments into

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  Stream: __MISSING__
  t: __MISSING__
  rest: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__
  Rest: __MISSING__

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
permalink: /cpp-api/forktps/AddToStream/
title: forktps::AddToStream
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

