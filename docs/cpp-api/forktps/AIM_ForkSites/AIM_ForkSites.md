---
# Do not edit this first section
layout: class
short_name: AIM_ForkSites
qualified_name: forktps::AIM_ForkSites
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class AIM_ForkSites

# Brief description. One line only.
brief: Site set for impurity models in fork geometry.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  This class is an ```ITensor::SiteSet``` for a multi-orbital Anderson Impurity 
  model in Fork geometry. It hence implements the local degrees of freedom, the 
  conserved quantum numbers and also the local operators for each site. Since it
  also inherits from the ```Fork``` class, it has access to all the geometry 
  helper functions defined there.  
  
  The actual implementation of a single site, including the local operators 
  can be found in ```ForkSite```. There the following operators are defined:
  
  <div class="code-example" markdown="1">
  | Operator Name    | Content        | Matrix in local basis $$\|0 \rangle$$, $$\|1 \rangle$$  |
  |:-----------------|:--------------|:------------------|
  | ```"Id"```                   | Identity operator.                            | $$\left( \begin{matrix} 1 & 0\\ 0 & 1 \end{matrix} \right)$$ |
  | ```"N"```  or ```"Nk"```     | Particle number operator $$n$$.               | $$\left( \begin{matrix} 0 & 0\\ 0 & 1 \end{matrix} \right)$$ |
  | ```"One-N"```                | Operator $$ 1 -n$$ (projector on empty state) | $$\left( \begin{matrix} 1 & 0\\ 0 & 0 \end{matrix} \right)$$ |
  | ```"Nsym"``` or ```"Nksym"```| Operator $$n-0.5$$                            | $$\left( \begin{matrix} -0.5 & 0\\ 0 & 0.5 \end{matrix} \right)$$ |
  | ```"Ck"```                   | Annihilation operator $$c$$                   | $$\left( \begin{matrix} 0 & 1\\ 0 & 0 \end{matrix} \right)$$ |
  | ```"CkD"```                  | Creation operator $$c^\dagger$$               | $$\left( \begin{matrix} 0 & 0\\ 1 & 0 \end{matrix} \right)$$ |
  | ```"p"``` or ```"F"```       | Fermi-sign operator $$(-1)^n$$                | $$\left( \begin{matrix} 1 & 0\\ 0 & -1 \end{matrix} \right)$$ |  
  
  </div>
  
  Note that the local degree of freedom is the same for bath sites and impurity sites. 
  Therefore both have the same local operators. These operators can be accessed with 
  the ```ITensor::SiteSet::op``` function (see example below).

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - AIM_ForkSites-constructors
  - AIM_ForkSites-destructor
  - read
  - write
  - operator=

# A list of non_member_functions
non_member_functions: []

# Code example. desc: any markdown to explain it.
example:
  desc: |
    Access to the operators and indices that define the ```SiteSet``` is 
    provided via the ```ITensor::SiteSet::op()``` function and ```ITensor::SiteSet::si()```
    function respectively:
  code: |
    #include <forktps/fork/SiteSets/AIM_ForkSites.hpp>
    #include <itensor/itensor.h>
    using namespace forktps;
    
    int main() {
      int N = 12, NArms = 4;
      AIM_ForkSites sites(N, NArms); // create SiteSet for 12 sites int total and 4 arms.
    
      ITensor n3 = sites.op("Nk", 3); // particle density operator at site 3.
      Index s2   = sites.si(2);       // Site index of site 2
    
      itensor::PrintDat(n3); // Print Tensor.
      itensor::PrintDat(s2); // Print Index.
    
      if (itensor::hasIndex(sites.op("Ck", 4), sites.si(4)))
        std::cout
           << "Yay it works!\n"; // Check that the annihilation operator on site 4 really has the index of the SiteSet.
    }
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/AIM_ForkSites/
title: forktps::AIM_ForkSites
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/SiteSets/AIM_ForkSites.hpp
parent: forktps
has_children: true
...

