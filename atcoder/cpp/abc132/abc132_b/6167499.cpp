// Contest ID: abc132
// Problem ID: abc132_b ( https://atcoder.jp/contests/abc132/tasks/abc132_b )
// Title: B. Ordinary Number
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 12:14:37 +0000 UTC ( https://atcoder.jp/contests/abc132/submissions/6167499 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int n, vector<int> p) {
  int ans = 0;
  for (int i = 1; i < n - 1; i++) {
    if ((p[i] < p[i - 1] && p[i] > p[i + 1]) ||
        (p[i] > p[i - 1] && p[i] < p[i + 1])) {
      ans += 1;
    }
  }
  cout << ans << endl;
}

int main() {
  int n;
  cin >> n;
  vector<int> p(n);
  for (int i = 0; i < n; i++) {
    cin >> p[i];
  }
  solve(n, p);
  return 0;
}