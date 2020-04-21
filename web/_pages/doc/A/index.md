---
layout: class
short_name: A
qualified_name: A
namespaces: []
desc: |
  A very *long* and *boring* description of the function A
  maybe with some equations
  
  $$ \int f(x) \ dx = 0 $$
includer: file1.hpp
brief: The short description of A
tparams:
  T: Doc of T
methods:
  - A<T>
  - operator int
  - m_static
  - f
  - g
non member functions: []
member_fields:
  x:
    type: T
    desc: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
signature: template <typename T> struct A
source: src/test.hpp
...
