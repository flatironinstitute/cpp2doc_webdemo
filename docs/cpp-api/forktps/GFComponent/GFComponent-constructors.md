---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::GFComponent
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: GFComponent()
    desc: Default Constructor

  - signature: GFComponent(triqs::operators::monomial_t op, enum forktps::BraKet b, enum forktps::TevoDir d = Forward, bool im = false)
    desc: Component with operator ```op``` applied to bra or ket vector as defined by ```b```. Time evolution is performed in direction ```d``` doing imaginary time evolution if ```im==true```. Note that when doing imaginary time evolution, ```d``` doesn't matter since it will always be with a negative exponent $$e^{-H \tau}$$.

  - signature: GFComponent(forktps::triqs_indx s, enum forktps::BraKet b, enum forktps::GFtype type, bool im = false)
    desc: Component with operator defined by the ```s``` (orbital/spin) and ```type```. Time evolution direction decduced from the definition of retarded Green's functions (greater or lesser).

  - signature: GFComponent(GFComponent const &)
    desc: ""

  - signature: GFComponent(GFComponent &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  op: Operator to apply before time evolution.
  b: Bra- or ket-vector.
  d: Time evolution direction.
  im: Perform imaginary time-evolution if true.
  s: Orbital/spin index.
  type: Type of Green's function. For example ```singlePart_lesser```.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/GFComponent/GFComponent-constructors/
title: forktps::GFComponent::GFComponent
parent: forktps::GFComponent
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

