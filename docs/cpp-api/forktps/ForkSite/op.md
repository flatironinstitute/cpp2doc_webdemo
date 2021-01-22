---
# Do not edit this first section
layout: function
fancy_name: op
namespace: forktps::ForkSite
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Operators defined on each site. Here the user defines what the meaning of operator "N"

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::ITensor op(std::string const &opname, itensor::Args const &args = Args::global()) const
    desc: Operators defined on each site. Here the user defines what the meaning of operator "N"

# Long description. Any Markdown, with code, latex, multiline with |
desc: is for example.

# Parameters of the function. Edit only the description after the :
params:
  opname: std::string                     Name of the operator.
  args: "itensor::Args (default: Args::global)                     Because this is the implementation of an abstract function, args is necessary, but does nothing here."

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
permalink: /cpp-api/forktps/ForkSite/op/
title: forktps::ForkSite::op
parent: forktps::ForkSite
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/SiteSets/ForkSite.hpp
...

