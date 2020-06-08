---
# Do not edit this first section
layout: function
fancy_name: (constructors)
function_name: handle_stack
file_name: handle_stack-constructors
namespaces: [nda, mem, handle_stack]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: handle_stack()
    desc: ""

  - signature: handle_stack(handle_stack &&) noexcept
    desc: ""

  - signature: handle_stack(long)
    desc: ""

  - signature: handle_stack(long, struct nda::mem::do_not_initialize_t)
    desc: ""

  - signature: handle_stack(long, struct nda::mem::init_zero_t)
    desc: ""

  - signature: handle_stack(handle_stack const &) noexcept
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  {}

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
permalink: /cpp-api/nda/mem/handle_stack/handle_stack-constructors
title: nda::mem::handle_stack<T, Size>::handle_stack
parent: nda::mem::handle_stack
source: nda/storage/handle.hpp
...

