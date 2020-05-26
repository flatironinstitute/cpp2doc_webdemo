---
layout: function
short_name: get_first_element
qualified_name: sandbox::impl::get_first_element
namespaces: [sandbox, impl]
includer: ""
brief: Get the first element of the array as a(0,0,0....) (i.e. also work for non
overloads:
  "template <typename A>\nauto get_first_element(const A & a)-> decltype(_get_first_element_impl(std::make_index_sequence<get_rank<A> >({}), a))":
    desc: Get the first element of the array as a(0,0,0....) (i.e. also work for non
    source: /Users/oparcollet/cpp2doc_webdemo/src/array_concept.cpp
desc: containers, just with the concept !).
params:
  a: __MISSING__
tparams:
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: sandbox::impl::get_first_element
permalink: /cpp-api/sandbox/impl/get_first_element
parent: sandbox::impl
...

