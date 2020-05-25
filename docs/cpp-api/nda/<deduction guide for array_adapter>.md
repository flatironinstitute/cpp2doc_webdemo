---
layout: function
short_name: <deduction guide for array_adapter>
qualified_name: nda::<deduction guide for array_adapter>
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  template <int R, typename F, typename Int> auto <deduction guide for array_adapter>(const std::array<type-parameter-0-2, R> & shape, F f)-> array_adapter<R, F>:
    desc: ""
    source: nda/array_adapter.hpp
  template <int R, typename F> auto <deduction guide for array_adapter>(array_adapter<R, F> )-> array_adapter<R, F>:
    desc: ""
    source: nda/array_adapter.hpp
  template <auto R, typename Int, typename F> auto <deduction guide for array_adapter>(std::array<Int, R> , F )-> array_adapter<R, F>:
    desc: ""
    source: nda/array_adapter.hpp
desc: ""
params:
  shape: __MISSING__
  f: __MISSING__
tparams:
  R: __MISSING__
  F: __MISSING__
  Int: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
title: nda::<deduction guide for array_adapter>
permalink: /cpp-api/nda/<deduction guide for array_adapter>
...

