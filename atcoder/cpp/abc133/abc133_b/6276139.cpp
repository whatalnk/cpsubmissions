// Contest ID: abc133
// Problem ID: abc133_b ( https://atcoder.jp/contests/abc133/tasks/abc133_b )
// Title: B. Good Distance
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-07 12:20:41 +0000 UTC ( https://atcoder.jp/contests/abc133/submissions/6276139 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int D, vector<vector<int>> X) {
  int ans = 0;
  for (int i = 0; i < N; i++) {
    for (int j = i + 1; j < N; j++) {
      int tmp = 0;
      for (int k = 0; k < D; k++) {
        tmp += (X[i][k] - X[j][k]) * (X[i][k] - X[j][k]);
      }
      float r = sqrt(float(tmp));
      if ((int)r * (int)r == tmp) {
        ans += 1;
      }
    }
  }

  printf("%d\n", ans);
}

int main() {
  int N, D;
  cin >> N >> D;
  vector<vector<int>> X(N);
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < D; j++) {
      int x;
      cin >> x;
      X[i].push_back(x);
    }
  }
  solve(N, D, X);
  return 0;
}