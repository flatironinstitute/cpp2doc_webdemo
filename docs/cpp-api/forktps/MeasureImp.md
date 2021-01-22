---
# Do not edit this first section
layout: function
fancy_name: MeasureImp
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Measures a set of operators acting on the impurity defined by *Ops* with state

# List of overloads. Edit only the desc
overloads:

  - signature: double MeasureImp(forktps::ForkTPS &psi, std::vector<std::string> Ops)
    desc: Measures a set of operators acting on the impurity defined by *Ops* with state

  - signature: itensor::Complex MeasureImp(forktps::ForkTPS const &bra, std::vector<std::string> Ops, forktps::ForkTPS const &ket)
    desc: Calculates the expectation value $

# Long description. Any Markdown, with code, latex, multiline with |
desc: "*psi*. *Ops* contains a string for each impurity that defines the local operator of this site and it is zero-indexed. This means also identity operators have to specified. For example to measure the density correlation between orbital A-up and B-up in a two-orbital problem: *Ops = {\"N\",\"Id\",\"N\",\"Id\"}*."

# Parameters of the function. Edit only the description after the :
params:
  psi: ForkTPS                         State to measure.
  Ops: std::vector<std::string>                         Vector containing the names of the operators on each impurity site as defined in the SiteSet.
  bra: ForkTPS                         Bra-state in measurement.
  ket: ForkTPS                         Ket-state in measurement.

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
permalink: /cpp-api/forktps/MeasureImp/
title: forktps::MeasureImp
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkCalculus.hpp
...

