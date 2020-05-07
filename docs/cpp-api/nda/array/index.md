---
layout: class
short_name: array
qualified_name: nda::array
namespaces: [nda]
includer: src/nda.hpp
desc: Long description of the array class
brief: Brief doc
tparams:
  T: T is a type
  R: Rank
methods: [method1]
non_member_functions: []
member_types:
  value_t:
    type: T
    desc: This is value_t
  arr_t:
    type: std::vector<T>
    desc: This is value_t
  index_t:
    type: long
    desc: My index_t
member_fields:
  x:
    type: double
    desc: Something
example:
  desc: The description of the code
  code: |
    #include <nda/nda.hpp>
    int main() {
      nda::array<int, 1> a{1, 2, 3};
      nda::array_view<int, 1> v = make_view(a);
      std::vector<nda::array> V{{1, 2}, {2, 3}};
see-also: [nda::array_view]
signature: template <typename T, int R> class array
source: src/nda.hpp
title: array
parent: nda
grand_parent: C++ API
has_children: true
...