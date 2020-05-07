---
layout: function
short_name: rebind
qualified_name: nda::basic_array_view::rebind
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp
brief: Rebind the view
overloads:
  void nda::basic_array_view::rebind(const basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & a):
    desc: Rebind the view
    source: nda/basic_array_view.hpp
  void nda::basic_array_view::rebind(const nda::basic_array_view::no_const_view_t & a):
    desc: Rebind view
    source: nda/basic_array_view.hpp
desc: ""
params:
  a: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

