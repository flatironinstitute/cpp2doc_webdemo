---
# Do not edit this first section
layout: class
short_name: tn_approx
qualified_name: forktps::tn_approx
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct tn_approx

# Brief description. One line only.
brief: Approximation parameters of the forktps tensor network.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Allows to set the truncated weight and the maximally allowed bond dimension 
  separately for the three different kinds of links: impurity-impurity, 
  bath-bath and impurity-bath.  
  
  Tensors are truncated via Singular Value Decompositions (SVD). 
  For this the tensor is reshaped into a matrix $$M$$ where the column index is 
  the index that is truncated and all other indices are the row index. A SVD 
  of this matrix gives:
  
  $$M_{ij} = \sum_\alpha U_{i\alpha} s_{\alpha} V^\dagger_{\alpha j}$$ 
  
  with singular values $$s_\alpha$$ sorted in descending order. Truncation 
  is then defined as only using the largest $$m$$ Singular values and discarding
  the rest. The truncated weight of such a truncation is defined as the sum of 
  all discarded squared Singular values:
  
  $$t_w = \sum_{\alpha>m} s_\alpha^2.$$  
  
  Truncation of Tensor Networks can now be done in two ways (and a mix of these two):  
  <div class="code-example" markdown="1">
  1. By specifying a truncated weight, say $$10^{-10}$$, the number of Schmidt values 
  kept is increased until $$t_w < 10^{-10}$$.  
  2. If a maximum bond dimension is provided, most this number 
  of Schmidt values is used no matter how large the truncated weight becomes.
  </div>
  
  
  If both are provided, the simulation tries to take as many Schmidt values as 
  needed to satisfy the truncated weight, but never uses more than the maximal 
  bond dimension. In that case it is important to check for convergence with 
  respect to the maximum bond dimension.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - tn_approx-constructors
  - tn_approx-destructor
  - hdf5_format
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  tw_i:
    type: double
    desc: Truncated weight used for impurity-impurity links.
    initializer: 1E-10
  tw_b:
    type: double
    desc: Truncated weight used for bath-bath links.
    initializer: 1E-10
  tw_ib:
    type: double
    desc: Truncated weight used for impurity-bath links.
    initializer: 1E-10
  maxm_i:
    type: int
    desc: Maximal bond dimension used for impurity-impurity links.
    initializer: 200
  maxm_b:
    type: int
    desc: Maximal bond dimension used for bath-bath links.
    initializer: 500
  maxm_ib:
    type: int
    desc: Maximal bond dimension used for impurity-bath links.
    initializer: 300

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/tn_approx/
title: forktps::tn_approx
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/params.hpp
parent: forktps
has_children: true
...

