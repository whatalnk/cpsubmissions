// Contest ID: abc113
// Problem ID: abc113_b ( https://atcoder.jp/contests/abc113/tasks/abc113_b )
// Title: B. Palace
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-09 00:45:38 +0000 UTC ( https://atcoder.jp/contests/abc113/submissions/6317302 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int T, int A, vector<int> H) {
  double t = 1e6;
  int ans = 0;
  for (int i = 0; i < N; i++) {
    double tmp = abs(A - (T - H[i] * 0.006));
    if (tmp < t) {
      t = tmp;
      ans = i;
    }
  }
  printf("%d\n", ans + 1);
}

int main() {
  int N;
  cin >> N;
  int T, A;
  cin >> T >> A;
  vector<int> H(N);
  for (int i = 0; i < N; i++) {
    cin >> H[i];
  }
  solve(N, T, A, H);
  return 0;
}