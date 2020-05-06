---
layout: function
short_name: handle_borrowed
qualified_name: nda::mem::handle_borrowed::handle_borrowed<T>
namespaces: [nda, mem, handle_borrowed]
includer: nda/nda.hpp
brief: ""
overloads:
  void nda::mem::handle_borrowed::handle_borrowed<T>():
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_borrowed::handle_borrowed<T>(T * ptr) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_borrowed::handle_borrowed<T>(const handle_borrowed<T> & x):
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_borrowed::handle_borrowed<T>(const handle_borrowed<T> & x, long offset) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_borrowed::handle_borrowed<T>(const handle_heap<nda::mem::handle_borrowed::T0> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:456:61>) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_borrowed::handle_borrowed<T>(const handle_shared<nda::mem::handle_borrowed::T0> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:457:63>) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_borrowed::handle_borrowed<T>(const handle_borrowed<nda::mem::handle_borrowed::T0> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:458:65>) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  template <size_t Size> void nda::mem::handle_borrowed::handle_borrowed<T>(const handle_stack<nda::mem::handle_borrowed::T0, Size> & x, long offset = </Users/oparcollet/src/nda/c++/nda/storage/./handle.hpp:461:68>) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
desc: ""
params:
  ptr: __MISSING__
  x: __MISSING__
  offset: __MISSING__
tparams:
  Size: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

