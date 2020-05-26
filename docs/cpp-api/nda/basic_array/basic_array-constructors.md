---
layout: function
short_name: basic_array
qualified_name: nda::basic_array::basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: Empty array
overloads:
  basic_array():
    desc: Empty array
    source: nda/basic_array.hpp
  basic_array(const basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> & ) noexcept:
    desc: Makes a deep copy, since array is a regular type
    source: nda/basic_array.hpp
  basic_array(basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy> && ):
    desc: ""
    source: nda/basic_array.hpp
  "template <std::integral Int>\nbasic_array(Int... is) noexcept":
    desc: ""
    source: nda/basic_array.hpp
  basic_array(const std::array<long, Rank> & shape) noexcept requires (std::is_default_constructible_v<ValueType>):
    desc: ""
    source: nda/basic_array.hpp
  "template <ArrayOfRank<Rank> A>\nbasic_array(const A & a) noexcept":
    desc: ""
    source: nda/basic_array.hpp
  "template <nda::ArrayInitializer Initializer>\nbasic_array(const Initializer & initializer) noexcept(noexcept(initializer.invoke(*this)))":
    desc: ""
    source: nda/basic_array.hpp
  basic_array(const std::initializer_list<ValueType> & l) noexcept requires (Rank == 1):
    desc: ""
    source: nda/basic_array.hpp
  basic_array(const std::initializer_list<std::initializer_list<ValueType> > & l2) noexcept requires ((Rank == 2)):
    desc: ""
    source: nda/basic_array.hpp
  basic_array(const std::initializer_list<std::initializer_list<std::initializer_list<ValueType> > > & l3) noexcept:
    desc: ""
    source: nda/basic_array.hpp
desc: ""
params:
  is: __MISSING__
  shape: Shape of the array (lengths in each dimension)
  a: __MISSING__
  initializer: __MISSING__
  l: __MISSING__
  l2: __MISSING__
  l3: __MISSING__
tparams:
  Int: __MISSING__
  A: __SKIP__
  Initializer: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: |
    auto a = nda::basic_array<long,2>{1,2};
see-also: []
title: nda::basic_array::basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>
permalink: /cpp-api/nda/basic_array/basic_array-constructors
parent: nda::basic_array
...

