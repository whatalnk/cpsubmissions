// Contest ID: abc121
// Problem ID: abc121_c ( https://atcoder.jp/contests/abc121/tasks/abc121_c )
// Title: C. Energy Drink Collector
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 04:42:30 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/6154097 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, int M, vector<pair<long long, long long>> AB) {
  long long rem = M;
  long long ans = 0;
  for (auto x : AB) {
    long long a = x.first;
    long long b = x.second;
    int cnt = min(rem, b);
    ans += a * cnt;
    rem -= cnt;
    if (rem == 0) {
      break;
    }
  }
  printf("%lld\n", ans);
}
int main() {
  int N, M;
  scanf("%d %d", &N, &M);
  vector<pair<long long, long long>> AB(N);
  for (int i = 0; i < N; i++) {
    long long a, b;
    scanf("%lld %lld", &a, &b);
    AB[i] = make_pair(a, b);
  }
  sort(AB.begin(), AB.end());
  solve(N, M, AB);
  return 0;
}
