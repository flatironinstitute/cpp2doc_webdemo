---
layout: class
short_name: array_view
qualified_name: 'nda1::array_view'
namespaces:
  - nda1
includer: src/nda1.hpp
brief: ''
desc: ''
tparams:
  T: T is Value type
  R: Rank
methods: []
non_member_functions: []
example:
  desc: The description of the code
  code: |
    #include <nda1/nda1.hpp>
    int main() {
    nda1::array<int, 1> a{1, 2, 3};
    nda1::array_view<int, 1> v = make_view(a);
    std::vector<nda1::array> V{{1, 2}, {2, 3}};
see-also:
  - 'nda1::array'
  - 'nda1::make_view'
signature: 'template <typename T, int R> class array_view'
source: src/nda1.hpp
title: 'nda1::array_view'
permalink: /cpp-api/nda1/array_view
parent: nda1
...
