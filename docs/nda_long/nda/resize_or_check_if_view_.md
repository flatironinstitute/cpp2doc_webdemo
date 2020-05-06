---
layout: function
short_name: resize_or_check_if_view
qualified_name: nda::resize_or_check_if_view
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <typename A> void nda::resize_or_check_if_view(A & a, const std::array<long, A::rank> & sha):
    desc: ""
    source: nda/basic_functions.hpp
desc: Resize if A is a container, or assert that the view has the right dimension if A is view
params:
  a: A container or a view
  sha: __MISSING__
tparams:
  A: ""
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...
