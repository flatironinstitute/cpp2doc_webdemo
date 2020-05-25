---
layout: function
short_name: call_on_R_zeros
qualified_name: nda::concept_impl::call_on_R_zeros
namespaces: [nda, concept_impl]
includer: nda/nda.hpp
brief: ""
overloads:
  template <int R, typename A> auto call_on_R_zeros(const A & a)-> decltype(call_on_R_zeros_impl(std::make_index_sequence<R>({}), a)):
    desc: ""
    source: nda/concepts.hpp
desc: ""
params:
  a: __MISSING__
tparams:
  R: __MISSING__
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::concept_impl::call_on_R_zeros
permalink: /cpp-api/nda/concept_impl/call_on_R_zeros
...

