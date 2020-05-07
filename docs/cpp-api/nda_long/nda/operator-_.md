---
layout: function
short_name: operator-
qualified_name: nda::operator-
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <typename L, typename R> auto nda::operator-(L && l, R && r):
    desc: ""
    source: nda/arithmetic.hpp
  template <typename L> expr_unary<'-', L> nda::operator-(L && l):
    desc: ""
    source: nda/arithmetic.hpp
desc: ""
params:
  l: __MISSING__
  r: ": rhs L, R model NdArray. One can be a scalar. They must be in the same algebra. "
tparams:
  L: __MISSING__
  R: ""
return_value: a lazy expression for elementwise substraction
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

