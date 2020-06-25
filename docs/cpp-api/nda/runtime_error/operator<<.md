---
# Do not edit this first section
layout: function
fancy_name: operator<<
namespace: nda::runtime_error
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename T>
      runtime_error &operator<<(T const &x)
    desc: ""

  - signature: runtime_error &operator<<(char const *mess)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  x: __MISSING__
  mess: __MISSING__

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
permalink: /cpp-api/nda/runtime_error/operator<</
title: nda::runtime_error::operator<<
parent: nda::runtime_error
source: nda/exceptions.hpp
...

