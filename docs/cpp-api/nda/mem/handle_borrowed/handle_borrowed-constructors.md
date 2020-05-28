---
# Do not edit this first section
layout: function
short_name: handle_borrowed
qualified_name: nda::mem::handle_borrowed::handle_borrowed<T>
namespaces: [nda, mem, handle_borrowed]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: handle_borrowed()
    desc: ""

  - signature: handle_borrowed(T * ptr) noexcept
    desc: ""

  - signature: handle_borrowed(const handle_borrowed<T> & )
    desc: ""

  - signature: handle_borrowed(const handle_borrowed<T> & x, long offset) noexcept
    desc: ""

  - signature: handle_borrowed(const handle_heap<nda::mem::handle_borrowed::T0, void> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:628:67>) noexcept
    desc: ""

  - signature: |
      template <typename Alloc>
      handle_borrowed(const handle_heap<nda::mem::handle_borrowed::T0, Alloc> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:631:68>) noexcept
    desc: ""

  - signature: handle_borrowed(const handle_shared<nda::mem::handle_borrowed::T0> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:633:63>) noexcept
    desc: ""

  - signature: handle_borrowed(const handle_borrowed<nda::mem::handle_borrowed::T0> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:634:65>) noexcept requires (std::is_const_v<T>)
    desc: ""

  - signature: |
      template <size_t Size>
      handle_borrowed(const handle_stack<nda::mem::handle_borrowed::T0, Size> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:637:68>) noexcept
    desc: ""

  - signature: |
      template <size_t SSO_Size>
      handle_borrowed(const handle_sso<nda::mem::handle_borrowed::T0, SSO_Size> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:640:70>) noexcept
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  ptr: __MISSING__
  x: __MISSING__
  offset: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  Alloc: __MISSING__
  Size: __MISSING__
  SSO_Size: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/mem/handle_borrowed/handle_borrowed-constructors
title: nda::mem::handle_borrowed::handle_borrowed<T>
parent: nda::mem::handle_borrowed
...

