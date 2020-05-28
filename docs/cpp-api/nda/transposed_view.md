---
# Do not edit this first section
layout: function
short_name: transposed_view
qualified_name: nda::transposed_view
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <int I, int J, typename A>
      requires (is_regular_or_view_v<std::decay_t<A>>)
      auto transposed_view(A && a)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  I: __MISSING__
  J: __MISSING__
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
permalink: /cpp-api/nda/transposed_view
title: nda::transposed_view
parent: nda
...

