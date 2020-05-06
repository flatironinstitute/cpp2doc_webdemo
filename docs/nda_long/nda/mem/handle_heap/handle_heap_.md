---
layout: function
short_name: handle_heap
qualified_name: nda::mem::handle_heap::handle_heap<T>
namespaces: [nda, mem, handle_heap]
includer: nda/nda.hpp
brief: ""
overloads:
  void nda::mem::handle_heap::handle_heap<T>():
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_heap::handle_heap<T>(handle_heap<T> && x) noexcept:
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_heap::handle_heap<T>(long size, struct nda::mem::do_not_initialize_t ):
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_heap::handle_heap<T>(long size, struct nda::mem::init_zero_t ):
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_heap::handle_heap<T>(long size):
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_heap::handle_heap<T>(const handle_heap<T> & x):
    desc: ""
    source: nda/storage/handle.hpp
  void nda::mem::handle_heap::handle_heap<T>(const handle_shared<T> & x):
    desc: ""
    source: nda/storage/handle.hpp
desc: ""
params:
  x: __MISSING__
  size: __MISSING__
  "": __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

