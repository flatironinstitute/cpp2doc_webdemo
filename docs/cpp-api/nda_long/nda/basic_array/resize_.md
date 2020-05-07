---
layout: function
short_name: resize
qualified_name: nda::basic_array::resize
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: ""
overloads:
  void nda::basic_array::resize(const shape_t<Rank> & shape):
    desc: ""
    source: nda/basic_array.hpp
  template <typename Int> void nda::basic_array::resize(long i0, const Int &... is):
    desc: ""
    source: nda/basic_array.hpp
desc: Resizes the array. Invalidates all references to the storage. Content is undefined, makes no copy of previous data.
params:
  shape: New shape of the array (lengths in each dimension)
  i0: New dimension
  is: New dimension
tparams:
  Int: Integer type
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

