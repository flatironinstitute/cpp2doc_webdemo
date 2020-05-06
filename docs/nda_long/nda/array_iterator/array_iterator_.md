---
layout: function
short_name: array_iterator
qualified_name: nda::array_iterator::array_iterator<Rank, T, Pointer>
namespaces: [nda, array_iterator]
includer: nda/nda.hpp
brief: ""
overloads:
  void nda::array_iterator::array_iterator<Rank, T, Pointer>():
    desc: ""
    source: nda/iterators.hpp
  void nda::array_iterator::array_iterator<Rank, T, Pointer>(const array_iterator<Rank, T, Pointer> & ):
    desc: ""
    source: nda/iterators.hpp
  void nda::array_iterator::array_iterator<Rank, T, Pointer>(const std::array<long, Rank> & lengths, const std::array<long, Rank> & strides, T * start, _Bool at_end):
    desc: ""
    source: nda/iterators.hpp
desc: ""
params:
  "": __MISSING__
  lengths: __MISSING__
  strides: __MISSING__
  start: __MISSING__
  at_end: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

