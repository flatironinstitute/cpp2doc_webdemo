---
layout: function
short_name: make_regular
qualified_name: nda::make_regular
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <typename A> requires (is_ndarray_v<std::decay_t<A>>) basic_array<get_value_t<std::decay_t<A> >, get_rank<A>, struct nda::C_layout, get_algebra<std::decay_t<A> >, struct nda::heap> make_regular(A && x):
    desc: ""
    source: nda/basic_functions.hpp
desc: ""
params:
  x: __MISSING__
tparams:
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::make_regular
permalink: /cpp-api/nda/make_regular
...

