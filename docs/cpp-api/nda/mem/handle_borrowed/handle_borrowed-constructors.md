---
layout: function
short_name: handle_borrowed
qualified_name: nda::mem::handle_borrowed::handle_borrowed<T>
namespaces: [nda, mem, handle_borrowed]
includer: nda/nda.hpp
brief: ""
overloads:
  handle_borrowed():
    desc: ""
    source: nda/storage/handle.hpp
  handle_borrowed(T * ptr) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  handle_borrowed(const handle_borrowed<T> & ):
    desc: ""
    source: nda/storage/handle.hpp
  handle_borrowed(const handle_borrowed<T> & x, long offset) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  handle_borrowed(const handle_heap<nda::mem::handle_borrowed::T0, void> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:628:67>) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  "template <typename Alloc>\nhandle_borrowed(const handle_heap<nda::mem::handle_borrowed::T0, Alloc> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:631:68>) noexcept":
    desc: ""
    source: nda/storage/handle.hpp
  handle_borrowed(const handle_shared<nda::mem::handle_borrowed::T0> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:633:63>) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  handle_borrowed(const handle_borrowed<nda::mem::handle_borrowed::T0> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:634:65>) noexcept requires (std::is_const_v<T>):
    desc: ""
    source: nda/storage/handle.hpp
  "template <size_t Size>\nhandle_borrowed(const handle_stack<nda::mem::handle_borrowed::T0, Size> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:637:68>) noexcept":
    desc: ""
    source: nda/storage/handle.hpp
  "template <size_t SSO_Size>\nhandle_borrowed(const handle_sso<nda::mem::handle_borrowed::T0, SSO_Size> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:640:70>) noexcept":
    desc: ""
    source: nda/storage/handle.hpp
desc: ""
params:
  ptr: __MISSING__
  x: __MISSING__
  offset: __MISSING__
tparams:
  Alloc: __MISSING__
  Size: __MISSING__
  SSO_Size: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::mem::handle_borrowed::handle_borrowed<T>
permalink: /cpp-api/nda/mem/handle_borrowed/handle_borrowed-constructors
parent: nda::mem::handle_borrowed
nav_exclude: true
...

