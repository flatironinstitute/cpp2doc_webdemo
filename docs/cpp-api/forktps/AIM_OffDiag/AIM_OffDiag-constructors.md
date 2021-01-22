---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::AIM_OffDiag
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      AIM_OffDiag(itensor::SiteSet const &sites, forktps::Dmat const &EpsK, forktps::Cmat const &VK, double U, double Uprime,
                  double J, int NArms, itensor::Args const &args)
    desc: ""

  - signature: |
      AIM_OffDiag(itensor::SiteSet const &sites, forktps::bath bath, forktps::hloc h_loc, double U, double Uprime, double J,
                  int NArms, itensor::Args const &args)
    desc: ""

  - signature: |
      AIM_OffDiag(itensor::SiteSet const &sites, forktps::bath bath, forktps::hloc h_loc, forktps::H_int hint,
                  itensor::Args const &args = Args::global())
    desc: ""

  - signature: AIM_OffDiag(AIM_OffDiag const &)
    desc: ""

  - signature: AIM_OffDiag(AIM_OffDiag &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  sites: __MISSING__
  EpsK: __MISSING__
  VK: __MISSING__
  U: __MISSING__
  Uprime: __MISSING__
  J: __MISSING__
  NArms: __MISSING__
  args: __MISSING__
  bath: __MISSING__
  h_loc: __MISSING__
  hint: __MISSING__

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
permalink: /cpp-api/forktps/AIM_OffDiag/AIM_OffDiag-constructors/
title: forktps::AIM_OffDiag::AIM_OffDiag
parent: forktps::AIM_OffDiag
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/FTPO/AIM_OffDiag.hpp
...

