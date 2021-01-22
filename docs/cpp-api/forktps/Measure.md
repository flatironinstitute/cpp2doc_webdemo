---
# Do not edit this first section
layout: function
fancy_name: Measure
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Measures the local observable with name *OpName* on site *i* with state *psi*

# List of overloads. Edit only the desc
overloads:

  - signature: double Measure(forktps::ForkTPS &psi, std::string OpName, int i)
    desc: Measures the local observable with name *OpName* on site *i* with state *psi*

# Long description. Any Markdown, with code, latex, multiline with |
desc: and returns the result.

# Parameters of the function. Edit only the description after the :
params:
  psi: ForkTPS                         $| x $-state in $| res  = K | x $
  OpName: std::string                         Name of the operator to apply as defined in the SiteSet.
  i: int                         Site where operator *OpName* acts.

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
permalink: /cpp-api/forktps/Measure/
title: forktps::Measure
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

