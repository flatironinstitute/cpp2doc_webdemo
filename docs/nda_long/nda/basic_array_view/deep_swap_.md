---
layout: function
short_name: deep_swap
qualified_name: nda::deep_swap
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp
brief: Swaps the *views* a and b, without copying data
overloads:
  void nda::deep_swap(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & a, basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & b):
    desc: Swaps the *views* a and b, without copying data
    source: nda/basic_array_view.hpp
  void nda::deep_swap(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> && a, basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & b):
    desc: Swaps the *views* a and b, without copying data
    source: nda/basic_array_view.hpp
  void nda::deep_swap(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & a, basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> && b):
    desc: Swaps the *views* a and b, without copying data
    source: nda/basic_array_view.hpp
  void nda::deep_swap(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> && a, basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> && b):
    desc: Swaps the *views* a and b, without copying data
    source: nda/basic_array_view.hpp
desc: ""
params:
  a: ""
  b: ""
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...
