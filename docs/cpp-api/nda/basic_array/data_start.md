---
# Do not edit this first section
layout: function
fancy_name: data_start
namespace: nda::basic_array
includer: nda/nda.hpp

# Brief description. One line only.
brief: "Starting point of the data. NB : this is NOT the beginning of the memory block for a view in general"

# List of overloads. Edit only the desc
overloads:

  - signature: ValueType const *data_start() noexcept const
    desc: "Starting point of the data. NB : this is NOT the beginning of the memory block for a view in general"

  - signature: ValueType *data_start() noexcept
    desc: "Starting point of the data. NB : this is NOT the beginning of the memory block for a view in general"

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  {}

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/basic_array/data_start/
title: nda::basic_array<ValueType, Rank, Layout, Algebra, ContainerPolicy>::data_start
parent: nda::basic_array
source: nda/_impl_basic_array_view_common.hpp
...

