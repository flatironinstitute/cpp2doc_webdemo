---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: nda::array_iterator
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: array_iterator()
    desc: ""

  - signature: array_iterator(array_iterator const &)
    desc: ""

  - signature: array_iterator(std::array<long, Rank> const &lengths, std::array<long, Rank> const &strides, T *start, bool at_end)
    desc: ""

  - signature: array_iterator<1, type - parameter - 0 - 0, type - parameter - 0 - 1>()
    desc: ""

  - signature: array_iterator<1, type - parameter - 0 - 0, type - parameter - 0 - 1>(array_iterator const &)
    desc: ""

  - signature: |
      array_iterator<1, type - parameter - 0 - 0, type - parameter - 0 - 1>(std::array<long, 1> const &lengths,
                                                                            std::array<long, 1> const &strides, T *start,
                                                                            bool at_end)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  lengths: __MISSING__
  strides: __MISSING__
  start: __MISSING__
  at_end: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/array_iterator/array_iterator-constructors/
title: nda::array_iterator<Rank, T, Pointer>::array_iterator
parent: nda::array_iterator
source: nda/iterators.hpp
...

