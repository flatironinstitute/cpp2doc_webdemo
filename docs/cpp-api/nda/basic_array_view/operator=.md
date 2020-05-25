---
layout: function
short_name: operator=
qualified_name: nda::basic_array_view::operator=
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp
brief: Same as the general case
overloads:
  basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & operator=(const basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & rhs) noexcept:
    desc: Same as the general case
    source: nda/basic_array_view.hpp
  template <ArrayOfRank<Rank> RHS> basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & operator=(const RHS & rhs) noexcept:
    desc: Copies the content of rhs into the view.
    source: nda/basic_array_view.hpp
  template <typename RHS> requires (is_scalar_for_v<RHS, basic_array_view>) basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & operator=(const RHS & rhs) noexcept:
    desc: Assign to scalar
    source: nda/basic_array_view.hpp
  template <ArrayInitializer Initializer> basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> & operator=(const Initializer & initializer) noexcept:
    desc: ""
    source: nda/basic_array_view.hpp
desc: "[C++ oddity : this case must be explicitly coded too]"
params:
  rhs: __MISSING__
  initializer: __MISSING__
tparams:
  RHS: __MISSING__
  Initializer: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array_view::operator=
permalink: /cpp-api/nda/basic_array_view/operator=
...

