---
layout: class
short_name: array_view
qualified_name: nda::array_view
namespaces: [nda]
desc: __MISSING__
includer: src/nda.hpp
brief: __MISSING__
tparams:
  T: T is Value type
  R: Rank
methods: []
non member functions: []
member_fields:
  {}
example:
  desc: The description of the code
  code: |
    #include <nda/nda.hpp>
    int main() {
      nda::array<int, 1> a{1, 2, 3};
      nda::array_view<int, 1> v = make_view(a);
      std::vector<nda::array> V{{1, 2}, {2, 3}};
see-also: [nda::array, nda::make_view]
signature: template <typename T, int R> class array_view
source: src/nda.hpp
...
