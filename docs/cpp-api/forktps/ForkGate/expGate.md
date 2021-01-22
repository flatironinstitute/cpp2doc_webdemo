---
# Do not edit this first section
layout: function
fancy_name: expGate
namespace: forktps::ForkGate
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Exponentiates the gate $e^{-dt*G}$ (note the minus sign) for real *dt*.

# List of overloads. Edit only the desc
overloads:

  - signature: void expGate(double dt, itensor::SiteSet const &sites)
    desc: Exponentiates the gate $e^{-dt*G}$ (note the minus sign) for real *dt*.

  - signature: void expGate(itensor::Complex dt, itensor::SiteSet const &sites)
    desc: Exponentiates the gate $e^{-dt*G}$ (note the minus sign) for Complex *dt*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  dt: __MISSING__
  sites: __MISSING__

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
permalink: /cpp-api/forktps/ForkGate/expGate/
title: forktps::ForkGate::expGate
parent: forktps::ForkGate
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Gates.hpp
...

