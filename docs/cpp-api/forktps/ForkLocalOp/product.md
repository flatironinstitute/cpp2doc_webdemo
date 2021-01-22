---
# Do not edit this first section
layout: function
fancy_name: product
namespace: forktps::ForkLocalOp
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Implementation of the matrix-vector product *res* = Heff *x*

# List of overloads. Edit only the desc
overloads:

  - signature: void product(itensor::ITensor const &x, itensor::ITensor &res) const
    desc: Implementation of the matrix-vector product *res* = Heff *x*

  - signature: void product(itensor::ITensor const &Ai, itensor::ITensor const &Aj, itensor::ITensor &res) const
    desc: Implementation of the matrix-vector product *res* = Heff Ai*Aj

# Long description. Any Markdown, with code, latex, multiline with |
desc: used in sparse eigenvalue solvers like lanzcos and davidson.

# Parameters of the function. Edit only the description after the :
params:
  x: ITensor              Tensor multiplied by $H_{eff}$.
  res: ITensor              Resulting tensor.
  Ai: ITensor              Tensor multiplied by $H_{eff}$.
  Aj: ITensor              Tensor multiplied by $H_{eff}$.

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
permalink: /cpp-api/forktps/ForkLocalOp/product/
title: forktps::ForkLocalOp::product
parent: forktps::ForkLocalOp
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkLocalOp.hpp
...

