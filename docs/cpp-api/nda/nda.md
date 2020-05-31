---
# Do not edit this first section
layout: namespace

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda
qualified_name: nda
parent: C++ API
title: nda
has_children: true
namespaces:
  - details
  - permutations
  - allocators
  - mem
  - concept_impl
  - slice_static
  - blas
concepts: [Array, ArrayOfRank, ArrayInitializer]
classes:
  - layout_info_t
  - default_accessor
  - no_alias_accessor
  - runtime_error
  - range_tag
  - range
  - range_all
  - ellipsis
  - idx_map
  - C_layout
  - F_layout
  - C_stride_layout
  - F_stride_layout
  - basic_layout
  - heap
  - heap_custom_alloc
  - sso
  - stack
  - shared
  - borrowed
  - grid_iterator<1>
  - grid_iterator
  - array_iterator
  - basic_array_view
  - basic_array
  - idx_group_t
  - array_adapter
  - scalar_array
  - scalar_matrix
  - mapped
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
  - map_layout_transform
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
  - operator/
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
  - sum
...

This is a test


* Some tables


<T table 
title: Algorithms
file: nda
key: Algorithms
ncol: 3
T>

<BR>


<T table 
title: A table of function mapping
file: nda
key: ArrayFunction
ncol: 3
T>
<BR>

<T table 

title:  A table of function mapping which do not apply to Matrices
file: nda
key: ArrayNoMatrixFunction
ncol: 3
collapsible: true 
T>

<BR>


