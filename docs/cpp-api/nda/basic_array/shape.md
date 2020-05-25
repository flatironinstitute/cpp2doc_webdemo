---
layout: function
short_name: shape
qualified_name: nda::basic_array::shape
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: Shape
overloads:
  const std::array<long, rank> & shape() noexcept const:
    desc: Shape
    source: nda/_impl_basic_array_view_common.hpp
  long shape(int i) noexcept const:
    desc: Same as shape()[i]
    source: nda/_impl_basic_array_view_common.hpp
desc: ""
params:
  i: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array::shape
permalink: /cpp-api/nda/basic_array/shape
parent: nda::basic_array
...

