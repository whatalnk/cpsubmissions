// Contest ID: abc129
// Problem ID: abc129_c ( https://atcoder.jp/contests/abc129/tasks/abc129_c )
// Title: C. Typical Stairs
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-24 01:20:57 +0000 UTC ( https://atcoder.jp/contests/abc129/submissions/6102008 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;
const long long mod = 1e9 + 7;

void solve();

void solve(int N, int M, vector<int> A) {
  vector<long long int> dp(N + 1);
  dp[0] = 1;
  for (int i = 0; i < N; i++) {
    for (int j = i + 1; j <= min({N, i + 2}); j++) {
      if (A[j]) {
        dp[j] += dp[i];
        dp[j] %= mod;
      }
    }
  }
  cout << dp[N] << endl;
}

int main() {
  int N, M;
  cin >> N >> M;
  int a;
  vector<int> A(N + 1, true);
  for (int i = 0; i < M; i++) {
    cin >> a;
    A[a] = false;
  }
  solve(N, M, A);
  return 0;
}
