---
# Do not edit this first section
layout: function
fancy_name: isnan
function_name: isnan
file_name: isnan
qualified_name: nda::isnan
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: bool isnan(std::complex<double> const & z)
    desc: ""

  - signature: |
      template <typename A>
      requires (is_ndarray_v<std::decay_t<A>>)
      auto isnan(A && a)
    desc: Maps isnan onto the array

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  z: __MISSING__
  a: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  A: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/isnan
title: nda::isnan
parent: nda
...


