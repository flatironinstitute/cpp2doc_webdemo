---
# Do not edit this first section
layout: function
fancy_name: solve
namespace: forktps::solver_core
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Solve method that performs FORKTPS calculation

# List of overloads. Edit only the desc
overloads:

  - signature: void solve(forktps::solve_params_t const &solve_params)
    desc: Solve method that performs FORKTPS calculation

  - signature: void solve(forktps::solve_params_t const &sp, forktps::ForkTPS const &GS)
    desc: Solve with user defined groundstate *GS*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  solve_params: __MISSING__
  sp: __MISSING__
  GS: __MISSING__

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
permalink: /cpp-api/forktps/solver_core/solve/
title: forktps::solver_core::solve
parent: forktps::solver_core
source: ""
...

