---
# Do not edit this first section
layout: function
fancy_name: operator<
namespace: forktps::GFComponent
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: "```<``` operator to compare components."

# List of overloads. Edit only the desc
overloads:

  - signature: bool operator<(GFComponent const &other) const
    desc: "```<``` operator to compare components."

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Since the operator of a component is currently only a monomial, 
  it can happen that two different Green's functions need to compute 
  the same component. To avoid uneccessary time evolutions, all components
  needed are stored in an ```std::set``` container which guarantees uniqueness
  but needs the operator ```<``` to make sure of that.

# Parameters of the function. Edit only the description after the :
params:
  other: Component to compare to.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: Result of comparison with operator ```<```.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/GFComponent/operator</
title: forktps::GFComponent::operator<
parent: forktps::GFComponent
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

