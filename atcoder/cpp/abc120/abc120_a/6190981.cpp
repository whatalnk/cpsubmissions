// Contest ID: abc120
// Problem ID: abc120_a ( https://atcoder.jp/contests/abc120/tasks/abc120_a )
// Title: A. Favorite Sound
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 23:18:44 +0000 UTC ( https://atcoder.jp/contests/abc120/submissions/6190981 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int A, int B, int C) {
  int ans = min(B / A, C);
  cout << ans << endl;
}

int main() {
  int A, B, C;
  cin >> A >> B >> C;
  solve(A, B, C);
  return 0;
}