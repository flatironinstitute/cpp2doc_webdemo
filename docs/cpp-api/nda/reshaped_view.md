---
# Do not edit this first section
layout: function
fancy_name: reshaped_view
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: Make a new view of an array or a contiguous array_view with a different shape.

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename AccessorPolicy, typename OwningPolicy,
                std::integral Int, auto newRank>
      auto reshaped_view(basic_array_view<T, R, L, Algebra, AccessorPolicy, OwningPolicy> v,
                         std::array<Int, newRank> const &new_shape)
    desc: Reshape a view

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, std::integral Int, auto newRank>
      auto reshaped_view(basic_array<T, R, L, Algebra, ContainerPolicy> const &a, std::array<Int, newRank> const &new_shape)
    desc: Reshaped _const_ view of an array

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, std::integral Int, auto newRank>
      auto reshaped_view(basic_array<T, R, L, Algebra, ContainerPolicy> &a, std::array<Int, newRank> const &new_shape)
    desc: Reshaped view of an array

# Long description. Any Markdown, with code, latex, multiline with |
desc: "* Contiguous data only [runtime checked]"

# Parameters of the function. Edit only the description after the :
params:
  v: View to reshape
  new_shape: New shape. Must be of the same length as the original shape.
  a: Array to reshape

# Template parameters of the function. Edit only the description after the :
tparams:
  T: Cf basic_array, basic_array_view
  R: Cf basic_array, basic_array_view
  L: Cf basic_array, basic_array_view
  Algebra: Cf basic_array, basic_array_view
  AccessorPolicy: Cf basic_array, basic_array_view
  OwningPolicy: Cf basic_array, basic_array_view
  Int: |
    Any integer [long, int, ...].
    *(You can pass std::array<long,..> or std::array<int, ...> without thinking about it.*)
  newRank: Rank of the shape
  ContainerPolicy: Match basic_array, basic_array_view

# Desc of the return value
return_value: A [basic_array_view](/cpp-api/nda/basic_array_view) with the same `T`, Policies, but new shape and rank.

# Code example. desc: any markdown to explain it.
example:
  desc: ~
  code: |
    nda::array<long, 1> a{1, 2, 3, 4, 5, 6};     // 1d array
    auto v = reshaped_view(a, std::array{2, 3}); // v is an array_view<long,2> of size 2 x 3
    v(0, nda::range_all()) *= 10;                // a is now {10, 20, 30, 4, 5, 6}

# A list of related functions/classes
see-also: [/cpp-api/nda/reshape]

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/reshaped_view
title: nda::reshaped_view
parent: nda
source: nda/layout_transforms.hpp
...

