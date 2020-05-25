---
layout: function
short_name: data_start
qualified_name: nda::basic_array::data_start
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: "Starting point of the data. NB : this is NOT the beginning of the memory block for a view in general"
overloads:
  const ValueType * data_start() noexcept const:
    desc: "Starting point of the data. NB : this is NOT the beginning of the memory block for a view in general"
    source: nda/_impl_basic_array_view_common.hpp
  ValueType * data_start() noexcept:
    desc: "Starting point of the data. NB : this is NOT the beginning of the memory block for a view in general"
    source: nda/_impl_basic_array_view_common.hpp
desc: ""
params:
  {}
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array::data_start
permalink: /cpp-api/nda/basic_array/data_start
...

