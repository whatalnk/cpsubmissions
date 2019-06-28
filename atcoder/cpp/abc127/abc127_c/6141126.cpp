// Contest ID: abc127
// Problem ID: abc127_c ( https://atcoder.jp/contests/abc127/tasks/abc127_c )
// Title: C. Prison
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-27 15:05:33 +0000 UTC ( https://atcoder.jp/contests/abc127/submissions/6141126 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int M);

void solve(int N, int M) {
  int ans = 0;
  vector<int> C(N + 1, 0);

  for (int i = 0; i < M; i++) {
    int l, r;
    cin >> l >> r;
    C[l - 1] += 1;
    C[r] -= 1;
  }
  for (int i = 0; i < N; i++) {
    if (0 < i) {
      C[i] += C[i - 1];
    }
  }
  for (int c : C) {
    if (c == M) {
      ans += 1;
    }
  }
  cout << ans << endl;
}

int main() {
  int N, M;
  cin >> N >> M;
  solve(N, M);
  return 0;
}
