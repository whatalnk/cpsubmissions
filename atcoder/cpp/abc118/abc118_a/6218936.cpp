// Contest ID: abc118
// Problem ID: abc118_a ( https://atcoder.jp/contests/abc118/tasks/abc118_a )
// Title: A. B +/- A
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-02 14:53:04 +0000 UTC ( https://atcoder.jp/contests/abc118/submissions/6218936 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int A, int B) {
  int ans;
  if (B % A == 0) {
    ans = A + B;
  } else {
    ans = B - A;
  }
  printf("%d\n", ans);
}

int main() {
  int A, B;
  cin >> A >> B;
  solve(A, B);
  return 0;
}