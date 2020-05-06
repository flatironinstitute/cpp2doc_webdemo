---
layout: function
short_name: dot_product
qualified_name: nda::dot_product
namespaces: [nda]
includer: nda/nda.hpp
brief: Dot product of two arrays.
overloads:
  template <typename T, typename U, size_t R> auto nda::dot_product(const std::array<T, R> & a1, const std::array<U, R> & a2):
    desc: Dot product of two arrays.
    source: nda/std_addons/array.hpp
desc: ""
params:
  a1: ""
  a2: ""
tparams:
  T: ""
  U: ""
  R: __MISSING__
return_value: The dot product to whatever type T*U is promoted to. If R = 0, return T{}
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...
