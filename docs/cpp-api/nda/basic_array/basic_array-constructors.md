---
layout: function
short_name: basic_array
qualified_name: nda::basic_array::basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: 
overloads:
  basic_array-constructors():
    desc: Empty array
    source: nda/basic_array.hpp
  basic_array(const basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & ) noexcept:
    desc: Makes a deep copy, since array is a regular type
    source: nda/basic_array.hpp
  basic_array(basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> && ):
    desc: ""
    source: nda/basic_array.hpp
  explicit  basic_array(const std::array<long, Rank> & shape) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  basic_array(const std::initializer_list<ValueType> & l) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  basic_array(const std::initializer_list<std::initializer_list<ValueType> > & l2) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  basic_array(const std::initializer_list<std::initializer_list<std::initializer_list<ValueType> > > & l3) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  template < Int> explicit  basic_array(Int... is) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  template <ArrayOfRank<Rank> A>  basic_array(const A & a) noexcept:
    desc: ""
    source: nda/basic_array.hpp
  template <ArrayInitializer Initializer>  basic_array(const Initializer & initializer) noexcept(noexcept(initializer.invoke(*this))):
    desc: EXPLAIN noexcept
    source: nda/basic_array.hpp
desc: ""
params:
  shape: Shape of the array (lengths in each dimension)
  l: __MISSING__
  l2: __MISSING__
  l3: __MISSING__
  is: __MISSING__
  a: __MISSING__
  initializer: __MISSING__
tparams:
  Int: __MISSING__
  A: __SKIP__
  Initializer: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::basic_array::basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>
permalink: /cpp-api/nda/basic_array/basic_array-constructors
...

