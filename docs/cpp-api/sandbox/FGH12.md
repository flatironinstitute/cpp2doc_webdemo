---
# Do not edit this first section
layout: function
fancy_name: fgh1 fgh2
namespace: sandbox
includer: ""

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename A>
      requires(Array<A> and get_rank<A> == 3)
      void fgh1(A const &a)
    desc: ""

  - signature: |
      template <typename A>
      requires(Array<A> and (A::rank == 2))
      void fgh2(A const &a)
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
permalink: /cpp-api/sandbox/FGH12/
title: sandbox::fgh1
source: /Users/oparcollet/cpp2doc_webdemo/src/array_concept.cpp
...

