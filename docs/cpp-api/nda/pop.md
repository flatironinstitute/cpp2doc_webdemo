---
layout: function
short_name: pop
qualified_name: nda::pop
namespaces: [nda]
includer: nda/nda.hpp
brief: Make a new std::array by removing one element at the end
overloads:
  "template <typename T, size_t R>\nstd::array<T, R - 1> pop(const std::array<T, R> & a)":
    desc: Make a new std::array by removing one element at the end
    source: nda/std_addons/array.hpp
desc: ""
params:
  a: The array
tparams:
  T: ""
  R: __MISSING__
return_value: A new std::array with the element less at the end
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::pop
permalink: /cpp-api/nda/pop
parent: nda
...

