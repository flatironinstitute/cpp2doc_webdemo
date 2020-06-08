---
# Do not edit this first section
layout: namespace

# List of sub namespaces.  You can reorder, regroup into a dict : groupname -> list
namespaces:
  - blas

# List of functions.  You can reorder, regroup into a dict : groupname -> list
concepts:
  - Array
  - ArrayOfRank
  - ArrayInitializer

# List of classes.  You can reorder, regroup into a dict : groupname -> list
classes:

  - "":

  - Containers:
      - basic_array
      - basic_array_view

  - Layout:
      - idx_map
      - range
      - ellipsis

  - Policies:
      - C_layout
      - F_layout
      - C_stride_layout
      - F_stride_layout
      - basic_layout
      - borrowed
      - shared
      - heap
      - heap_custom_alloc
      - sso
      - stack
      - default_accessor
      - no_alias_accessor

  - __NOT_SORTED__:
      - layout_info_t
      - array_adapter
      - array_iterator
      - grid_iterator
      - grid_iterator<1>
      - idx_group_t
      - mapped
      - range_all
      - range_tag
      - runtime_error
      - scalar_array
      - scalar_matrix

# List of functions.  You can reorder, regroup into a dict : groupname -> list
functions:
  - make_std_array
  - make_initialized_array
  - to_vector
  - append
  - front_append
  - pop
  - front_pop
  - front_mpop
  - join
  - dot_product
  - get_first_element
  - is_degradable
  - operator|
  - operator&
  - operator<<
  - decode
  - encode
  - for_each_static
  - for_each
  - static_extents
  - <deduction guide for basic_array>
  - zeros
  - make_regular
  - resize_or_check_if_view
  - make_const_view
  - make_matrix_view
  - make_matrix_const_view
  - operator==
  - assign_foreach
  - clef_auto_assign
  - check_grouping
  - stride_order_of_grouped_idx
  - group_indices_layout
  - map_layout_transform
  - reshape
  - reshaped_view
  - permuted_indices_view
  - transpose
  - transposed_view
  - group_indices_view
  - <deduction guide for array_adapter>
  - eye
  - trace
  - dagger
  - vstack
  - matmul
  - matvecmul
  - rank_are_compatible
  - common_algebra
  - operator+
  - operator-
  - operator*
  - operator-div
  - inverse
  - map
  - conj_r
  - abs2
  - isnan
  - pow
  - abs
  - real
  - imag
  - floor
  - conj
  - exp
  - cos
  - sin
  - tan
  - cosh
  - sinh
  - tanh
  - acos
  - asin
  - atan
  - log
  - sqrt
  - fold
  - any
  - all
  - max_element
  - min_element
  - frobenius_norm
  - sum

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda
qualified_name: nda
parent: C++ API
title: nda
has_children: true
...

# nda, a multi-dimensional array library

Here are the main topics of the documention.
For a complete index, see below.

|---
| | | 
|:-:|:-:|:-:|:-:
| **Overview** <BR> [*Basic notions*](/cpp-api/nda/overview) | **Tutorial** <BR> *To Be Written* | **Installation** <BR> [Instructions](/cpp-api/nda/install) |  **Howtos** <BR> *Gallery of examples* |  
|---
|---
| **Container** <BR> [[nda/basic_array]] | **Views** <BR> [[nda/basic_array_view]]  | **Concepts** <BR> [[nda/Array]], [[nda/ArrayOfRank]], ...
|---
|---
| **Layout transformations**  <BR> *Reshape, reinterpret*  | **Arithmetic** <BR> *Array, Matrix algebra* <BR> *Basic operations*|  **Algorithms** <BR> *e.g. abs, max* <BR> *map*, *fold* 
|---
|---
| **Linear Algebra** <BR> *Interface BLAS/LAPACK* <BR> *Eigen, ...* | **HDF5** |  **MPI**
{: .table_top_page .vertical-align=top}


