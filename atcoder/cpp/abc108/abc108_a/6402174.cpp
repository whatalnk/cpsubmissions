// Contest ID: abc108
// Problem ID: abc108_a ( https://atcoder.jp/contests/abc108/tasks/abc108_a )
// Title: A. Pair
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-16 01:48:13 +0000 UTC ( https://atcoder.jp/contests/abc108/submissions/6402174 ) 

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

void solve(int K) {
  int a = K / 2;
  printf("%d\n", a * (K - a));
}

int main() {
  int K;
  cin >> K;
  solve(K);
  return 0;
}