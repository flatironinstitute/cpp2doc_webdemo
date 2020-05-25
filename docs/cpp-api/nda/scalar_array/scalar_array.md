---
layout: class
short_name: scalar_array
qualified_name: nda::scalar_array
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
desc: ""
tparams:
  S: __MISSING__
  Rank: __MISSING__
methods: [shape, "operator[]", operator()]
non_member_functions: []
member_fields:
  s:
    type: const S
    desc: __MISSING__
  _shape:
    type: std::array<long, Rank>
    desc: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
signature: |
  template <typename S, int Rank> 
  struct scalar_array
source: nda/arithmetic.hpp
title: nda::scalar_array
permalink: /cpp-api/nda/scalar_array
has-children: true
parent: nda
...

