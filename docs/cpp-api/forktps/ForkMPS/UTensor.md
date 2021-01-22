---
# Do not edit this first section
layout: function
fancy_name: UTensor
namespace: forktps::ForkMPS
includer: forktps/solver_core.hpp

# Brief description. One line only.
brief: Returns an empty tensor with all indices of the tensor on site *site* except for the link shared with the neighbor in direction *towards*.

# List of overloads. Edit only the desc
overloads:

  - signature: itensor::ITensor UTensor(int site, enum forktps::OrthoState towards) const
    desc: Returns an empty tensor with all indices of the tensor on site *site* except for the link shared with the neighbor in direction *towards*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: The ForkTN (base class) implementation is for a ForkMPS, so the ForkMPO needs to override this.

# Parameters of the function. Edit only the description after the :
params:
  site: int                 Site index, specifying the tensor form which the indices are taken.
  towards: OrthoState                 Direction, specifying the link that is NOT included in the returned tensor.

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
permalink: /cpp-api/forktps/ForkMPS/UTensor/
title: forktps::ForkMPS::UTensor
parent: forktps::ForkMPS
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkMPS.hpp
...

