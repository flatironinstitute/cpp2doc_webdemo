---
layout: function
short_name: pow
qualified_name: nda::pow
namespaces: [nda]
includer: nda/nda.hpp
brief: pow for integer
overloads:
  template <typename T> T nda::pow(T x, int n):
    desc: pow for integer
    source: nda/mapped_functions.hpp
  template <typename A> auto nda::pow(A && a, int n):
    desc: Map pow on Ndarray
    source: nda/mapped_functions.hpp
desc: ""
params:
  x: __MISSING__
  n: __MISSING__
  a: __MISSING__
tparams:
  T: __MISSING__
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...
