---
# Do not edit this first section
layout: class
short_name: AIM
qualified_name: forktps::AIM
namespace: forktps
includer: forktps/forktps_include.hpp
signature: class AIM

# Brief description. One line only.
brief: Generates the Hamiltonian FTPO for a diagonal bath.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  This FTPO is for the purely diagonal case also with only diagonal 
  single-particle terms on the impurity, i.e., no impurity-impurity hoppings.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - AIM-constructors
  - operator ForkTPO

# A list of non_member_functions
non_member_functions: []

# Code example. desc: any markdown to explain it.
example:
  desc: |
    Create a simple 2-band Hamiltonian with a degenerate bath and three
    bath sites per orbital/spin.
  code: |
    #include "forktps/fork/Bath.hpp"
    #include "forktps/params.hpp"
    #include <forktps/fork/FTPO/AIM.hpp>
    #include <forktps/fork/SiteSets/AIM_ForkSites.hpp>
    using namespace forktps;
    
    int main() {
      int N = 16, Norbs = 2, NArms = 2 * Norbs; // 3 bath sites per orbital/spin
      double U = 0.5, J = 0.1, Up = U - 2 * J;  // interaction parameters
    
      AIM_ForkSites sites(N, NArms); // SiteSet
    
      std::vector<double> eps = {-U / 2., -1.0, 0.0, 1.0}; // on-site energies, first entry is for impurity
      std::vector<double> V   = {0.1, 0.1, 0.1};           // hybridizations
    
      bath b(eps, V, Norbs);       // bath
      hloc e0(eps, Norbs);         // impurity single-particle Hamiltonian (only uses eps[0])
      H_int hint(U, J, Up, false); // interaction with dd_only = false
    
      // Create the Hamiltonian
      ForkTPO H = AIM(sites, b, e0, hint, Args());
    
      return 0;
    }
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/AIM/
title: forktps::AIM
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/FTPO/AIM.hpp
parent: forktps
has_children: true
...

