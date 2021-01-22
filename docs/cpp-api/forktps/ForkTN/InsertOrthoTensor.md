---
# Do not edit this first section
layout: function
fancy_name: InsertOrthoTensor
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Replaces a tensor and shifts the orthogonality center.

# List of overloads. Edit only the desc
overloads:

  - signature: void InsertOrthoTensor(itensor::ITensor &A, int site, enum forktps::OrthoState dir)
    desc: |
      Replaces the tensor on site ```site``` with ```A``` and moves the 
      orthogonality center to the neighbor in direction ```dir```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  When using this function, the user has to make sure that ```A``` has 
  the correct orthogonality property. Usually ```A``` is either $$U$$ or 
  $$V^\dagger$$ of an SVD $$M = USV^\dagger$$.

# Parameters of the function. Edit only the description after the :
params:
  A: New Tensor at ```site```.
  site: Site of new tensor ```A```.
  dir: |
    Defines the new orthogonality center. If ```site``` is an impurity site, 
    ```dir = Downwards``` (```dir = Upwards```) means that the impurity below (above) is 
    the new orthgonality center, while ```dir = Rightwards``` means that the 
    first bath site attached to this impurity is the new orthogonality center 
    Otherwise, ```dir = Rightwards``` (```dir = Leftwards```) means that ```site+1``` 
    (```site-1```) is the new orthgonality center.

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
permalink: /cpp-api/forktps/ForkTN/InsertOrthoTensor/
title: forktps::ForkTN::InsertOrthoTensor
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

