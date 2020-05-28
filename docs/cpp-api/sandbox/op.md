---
# Do not edit this first section
layout: function
short_name: op
qualified_name: sandbox::op
namespaces: [sandbox]
includer: ""

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename L, typename R>
      requires Array<L> and (not Array<R>)
      void op(L const & , R const & )
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  L: __MISSING__
  R: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/sandbox/op
title: sandbox::op
parent: sandbox
...

