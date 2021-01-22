---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::FTPS_GF
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: ""

# List of overloads. Edit only the desc
overloads:

  - signature: FTPS_GF()
    desc: Default constructor.

  - signature: |
      FTPS_GF(forktps::triqs_indx siteBra, forktps::triqs_indx siteKet, enum forktps::GFtype t, bool imag_tevo,
              gf_mesh<struct triqs::gfs::retime> tmesh = = {})
    desc: Constructor used for the default type GFs like single-particle or density-density

  - signature: |
      FTPS_GF(triqs::operators::monomial_t b, triqs::operators::monomial_t k, bool imag_tevo,
              gf_mesh<struct triqs::gfs::retime> tmesh = = {})
    desc: Constructor using monomials *b* and *k* for the bra- and ket-vector.

  - signature: FTPS_GF(FTPS_GF const &)
    desc: ""

  - signature: FTPS_GF(FTPS_GF &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  siteBra: __MISSING__
  siteKet: __MISSING__
  t: __MISSING__
  imag_tevo: __MISSING__
  tmesh: __MISSING__
  b: __MISSING__
  k: __MISSING__

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
permalink: /cpp-api/forktps/FTPS_GF/FTPS_GF-constructors/
title: forktps::FTPS_GF::FTPS_GF
parent: forktps::FTPS_GF
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/GFComponent.hpp
...

