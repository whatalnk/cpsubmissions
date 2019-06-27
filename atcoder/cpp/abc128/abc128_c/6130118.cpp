// Contest ID: abc128
// Problem ID: abc128_c ( https://atcoder.jp/contests/abc128/tasks/abc128_c )
// Title: C. Switches
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-26 13:44:13 +0000 UTC ( https://atcoder.jp/contests/abc128/submissions/6130118 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int M, vector<vector<int>> vec, vector<int> p);

void solve(int N, int M, vector<vector<int>> vec, vector<int> p) {
  int ans = 0;
  for (int i = 0; i < (1 << N); i++) {
    bool ok = true;
    for (int j = 0; j < M; j++) {
      int cnt = 0;
      for (int x : vec[j]) {
        if ((i >> x) & 1) {
          cnt += 1;
        }
      }
      if (cnt % 2 != p[j]) {
        ok = false;
      }
    }
    if (ok) {
      ans += 1;
    }
  }
  cout << ans << endl;
}

int main() {
  int N, M;
  cin >> N >> M;
  vector<vector<int>> vec(M);
  for (int i = 0; i < M; i++) {
    int k;
    cin >> k;
    vec[i].resize(k);
    for (int j = 0; j < k; j++) {
      cin >> vec[i][j];
      vec[i][j] -= 1;
    }
  }
  vector<int> p(M);
  for (int i = 0; i < M; i++) {
    cin >> p[i];
  }
  solve(N, M, vec, p);
  return 0;
}
