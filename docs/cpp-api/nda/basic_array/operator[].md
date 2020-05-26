---
layout: function
short_name: operator[]
qualified_name: nda::basic_array::operator[]
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: Access the array, make a lazy expression or slice of it depending on the arguments
overloads:
  "template <typename T>\ndecltype(auto) operator[](const T & x) noexcept(has_no_boundcheck) const &":
    desc: Access the array, make a lazy expression or slice of it depending on the arguments
    source: nda/_impl_basic_array_view_common.hpp
  "template <typename T>\ndecltype(auto) operator[](const T & x) noexcept(has_no_boundcheck) &":
    desc: ""
    source: nda/_impl_basic_array_view_common.hpp
  "template <typename T>\ndecltype(auto) operator[](const T & x) noexcept(has_no_boundcheck) &&":
    desc: ""
    source: nda/_impl_basic_array_view_common.hpp
desc: ""
params:
  x: __MISSING__
tparams:
  T: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array::operator[]
permalink: /cpp-api/nda/basic_array/operator[]
parent: nda::basic_array
...

