---
# Do not edit this first section
layout: class
short_name: GFComponent
qualified_name: forktps::GFComponent
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct GFComponent

# Brief description. One line only.
brief: A GFComponent represents information about one particular time evolution

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  A GFComponent represents information about one particular time evolution that needs to be preformed to calculate a Green's function.  
  The way Tensor Networks compute Green's functions is that they split the total time evolution to time $$t$$ into 
  two time evolutions up to time $$\frac{t}{2}$$\:  
  
  $$ \langle \psi_0 | A e^{\pm iHt} B | \psi_0 \rangle= 
  \bigg(\underbrace{ e^{\mp iH\frac{t}{2}} A^\dagger | \psi_0 \rangle}_{\text{One component}} \bigg)^\dagger \cdot
  \bigg(\underbrace{ e^{\pm iH\frac{t}{2}} B         | \psi_0 \rangle}_{\text{One component}} \bigg).
  $$ 
  
  The reson for doing so is that the time evolution generations entanglement very 
  fast which limits the maximum reachable time. By splitting the time evolution
  up, one gains about a factor of 2 in the maximum time reachable.
  
  The above equation shows that each Green's function consists of two time evolutions
  one for a bra- and one for the ket-vector. A Green's function component is 
  a container that stores all the information about a component like which operator 
  to apply, if it is a bra- or a ket-component, the direction of the time evolution 
  (plus or minus sign in the exponent) and whether the time evolution is 
  real-time or imaginary time. Additionally a component provides functionality 
  for using it in the ```forktps::solver_core``` class.
  
  Note a component doesn't store the actual state.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - GFComponent-constructors
  - GFComponent-destructor
  - FolderName
  - FileNameBase
  - operator<
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  op:
    type: triqs::operators::monomial_t
    desc: The operator to apply independent of bra- or ket vector. In the example above for the bra vector it would contain $$A^\dagger$$. The operator is currently only a ```triqs::operator::monomial_t``` i.e. a single string of creation/annihilation operators.
  braket:
    type: enum forktps::BraKet
    desc: Bra- or a Ket-vector.
    initializer: Ket
  tdir:
    type: enum forktps::TevoDir
    desc: "Forward or backward time evolution. Note forwards means an overall \"-\" sign in the exponenent: $$e^{-iHt}$$ or $$e^{-H \\tau }$$."
    initializer: Forward
  imag_tevo:
    type: bool
    desc: If true, imaginary time evolution is performed. In that case, ```tdir``` will be forward independent of what else is provided.
    initializer: "{}"

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/GFComponent/
title: forktps::GFComponent
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
parent: forktps
has_children: true
...

