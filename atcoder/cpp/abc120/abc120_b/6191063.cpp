// Contest ID: abc120
// Problem ID: abc120_b ( https://atcoder.jp/contests/abc120/tasks/abc120_b )
// Title: B. K-th Common Divisor
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 23:44:04 +0000 UTC ( https://atcoder.jp/contests/abc120/submissions/6191063 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int A, int B, int K) {
  int ans;
  vector<int> v;
  for (int i = 1; i <= min(A, B); i++) {
    if ((A % i == 0) && (B % i == 0)) {
      v.emplace_back(i);
    }
  }
  ans = v[v.size() - K];
  cout << ans << endl;
}

int main() {
  int A, B, K;
  cin >> A >> B >> K;
  solve(A, B, K);
  return 0;
}