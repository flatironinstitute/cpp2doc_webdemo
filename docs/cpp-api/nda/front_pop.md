---
layout: function
short_name: front_pop
qualified_name: nda::front_pop
namespaces: [nda]
includer: nda/nda.hpp
brief: Make a new std::array by removing one element at the front
overloads:
  "template <typename T, size_t R>\nstd::array<T, R - 1> front_pop(const std::array<T, R> & a)":
    desc: Make a new std::array by removing one element at the front
    source: nda/std_addons/array.hpp
desc: ""
params:
  a: The array
tparams:
  T: ""
  R: __MISSING__
return_value: A new std::array with the element less at the front
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::front_pop
permalink: /cpp-api/nda/front_pop
parent: nda
...

