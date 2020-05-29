//  ../cpp2doc ./array_concept.cpp -o EEE -- -std=c++20
// grep -R template  EEE
// MAKE A FORMAL TEST

#include <array>
#include <iostream>
#include <tuple>
#include <type_traits>

namespace std {
  template <class From, class To>
  concept convertible_to = std::is_convertible_v<From, To> and requires(std::add_rvalue_reference_t<From> (&f)()) {
    static_cast<To>(f());
  };

  template <class T>
  concept integral = std::is_integral_v<T>;
} // namespace std

namespace sandbox {

  template <class T>
  concept is_integral = std::is_integral_v<T>;

  template <typename A>
  constexpr int get_rank = std::tuple_size_v<std::decay_t<decltype(std::declval<A const>().shape())>>;

  namespace impl {
    /// Get the first element of the array as a(0,0,0....) (i.e. also work for non
    /// containers, just with the concept !).

    template <size_t... Is, typename A>
    auto _get_first_element_impl(std::index_sequence<Is...>, A const &a) -> decltype(a((0 * Is)...)) {
      return a((0 * Is)...); // repeat 0 sizeof...(Is) times
    }

    /// Get the first element of the array as a(0,0,0....) (i.e. also work for non
    /// containers, just with the concept !).
    template <typename A>
    auto get_first_element(A const &a) -> decltype(_get_first_element_impl(std::make_index_sequence<get_rank<A>>{}, a)) {
      return _get_first_element_impl(std::make_index_sequence<get_rank<A>>{}, a);
    }

    template <typename T>
    constexpr bool is_std__array_of_long_v = false;
    template <auto R>
    constexpr bool is_std__array_of_long_v<std::array<long, R>> = true;

    template <class T>
    concept IsStdArrayOfLong = is_std__array_of_long_v<T>;

    template <class From, class To>
    concept convertible_to = std::is_convertible_v<From, To> &&requires(std::add_rvalue_reference_t<From> (&f)()) {
      static_cast<To>(f());
    };
  } // namespace impl

  template <typename A, int R>
  constexpr bool has_rank_v = ((get_rank<A> == R) or (R == -1));

  // clang-format off
template <typename A> concept Array= requires(A const &a) {

   // A has a shape() which returns an array<long, R> ...
  { a.shape() } -> impl::IsStdArrayOfLong;

  // and R is an int, and is the rank.
  { get_rank<A> } ->impl::convertible_to<const int>;

  // a(0,0,0,0... R times) returns something, which is value_type by definition
  {impl::get_first_element(a)};
};
    // clang-format on
#define AUTO(X) X auto
#define CONCEPT(X) X
#define REQUIRES requires

  template <typename A, int R>
  concept ArrayOfRank = Array<A> and (has_rank_v<A, R>);

  template <typename A, typename T>
  concept ArrayOfT = Array<A> and (std::is_same_v<T, typename A::value_t>);

  template <bool B>
  struct ess1 {
    void f(int u) requires B {}
  };

  template <typename T, int R = 2>
  struct myarray;

  template <typename T, int R>
  struct myarray {
    static constexpr int rank = R;
    using value_t             = T;

    template <CONCEPT(is_integral)... Int>
    explicit myarray(Int... is) noexcept {};

    myarray(myarray const &) = default;
    myarray & operator =( int i) ;

    myarray const & AAA();
    myarray  BBB();
    value_t operator()(int i, int j) const { return 0; }
    std::array<long, R> shape() const { return {}; }

    void zozo() const REQUIRES(R == 3) {}


    /// \merge operator-compound
    myarray& operator +=(int i);

    /// \merge operator-compound
    myarray& operator -=(int i);

  };

  template <typename T, int R>
  struct faulty_array {
    static constexpr int rank = R;
    using value_t             = T;
    std::array<long, R> shape() const { return {}; }
  };

  template <typename A>
  concept ArrayInitializer = requires(A const &a) {

    // A has a shape() which returns an array<long, R> ...
    { a.shape() }
    ->impl::IsStdArrayOfLong;

    typename A::value_type;

    {a.execute(myarray<typename A::value_type>{})};
  };

  template <typename T>
  AUTO(Array)
  maker() {
    return myarray<T, 2>{};
  }

  inline auto maker2() {
    auto b = maker<double>();

    return 1;
  }
  template <typename A>
  void fgh0(A const &a) REQUIRES(Array<A>) {
    std::cout << "ARRAY" << std::endl;
  }
  template <typename A>
  void fgh0(A const &a) { // REQUIRES(ArrayInitializer<A>){
    std::cout << "Generic" << std::endl;
  }

  template <typename A>
  void fgh0b(A const &a) REQUIRES(ArrayOfRank<A, 2>) {}

  /// \merge FGH12
  template <typename A>
  void fgh1(A const &a) REQUIRES(Array<A> and get_rank<A> == 3) {}

  /// \merge FGH12
  template <typename A>
  void fgh2(A const &a) REQUIRES(Array<A> and (A::rank == 2)) {}

  template <CONCEPT(Array) A>
  void fgh3(A const &a) {}

  template <Array A>
  void fgh3b(A const &a) requires(A::rank == 2) {}

  template <CONCEPT(std::integral)... Int>
  void fPACK(Int... is){};

  template <Array A>
  requires(std::decay_t<A>::rank == 2) void fgh4(A &&a) {}

  template <CONCEPT(ArrayOfRank<2>) A>
  void fgh5(A &&a) {
    std::cout << a(1, 2) << std::endl;
  }

  template <typename L, typename R>
  requires Array<L> and Array<R> void g45(L l, R r);

  template <Array L, Array R>
  void g46(L l, R r);

  template <typename L, typename R>
     requires Array<L> and (not Array<R>) void op(L const &, R const &) {} // std::cout << a(1, 2) << std::endl; }

  template <typename T, ArrayOfT<T> A>
  void fgh89(T x, A const &a) {}

  /// DOC
  ///
  /// \tag Tag1 Tag2
  ///
  /// kekfek
  /// \ingroup G1 G2
  /// \private k
  /// with some doc
  struct non {

    long shape() const { return {}; }
  };

} // namespace sandbox
using namespace sandbox;

int main() {

  myarray<double, 2> a = maker<double>();

  auto b       = maker<double>();
  Array auto c = maker<double>();

  //  Array auto d = maker2();

  fgh5(a);

  // fgh1(a);

  // fgh5(non{});

  myarray<double, 3> a3;

  // fgh5(a3);

  // ess1<false> x;

  // x.f(2);

  faulty_array<double, 2> fa;

  fgh0(a);
  fgh0(fa);

  fgh89(2.3, a);
  //fgh89(2, a);
}
