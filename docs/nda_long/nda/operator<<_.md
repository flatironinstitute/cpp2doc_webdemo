---
layout: function
short_name: operator<<
qualified_name: nda::operator<<
namespaces: [nda]
includer: nda/nda.hpp
brief: ""
overloads:
  std::ostream & nda::operator<<(std::ostream & os, struct nda::range_all ) noexcept:
    desc: ""
    source: nda/layout/range.hpp
  std::ostream & nda::operator<<(std::ostream & os, struct nda::ellipsis ) noexcept:
    desc: ""
    source: nda/layout/range.hpp
  std::ostream & nda::operator<<(std::ostream & out, enum nda::layout_prop_e p):
    desc: ""
    source: nda/print.hpp
  template <int Rank, uint64_t StaticExtents, uint64_t StrideOrder, enum nda::layout_prop_e LayoutProp> std::ostream & nda::operator<<(std::ostream & out, const idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> & x):
    desc: ""
    source: nda/print.hpp
  template <typename A> std::ostream & nda::operator<<(std::ostream & out, const A & a):
    desc: ""
    source: nda/print.hpp
  template <typename S, int Rank> std::ostream & nda::operator<<(std::ostream & sout, const scalar_array<S, Rank> & expr):
    desc: ""
    source: nda/print.hpp
  template <typename S> std::ostream & nda::operator<<(std::ostream & sout, const scalar_matrix<S> & expr):
    desc: ""
    source: nda/print.hpp
  template <char OP, typename L> std::ostream & nda::operator<<(std::ostream & sout, const expr_unary<OP, L> & expr):
    desc: ""
    source: nda/print.hpp
  template <char OP, typename L, typename R> std::ostream & nda::operator<<(std::ostream & sout, const expr<OP, L, R> & expr):
    desc: ""
    source: nda/print.hpp
  template <typename F, typename A> std::ostream & nda::operator<<(std::ostream & out, const expr_call<F, A...> & ):
    desc: ""
    source: nda/print.hpp
desc: ""
params:
  os: __MISSING__
  "": __MISSING__
  out: __MISSING__
  p: __MISSING__
  x: __MISSING__
  a: __MISSING__
  sout: __MISSING__
  expr: __MISSING__
tparams:
  Rank: __MISSING__
  StaticExtents: __MISSING__
  StrideOrder: __MISSING__
  LayoutProp: __MISSING__
  A: __MISSING__
  S: __MISSING__
  OP: __MISSING__
  L: __MISSING__
  R: __MISSING__
  F: __MISSING__
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

