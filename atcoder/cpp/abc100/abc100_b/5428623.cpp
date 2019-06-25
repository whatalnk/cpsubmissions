// Contest ID: abc100
// Problem ID: abc100_b ( https://atcoder.jp/contests/abc100/tasks/abc100_b )
// Title: B. Ringo's Favorite Numbers
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-05-17 12:40:25 +0000 UTC ( https://atcoder.jp/contests/abc100/submissions/5428623 ) 

#include <iostream>

using namespace std;

static int D, N;

int solve();

int solve() {
  int x = 1;
  for (int i = 0; i < D; i++) {
    x *= 100;
  }
  if (N == 100) {
    x *= (N + 1);
  } else {
    x *= N;
  }
  return x;
}

int main() {
  cin >> D >> N;
  cout << solve() << endl;
  return 0;
}
