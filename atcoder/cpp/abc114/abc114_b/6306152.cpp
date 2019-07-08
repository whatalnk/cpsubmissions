// Contest ID: abc114
// Problem ID: abc114_b ( https://atcoder.jp/contests/abc114/tasks/abc114_b )
// Title: B. 754
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-08 02:17:05 +0000 UTC ( https://atcoder.jp/contests/abc114/submissions/6306152 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(string S) {
  int ans = 753;
  int n = S.size();
  for (int i = 0; i <= n - 3; i++) {
    string s = S.substr(i, 3);
    int a = stoi(s);
    ans = min(ans, abs(753 - a));
  }
  printf("%d\n", ans);
}

int main() {
  string S;
  cin >> S;
  solve(S);
  return 0;
}