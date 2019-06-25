// Contest ID: abc099
// Problem ID: abc099_b ( https://atcoder.jp/contests/abc099/tasks/abc099_b )
// Title: B. Stone Monument
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-05-15 10:47:14 +0000 UTC ( https://atcoder.jp/contests/abc099/submissions/5408158 ) 

#include <algorithm>
#include <cstdio>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

static int a, b;
int solve();

int solve() {
  int c = b - a;
  int h1 = (c - 1) * c / 2;
  return h1 - a;
}

int main() {
  cin >> a >> b;
  cout << solve() << endl;
  return 0;
}
