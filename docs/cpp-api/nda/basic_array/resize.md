---
layout: function
short_name: resize
qualified_name: nda::basic_array::resize
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: ""
overloads:
  void resize(const std::array<long, Rank> & shape):
    desc: ""
    source: nda/basic_array.hpp
  template < Int> void resize(const Int &... extent):
    desc: ""
    source: nda/basic_array.hpp
desc: Resizes the array. Invalidates all references to the storage. Content is undefined, makes no copy of previous data.
params:
  shape: New shape of the array (lengths in each dimension)
  extent: __MISSING__
tparams:
  Int: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array::resize
permalink: /cpp-api/nda/basic_array/resize
parent: nda::basic_array
...

