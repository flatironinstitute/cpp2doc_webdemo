---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::solver_core
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Construct a FORKTPS solver

# List of overloads. Edit only the desc
overloads:

  - signature: solver_core(forktps::constr_params_t const &constr_params_)
    desc: Construct a FORKTPS solver

  - signature: solver_core(solver_core const &)
    desc: Delete assignement operator because of const members

  - signature: solver_core(solver_core &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  constr_params_: __MISSING__

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
permalink: /cpp-api/forktps/solver_core/solver_core-constructors/
title: forktps::solver_core::solver_core
parent: forktps::solver_core
source: ""
...

