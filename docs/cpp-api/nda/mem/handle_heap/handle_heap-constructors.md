---
layout: function
short_name: handle_heap
qualified_name: nda::mem::handle_heap::handle_heap<T, Allocator>
namespaces: [nda, mem, handle_heap]
includer: nda/nda.hpp
brief: ""
overloads:
  handle_heap():
    desc: ""
    source: nda/storage/handle.hpp
  handle_heap(handle_heap<T, Allocator> && ) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  handle_heap(long size, struct nda::mem::do_not_initialize_t ):
    desc: ""
    source: nda/storage/handle.hpp
  handle_heap(long size, struct nda::mem::init_zero_t ):
    desc: ""
    source: nda/storage/handle.hpp
  handle_heap(long size):
    desc: ""
    source: nda/storage/handle.hpp
  handle_heap(const handle_heap<T, Allocator> & ):
    desc: ""
    source: nda/storage/handle.hpp
  handle_heap(const handle_shared<T> & x):
    desc: ""
    source: nda/storage/handle.hpp
desc: ""
params:
  size: __MISSING__
  x: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::mem::handle_heap::handle_heap<T, Allocator>
permalink: /cpp-api/nda/mem/handle_heap/handle_heap-constructors
parent: nda::mem::handle_heap
nav_exclude: true
...

