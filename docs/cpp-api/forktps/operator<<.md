---
# Do not edit this first section
layout: function
fancy_name: operator<<
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Write Bandwidths to stream, since this is a standard container this might be unsafe.

# List of overloads. Edit only the desc
overloads:

  - signature: std::ostream &operator<<(std::ostream &out, forktps::BandWidths const &bw)
    desc: Write Bandwidths to stream, since this is a standard container this might be unsafe.

  - signature: |
      template <class T>
      std::ostream &operator<<(std::ostream &os, std::vector<T> const &vec)
    desc: Defines the stream operator

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  out: __MISSING__
  bw: __MISSING__
  os: __MISSING__
  vec: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__

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
permalink: /cpp-api/forktps/operator<</
title: forktps::operator<<
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

