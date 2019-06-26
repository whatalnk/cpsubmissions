// Contest ID: abc128
// Problem ID: abc128_a ( https://atcoder.jp/contests/abc128/tasks/abc128_a )
// Title: A. Apple Pie
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-26 00:50:59 +0000 UTC ( https://atcoder.jp/contests/abc128/submissions/6123004 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve();

void solve(int A, int P) { cout << (A * 3 + P) / 2 << endl; }

int main() {
  int A, P;
  cin >> A >> P;
  solve(A, P);
  return 0;
}
