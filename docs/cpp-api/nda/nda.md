---
# Do not edit this first section
layout: namespace

# List of sub namespaces.  You can reorder, regroup into a dict : groupname -> list
namespaces:
  - blas
  - stdutil

# List of functions.  You can reorder, regroup into a dict : groupname -> list
concepts:
  - Array
  - ArrayOfRank
  - ArrayInitializer
  - StdEqualityComparableWith
  - HasValueTypeConvertibleTo

# List of classes.  You can reorder, regroup into a dict : groupname -> list
classes:

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

  - __NOT_SORTED__:
      - C_layout_str
      - C_stride_layout_str
      - F_layout_str
      - F_stride_layout_str
      - array_iterator<1, T, Pointer>
      - basic_layout_str
      - rect_str

# List of functions.  You can reorder, regroup into a dict : groupname -> list
functions:
  - get_first_element
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
  - operator==
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
  - has_contiguous
  - has_smallest_stride_is_one
  - has_strided_1d
  - make_array_const_view
  - make_array_view
  - reinterpret_add_fast_dims_of_size_one

# A list of the card for a top namespace page, for quick access to documentation.
card_topics:

  - filename: layout
    title: Layout transformations
    tooltip: Interface BLAS/LAPACK, Eigen

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda/
qualified_name: nda
title: nda
...

# nda, a multi-dimensional array library

Here are the main topics of the documention.
For a complete index, see below.


