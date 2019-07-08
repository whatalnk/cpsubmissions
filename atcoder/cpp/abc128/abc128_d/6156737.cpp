// Contest ID: abc128
// Problem ID: abc128_d ( https://atcoder.jp/contests/abc128/tasks/abc128_d )
// Title: D. equeue
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 09:00:21 +0000 UTC ( https://atcoder.jp/contests/abc128/submissions/6156737 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, int K, vector<int> v) {
  int ans = 0;
  for (int l = 0; l <= K; l++) {
    for (int r = 0; r <= K - l; r++) {
      if (l + r > N) {
        continue;
      }
      int d = K - l - r;
      int cur = 0;
      vector<int> vv;
      for (int i = 0; i < l; i++) {
        cur += v[i];
        vv.emplace_back(v[i]);
      }
      for (int i = N - r; i < N; i++) {
        cur += v[i];
        vv.emplace_back(v[i]);
      }
      sort(vv.begin(), vv.end());
      for (int i = 0; i < d; i++) {
        if (i >= vv.size()) {
          break;
        }
        if (vv[i] < 0) {
          cur -= vv[i];
        }
      }
      ans = max(ans, cur);
    }
  }
  printf("%d\n", ans);
}

int main() {
  int N, K;
  scanf("%d %d", &N, &K);
  vector<int> v(N);
  for (int i = 0; i < N; i++) {
    cin >> v[i];
  }
  solve(N, K, v);
  return 0;
}