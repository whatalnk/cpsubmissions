// Contest ID: abc113
// Problem ID: abc113_a ( https://atcoder.jp/contests/abc113/tasks/abc113_a )
// Title: A. Discount Fare
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-09 00:34:54 +0000 UTC ( https://atcoder.jp/contests/abc113/submissions/6317254 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(int X, int Y) {
  int ans = X + Y / 2;
  printf("%d\n", ans);
}

int main() {
  int X, Y;
  cin >> X >> Y;
  solve(X, Y);
  return 0;
}