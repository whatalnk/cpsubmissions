// Contest ID: abc133
// Problem ID: abc133_a ( https://atcoder.jp/contests/abc133/tasks/abc133_a )
// Title: A. T or T
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-07 12:02:55 +0000 UTC ( https://atcoder.jp/contests/abc133/submissions/6268421 ) 

#include <algorithm>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int A, int B) {
  int ans = min(A * N, B);

  printf("%d\n", ans);
}

int main() {
  int N, A, B;
  cin >> N >> A >> B;
  solve(N, A, B);
  return 0;
}