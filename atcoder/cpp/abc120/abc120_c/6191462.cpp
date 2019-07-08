// Contest ID: abc120
// Problem ID: abc120_c ( https://atcoder.jp/contests/abc120/tasks/abc120_c )
// Title: C. Unification
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-30 00:59:26 +0000 UTC ( https://atcoder.jp/contests/abc120/submissions/6191462 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(string S) {
  int ans;
  int zero = 0;
  for (int i = 0; i < S.length(); i++) {
    if (S[i] == '0') {
      zero += 1;
    }
  }
  int one = S.length() - zero;
  ans = min(one, zero) * 2;
  cout << ans << endl;
}

int main() {
  string S;
  cin >> S;
  solve(S);
  return 0;
}