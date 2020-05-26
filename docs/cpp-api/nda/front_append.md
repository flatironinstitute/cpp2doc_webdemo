---
layout: function
short_name: front_append
qualified_name: nda::front_append
namespaces: [nda]
includer: nda/nda.hpp
brief: Make a new std::array by appending one element at the front
overloads:
  "template <typename T, typename U, size_t R>\nstd::array<T, R + 1> front_append(const std::array<T, R> & a, const U & x)":
    desc: Make a new std::array by appending one element at the front
    source: nda/std_addons/array.hpp
desc: ""
params:
  a: The array
  x: Element to append
tparams:
  T: ""
  U: Must be convertible to T
  R: __MISSING__
return_value: A new std::array with the element appended at the front
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::front_append
permalink: /cpp-api/nda/front_append
parent: nda
...

