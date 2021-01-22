---
# Do not edit this first section
layout: class
short_name: bath_site
qualified_name: forktps::bath_site
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct bath_site

# Brief description. One line only.
brief: Bath parameters $$\epsilon_k$$ and $$V_k$$ of a single bath site.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  A bath site consists of a on site-energy $$\epsilon_k$$ and a vector 
  of hopping amplitudes $$V_k$$. The vector entries of $$V_k$$ are defined
  as:  
  $$V_k[i]$$ is the hopping amplitude of the hopping process onto the impurity
  of index $$i$$. Here $$i$$ refers to the matrix index as defined by 
  the TRIQS block Green's function.  
  Note that the entries in $$V_k$$ are the hopping amplitudes _onto_ the 
  impurity i.e. the term $$V_k c_0^\dagger c_k$$ the hopping term onto the
  bath site has the complex conjugate amplitude.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - bath_site-constructors
  - bath_site-destructor
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  eps:
    type: double
    desc: On-site energy.
  V:
    type: forktps::cvec
    desc: Vector of hopping amplitudes.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/bath_site/
title: forktps::bath_site
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/Bath.hpp
parent: forktps
has_children: true
...

