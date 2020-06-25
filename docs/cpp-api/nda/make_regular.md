---
# Do not edit this first section
layout: function
fancy_name: make_regular
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A>
      requires(is_ndarray_v<std::decay_t<A>>)
      basic_array<get_value_t<std::decay_t<A>>, get_rank<A>, struct nda::C_layout, get_algebra<std::decay_t<A>>,
                     struct nda::heap> make_regular(A &&x)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  x: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/make_regular/
title: nda::make_regular
parent: nda
source: nda/basic_functions.hpp
...

