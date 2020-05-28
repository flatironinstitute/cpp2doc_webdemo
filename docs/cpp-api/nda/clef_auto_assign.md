---
# Do not edit this first section
layout: function
short_name: clef_auto_assign
qualified_name: nda::clef_auto_assign
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A, typename F>
      requires (is_ndarray_v<std::decay_t<A>>)
      void clef_auto_assign(A && a, F && f)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__
  f: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__
  F: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/clef_auto_assign
title: nda::clef_auto_assign
parent: nda
...

