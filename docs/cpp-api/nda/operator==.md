---
# Do not edit this first section
layout: function
fancy_name: operator==
namespace: nda
includer: nda/nda.hpp

# Brief description. One line only.
brief: --------------- operator == ---------------------

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A, typename B>
      requires(is_ndarray_v<A> and is_ndarray_v<B>)
      bool
         operator==(A const &a, B const &b)
    desc: --------------- operator == ---------------------

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  b: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__
  B: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/operator==
title: nda::operator==
source: nda/basic_functions.hpp
...

