---
layout: function
short_name: floor
qualified_name: nda::floor
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps floor onto the array
overloads:
  "template <typename A> \nrequires (is_ndarray_v<std::decay_t<A>>) \n\nauto floor(A && a)":
    desc: Maps floor onto the array
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
title: nda::floor
permalink: /cpp-api/nda/floor
parent: nda
...

