---
# Do not edit this first section
layout: function
fancy_name: (constructors)
function_name: handle_sso
file_name: handle_sso-constructors
namespaces: [nda, mem, handle_sso]
includer: nda/nda.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: handle_sso()
    desc: ""

  - signature: handle_sso(handle_sso &&) noexcept
    desc: ""

  - signature: handle_sso(long size, struct nda::mem::do_not_initialize_t)
    desc: ""

  - signature: handle_sso(long size, struct nda::mem::init_zero_t)
    desc: ""

  - signature: handle_sso(handle_sso const &)
    desc: ""

  - signature: handle_sso(long size)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  size: __MISSING__

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
permalink: /cpp-api/nda/mem/handle_sso/handle_sso-constructors
title: nda::mem::handle_sso::handle_sso<T, Size>
parent: nda::mem::handle_sso
source: nda/storage/handle.hpp
...

