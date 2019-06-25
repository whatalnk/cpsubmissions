// Contest ID: abc131
// Problem ID: abc131_c ( https://atcoder.jp/contests/abc131/tasks/abc131_c )
// Title: C. Anti-Division
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-22 13:29:31 +0000 UTC ( https://atcoder.jp/contests/abc131/submissions/6078672 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

static long long A, B, C, D;
long long solve();
long long gcd(long long a, long long b);
long long lcm(long long a, long long b);

long long gcd(long long a, long long b) {
  if (b == 0) {
    return a;
  }
  return gcd(b, a % b);
}
long long lcm(long long a, long long b) {
  long long g = gcd(a, b);
  return a / g * b;
}

long long solve() {
  long long X = B / C;
  if (A > 0) {
    X -= (A - 1) / C;
  }
  long long Y = B / D;
  if (A > 0) {
    Y -= (A - 1) / D;
  }
  long long CD = lcm(C, D);
  long long Z = B / CD;
  if (A > 0) {
    Z -= (A - 1) / CD;
  }
  return B - A + 1LL - X - Y + Z;
}

int main() {
  cin >> A >> B >> C >> D;
  cout << solve() << endl;
  return 0;
}
