---
# Do not edit this first section
layout: function
fancy_name: operator/=
namespace: nda::basic_array_view
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename RHS>
      auto &operator/=(RHS const &rhs) noexcept
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  rhs: ""

# Template parameters of the function. Edit only the description after the :
tparams:
  RHS: A scalar or a type modeling NdArray

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array_view/operator-div=
title: nda::basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy>::operator/=
parent: nda::basic_array_view
source: nda/_impl_basic_array_view_common.hpp
...

