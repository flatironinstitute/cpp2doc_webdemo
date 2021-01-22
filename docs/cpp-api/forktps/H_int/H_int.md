---
# Do not edit this first section
layout: class
short_name: H_int
qualified_name: forktps::H_int
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct H_int

# Brief description. One line only.
brief: Interaction Hamiltonian.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Tensor network methods usually also encode Hamiltonians as Tensor Networks, 
  so-called MPO's. For complicated long-range terms, this can be quite difficult
  and the bond-dimension needed to represent a Hamiltonian as MPO can be quite 
  large. For that reason, the ```ForkTPS``` library cannot solve Impurity
  Models with arbitrary interaction Hamiltonians. Currently it can only deal with 
  Kanamori-like interactions for up to $$5$$ orbitals (with and without spin-flip
  and pair-hopping terms).  
  
  The purpose of this object is to store the three relevant parameters 
  $$U$$, $$J$$ and $$U'$$ encoding a Kanamori Hamiltonian:
  
  $$ U\sum_m n_{m\uparrow} n_{m \downarrow} + U' \sum_{m'>m, \sigma} n_{m'\sigma} n_{m \bar{\sigma} }
  + (U'-J) \sum_{m'>m, \sigma} n_{m'\sigma} n_{m \sigma}$$  
  
  $$+ J \sum_{m'>m} \left( c^\dagger_{m \uparrow} c_{m \downarrow} c_{m' \uparrow} c^\dagger_{m' \downarrow} + h.c. \right)
  - J \sum_{m'>m} \left( c^\dagger_{m \uparrow} c^\dagger_{m \downarrow} c_{m' \uparrow} c_{m' \downarrow} + h.c. \right)$$

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - H_int-constructors
  - H_int-destructor
  - operator!
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  U:
    type: double
    desc: Coulomb repulsion between spin-up and spin-down electrons on the same orbital.
    initializer: "{}"
  J:
    type: double
    desc: Hund's coupling.
    initializer: "{}"
  Up:
    type: double
    desc: Coulomb repulsion between spin-up and spin-down electrons on different orbitals (usually $$U' = U-2J$$).
    initializer: "{}"
  dd_only:
    type: bool
    desc: If true, neglect spin-flip and pair hopping terms, i.e., perform the calculation with density-density terms only.
    initializer: true

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/H_int/
title: forktps::H_int
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

