---
layout: function
short_name: handle_shared
qualified_name: nda::mem::handle_shared::handle_shared<T>
namespaces: [nda, mem, handle_shared]
includer: nda/nda.hpp
brief: ""
overloads:
  void nda::mem::handle_shared::handle_shared<T>():
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_shared::handle_shared<T>(const handle_shared<T> & x) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_shared::handle_shared<T>(handle_shared<T> && x) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_shared::handle_shared<T>(T * data, size_t size, void * foreign_handle, void * foreign_decref) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_shared::handle_shared<T>(const handle_heap<T> & x) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
desc: ""
params:
  x: __MISSING__
  data: __MISSING__
  size: __MISSING__
  foreign_handle: __MISSING__
  foreign_decref: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

