---
# Do not edit this first section
layout: function
fancy_name: InsertOrthoTensors
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Inserts two tensors and shifts the orthogonality center.

# List of overloads. Edit only the desc
overloads:

  - signature: void InsertOrthoTensors(itensor::ITensor &&A, itensor::ITensor &&B, int siteA, int siteB, enum forktps::OrthoState dir)
    desc: Replaces the tensors at sites ```siteA``` and ```siteB``` with ```A``` and ```B``` respectively and moves the orthogonality center according to *dir*.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  When using this function, the user has to make sure that A and B have the 
  correct orthogonality properties. Usually these tensors are the result
  of an SVD:
  
  $$M = USV^\dagger.$$
  
  One of the two is then $$U$$ $$(V^\dagger)$$ and the 
  other $$SV^\dagger$$ $$(US)$$. If this function is called with 
  ```siteA > siteB```, ```siteA``` and ```siteB``` are swapped and also ```A``` is swapped with ```B```, while 
  ```dir``` is unchanged.

# Parameters of the function. Edit only the description after the :
params:
  A: New tensor at ```siteA```.
  B: New tensor at ```siteB```.
  siteA: Site of new tensor ```A```.
  siteB: Site of new tensor ```B```.
  dir: Defines the new orthogonality center. If siteA and siteB are both impurity sites, ```dir = Downwards (Upwards)``` means ```siteB``` (```siteA```) is the new orthgonality center. Otherwise, ```dir = Rightwards (Leftwards)``` means ```siteB``` (```siteA```) is the new orthgonality center.

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
permalink: /cpp-api/forktps/ForkTN/InsertOrthoTensors/
title: forktps::ForkTN::InsertOrthoTensors
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

