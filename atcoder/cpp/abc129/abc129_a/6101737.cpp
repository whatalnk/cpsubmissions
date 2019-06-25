// Contest ID: abc129
// Problem ID: abc129_a ( https://atcoder.jp/contests/abc129/tasks/abc129_a )
// Title: A. Airplane
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-24 00:24:02 +0000 UTC ( https://atcoder.jp/contests/abc129/submissions/6101737 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve();
static int P, Q, R;

void solve() {
  int ans = min(P + Q, min(Q + R, R + P));
  cout << ans << endl;
}

int main() {
  cin >> P >> Q >> R;
  solve();
  return 0;
}
