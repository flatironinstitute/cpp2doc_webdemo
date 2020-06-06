---
# Do not edit this first section
layout: function
fancy_name: vstack
function_name: vstack
file_name: vstack
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <nda::ArrayOfRank<2> A, nda::ArrayOfRank<2> B>
      requires(std::same_as<get_value_t<A>, get_value_t<B>>)
      matrix<get_value_t<A>> vstack(A const &a, B const &b)
    desc: Give 2 matrices A (of size n x q) and B (of size p x q)

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
permalink: /cpp-api/nda/vstack
title: nda::vstack
parent: nda
source: nda/matrix_functions.hpp
...

