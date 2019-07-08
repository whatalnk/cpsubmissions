// Contest ID: abc114
// Problem ID: abc114_a ( https://atcoder.jp/contests/abc114/tasks/abc114_a )
// Title: A. 753
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-08 02:10:05 +0000 UTC ( https://atcoder.jp/contests/abc114/submissions/6306089 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(int X) {
  if (X == 7 || X == 5 || X == 3) {
    printf("YES\n");
  } else {
    printf("NO\n");
  }
}

int main() {
  int X;
  cin >> X;
  solve(X);
  return 0;
}