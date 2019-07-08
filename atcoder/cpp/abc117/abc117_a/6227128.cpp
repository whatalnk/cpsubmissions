// Contest ID: abc117
// Problem ID: abc117_a ( https://atcoder.jp/contests/abc117/tasks/abc117_a )
// Title: A. Entrance Examination
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-03 12:34:20 +0000 UTC ( https://atcoder.jp/contests/abc117/submissions/6227128 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(double T, double X) {
  double ans = 0;
  ans = T / X;
  printf("%.10f\n", ans);
}

int main() {
  double T, X;
  cin >> T >> X;
  solve(T, X);
  return 0;
}