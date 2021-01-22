---
# Do not edit this first section
layout: function
fancy_name: reconstructDelta
namespace: forktps::bath
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Calculates and returns the hybridization function defined by the discrete bath.

# List of overloads. Edit only the desc
overloads:

  - signature: forktps::g_w_t reconstructDelta(gf_mesh<struct triqs::gfs::refreq> const &w, double eta)
    desc: Calculates and returns the hybridization function defined by the discrete bath.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  w: gf_mesh<refreq>                Real frequency mesh used for the hybridization function.
  eta: double                Lorentzian broadening used to broaden the delta-peaks.

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
permalink: /cpp-api/forktps/bath/reconstructDelta/
title: forktps::bath::reconstructDelta
parent: forktps::bath
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
...

