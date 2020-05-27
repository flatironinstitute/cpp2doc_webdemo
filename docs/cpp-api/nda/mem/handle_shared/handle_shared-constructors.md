---
# Do not edit this first section
layout: function
short_name: handle_shared
qualified_name: nda::mem::handle_shared::handle_shared<T>
namespaces: [nda, mem, handle_shared]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: handle_shared()
    desc: ""

  - signature: handle_shared(const handle_shared<T> & ) noexcept
    desc: ""

  - signature: handle_shared(handle_shared<T> && ) noexcept
    desc: ""

  - signature: handle_shared(T * data, size_t size, void * foreign_handle, void * foreign_decref) noexcept
    desc: ""

  - signature: handle_shared(const handle_heap<T, void> & x) noexcept
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  data: __MISSING__
  size: __MISSING__
  foreign_handle: __MISSING__
  foreign_decref: __MISSING__
  x: __MISSING__

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
permalink: /cpp-api/nda/mem/handle_shared/handle_shared-constructors
title: nda::mem::handle_shared::handle_shared<T>
parent: nda::mem::handle_shared
nav_exclude: true
...

