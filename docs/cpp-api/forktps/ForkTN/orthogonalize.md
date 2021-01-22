---
# Do not edit this first section
layout: function
fancy_name: orthogonalize
namespace: forktps::ForkTN
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Orthogonalizes the whole TN tensor network without taking the current orthogonality conditions into account.

# List of overloads. Edit only the desc
overloads:

  - signature: void orthogonalize(itensor::Args &args = Args::global())
    desc: Orthogonalizes the whole TN tensor network and truncates based on the parameters specified in ```args```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  This function first establishes an orthogonality center using a small 
  truncated weight and then repeats the decomposition of each tensor using
  the arguments specified in ```args```.

# Parameters of the function. Edit only the description after the :
params:
  args: |
    Arguments as ```itensor::Args``` object. <br> <br>
    ```Cutoff       double (default: itensor::MIN_CUT)```  
                    Truncated weight used in the tensor decomposition. Overwritten by CutoffB, CutoffIB, or CutoffI respectively.  
    ```CutoffI      double (default: Cutoff)```  
                    Truncated weight used for the impurity-impurity links.  
    ```CutoffB      double (default: Cutoff)```  
                    Truncated weight used for the bath-bath links.  
    ```CutoffIB     double (default: Cutoff)```  
                    Truncated weight used for the impurity-bath links.  
    ```MaxDim       double (default: 30000)```  
                    Maximal bond dimension for the tensor decomposition. Overwritten by MaxmB, MaxmIB or MaxmI respectively.  
    ```MaxmI        double (default: MaxDim)```  
                    Maximal bond dimension for the impurity-impurity links.      
    ```MaxmB        double (default: MaxDim)```  
                    Maximal bond dimension for the bath-bath links.  
    ```MaxmIB       double (default: MaxDim)```  
                    Maximal bond dimension for the impurity-bath links.  
    ```UseSVD       bool (default: true)```  
                    If true, use an svd for the tensor decomposition, otherwise use itensors denmatDecomp() if Cutoff$$<10^{-12}$$.  
    ```DoNormalize  bool (default: false)```  
                    If true, normalizes the orthogonality center at each decomposition.

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
permalink: /cpp-api/forktps/ForkTN/orthogonalize/
title: forktps::ForkTN::orthogonalize
parent: forktps::ForkTN
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/ForkTN.hpp
...

