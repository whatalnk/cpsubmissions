// Contest ID: abc125
// Problem ID: abc125_b ( https://atcoder.jp/contests/abc125/tasks/abc125_b )
// Title: B. Resale
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-27 12:42:41 +0000 UTC ( https://atcoder.jp/contests/abc125/submissions/6139533 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int N, vector<int> V, vector<int> C);

void solve(int N, vector<int> V, vector<int> C) {
  int ans = 0;
  for (int i = 0; i < N; i++) {
    int x = V[i] - C[i];
    if (V[i] - C[i] > 0) {
      ans += x;
    }
  }
  cout << ans << endl;
}

int main() {
  int N;
  cin >> N;
  vector<int> V(N);
  vector<int> C(N);
  for (int i = 0; i < N; i++) {
    cin >> V[i];
  }
  for (int i = 0; i < N; i++) {
    cin >> C[i];
  }
  solve(N, V, C);
  return 0;
}
