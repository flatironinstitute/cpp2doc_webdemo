---
layout: function
short_name: inverse
qualified_name: nda::inverse
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  "template <class A> \nrequires (is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M')) \n\nexpr<'/', A, int> inverse(A && a)":
    desc: ""
    source: nda/arithmetic.hpp
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
title: nda::inverse
permalink: /cpp-api/nda/inverse
parent: nda
...

