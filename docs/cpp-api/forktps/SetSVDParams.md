---
# Do not edit this first section
layout: function
fancy_name: SetSVDParams
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Sets MaxDim and Cutoff of *args* to the correct values specified by the link

# List of overloads. Edit only the desc
overloads:

  - signature: |
      std::string SetSVDParams(int i, forktps::Fork const &F, enum forktps::OrthoState dir, itensor::Args &args,
                               int defaultMaxDim, double defaultCutoff)
    desc: Sets MaxDim and Cutoff of *args* to the correct values specified by the link

  - signature: std::string SetSVDParams(int i, forktps::Fork const &F, enum forktps::OrthoState dir, itensor::Args &args)
    desc: Sets MaxDim and Cutoff of *args* to the correct values specified by the link

# Long description. Any Markdown, with code, latex, multiline with |
desc: of site *i* with its neighbor in direction *dir* in geometry *F*. Also returns the itensor tags of that link used in the svd. Default values are defined in defaultMaxDim and defaultCutoff.

# Parameters of the function. Edit only the description after the :
params:
  i: __MISSING__
  F: __MISSING__
  dir: __MISSING__
  args: __MISSING__
  defaultMaxDim: __MISSING__
  defaultCutoff: __MISSING__

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
permalink: /cpp-api/forktps/SetSVDParams/
title: forktps::SetSVDParams
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/HelperFunctions.hpp
...

