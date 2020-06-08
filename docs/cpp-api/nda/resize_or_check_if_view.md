---
# Do not edit this first section
layout: function
fancy_name: resize_or_check_if_view
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A>
      requires(is_regular_or_view_v<A>)
      void resize_or_check_if_view(A &a, std::array<long, A::rank> const &sha)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: Resize if A is a container, or assert that the view has the right dimension if A is view

# Parameters of the function. Edit only the description after the :
params:
  a: A container or a view
  sha: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: ""

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/resize_or_check_if_view
title: nda::resize_or_check_if_view
source: nda/basic_functions.hpp
...

