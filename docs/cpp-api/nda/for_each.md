---
# Do not edit this first section
layout: function
fancy_name: for_each
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: A loop in C order

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename F, auto R>
      void for_each(std::array<long, R> const &idx_lengths, F &&f)
    desc: A loop in C order

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  idx_lengths: __MISSING__
  f: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  F: __MISSING__
  R: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/for_each
title: nda::for_each
parent: nda
source: ""
...

