---
layout: class
short_name: array
qualified_name: 'nda1::array'
namespaces:
  - nda1
includer: src/nda1.hpp
brief: A brief doc of array
desc: |
  A long doc of array with multiple lines
  And several paragraphs also very long
  private


  Another paragraph
tparams:
  T: T is a type
  R: Rank
methods:
  - method1
  - storage
non_member_functions: []
member_types:
  storage_t:
    type: T
    desc: This is value_t
  arr_t:
    type: 'std::vector<T>'
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
    #include <nda1/nda1.hpp>
    int main() {
      nda1::array<int, 1> a{1, 2, 3};
      nda1::array_view<int, 1> v = make_view(a);
      std::vector<nda1::array> V{{1, 2}, {2, 3}};
see-also:
  - 'nda1::array_view'
signature: 'template <typename T, int R> class array'
source: src/nda1.hpp
title: 'nda1::array'
permalink: /cpp-api/nda1/array
has_children: true
parent: nda1
...
