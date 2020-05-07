---
layout: function
short_name: basic_array
qualified_name: nda::basic_array::basic_array
namespaces: [nda, basic_array]
includer: nda/nda.hpp
brief: Empty array
overloads:
  nda::basic_array::basic_array():
    desc: Empty array
    source: nda/basic_array.hpp
  nda::basic_array::basic_array(const basic_array & x):
    desc: Makes a deep copy, since array is a regular type
    source: nda/basic_array.hpp
  nda::basic_array::basic_array(basic_array && X):
    desc: ""
    source: nda/basic_array.hpp
  explicit  nda::basic_array::basic_array(const shape_t<Rank> & shape):
    desc: ""
    source: nda/basic_array.hpp
  nda::basic_array::basic_array(const nda::basic_array::idx_map_t & idxm, nda::basic_array::storage_t && mem_handle):
    desc: ""
    source: nda/basic_array.hpp
  template <typename Int> explicit  nda::basic_array::basic_array(long i0, Int... is):
    desc: ""
    source: nda/basic_array.hpp
  template <typename A>  nda::basic_array::basic_array(const A & x):
    desc: ""
    source: nda/basic_array.hpp
  template <typename Lazy>  nda::basic_array::basic_array(const Lazy & lazy):
    desc: ""
    source: nda/basic_array.hpp
  template <typename T>  nda::basic_array::basic_array(const std::initializer_list<T> & l):
    desc: Construct from the initializer list
    source: nda/basic_array.hpp
  template <typename T>  nda::basic_array::basic_array(const std::initializer_list<std::initializer_list<T> > & ll):
    desc: Construct from the initializer list of list
    source: nda/basic_array.hpp
  template <typename Initializer> explicit  nda::basic_array::basic_array(const shape_t<Rank> & shape, Initializer initializer):
    desc: "[Advanced] Construct from shape and a Lambda to initialize the elements."
    source: nda/basic_array.hpp
desc: ""
params:
  x: ""
  X: __MISSING__
  shape: Shape of the array (lengths in each dimension)
  idxm: __MISSING__
  mem_handle: __MISSING__
  i0: __MISSING__
  is: __MISSING__
  lazy: ""
  l: Initializer list
  ll: Initializer list of list Rank == 2 and ValueType is constructible from T
  initializer: The lambda
tparams:
  Int: __MISSING__
  A: A type modeling NdArray
  Lazy: A type modeling IsAssignRHS
  T: Any type from which ValueType is constructible
  Initializer: a callable on Rank longs which returns something is convertible to ValueType
return_value: __MISSING__
example:
  desc: __MISSING__
  code: __MISSING__
see-also: []
...

