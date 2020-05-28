---
# Do not edit this first section
layout: function
short_name: handle_heap
qualified_name: nda::mem::handle_heap::handle_heap<T, Allocator>
namespaces: [nda, mem, handle_heap]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: handle_heap()
    desc: ""

  - signature: handle_heap(handle_heap && ) noexcept
    desc: ""

  - signature: handle_heap(long size, struct nda::mem::do_not_initialize_t )
    desc: ""

  - signature: handle_heap(long size, struct nda::mem::init_zero_t )
    desc: ""

  - signature: handle_heap(long size)
    desc: ""

  - signature: handle_heap(handle_heap const & )
    desc: ""

  - signature: handle_heap(const handle_shared<T> & x)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  size: __MISSING__
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
permalink: /cpp-api/nda/mem/handle_heap/handle_heap-constructors
title: nda::mem::handle_heap::handle_heap<T, Allocator>
parent: nda::mem::handle_heap
nav_exclude: true
...

