---
layout: function
short_name: range
qualified_name: nda::range::range
namespaces: [nda, range]
includer: nda/nda.hpp
brief: Default constructor.
overloads:
  range-constructors():
    desc: Default constructor.
    source: nda/layout/range.hpp
  range(long first__, long last__, long step__ = </Users/oparcollet/src/nda/c++/nda/layout/./range.hpp:59:52>) noexcept:
    desc: ""
    source: nda/layout/range.hpp
  explicit  range(long i) noexcept:
    desc: Constructor
    source: nda/layout/range.hpp
  range(const class nda::range & ):
    desc: ""
    source: nda/layout/range.hpp
  range(class nda::range && ):
    desc: ""
    source: nda/layout/range.hpp
desc: |
  Equivalent to all, takes all indices
  As in Python, range() stands for the whole set of indices in the dimension (like `:` in python) :: A(range(), 0) // take the first column of A
params:
  first__: __MISSING__
  last__: __MISSING__
  step__: __MISSING__
  i: ": last index + 1 (as in Python or STL)."
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::range::range
permalink: /cpp-api/nda/range/range-constructors
...

