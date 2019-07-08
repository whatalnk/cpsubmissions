// Contest ID: abc133
// Problem ID: abc133_c ( https://atcoder.jp/contests/abc133/tasks/abc133_c )
// Title: C. Remainder Minimization 2019
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-07 14:45:22 +0000 UTC ( https://atcoder.jp/contests/abc133/submissions/6301546 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;
const int MOD = 2019;

void solve(int L, int R) {
  long long ans = 2019;
  for (int i = L; i <= R; i++) {
    for (int j = i + 1; j <= R; j++) {
      long long tmp = (i % MOD) * (j % MOD);
      tmp %= MOD;
      ans = min(ans, tmp);
      if (ans == 0) {
        printf("%lld\n", ans);
        return;
      }
    }
  }
  printf("%lld\n", ans);
}

int main() {
  int L, R;
  cin >> L >> R;
  solve(L, R);
  return 0;
}