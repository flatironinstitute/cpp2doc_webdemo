---
# Do not edit this first section
layout: function
fancy_name: (constructors)
namespace: forktps::AIM_ForkSites
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Constructors

# List of overloads. Edit only the desc
overloads:

  - signature: AIM_ForkSites()
    desc: Default Constructor.

  - signature: AIM_ForkSites(int N, int NArms, itensor::Args const &args = Args::global())
    desc: A SiteSet with ```N``` sites in total and ```NArms``` arms. ```args``` defines the conserved quatities.

  - signature: AIM_ForkSites(std::vector<int> const &Nbath, itensor::Args const &args = Args::global())
    desc: A SiteSet with ```Nbath[m]``` bath sites in spin-orbital ```m```. ```args``` defines the conserved quatities.

  - signature: AIM_ForkSites(forktps::ForkTPS const &psi, itensor::Args const &args = Args::global())
    desc: A site set constructed from a ```ForkTPS``` with the same site indices as the state has. ```args``` is inactive in that case since quantum number information is provided by the state already.

  - signature: AIM_ForkSites(AIM_ForkSites const &)
    desc: ""

  - signature: AIM_ForkSites(AIM_ForkSites &&)
    desc: ""

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  N: Total number of sites.
  NArms: Number of arms.
  args: |
    Arguments as ```itensor::Args``` object defines which conserved quantities are used. <br> <br>  
      
      
    ```"conserveN"    bool (default: true)```  
    Flag that decides whether total particle number should be conseverd or not. <br> <br>
    ```"conserveSz"   bool (default: true)```      
    Flag that decides whether Sz should be conseverd or not.
  Nbath: Number of bath sites at each orbital-spin, vector is one-indexed.
  psi: State to construct the ```ITensor::SiteSet``` from.

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
permalink: /cpp-api/forktps/AIM_ForkSites/AIM_ForkSites-constructors/
title: forktps::AIM_ForkSites::AIM_ForkSites
parent: forktps::AIM_ForkSites
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/SiteSets/AIM_ForkSites.hpp
...

