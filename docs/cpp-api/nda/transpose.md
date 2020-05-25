---
layout: function
short_name: transpose
qualified_name: nda::transpose
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <typename A> requires (is_regular_or_view_v<std::decay_t<A>> and (std::decay_t<A>::rank == 2)) auto transpose(A && a):
    desc: ""
    source: nda/layout_transforms.hpp
desc: ""
params:
  a: __MISSING__
tparams:
  A: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::transpose
permalink: /cpp-api/nda/transpose
...

