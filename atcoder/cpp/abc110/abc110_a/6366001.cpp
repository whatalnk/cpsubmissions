// Contest ID: abc110
// Problem ID: abc110_a ( https://atcoder.jp/contests/abc110/tasks/abc110_a )
// Title: A. Maximize the Formula
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-14 04:05:29 +0000 UTC ( https://atcoder.jp/contests/abc110/submissions/6366001 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iomanip>
#include <iostream>
#include <map>
#include <queue>
#include <sstream>
#include <string>

using namespace std;

void solve(int A, int B, int C) {
  int ans = max<int>({A * 10 + B + C, A + B * 10 + C, A + B + C * 10});
  printf("%d\n", ans);
}

int main() {
  int A, B, C;
  cin >> A >> B >> C;
  solve(A, B, C);
  return 0;
}