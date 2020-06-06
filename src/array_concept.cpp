//  ../cpp2doc ./array_concept.cpp -o EEE -- -std=c++20
// grep -R template  EEE
// MAKE A FORMAL TEST

#include <array>
#include <iostream>
#include <sstream>
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

    /**
    * Get the first element of the array as a(0,0,0....) (i.e. also work for non
    * containers, just with the concept !).
    * \SignatureHash 49e80f21de4fa152
    */
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
#define NODI [[nodiscard]]

  template <typename A, int R>
  concept ArrayOfRank = Array<A> and (has_rank_v<A, R>);

  template <typename A, typename T>
  concept ArrayOfT = Array<A> and (std::is_same_v<T, typename A::value_t>);

  /// \SignatureHash b1a30e79b2cb5ac9
  template <bool B>
  struct ess1 {

    /// \SignatureHash 913353c7e21b5a5d
    void f(int u) requires B {}
  };

  template <typename T, int R = 2>
  struct myarray;

  /// \SignatureHash c5156b12937c37ac
  template <typename T, int R>
  struct myarray {
    static constexpr int rank = R;
    using value_t             = T;

    /// \SignatureHash 8e626179c1d07228
    template <CONCEPT(is_integral)... Int>
    explicit myarray(Int... is) noexcept {};

    myarray(myarray const &) = default;

    /// \SignatureHash 71db40f80e7ae193
    myarray &operator=(int i);

    /// \SignatureHash c3bf77925c2c80ec
    myarray const &AAA();

    /// \SignatureHash d34b2b9b02169ad0
    myarray BBB();

    /// \SignatureHash ef9589521174dc7c
    value_t operator()(int i, int j) const { return 0; }

    /// \SignatureHash 298ab26bb5855307
    std::array<long, R> shape() const { return {}; }

    /// \SignatureHash 4a6a24de5e3c57b4
    void zozo() const REQUIRES(R == 3) {}

    /**
    * \merge operator-compound
    * \SignatureHash c98cd08c625d8270
    */
    myarray &operator+=(int i);

    /**
    * \merge operator-compound
    * \SignatureHash c98cd2198ae66072
    */
    myarray &operator-=(int i);
  };

  /**
  * A doc of faulty_array
  * \SignatureHash d38c7404496c0292
  */
  template <typename T, int R>
  struct faulty_array {
    static constexpr int rank = R;
    using value_t             = T;

    /// \SignatureHash 298ab26bb5855307
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

  /// \SignatureHash 9151284741842b6
  template <typename T>
  AUTO(Array)
  maker() {
    return myarray<T, 2>{};
  }

  /// \SignatureHash 2651902b5e6db700
  inline auto maker2() {
    auto b = maker<double>();

    return 1;
  }

  /// \SignatureHash bac719af4fc9414c
  template <typename A>
  void fgh0(A const &a) REQUIRES(Array<A>) {
    std::cout << "ARRAY" << std::endl;
  }

  /// \SignatureHash 6c3e61da80a84d17
  template <typename A>
  void fgh0(A const &a) { // REQUIRES(ArrayInitializer<A>){
    std::cout << "Generic" << std::endl;
  }

  /// \SignatureHash a30df48b4510ad47
  template <typename A>
  void fgh0b(A const &a) REQUIRES(ArrayOfRank<A, 2>) {}

  /**
  * \merge FGH12
  * \SignatureHash 19b26528fb112019
  */
  template <typename A>
  void fgh1(A const &a) REQUIRES(Array<A> and get_rank<A> == 3) {}

  /**
  * \merge FGH12
  * \SignatureHash 30c4e76e150de62d
  */
  template <typename A>
  void fgh2(A const &a) REQUIRES(Array<A> and (A::rank == 2)) {}

  /// \SignatureHash e809a7bc766b182d
  template <CONCEPT(Array) A>
  void fgh3(A const &a) {}

  /// \SignatureHash 20f8b7207ac89c5f
  template <Array A>
  void fgh3b(A const &a) requires(A::rank == 2) {}

  /// \SignatureHash f4a4b8de991aaea3
  template <CONCEPT(std::integral)... Int>
  void fPACK(Int... is){};

  /// \SignatureHash eec2d06b995807b5
  template <Array A>
  requires(std::decay_t<A>::rank == 2) void fgh4(A &&a) {}

  /// \SignatureHash 44a25cd7acc8f79f
  template <CONCEPT(ArrayOfRank<2>) A>
  void fgh5(A &&a) {
    std::cout << a(1, 2) << std::endl;
  }

  /// \SignatureHash 6538f75d8bd18480
  template <typename L, typename R>
  requires Array<L> and Array<R> void g45(L l, R r);

  /// \SignatureHash c0f71a37f55379de
  template <Array L, Array R>
  void g46(L l, R r);

  /// \SignatureHash eaa2165f4bca4805
  template <typename L, typename R>
     requires Array<L> and (not Array<R>) void op(L const &, R const &) {} // std::cout << a(1, 2) << std::endl; }

  /// \SignatureHash 6dcd164d9cecc1b1
  template <typename T, ArrayOfT<T> A>
  void fgh89(T x, A const &a) {}

  /// \SignatureHash 1fe39015ec5aae39
  class runtime_error : public std::exception {
    std::stringstream acc;
    std::string _trace;
    mutable std::string _what;

    public:
    /// \SignatureHash c6308d37545c40d8
    runtime_error() noexcept : std::exception() {} // _trace = utility::stack_trace(); }

    /// \SignatureHash 198803851c51d5d4
    runtime_error(runtime_error const &e) noexcept : acc(e.acc.str()), _trace(e._trace), _what(e._what) {}

    ~runtime_error() noexcept override = default;

    /// \SignatureHash 2055c54474b58076
    template <typename T>
    runtime_error &operator<<(T const &x) {
      acc << x;
      return *this;
    }

    /// \SignatureHash ac33a59343024451
    NODI runtime_error &operator<<(const char *mess) {
      (*this) << std::string(mess);
      return *this;
    } // to limit code size

    /// \SignatureHash d40ad098e7c27895
    const char *what() const noexcept override {
      std::stringstream out;
      out << acc.str() << "\n.. Error occurred on node ";
      //if (mpi::is_initialized()) out << mpi::communicator().rank() << "\n";
      //if (getenv("NDA_SHOW_EXCEPTION_TRACE")) out << ".. C++ trace is : " << trace() << "\n";
      _what = out.str();
      return _what.c_str();
    }

    //virtual const char *trace() const noexcept { return _trace.c_str(); }
  };

  /**
  * Doc breif
  * Content
  * \params i RIEN
  * \SignatureHash 1199b51bcaeb8314
  */
  void simple_f(int i);

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
