// Contest ID: abc112
// Problem ID: abc112_b ( https://atcoder.jp/contests/abc112/tasks/abc112_b )
// Title: B. Time Limit Exceeded
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-11 02:36:41 +0000 UTC ( https://atcoder.jp/contests/abc112/submissions/6338027 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iomanip>
#include <iostream>
#include <map>
#include <queue>
#include <sstream>
#include <string>

using namespace std;

void solve(int N, int T, vector<pair<int, int>> X) {
  int cc = 1000;
  bool TLE = true;
  for (auto x : X) {
    if (x.first <= cc && x.second <= T) {
      cc = x.first;
      TLE = false;
    }
  }
  if (TLE) {
    printf("TLE\n");
  } else {
    printf("%d\n", cc);
  }
}

int main() {
  int N, T;
  cin >> N >> T;
  vector<pair<int, int>> X(N);
  for (int i = 0; i < N; i++) {
    int c, t;
    cin >> c >> t;
    X[i] = make_pair(c, t);
  }
  solve(N, T, X);
  return 0;
}