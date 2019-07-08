// Contest ID: abc115
// Problem ID: abc115_c ( https://atcoder.jp/contests/abc115/tasks/abc115_c )
// Title: C. Christmas Eve
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-06 00:12:31 +0000 UTC ( https://atcoder.jp/contests/abc115/submissions/6248547 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, int K, vector<long long> h) {
  long long ans = 1e9;
  vector<long long> hh(N + 1, 0);
  for (int i = 0; i <= N - K; i++) {
    ans = min(ans, h[i + K - 1] - h[i]);
  }
  printf("%lld\n", ans);
}

int main() {
  int N, K;
  cin >> N >> K;
  vector<long long> h(N);
  for (int i = 0; i < N; i++) {
    cin >> h[i];
  }
  sort(h.begin(), h.end());
  solve(N, K, h);
  return 0;
}