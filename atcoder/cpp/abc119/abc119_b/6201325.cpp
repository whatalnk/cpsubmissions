// Contest ID: abc119
// Problem ID: abc119_b ( https://atcoder.jp/contests/abc119/tasks/abc119_b )
// Title: B. Digital Gifts
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-01 00:26:07 +0000 UTC ( https://atcoder.jp/contests/abc119/submissions/6201325 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N) {
  double ans = 0;
  double BTC = 380000.0;
  for (int i = 0; i < N; i++) {
    double x;
    string u;
    cin >> x >> u;
    if (u == "JPY") {
      ans += x;
    } else {
      ans += x * BTC;
    }
  }
  printf("%f\n", ans);
}

int main() {
  int N;
  cin >> N;
  solve(N);
  return 0;
}