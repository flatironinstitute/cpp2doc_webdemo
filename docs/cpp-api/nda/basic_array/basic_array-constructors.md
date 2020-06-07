---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: nda::basic_array
includer: nda/nda.hpp

# Brief description. One line only.
brief: Empty array

# List of overloads. Edit only the desc
overloads:

  - signature: basic_array()
    desc: Empty array

  - signature: basic_array(basic_array const &) noexcept
    desc: Makes a deep copy, since array is a regular type

  - signature: basic_array(basic_array &&)
    desc: ""

  - signature: |
      template <std::integral... Int>
      explicit basic_array(Int... is) noexcept
    desc: Construct with a shape [i0, is ...]. Int are integers (convertible to long), and there must be exactly R arguments.

  - signature: explicit basic_array(std::array<long, Rank> const &shape) noexcept requires(std::is_default_constructible_v<ValueType>)
    desc: Construct with the given shape and default construct elements

  - signature: |
      template <nda::ArrayOfRank<Rank> A>
      basic_array(A const &a) noexcept
    desc: ""

  - signature: |
      template <nda::ArrayInitializer Initializer>
      basic_array(Initializer const &initializer) noexcept(noexcept(initializer.invoke(*this)))
    desc: ""

  - signature: basic_array(std::initializer_list<ValueType> const &l) noexcept requires(Rank == 1)
    desc: ""

  - signature: basic_array(std::initializer_list<std::initializer_list<ValueType>> const &l2) noexcept requires(Rank == 2)
    desc: ""

  - signature: |
      basic_array(std::initializer_list<std::initializer_list<std::initializer_list<ValueType>>> const &l3) noexcept
         requires(Rank == 3)
    desc: ""

  - signature: |
      template <char Algebra2>
      explicit basic_array(basic_array<ValueType, 2, Layout, Algebra2, ContainerPolicy> &&am) noexcept requires(Rank == 2)
    desc: Allows to move a array of Rank 2 into a matrix and vice versa

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  is: __MISSING__
  shape: Shape of the array (lengths in each dimension)
  a: __MISSING__
  initializer: __MISSING__
  l: __MISSING__
  l2: __MISSING__
  l3: __MISSING__
  am: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  Int: __MISSING__
  A: __MISSING__
  Initializer: __MISSING__
  Algebra2: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array/basic_array-constructors
title: nda::basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>::basic_array
parent: nda::basic_array
source: nda/basic_array.hpp
...

