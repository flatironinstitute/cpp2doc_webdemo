---
layout: function
short_name: append
qualified_name: nda::append
namespaces: [nda]
includer: nda/nda.hpp
brief: Make a new std::array by appending one element at the end
overloads:
  "template <typename T, typename U, size_t R>\nstd::array<T, R + 1> append(const std::array<T, R> & a, const U & x)":
    desc: Make a new std::array by appending one element at the end
    source: nda/std_addons/array.hpp
desc: ""
params:
  a: The array
  x: Element to append
tparams:
  T: ""
  U: Must be convertible to T
  R: __MISSING__
return_value: A new std::array with the element appended at the end
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::append
permalink: /cpp-api/nda/append
parent: nda
nav_exclude: true
...

