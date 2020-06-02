---
# Do not edit this first section
layout: function
fancy_name: group_indices_layout
function_name: group_indices_layout
file_name: group_indices_layout
namespaces: [nda]
includer: nda/nda.hpp

# Brief description. One line only.
brief: Regroup indices for a C array

# List of overloads. Edit only the desc
overloads:

  - signature: |
      template <int Rank, uint64_t StaticExtents, uint64_t StrideOrder, enum nda::layout_prop_e LayoutProp,
                typename IntSequences>
      auto group_indices_layout(idx_map<Rank, StaticExtents, StrideOrder, LayoutProp> const &idxm, IntSequences...)
    desc: Regroup indices for a C array

# Long description. Any Markdown, with code, latex, multiline with |
desc: "Usage : group_indices_view(A, std::index_{0,1}, {2,3}) Precondition : - every indices is listed in the {...} exactly once. - the indices in one group are consecutive in memory."

# Parameters of the function. Edit only the description after the :
params:
  idxm: __MISSING__

# Template parameters of the function. Edit only the description after the :
tparams:
  Rank: __MISSING__
  StaticExtents: __MISSING__
  StrideOrder: __MISSING__
  LayoutProp: __MISSING__
  IntSequences: __MISSING__

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: __MISSING__
  code: __MISSING__

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/group_indices_layout
title: nda::group_indices_layout
parent: nda
...

