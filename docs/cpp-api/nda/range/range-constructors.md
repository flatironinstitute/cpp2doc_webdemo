---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: nda::range
includer: nda/nda.hpp

# Brief description. One line only.
brief: Default constructor.

# List of overloads. Edit only the desc
overloads:

  - signature: range()
    desc: Default constructor.

  - signature: range(long first__, long last__, long step__ = 1) noexcept
    desc: ""

  - signature: explicit range(long i) noexcept
    desc: Constructor

  - signature: range(range const &)
    desc: ""

  - signature: range(range &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Equivalent to all, takes all indices
  As in Python, range() stands for the whole set of indices in the dimension (like `:` in python) :: A(range(), 0) // take the first column of A

# Parameters of the function. Edit only the description after the :
params:
  first__: __MISSING__
  last__: __MISSING__
  step__: __MISSING__
  i: ": last index + 1 (as in Python or STL)."

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
permalink: /cpp-api/nda/range/range-constructors/
title: nda::range::range
parent: nda::range
source: nda/layout/range.hpp
...

