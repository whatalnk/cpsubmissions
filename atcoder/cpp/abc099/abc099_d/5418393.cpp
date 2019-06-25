// Contest ID: abc099
// Problem ID: abc099_d ( https://atcoder.jp/contests/abc099/tasks/abc099_d )
// Title: D. Good Grid
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-05-16 12:03:01 +0000 UTC ( https://atcoder.jp/contests/abc099/submissions/5418393 ) 

#include <iostream>

using namespace std;

const int MAX_C = 30;
static int N, C;
static int D[MAX_C][MAX_C];
static int t[3][MAX_C];

int solve();

int solve() {
  int ans = 1 << 30;
  for (int i = 0; i < C; i++) {
    for (int j = 0; j < C; j++) {
      if (i != j) {
        for (int k = 0; k < C; k++) {
          if (i != k && j != k) {
            int tt = 0;
            for (int l = 0; l < C; l++) {
              tt += D[l][i] * t[0][l];
              tt += D[l][j] * t[1][l];
              tt += D[l][k] * t[2][l];
            }
            if (tt < ans) {
              ans = tt;
            }
          }
        }
      }
    }
  }
  return ans;
}

int main() {
  cin >> N >> C;
  int x;
  for (int i = 0; i < C; i++) {
    for (int j = 0; j < C; j++) {
      cin >> x;
      D[i][j] = x;
    }
  }
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      cin >> x;
      t[(i + j) % 3][x - 1] += 1;
    }
  }
  cout << solve() << endl;
  return 0;
}
