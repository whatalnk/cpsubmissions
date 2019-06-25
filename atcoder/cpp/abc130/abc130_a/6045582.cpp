// Contest ID: abc130
// Problem ID: abc130_a ( https://atcoder.jp/contests/abc130/tasks/abc130_a )
// Title: A. Rounding
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-22 00:32:07 +0000 UTC ( https://atcoder.jp/contests/abc130/submissions/6045582 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

static int X, A;
int solve();

int solve() {
  int ans;
  if (X < A) {
    ans = 0;
  } else {
    ans = 10;
  }

  return ans;
}

int main() {
  cin >> X >> A;
  cout << solve() << endl;
  return 0;
}
