---
layout: function
short_name: make_std_array
qualified_name: nda::make_std_array
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <typename T, typename U, size_t R> std::array<T, R> make_std_array(const std::array<U, R> & a):
    desc: ""
    source: nda/std_addons/array.hpp
desc: ""
params:
  a: __MISSING__
tparams:
  T: T must be constructible from U
  U: ""
  R: make a std::array<T, R> initialized to v
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::make_std_array
permalink: /cpp-api/nda/make_std_array
...

