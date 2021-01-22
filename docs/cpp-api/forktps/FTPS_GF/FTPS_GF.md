---
# Do not edit this first section
layout: class
short_name: FTPS_GF
qualified_name: forktps::FTPS_GF
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct FTPS_GF

# Brief description. One line only.
brief: A class that stores all the information about a Green function.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Using Tensor networks, Green functions (at $$T=0$$) are calculated by performing the
  time evolution on the bar- and ket-vector separately:
  
  $$ G_{AB}(t) = \langle \psi_0 | A e^{\pm iHt} B | \psi_0 \rangle= 
  \bigg(\underbrace{ e^{\mp iH\frac{t}{2}} A^\dagger | \psi_0 \rangle}_{\text{One component}} \bigg)^\dagger \cdot
  \bigg(\underbrace{ e^{\pm iH\frac{t}{2}} B         | \psi_0 \rangle}_{\text{One component}} \bigg).
  $$ 
  
  This class stores the two ```GFComponent``` objects for the bra- and the ket-vector
  as well as the actual ```triqs::gf``` object for the numeric values.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - FTPS_GF-constructors
  - siteBra
  - siteKet
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  CBra:
    type: forktps::GFComponent
    desc: Component of the bra-vector.
  CKet:
    type: forktps::GFComponent
    desc: Component of the ket-vector.
  type:
    type: enum forktps::GFtype
    desc: Type of Green function.
    initializer: custom
  TRIQSgf:
    type: gf<struct triqs::gfs::retime, struct triqs::gfs::scalar_valued>
    desc: The actual TRIQS Green function storing the numeric values.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/FTPS_GF/
title: forktps::FTPS_GF
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
parent: forktps
has_children: true
...

