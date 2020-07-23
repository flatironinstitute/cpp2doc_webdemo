---
# Do not edit this first section
layout: function
fancy_name: reshape
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: Transform an array into another one with a new shape. Short description

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, auto newRank>
      auto reshape(basic_array<T, R, L, Algebra, ContainerPolicy> &&a, std::array<long, newRank> const &new_shape)
    desc: ""

  - signature: |
      template <typename T, int R, typename L, char Algebra, typename ContainerPolicy, auto newRank>
      auto reshape(basic_array<T, R, L, Algebra, ContainerPolicy> &&a, std::array<int, newRank> const &new_shape)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: It steals the data of the (rvalue reference) array.

# Parameters of the function. Edit only the description after the :
params:
  a: The array to reshape
  new_shape: The new shape

# Template parameters of the function. Edit only the description after the :
tparams:
  T: Cf basic_array
  R: Cf basic_array
  L: Cf basic_array
  Algebra: Cf basic_array
  ContainerPolicy: Cf basic_array
  newRank: The new rank

# Desc of the return value
return_value: A basic_array with the same `T`, `Algebra` and `Policy`, but with `Rank = newRank` and the new shape.

# Code example. desc: any markdown to explain it.
example:
  desc: ~
  code: |
    nda::array<long, 1> a{1, 2, 3, 4, 5, 6};          // 1d array
    auto b = reshape(std::move(a), std::array{2, 3}); // A new array, with the data of a and size 2 x 3
  comment: "| ![Warning](/assets/images/warning.png){:height=\"36px\" width=\"36px\"} |  Note that __a__ must not be used afterwards. It has no data anymore after the move."

# A list of related functions/classes
see-also:
  - /cpp-api/nda/reshaped_view

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/reshape/
title: nda::reshape
parent: nda
source: nda/layout_transforms.hpp
...

