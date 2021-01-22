---
# Do not edit this first section
layout: function
fancy_name: SetArgs
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Adds relevant parameters from *p* to the itensor Args object, including truncation parameters and number of sweeps.

# List of overloads. Edit only the desc
overloads:

  - signature: void SetArgs(itensor::Args &args, forktps::DMRG_params const &p)
    desc: Adds relevant parameters from *p* to the itensor Args object, including truncation parameters and number of sweeps.

  - signature: void SetArgs(itensor::Args &args, forktps::Tevo_params const &p)
    desc: Adds relevant parameters from *p* to the itensor Args object, including truncation parameters and TDVP method if applicabel.

  - signature: void SetArgs(itensor::Args &args, forktps::tn_approx const &p)
    desc: Adds truncation parameters from *p* to the itensor Args object.

  - signature: void SetArgs(itensor::Args &args, forktps::krylov_params const &p)
    desc: Adds krylov approximation parameters from *p* to the itensor Args object.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  args: __MISSING__
  p: __MISSING__

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
permalink: /cpp-api/forktps/SetArgs/
title: forktps::SetArgs
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/setargs.hpp
...

