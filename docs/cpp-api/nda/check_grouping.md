---
# Do not edit this first section
layout: function
fancy_name: check_grouping
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <size_t R, size_t Rs>
      bool check_grouping(std::array<int, R> const &stride_order, const std::array<int, Rs> &... grps)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  stride_order: __MISSING__
  grps: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  R: __MISSING__
  Rs: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/check_grouping/
title: nda::check_grouping
parent: nda
source: nda/group_indices.hpp
...

