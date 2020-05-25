---
layout: function
short_name: imag
qualified_name: nda::imag
namespaces: [nda]
includer: nda/nda.hpp
brief: Maps imag onto the array
overloads:
  "template <typename A> \nrequires (is_ndarray_v<std::decay_t<A>>) \n\nauto imag(A && a)":
    desc: Maps imag onto the array
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
title: nda::imag
permalink: /cpp-api/nda/imag
parent: nda
...

