---
layout: function
short_name: operator=
qualified_name: nda::basic_array_view::operator=
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp
brief: Same as the general case
overloads:
  basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & nda::basic_array_view::operator=(const basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & rhs):
    desc: Same as the general case
    source: nda/basic_array_view.hpp
  template <typename RHS> basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & nda::basic_array_view::operator=(const RHS & rhs):
    desc: Copies the content of rhs into the view.
    source: nda/basic_array_view.hpp
desc: "[C++ oddity : this case must be explicitly coded too]"
params:
  rhs: Right hand side of the = operation
tparams:
  RHS: A scalar or an object modeling the concept NDArray
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

