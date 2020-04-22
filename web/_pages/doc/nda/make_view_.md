---
layout: function
short_name: make_view
qualified_name: nda::make_view
namespaces: [nda]
includer: src/nda.hpp
brief: __MISSING__
overloads:
  template <typename T, NOT IMPL R> nda::array_view<T, R> nda::make_view(const nda::array<T, R> & x):
    desc: Fitst overload doc
    source: src/nda.hpp
  template <typename T, NOT IMPL R> nda::array_view<T, R> nda::make_view(int k, const nda::array<T, R> & x):
    desc: __MISSING__
    source: src/nda.hpp
desc: __MISSING__
return_value: __MISSING__
params:
  x: ""
  k: ""
tparams:
  T: ""
  R: ""
example:
  desc: __MISSING__
  code: |
    #include <nda/nda.hpp>
    int main() {
      nda::array<int, 1> a{1, 2, 3};
      nda::array_view<int, 1> v = make_view(a);
      std::vector<nda::array> V{{1, 2}, {2, 3}};
    }
see-also: []
...
