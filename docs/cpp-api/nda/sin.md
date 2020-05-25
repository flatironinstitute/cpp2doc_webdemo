---
layout: function
short_name: sin
qualified_name: nda::sin
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps sin onto the array
overloads:
  "template <typename A> \nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M')) \n\nauto sin(A && a)":
    desc: Maps sin onto the array
    source: nda/mapped_functions.hxx
desc: ""
params:
  a: __MISSING__
tparams:
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::sin
permalink: /cpp-api/nda/sin
parent: nda
...

