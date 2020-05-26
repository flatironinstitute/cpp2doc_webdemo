---
layout: function
short_name: map
qualified_name: nda::map
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <class F>\nmapped<F> map(F f)":
    desc: ""
    source: nda/map.hpp
desc: |
  Maps a function onto the array (elementwise)
  
  
  nda_map.cpp
params:
  f: ": function to be mapped"
tparams:
  F: A lambda (do not use function pointers here, make a small lambda it is easier)
return_value: a lambda that accepts array(s) as argument and return a lazy call expressions.
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::map
permalink: /cpp-api/nda/map
parent: nda
...

