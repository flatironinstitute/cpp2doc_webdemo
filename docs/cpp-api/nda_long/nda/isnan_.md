---
layout: function
short_name: isnan
qualified_name: nda::isnan
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  _Bool nda::isnan(const std::complex<double> & z):
    desc: ""
    source: nda/mapped_functions.hpp
  template <typename A> auto nda::isnan(A && a):
    desc: Maps isnan onto the array
    source: nda/mapped_functions.hxx
desc: ""
params:
  z: __MISSING__
  a: __MISSING__
tparams:
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...
