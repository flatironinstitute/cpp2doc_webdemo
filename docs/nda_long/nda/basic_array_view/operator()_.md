---
layout: function
short_name: operator()
qualified_name: nda::basic_array_view::operator()
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp
brief: ""
overloads:
  decltype(auto) nda::basic_array_view::operator()(struct nda::_linear_index_t x)  const:
    desc: ""
    source: nda/_impl_basic_array_view_common.hpp
  decltype(auto) nda::basic_array_view::operator()(struct nda::_linear_index_t x):
    desc: ""
    source: nda/_impl_basic_array_view_common.hpp
  template <typename T> decltype(auto) nda::basic_array_view::operator()(const T &... x)  const &:
    desc: Access the array, make a lazy expression or slice of it depending on the arguments
    source: nda/_impl_basic_array_view_common.hpp
  template <typename T> decltype(auto) nda::basic_array_view::operator()(const T &... x)  &:
    desc: ""
    source: nda/_impl_basic_array_view_common.hpp
  template <typename T> decltype(auto) nda::basic_array_view::operator()(const T &... x)  &&:
    desc: ""
    source: nda/_impl_basic_array_view_common.hpp
desc: ""
params:
  x: __MISSING__
tparams:
  T: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

