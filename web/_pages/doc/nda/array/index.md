---
layout: class
short_name: array
qualified_name: nda::array
namespaces: [nda]
desc: Long description of the array class
includer: src/nda.hpp
brief: Brief doc
tparams:
  T: T is a type
  R: Rank
methods: [method1]
non member functions: []
member_fields:
  x: Something
example:
  desc: The description of the code 
  code: |
    #include <nda/nda.hpp>
    int main() {
      nda::array<int, 1> a{1, 2, 3};
      nda::array_view<int, 1> v = make_view(a);
      std::vector<nda::array> V{{1, 2}, {2, 3}};

see-also: 
  - nda::array_view

signature: template <typename T, int R> class array
source: src/nda.hpp
...
