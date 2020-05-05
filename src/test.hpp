#ifndef NO_INCLUDE
#include <complex>
#include <string>
#include <vector>
#endif

#ifdef WRONG
 kejfkwejlfj
#endif

// functions in main namespace

void f(); // no arguments

/**
 * brief doc for f
 *
 * Longer doc for f
 * can be multiple line long
 *
 * And skip lines also ....
 *
 *
 * \param x  Doc of x
 * \return Documentation of the return value
 */
 int f(double x) ; // 1 argument

/**
 * brief doc for f
 *
 *
 * \param u  Doc of u
 * \param y  Doc of y
 */
[[deprecated("NO NO")]] int f(int u, double y); // 2 args


//
void vec(std::vector<int> const &v);

// template
template <typename T, typename U> void vec_tpl(std::vector<T> const &v, U &&x);

// variadic template

template <typename... U> void vec_tpl_var(int i, U &&... u);

// RETURN
std::vector<int> R1(int u);

std::function<int(int, int)> R2(std::function<int(double, int)> const &f);

std::vector<std::vector<int>> R3(int u);

template <typename T> T make(int u);

// --------------   classes ---------------------

struct C1 {
  C1(int i) : x(i) {}

  template<typename U> C1(U);

  ~C1();

  void f(int u) const;
  static void hhh(int u);

  struct CNested {
    void f(int u) const;
  };

  double x;

  double y = 10;
  std::vector<std::vector<int>> v;

private:
  int should_not_be_seen;
};

// --------------   template classes ---------------------

/**
 *  DOCUMENTATION OF A
 *
 *  @tparam T Doc of T
 */
template <typename T> struct A {
  A() = default;

  A(int i) : x(i) {}

  template<typename U> A(U);

  explicit operator int() const { return 0; }

  static void m_static(int u);

  /// another doc
  void f(int u) const noexcept;

  // void f(int u, int k);
  void f(double w, int k) &&;

  int g(int r) noexcept;
  T x;

private:
  int should_not_be_seen(int u);
};

// ----- explicit instantiation

template <> struct A<int> {

  A<int>() = default;
  int xxx;
  void f(int u) const noexcept;
};

// -------- derived ----------

struct B : A<int> {};


