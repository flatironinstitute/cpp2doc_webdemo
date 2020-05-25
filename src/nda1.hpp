#include <vector>

namespace nda1 {

  /**
   * A brief doc of array
   *
   *
   * A long doc of array
   * with multiple lines
   *
   *
   * And several paragraphs
   * also very long
   *
   * private
   *
   * \note RRRR
   *
   * \tparam R rank
   *
   * Another paragraph
   */
 template<typename T, int R>
 class array {
   public:
  void method1() const;


  /// This is value_t
  using storage_t = T;

  /// This is value_t
  using arr_t = std::vector<T>;

  /// My index_t
  using index_t = long;

  /// Something
  double x;


storage_t const & storage() const;
 };

 template<typename T, int R>
 class array_view {

  array_view(array<T, R> const &);
 };


 template<typename T, int R>
 nda1::array_view<T, R> make_view(nda1::array<T, R> const & x);

 template<typename T, int R>
 nda1::array_view<T, R> make_view(int k, nda1::array<T, R> const & x);

}
