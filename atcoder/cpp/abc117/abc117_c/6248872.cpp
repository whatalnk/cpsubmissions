// Contest ID: abc117
// Problem ID: abc117_c ( https://atcoder.jp/contests/abc117/tasks/abc117_c )
// Title: C. Streamline
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-06 01:39:24 +0000 UTC ( https://atcoder.jp/contests/abc117/submissions/6248872 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, int M, vector<int> x) {
  if (N >= M) {
    printf("0\n");
  } else {
    int ans = 0;
    vector<int> xx(M - 1, 0);
    for (int i = 0; i < M - 1; i++) {
      xx[i] = x[i + 1] - x[i];
    }
    sort(xx.begin(), xx.end());
    for (int i = 0; i < max(0, M - N); i++) {
      ans += xx[i];
    }
    printf("%d\n", ans);
  }
}

int main() {
  int N, M;
  cin >> N >> M;
  vector<int> x(M);
  for (int i = 0; i < M; i++) {
    cin >> x[i];
  }
  sort(x.begin(), x.end());
  solve(N, M, x);
  return 0;
}