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
    * \SignatureHash a5ec849a28967d79
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

  /// \SignatureHash 642748b6d6792b10
  template <bool B>
  struct ess1 {

    /// \SignatureHash 3ca693577e53e9ea
    void f(int u) requires B {}
  };

  template <typename T, int R = 2>
  struct myarray;

  /// \SignatureHash 58cce180768d8c22
  template <typename T, int R>
  struct myarray {
    static constexpr int rank = R;
    using value_t             = T;

    /// \SignatureHash 8c868bb3c4a8fdd4
    template <CONCEPT(is_integral)... Int>
    explicit myarray(Int... is) noexcept {};

    myarray(myarray const &) = default;

    /// \SignatureHash bb6b60086763dfd9
    myarray &operator=(int i);

    /// \SignatureHash 1473bea61a032ee6
    myarray const &AAA();

    /// \SignatureHash 53221486e8065216
    myarray BBB();

    /// \SignatureHash 781db18bb81d9576
    value_t operator()(int i, int j) const { return 0; }

    /// \SignatureHash 6885e3111746ab4d
    std::array<long, R> shape() const { return {}; }

    /// \SignatureHash ead508e534a6082e
    void zozo() const REQUIRES(R == 3) {}

    /**
    * \merge operator-compound
    * \SignatureHash b200938726944cea
    */
    myarray &operator+=(int i);

    /**
    * \merge operator-compound
    * \SignatureHash b20095144f1d2aec
    */
    myarray &operator-=(int i);
  };

  template <typename T>
  using mymatrix = myarray<T, 2>;

  /**
  * A doc of faulty_array
  * \SignatureHash 2fc4e3e5376374dd
  */
  template <typename T, int R = 99, typename U = long>
  struct faulty_array {
    static constexpr int rank = R;
    using value_t             = T;

    /// \SignatureHash 6110272685a88d3f
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

  /// \SignatureHash e4e9d32aaed500f
  template <typename T>
  AUTO(Array)
  maker() {
    return myarray<T, 2>{};
  }

  /// \SignatureHash b12429a9236c13d9
  inline auto maker2() {
    auto b = maker<double>();

    return 1;
  }

  /// \SignatureHash f8c4a2bcd8e4d5e5
  template <typename A>
  void fgh0(A const &a) REQUIRES(Array<A>) {
    std::cout << "ARRAY" << std::endl;
  }

  /// \SignatureHash 6f6fc95963c4951e
  template <typename A>
  void fgh0(A const &a) { // REQUIRES(ArrayInitializer<A>){
    std::cout << "Generic" << std::endl;
  }

  /// \SignatureHash dd892caf9c7216a0
  template <typename A>
  void fgh0b(A const &a) REQUIRES(ArrayOfRank<A, 2>) {}

  /**
  * \merge FGH12
  * \SignatureHash 66a18d1276a69520
  */
  template <typename A>
  void fgh1(A const &a) REQUIRES(Array<A> and get_rank<A> == 3) {}

  /**
  * \merge FGH12
  * \SignatureHash 322e606987baf0f4
  */
  template <typename A>
  void fgh2(A const &a) REQUIRES(Array<A> and (A::rank == 2)) {}

  /// \SignatureHash dc90f755c77cfef4
  template <CONCEPT(Array) A>
  void fgh3(A const &a) {}

  /// \SignatureHash 35e483870f945e26
  template <Array A>
  void fgh3b(A const &a) requires(A::rank == 2) {}

  /// \SignatureHash af5d0a63adbdd9ea
  template <CONCEPT(std::integral)... Int>
  void fPACK(Int... is){};

  /// \SignatureHash f02c49670c05127c
  template <Array A>
  requires(std::decay_t<A>::rank == 2) void fgh4(A &&a) {}

  /// \SignatureHash ff5aae5cc16c22e6
  template <CONCEPT(ArrayOfRank<2>) A>
  void fgh5(A &&a) {
    std::cout << a(1, 2) << std::endl;
  }

  /// \SignatureHash b2281f470766f987
  template <typename L, typename R>
  requires Array<L> and Array<R> void g45(L l, R r);

  /// \SignatureHash 75b69607a5dc4c37
  template <Array L, Array R>
  void g46(L l, R r);

  /// \SignatureHash 4bb7d041027b8f9e
  template <typename L, typename R>
     requires Array<L> and (not Array<R>) void op(L const &, R const &) {} // std::cout << a(1, 2) << std::endl; }

  /// \SignatureHash d9fe451ee5adf00a
  template <typename T, ArrayOfT<T> A>
  void fgh89(T x, A const &a) {}

  /// \SignatureHash 5f7b8a81279bdb40
  class runtime_error : public std::exception {
    std::stringstream acc;
    std::string _trace;
    mutable std::string _what;

    public:
    /// \SignatureHash e638faafc3edd05e
    runtime_error() noexcept : std::exception() {} // _trace = utility::stack_trace(); }

    /// \SignatureHash ccfe8edbde9f560e
    runtime_error(runtime_error const &e) noexcept : acc(e.acc.str()), _trace(e._trace), _what(e._what) {}

    ~runtime_error() noexcept override = default;

    /// \SignatureHash be0ef4a6bd191330
    template <typename T>
    runtime_error &operator<<(T const &x) {
      acc << x;
      return *this;
    }

    /// \SignatureHash 5e52f7185468b0b
    NODI runtime_error &operator<<(const char *mess) {
      (*this) << std::string(mess);
      return *this;
    } // to limit code size

    /// \SignatureHash dfc6837d4ff2ffcf
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

  /// test variadic C
  /// \private
  void h6_read(int i, ...);

  // test multiple declarion
  /**
  * Doc breif
  * Content
  * \params i RIEN
  *   */
  void simple_f(int i);

  void simple_f(int i = 98);

  /**
  * Doc breif
  * Content
  * \params i RIEN
  * \SignatureHash 34a4e2ae235ba23
  */
  void simple_f(int i) {}

  // Testing forward declaration
  template <int R = 8>
  struct AB45;

  /// \SignatureHash e5f66c3961aa39a
  template <int R>
  struct AB45 {
    int g = R;

    /// \SignatureHash ebfb80ad1506ea37
    int some_long_action(int u);
  };

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
