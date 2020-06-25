---
# Do not edit this first section
layout: function
fancy_name: inverse
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <class A>
      requires(is_ndarray_v<std::decay_t<A>> and (get_algebra<std::decay_t<A>> != 'M'))
      expr<'/', int, A> inverse(A &&a)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__

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
permalink: /cpp-api/nda/inverse/
title: nda::inverse
parent: nda
source: nda/arithmetic.hpp
...

