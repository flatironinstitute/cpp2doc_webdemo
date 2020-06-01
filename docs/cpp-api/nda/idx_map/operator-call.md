---
# Do not edit this first section
layout: function
fancy_name: operator()
function_name: operator()
file_name: operator-call
namespaces: [nda, idx_map]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Number of variables must be exactly the rank or are optionally

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <typename Args> 
      long operator()(const Args &... args) noexcept(true) const
    desc: Number of variables must be exactly the rank or are optionally

# Long description. Any Markdown, with code, latex, multiline with |
desc: checked at runtime

# Parameters of the function. Edit only the description after the :
params:
  args: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  Args: __MISSING__

# Desc of the return value
return_value: ":        the linear position"

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/idx_map/operator-call
title: nda::idx_map::operator()
parent: nda::idx_map
...

