---
# Do not edit this first section
layout: function
fancy_name: FileNameBase
namespace: forktps::GFComponent
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Base filename for time evolved states.

# List of overloads. Edit only the desc
overloads:

  - signature: std::string FileNameBase() const
    desc: Returns the base filename of this component used to store time

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Returns the base filename used to store evolved states to disk.
  While the folder in which these states are stored is defined by the
  operator, the member ```braket``` and ```imag_tevo``` influence
  this function ```FileNameBase()```.

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Base file name.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/GFComponent/FileNameBase/
title: forktps::GFComponent::FileNameBase
parent: forktps::GFComponent
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

