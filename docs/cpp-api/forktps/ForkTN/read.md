---
# Do not edit this first section
layout: function
fancy_name: read
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Reads the ```ForkTN``` from stream ```s``` using site-set ```sites```.

# List of overloads. Edit only the desc
overloads:

  - signature: void read(std::istream &s, itensor::SiteSet const &sites)
    desc: Reads the ```ForkTN``` from stream ```s``` using site-set ```sites```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: Note that ```sites``` needs to be the exact same SiteSet with which the TN was written.

# Parameters of the function. Edit only the description after the :
params:
  s: Stream to read from.
  sites: SiteSet which contains information about the physical degrees of freedom.

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
permalink: /cpp-api/forktps/ForkTN/read/
title: forktps::ForkTN::read
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

