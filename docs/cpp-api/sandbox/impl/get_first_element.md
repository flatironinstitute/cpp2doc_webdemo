---
# Do not edit this first section
layout: function
short_name: get_first_element
qualified_name: sandbox::impl::get_first_element
namespaces: [sandbox, impl]
includer: ""

# Brief description. One line only.
brief: Get the first element of the array as a(0,0,0....) (i.e. also work for non

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A>
      auto get_first_element(const A & a)-> decltype(_get_first_element_impl(std::make_index_sequence<get_rank<A> >({}), a))
    desc: Get the first element of the array as a(0,0,0....) (i.e. also work for non

# Long description. Any Markdown, with code, latex, multiline with |
desc: containers, just with the concept !).

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/sandbox/impl/get_first_element
title: sandbox::impl::get_first_element
parent: sandbox::impl
...

