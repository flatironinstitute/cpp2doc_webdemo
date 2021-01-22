---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::AIM
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Constructors of ```AIM``` class.

# List of overloads. Edit only the desc
overloads:

  - signature: |
      AIM(itensor::SiteSet const &sites, forktps::dvec const &eps, forktps::dvec const &V, double U, double Up, double J,
          int NArms, itensor::Args const &args)
    desc: |
      Fully degenerate (baths of all orbitals/spins are equal) Hamiltonian with 
      site indices ```sites``` and ```NArms``` arms.  
      
      The on-site energies are given by ```eps``` with ```eps[0]``` being the one
      for the impurity and the hybridization is given by ```V```. Note that ```V[i]``` is 
      the hybridization to the bath site with on-site energy ```eps[i+1]```.
      
      ```U```, ```J``` and ```Up``` are the interaction parameters and ```args```
      controls if the interaction is with density-density terms only or 
      if spin-flip and pair hoppings are included.

  - signature: |
      AIM(itensor::SiteSet const &sites, forktps::Dmat const &eps, forktps::Cmat const &V, double U, double Up, double J,
          int NArms, itensor::Args const &args)
    desc: |
      Hamiltonian for a non-degenerate bath with site indices ```sites``` and ```NArms``` arms. 
      
      The bath parameters ```eps``` and ```V``` are forwarded to the respective constructor
      for the class ```bath```.
      
      ```U```, ```J``` and ```Up``` are the interaction parameters and ```args```
      controls if the interaction is with density-density terms only or 
      if spin-flip and pair hoppings are included.

  - signature: AIM(itensor::SiteSet const &sites, forktps::bath ba, forktps::hloc e0, forktps::H_int hint, itensor::Args const &args)
    desc: |
      Hamiltonian with site indices ```sites```, bath parameters ```ba```, non-interacting 
      impurity Hamiltonian ```e0``` and interaction ```hint```.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  sites: Defines the local degrees of freedom of the impurity model.
  eps: On-site energies.
  V: Hybridization strenght.
  U: Coulomb interaction $$U$$.
  Up: Coulomb interaction $$U'$$ (usually $$U-2J$$).
  J: Hund's coupling.
  NArms: Number of arms.
  args: |
    List of arguments that can take the following entries:  
    
    ```E0Shift   double (default 0.)```   
    Shift $$E_0$$ of the Hamiltonian: $$H \to H + E_{0}$$.  
    
    ```DDonly    bool (default false)```     
    If true, spin-flip and pair-hopping terms are neglected.
  ba: Bath object storing the bath parameters $$\epsilon_k$$ and $$V_k$$.
  e0: Non-interacting impurity Hamiltonian.
  hint: Interaction Hamiltonian.

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
permalink: /cpp-api/forktps/AIM/AIM-constructors/
title: forktps::AIM::AIM
parent: forktps::AIM
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/FTPO/AIM.hpp
...

