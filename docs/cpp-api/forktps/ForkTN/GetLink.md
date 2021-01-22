---
# Do not edit this first section
layout: function
fancy_name: GetLink
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Returns the link index conecting the two neighboring tensors.

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::Index GetLink(int siteI, int siteJ) const
    desc: Returns the link-index conecting the two neighboring tensors on sites ```siteI``` and ```siteJ```.

  - signature: itensor::Index GetLink(int site, enum forktps::OrthoState dir) const
    desc: Returns the link-index conecting ```site``` to its neighbor in direction ```dir```

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  siteI: Site index.
  siteJ: Site index.
  site: Site index.
  dir: Direction to neighbor.

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
permalink: /cpp-api/forktps/ForkTN/GetLink/
title: forktps::ForkTN::GetLink
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

