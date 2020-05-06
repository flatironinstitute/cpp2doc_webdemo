---
layout: function
short_name: shape
qualified_name: nda::basic_array::shape
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: Shape of this
overloads:
  const shape_t<rank> & nda::basic_array::shape()  const:
    desc: Shape of this
    source: nda/_impl_basic_array_view_common.hpp
  long nda::basic_array::shape(int i)  const:
    desc: Same as shape()[i]
    source: nda/_impl_basic_array_view_common.hpp
desc: ""
params:
  i: __MISSING__
tparams:
  {}
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

