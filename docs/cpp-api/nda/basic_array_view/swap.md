---
# Do not edit this first section
layout: function
fancy_name: swap
function_name: swap
file_name: swap
namespaces: [nda, basic_array_view]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Swaps by rebinding a and b

# List of overloads. Edit only the desc
overloads:

  - signature: |
      void swap(basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> &a,
                basic_array_view<ValueType, Rank, Layout, Algebra, AccessorPolicy, OwningPolicy> &b) noexcept
    desc: Swaps by rebinding a and b

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: ""
  b: ""

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array_view/swap
title: nda::swap
parent: nda::basic_array_view
source: nda/basic_array_view.hpp
...

