---
layout: function
short_name: join
qualified_name: nda::join
namespaces: [nda]
includer: nda/nda.hpp
brief: Join two arrays
overloads:
  "template <typename T, size_t R1, size_t R2>\nstd::array<T, R1 + R2> join(const std::array<T, R1> & a1, const std::array<T, R2> & a2)":
    desc: Join two arrays
    source: nda/std_addons/array.hpp
desc: ""
params:
  a1: ""
  a2: ""
tparams:
  T: ""
  R1: __MISSING__
  R2: __MISSING__
return_value: the concatenation of [a1, a2]
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::join
permalink: /cpp-api/nda/join
parent: nda
nav_exclude: true
...

