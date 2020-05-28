---
# Do not edit this first section
layout: function
short_name: operator<<
qualified_name: nda::operator<<
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: std::ostream & operator<<(std::ostream & os, struct nda::range_all ) noexcept
    desc: ""

  - signature: std::ostream & operator<<(std::ostream & os, struct nda::ellipsis ) noexcept
    desc: ""

  - signature: std::ostream & operator<<(std::ostream & out, enum nda::layout_prop_e p)
    desc: ""

  - signature: |
      template <int Rank, uint64_t StaticExtents, uint64_t StrideOrder, enum nda::layout_prop_e LayoutProp>
      std::ostream & operator<<(std::ostream & out, idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> const & x)
    desc: ""

  - signature: |
      template <typename A>
      requires (is_regular_or_view_v<A>)
      std::ostream & operator<<(std::ostream & out, A const & a)
    desc: ""

  - signature: |
      template <int R, typename F>
      std::ostream & operator<<(std::ostream & sout, array_adapter<R, F> const & x)
    desc: ""

  - signature: |
      template <typename S, int Rank>
      std::ostream & operator<<(std::ostream & sout, scalar_array<S, Rank> const & expr)
    desc: ""

  - signature: |
      template <typename S>
      std::ostream & operator<<(std::ostream & sout, scalar_matrix<S> const & expr)
    desc: ""

  - signature: |
      template <char OP, typename L>
      std::ostream & operator<<(std::ostream & sout, expr_unary<OP, L> const & expr)
    desc: ""

  - signature: |
      template <char OP, typename L, typename R>
      std::ostream & operator<<(std::ostream & sout, expr<OP, L, R> const & expr)
    desc: ""

  - signature: |
      template <typename F, typename A>
      std::ostream & operator<<(std::ostream & out, expr_call<F, A...> const & )
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  os: __MISSING__
  out: __MISSING__
  p: __MISSING__
  x: __MISSING__
  a: __MISSING__
  sout: __MISSING__
  expr: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  Rank: __MISSING__
  StaticExtents: __MISSING__
  StrideOrder: __MISSING__
  LayoutProp: __MISSING__
  A: __MISSING__
  R: __MISSING__
  F: __MISSING__
  S: __MISSING__
  OP: __MISSING__
  L: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/operator<<
title: nda::operator<<
parent: nda
...

