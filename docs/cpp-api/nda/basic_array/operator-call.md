---
# Do not edit this first section
layout: function
fancy_name: operator()
function_name: operator()
file_name: operator-call
qualified_name: nda::basic_array::operator()
namespaces: [nda, basic_array]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Access the array, make a lazy expression or slice of it depending on the arguments

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T>
      decltype(auto) operator()(const T &... x) noexcept(has_no_boundcheck) const &
    desc: Access the array, make a lazy expression or slice of it depending on the arguments

  - signature: |
      template <typename T>
      decltype(auto) operator()(const T &... x) noexcept(has_no_boundcheck) &
    desc: ""

  - signature: |
      template <typename T>
      decltype(auto) operator()(const T &... x) noexcept(has_no_boundcheck) &&
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  x: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  T: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array/operator-call
title: nda::basic_array::operator()
parent: nda::basic_array
...

