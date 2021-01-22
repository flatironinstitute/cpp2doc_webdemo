---
# Do not edit this first section
layout: class
short_name: container_set
qualified_name: forktps::container_set
namespace: forktps
includer: forktps/forktps_include.hpp
signature: struct container_set

# Brief description. One line only.
brief: The collection of all output containers in solver_core.

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  Note that not all of these Green's functions are available for every solver 
  since they are std::optional. 
  Depending on the solve_parameters used during solve call, some might be
  deactivated. For example in a default calculation,
  $$N_{ij}(t)$$ is not computed and the corrsponding Green's functions are
  non-existent.

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods:
  - container_set-constructors
  - container_set-destructor
  - operator=

# A list of non_member_functions
non_member_functions: []
member_fields:
  G_gr:
    type: std::optional<g_t_t>
    desc: Greater single particle Greens functions in real time $$G_{ij}^{>}(t) = \ e^{i E_0 t} \langle c_i e^{-iHt} c_j^\dagger \rangle$$
  G_le:
    type: std::optional<g_t_t>
    desc: Lesser single particle Greens functions in real time $$G_{ij}^{<}(t) =  e^{-i E_0 t} \langle c_j^\dagger e^{iHt} c_i \rangle$$
  G_ret:
    type: std::optional<g_t_t>
    desc: Retarded single particle Greens functions in real time $$G_{ij}^{ret}(t) = -i \Theta(t) ( G_{ij}^{>}(t) + G_{ij}^{<}(t) )$$
  F_gr:
    type: std::optional<g_t_t>
    desc: Greater Green's function $$F_{ij}^{>}(t) = e^{i E_0 t} \langle [H_{int}, c_i] e^{-iHt} c_j^\dagger\rangle $$
  F_le:
    type: std::optional<g_t_t>
    desc: Lesser Green's function $$F_{ij}^{<}(t) = e^{-i E_0 t} \langle c_j^\dagger e^{iHt} [H_{int}, c_i]\rangle $$
  F_ret:
    type: std::optional<g_t_t>
    desc: Retarded Green's function $$F_{ij}^{ret}(t) = -i \Theta(t) ( F_{ij}^{>}(t) + F_{ij}^{<}(t) )$$.
  N_t:
    type: std::optional<n_t_t>
    desc: Greater density Greens functions in real time $$N_{ij}^{>}(t) = e^{i E_0 t} \langle n_i e^{-iHt} n_j \rangle $$
  G_w:
    type: std::optional<g_w_t>
    desc: Single particle Greens function in energy $$G_{ij}(\omega) = \int G^{ret}_{ij}(t) e^{ i \omega t  } dt$$
  F_w:
    type: std::optional<g_w_t>
    desc: Greens function in energy $$F_{ij}(\omega) = \int F^{ret}_{ij}(t) e^{i \omega t } dt$$.
  N_w:
    type: std::optional<n_w_t>
    desc: Density-Density Greens function in energy $$N_{ij}(\omega) = \int N_{ij}(t) e^{ i \omega t} dt$$.
  Sigma_w:
    type: std::optional<g_w_t>
    desc: Single particle Self-energy can be computed via $$\Sigma_{ij}(\omega) = \left(G^{-1}_0\right)_{ij}(\omega)  - \left(G^{-1}\right)_{ij}(\omega)$$ or $$\Sigma(\omega)_{ij} = -\left( \frac{F(\omega)} {G(\omega)} \right)_{ij}$$. Note $$\frac{F}{G}$$ is currently deactivated.

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/container_set/
title: forktps::container_set
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/container_set.hpp
parent: forktps
has_children: true
...

