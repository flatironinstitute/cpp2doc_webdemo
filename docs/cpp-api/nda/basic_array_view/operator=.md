---
# Do not edit this first section
layout: function
short_name: operator=
qualified_name: nda::basic_array_view::operator=
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Same as the general case

# List of overloads. Edit only the desc
overloads:

  - signature: basic_array_view & operator=(basic_array_view const & rhs) noexcept
    desc: Same as the general case

  - signature: |
      template <nda::ArrayOfRank<Rank> RHS>
      basic_array_view & operator=(RHS const & rhs) noexcept
    desc: Copies the content of rhs into the view.

  - signature: |
      template <typename RHS>
      requires (is_scalar_for_v<RHS, basic_array_view>)
      basic_array_view & operator=(RHS const & rhs) noexcept
    desc: Assign to scalar

  - signature: |
      template <nda::ArrayInitializer Initializer>
      basic_array_view & operator=(Initializer const & initializer) noexcept
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: "[C++ oddity : this case must be explicitly coded too]"

# Parameters of the function. Edit only the description after the :
params:
  rhs: __MISSING__
  initializer: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  RHS: __MISSING__
  Initializer: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array_view/operator=
title: nda::basic_array_view::operator=
parent: nda::basic_array_view
...

